/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CD781CD
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "has_sniper"
with(obj_playerleon) {
has_sniper = true;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0CAFDAEA
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4835C341
/// @DnDArgument : "soundid" "snd_snipercock"
/// @DnDSaveInfo : "soundid" "snd_snipercock"
audio_play_sound(snd_snipercock, 0, 0, 1.0, undefined, 1.0);