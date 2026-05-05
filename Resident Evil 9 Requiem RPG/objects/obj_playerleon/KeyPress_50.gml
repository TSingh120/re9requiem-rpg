/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 03B0FBCF
/// @DnDApplyTo : {obj_handgun}
with(obj_handgun) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0E660874
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_assault_rifle"
/// @DnDArgument : "layer" ""guns""
/// @DnDSaveInfo : "objectid" "obj_assault_rifle"
instance_create_layer(x + 0, y + 0, "guns", obj_assault_rifle);