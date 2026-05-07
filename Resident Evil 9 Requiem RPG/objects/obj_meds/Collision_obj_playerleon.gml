/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 04746E15
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "var" "playerhp"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
with(obj_playerleon) var l04746E15_0 = playerhp < 100;
if(l04746E15_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0519B963
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 04746E15
	/// @DnDArgument : "expr" "+15"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "playerhp"
	with(obj_playerleon) {
	playerhp += +15;
	
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 3089909B
	/// @DnDParent : 04746E15
	/// @DnDArgument : "soundid" "snd_healthpick"
	/// @DnDSaveInfo : "soundid" "snd_healthpick"
	audio_play_sound(snd_healthpick, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7745CFF2
	/// @DnDParent : 04746E15
	instance_destroy();
}