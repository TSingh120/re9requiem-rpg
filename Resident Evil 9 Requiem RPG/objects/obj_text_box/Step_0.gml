if (instance_exists(obj_dialog)) exit;

if (instance_exists(obj_playerleon) && distance_to_object(obj_playerleon) < 16)
{
	can_talk = true;
	if (keyboard_check_pressed(input_key))
	{
		create_dialog(global.welcome_dialog);
	}
}
else
{
	can_talk = false;
}