/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1DE5845F
/// @DnDApplyTo : {obj_assault_rifle}
with(obj_assault_rifle) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 758E7E15
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_handgun"
/// @DnDArgument : "layer" ""guns""
/// @DnDSaveInfo : "objectid" "obj_handgun"
instance_create_layer(x + 0, y + 0, "guns", obj_handgun);