/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 707BF731
/// @DnDArgument : "soundid" "song_menu"
/// @DnDSaveInfo : "soundid" "song_menu"
audio_stop_sound(song_menu);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7CE1B2DF
/// @DnDArgument : "soundid" "song_boobawamba"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "song_boobawamba"
audio_play_sound(song_boobawamba, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 040B4319
instance_destroy();