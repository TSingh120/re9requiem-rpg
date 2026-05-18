/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4C1FD441
/// @DnDArgument : "spriteind" "spr_playerwalkright"
/// @DnDSaveInfo : "spriteind" "spr_playerwalkright"
sprite_index = spr_playerwalkright;
image_index = 0;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 471C4314
/// @DnDArgument : "soundid" "snd_walking"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_walking"
audio_play_sound(snd_walking, 0, 1, 1.0, undefined, 1.0);