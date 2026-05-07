/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3297D405
/// @DnDApplyTo : {obj_bullet}
with(obj_bullet) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0B54CE89
/// @DnDArgument : "soundid" "snd_bulletmiss"
/// @DnDSaveInfo : "soundid" "snd_bulletmiss"
audio_play_sound(snd_bulletmiss, 0, 0, 1.0, undefined, 1.0);