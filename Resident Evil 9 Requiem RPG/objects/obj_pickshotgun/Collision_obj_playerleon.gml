/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7465C307
/// @DnDArgument : "var" "global.mutagen"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "90"
if(global.mutagen >= 90)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 303E56D3
	/// @DnDParent : 7465C307
	/// @DnDArgument : "expr" "-90"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.mutagen"
	global.mutagen += -90;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37CC873E
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 7465C307
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "has_shotgun"
	with(obj_playerleon) {
	has_shotgun = true;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 32B1F23D
	/// @DnDParent : 7465C307
	instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 55B64CD4
	/// @DnDParent : 7465C307
	/// @DnDArgument : "soundid" "snd_shotgunpick"
	/// @DnDSaveInfo : "soundid" "snd_shotgunpick"
	audio_play_sound(snd_shotgunpick, 0, 0, 1.0, undefined, 1.0);
}