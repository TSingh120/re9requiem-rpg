/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37478C80
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "var" "damage_timer"
/// @DnDArgument : "op" "3"
with(obj_playerleon) var l37478C80_0 = damage_timer <= 0;
if(l37478C80_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7203CF3E
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 37478C80
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "playerhp"
	with(obj_playerleon) {
	playerhp += -3;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E02698A
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 37478C80
	/// @DnDArgument : "expr" "30"
	/// @DnDArgument : "var" "damage_timer"
	with(obj_playerleon) {
	damage_timer = 30;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0348EFE6
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 37478C80
	/// @DnDArgument : "expr" "c_red"
	/// @DnDArgument : "var" "image_blend"
	with(obj_playerleon) {
	image_blend = c_red;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CA89944
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 37478C80
	/// @DnDArgument : "expr" "30"
	/// @DnDArgument : "var" "flash_timer"
	with(obj_playerleon) {
	flash_timer = 30;
	
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 17F89965
	/// @DnDParent : 37478C80
	/// @DnDArgument : "soundid" "snd_laserburn"
	/// @DnDSaveInfo : "soundid" "snd_laserburn"
	audio_play_sound(snd_laserburn, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 62CAEBD8
	/// @DnDParent : 37478C80
	/// @DnDArgument : "soundid" "snd_playerhurt"
	/// @DnDSaveInfo : "soundid" "snd_playerhurt"
	audio_play_sound(snd_playerhurt, 0, 0, 1.0, undefined, 1.0);
}