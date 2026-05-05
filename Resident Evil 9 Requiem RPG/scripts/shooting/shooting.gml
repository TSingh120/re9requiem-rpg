function Shoot(_weapon)
{

	{
		// Play sound
		
		audio_play_sound(_weapon.sound, 10, false, random_range(0.8, 1), 0, random_range(0.8, 1)); //Play shooting sound at random gain and pitch
		
		// Calculate distance from the center to the tip of the gun
		
		var _dist = sprite_get_width(_weapon.sprite) - sprite_get_xoffset(_weapon.sprite); // Distance to edge of gun sprite
		
		for (var i = 0; i < _weapon.spread_number; i++;)
		{
			var _angle = image_angle + (i * _weapon.spread_angle) - ((_weapon.spread_number - 1) * (_weapon.spread_angle / 2));
			
			instance_create_depth(
				x + lengthdir_x(_dist, image_angle),
				y + lengthdir_y(_dist, image_angle),
				depth - 1,
				obj_bullet,
				{
					image_angle: _angle + random_range(-_weapon.inaccuracy, _weapon.inaccuracy),
					sprite_index: _weapon.ammo[bullethg_index].sprite,
					spd: _weapon.ammo[bullethg_index].spd,
					damage: _weapon.ammo[bullethg_index].damage
				}
			);
		}
		
		// Gun Kick and knockback
		
		x -= _weapon.kick * image_yscale;
		knockback_angle += _weapon.kick * image_yscale;
		
		// Iterate through ammo types
		
		if bullethg_index < array_length(_weapon.ammo) - 1 bullethg_index++;
		else bullethg_index = 0;
	}
}

