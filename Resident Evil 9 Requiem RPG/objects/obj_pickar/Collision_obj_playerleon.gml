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
/// @DnDArgument : "soundid" "snd_gunpickup"
/// @DnDSaveInfo : "soundid" "snd_gunpickup"
audio_play_sound(snd_gunpickup, 0, 0, 1.0, undefined, 1.0);