/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5073FDD9
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "has_ar"
with(obj_playerleon) {
has_ar = true;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 35137976
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4503916B
/// @DnDArgument : "soundid" "snd_arpick"
/// @DnDSaveInfo : "soundid" "snd_arpick"
audio_play_sound(snd_arpick, 0, 0, 1.0, undefined, 1.0);