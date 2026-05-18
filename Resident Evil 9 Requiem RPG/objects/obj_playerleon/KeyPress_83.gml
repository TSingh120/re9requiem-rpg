/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 57418F19
/// @DnDArgument : "spriteind" "spr_playerwalkdown"
/// @DnDSaveInfo : "spriteind" "spr_playerwalkdown"
sprite_index = spr_playerwalkdown;
image_index = 0;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2A8F17E3
/// @DnDArgument : "soundid" "snd_walking"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_walking"
audio_play_sound(snd_walking, 0, 1, 1.0, undefined, 1.0);