function Shootar()
{
	with obj_assault_rifle
	{
		// Play sound
		
		audio_play_sound(argun.sound, 10, false, random_range(0.8, 1), 0, random_range(0.8, 1)); //Play shooting sound at random gain and pitch
		
		// Calculate distance from the center to the tip of the gun
		
		var _dist = sprite_get_width(argun.sprite) - sprite_get_xoffset(argun.sprite); // Distance to edge of gun sprite
		
		for (var i = 0; i < argun.spread_number; i++;)
		{
			var _angle = image_angle + (i * argun.spread_angle) - ((argun.spread_number - 1) * (argun.spread_angle / 2));
			
			instance_create_depth(
				x + lengthdir_x(_dist, image_angle),
				y + lengthdir_y(_dist, image_angle),
				depth - 1,
				obj_bullet,
				{
					image_angle: _angle + random_range(-argun.inaccuracy, argun.inaccuracy),
					sprite_index: argun.ammo[bulletar_index].sprite,
					spd: argun.ammo[bulletar_index].spd
				}
			);
		}
		
		// Gun Kick and knockback
		
		x -= argun.kick * image_yscale;
		knockback_angle += argun.kick * image_yscale;
		
		// Iterate through ammo types
		
		if bulletar_index < array_length(argun.ammo) - 1 bulletar_index++;
		else bulletar_index = 0;
	}
}