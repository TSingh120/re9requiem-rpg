/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37CC873E
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "has_shotgun"
with(obj_playerleon) {
has_shotgun = true;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 32B1F23D
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 55B64CD4
/// @DnDArgument : "soundid" "snd_gunpickup"
/// @DnDSaveInfo : "soundid" "snd_gunpickup"
audio_play_sound(snd_gunpickup, 0, 0, 1.0, undefined, 1.0);