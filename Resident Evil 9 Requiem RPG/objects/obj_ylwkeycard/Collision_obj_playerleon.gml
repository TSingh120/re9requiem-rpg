/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04634CE3
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "has_ylwkeycard"
with(obj_playerleon) {
has_ylwkeycard = 1;

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 529DACCE
/// @DnDArgument : "soundid" "snd_ding"
/// @DnDSaveInfo : "soundid" "snd_ding"
audio_play_sound(snd_ding, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E808A9B
instance_destroy();