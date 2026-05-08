/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0F863DCC
/// @DnDArgument : "expr" "has_shotgun=true"
if(has_shotgun=true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0CE5DE29
	/// @DnDParent : 0F863DCC
	/// @DnDArgument : "obj" "obj_shotgun"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_shotgun"
	var l0CE5DE29_0 = false;
	l0CE5DE29_0 = instance_exists(obj_shotgun);
	if(!l0CE5DE29_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6E44D92F
		/// @DnDParent : 0CE5DE29
		/// @DnDArgument : "soundid" "snd_shotgunpick"
		/// @DnDSaveInfo : "soundid" "snd_shotgunpick"
		audio_play_sound(snd_shotgunpick, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 19142578
		/// @DnDApplyTo : {obj_handgun}
		/// @DnDParent : 0CE5DE29
		with(obj_handgun) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 54368070
		/// @DnDApplyTo : {obj_assault_rifle}
		/// @DnDParent : 0CE5DE29
		with(obj_assault_rifle) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 030F6559
		/// @DnDApplyTo : {obj_sniper}
		/// @DnDParent : 0CE5DE29
		with(obj_sniper) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 17F911F5
		/// @DnDApplyTo : {obj_flashlight}
		/// @DnDParent : 0CE5DE29
		with(obj_flashlight) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B33D2ED
		/// @DnDParent : 0CE5DE29
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_shotgun"
		/// @DnDArgument : "layer" ""guns""
		/// @DnDSaveInfo : "objectid" "obj_shotgun"
		instance_create_layer(x + 0, y + 0, "guns", obj_shotgun);
	}
}