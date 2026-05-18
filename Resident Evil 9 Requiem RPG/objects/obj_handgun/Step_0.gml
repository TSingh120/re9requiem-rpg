
 #region Reset position and angle
 
 if mouse_x > x image_yscale = 1;
 else image_yscale = -1;
 
 mouse_angle -= angle_difference(mouse_angle, point_direction(x,y,mouse_x,mouse_y)) * 0.5;
 knockback_angle -= angle_difference(knockback_angle, 0) * 0.05;
 
 image_angle = mouse_angle + knockback_angle;
 
 x = lerp(x, obj_playerleon.x, 0.25);
 y = lerp(y, obj_playerleon.y, 0.25);
 
 #endregion
 
 #region Shooting

 //if mouse_check_button_pressed(mb_left)
 //{
	// instance_create_layer(x,y,"characters", obj_bullet, {
	//	 sprite_index: spr_bullet,
	//	 spd: 10,
	//	 image_angle: image_angle
	// });
 //}
 
 var _shoot = handgun.fullauto ? mouse_check_button(mb_left) : mouse_check_button_pressed(mb_left);
 var _ammo = handgun.ammo[bullethg_index];
 
 if canshoot > 0 canshoot--;
 else if _shoot 
 && obj_playerleon.handgun_ammo > 0
 && !obj_playerleon.handgun_reloading
 {
	 // Reset firerate
	 
	 canshoot = _ammo.firerate;
	 obj_playerleon.handgun_ammo--;
	 
	 // Lerp firerate to end firerate while shooting
	 
	 _ammo.firerate = lerp(
		_ammo.firerate,
		_ammo.rate_end,
		_ammo.rate_mult);
		
	Shoot(weapon);
	
	var _delay = handgun.burst_delay;
	repeat (handgun.burst_number - 1)
	{
		call_later(_delay, time_source_units_frames, Shoot);
		_delay += handgun.burst_delay;
	}
 }
 
 if !mouse_check_button(mb_left) // Lerp Firerate back to starting firerate while not shooting 
 {
	 _ammo.firerate = lerp(
		_ammo.firerate,
		_ammo.rate_start,
		_ammo.rate_mult);
 }
 
 #endregion
 
if (obj_playerleon.playerhp <= 0)
{
    instance_destroy();
}
if keyboard_check_pressed(ord("R"))
&& !obj_playerleon.handgun_reloading
{
    if obj_playerleon.handgun_ammo < obj_playerleon.handgun_mag_size
    {
        if obj_playerleon.handgun_reserve > 0
        {
            obj_playerleon.handgun_reloading = true;
            
            alarm[0] = room_speed * 1.5;
			audio_play_sound(snd_handgun_reload,0,false);
        }
    }
}
if obj_playerleon.handgun_reloading
{
    if sprite_index != spr_handgunreload
    {
        sprite_index = spr_handgunreload;
        image_index = 0;
    }
}
else
{
    sprite_index = spr_handgun;
}
if sprite_index == spr_handgunreload
&& image_index >= image_number - 1
{
    obj_playerleon.handgun_reloading = false;
}
if sprite_index == spr_handgunreload && image_index >= image_number - 1
{
    // Do the ammo math right when the animation finishes
    var needed = obj_playerleon.handgun_mag_size - obj_playerleon.handgun_ammo;
    var taken = min(needed, obj_playerleon.handgun_reserve);

    obj_playerleon.handgun_ammo += taken;
    obj_playerleon.handgun_reserve -= taken;
    
    obj_playerleon.handgun_reloading = false;
    sprite_index = spr_handgun;
}