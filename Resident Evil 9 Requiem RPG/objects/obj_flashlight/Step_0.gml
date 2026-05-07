 #region Reset position and angle
 
 sprite_index = spr_flashlightw;
 
 if mouse_x > x image_yscale = 1;
 else image_yscale = -1;
 
 mouse_angle -= angle_difference(mouse_angle, point_direction(x,y,mouse_x,mouse_y)) * 0.5;
 knockback_angle -= angle_difference(knockback_angle, 0) * 0.05;
 
 image_angle = mouse_angle + knockback_angle;
 
 x = lerp(x, obj_playerleon.x, 0.25);
 y = lerp(y, obj_playerleon.y, 0.25);
 
 #endregion