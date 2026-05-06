/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 76AB7537
/// @DnDArgument : "expr" "-other.damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "var_zombie_hp"
var_zombie_hp += -other.damage;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4B3F3686
/// @DnDArgument : "soundid" "snd_shothit"
/// @DnDArgument : "gain" "random_range(0.5,0.7)"
/// @DnDArgument : "pitch" "random_range(0.5,1.5)"
/// @DnDSaveInfo : "soundid" "snd_shothit"
audio_play_sound(snd_shothit, 0, 0, random_range(0.5,0.7), undefined, random_range(0.5,1.5));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CE668C2
/// @DnDApplyTo : {obj_bullet}
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "obj_bloodhit"
/// @DnDArgument : "layer" ""characters""
/// @DnDSaveInfo : "objectid" "obj_bloodhit"
with(obj_bullet) {
	instance_create_layer(other.x, other.y, "characters", obj_bloodhit); 
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F901C34
/// @DnDApplyTo : {obj_bloodhit}
/// @DnDArgument : "expr" "random(180)"
/// @DnDArgument : "var" "image_angle"
with(obj_bloodhit) {
image_angle = random(180);

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15E3BEA5
/// @DnDApplyTo : {obj_bloodhit}
/// @DnDArgument : "expr" "random_range(0.3,1.2)"
/// @DnDArgument : "var" "image_xscale"
with(obj_bloodhit) {
image_xscale = random_range(0.3,1.2);

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B662AB5
/// @DnDApplyTo : {obj_bloodhit}
/// @DnDArgument : "expr" "image_xscale"
/// @DnDArgument : "var" "image_yscale"
with(obj_bloodhit) {
image_yscale = image_xscale;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 09E1ADB5
/// @DnDApplyTo : {obj_bullet}
with(obj_bullet) instance_destroy();