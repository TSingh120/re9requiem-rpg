function Shoot()
{
	with obj_handgun
	{
		// Play sound
		
		audio_play_sound(handgun.sound, 10, false, random_range(0.8, 1), 0, random_range(0.8, 1)); //Play shooting sound at random gain and pitch
		
		// Calculate distance from the center to the tip of the gun
		
		var _dist = sprite_get_width(handgun.sprite) - sprite_get_xoffset(handgun.sprite); // Distance to edge of gun sprite
		
		for (var i = 0; i < handgun.spread_number; i++;)
		{
			var _angle = image_angle + (i * handgun.spread_angle) - ((handgun.spread_number - 1) * (handgun.spread_angle / 2));
			
			instance_create_depth(
				x + lengthdir_x(_dist, image_angle),
				y + lengthdir_y(_dist, image_angle),
				depth - 1,
				obj_bullet,
				{
					image_angle: _angle + random_range(-handgun.inaccuracy, handgun.inaccuracy),
					sprite_index: handgun.ammo[bullethg_index].sprite,
					spd: handgun.ammo[bullethg_index].spd
				}
			);
		}
		
		// Gun Kick and knockback
		
		x -= handgun.kick * image_yscale;
		knockback_angle += handgun.kick * image_yscale;
		
		// Iterate through ammo types
		
		if bullethg_index < array_length(handgun.ammo) - 1 bullethg_index++;
		else bullethg_index = 0;
	}
}