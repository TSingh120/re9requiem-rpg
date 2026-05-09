if(flash_timer <= 0)
{
	image_blend = c_white;
}

if(flash_timer > 0)
{
	flash_timer = -1;
}

if(damage_timer > 0)
{
	damage_timer += -1;
}

if(playerhp <= 0)
{
	with(obj_playerleon) instance_change(obj_playerdead, true);
}
