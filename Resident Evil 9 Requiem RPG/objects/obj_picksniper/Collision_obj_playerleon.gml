/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 59D929CC
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "has_sniper"
with(obj_playerleon) {
has_sniper = true;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4666218C
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 460F2155
/// @DnDArgument : "soundid" "snd_gunpickup"
/// @DnDSaveInfo : "soundid" "snd_gunpickup"
audio_play_sound(snd_gunpickup, 0, 0, 1.0, undefined, 1.0);