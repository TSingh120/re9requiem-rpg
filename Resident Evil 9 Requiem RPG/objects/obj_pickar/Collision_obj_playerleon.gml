/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A578533
/// @DnDArgument : "var" "global.mutagen"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "50"
if(global.mutagen >= 50)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73891CE6
	/// @DnDParent : 0A578533
	/// @DnDArgument : "expr" "-50"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.mutagen"
	global.mutagen += -50;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5073FDD9
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 0A578533
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "has_ar"
	with(obj_playerleon) {
	has_ar = true;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35137976
	/// @DnDParent : 0A578533
	instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 4503916B
	/// @DnDParent : 0A578533
	/// @DnDArgument : "soundid" "snd_arpick"
	/// @DnDSaveInfo : "soundid" "snd_arpick"
	audio_play_sound(snd_arpick, 0, 0, 1.0, undefined, 1.0);
}