/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E44A02A
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "var" "has_greenkeycard"
/// @DnDArgument : "value" "1"
with(obj_playerleon) var l1E44A02A_0 = has_greenkeycard == 1;
if(l1E44A02A_0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0EFC0767
	/// @DnDParent : 1E44A02A
	/// @DnDArgument : "objind" "obj_dooropen2"
	/// @DnDSaveInfo : "objind" "obj_dooropen2"
	instance_change(obj_dooropen2, true);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 73757EA8
	/// @DnDParent : 1E44A02A
	/// @DnDArgument : "soundid" "snd_ding"
	/// @DnDSaveInfo : "soundid" "snd_ding"
	audio_play_sound(snd_ding, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6BE2C408
	/// @DnDParent : 1E44A02A
	/// @DnDArgument : "soundid" "snd_dooropening"
	/// @DnDSaveInfo : "soundid" "snd_dooropening"
	audio_play_sound(snd_dooropening, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 19595C32
else
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 10369E19
	/// @DnDParent : 19595C32
	/// @DnDArgument : "soundid" "snd_accessdenied"
	/// @DnDSaveInfo : "soundid" "snd_accessdenied"
	audio_play_sound(snd_accessdenied, 0, 0, 1.0, undefined, 1.0);
}