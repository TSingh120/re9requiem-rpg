/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03E40969
/// @DnDArgument : "expr" "irandom_range(2,9)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_playerleon.shotgun_reserve"
obj_playerleon.shotgun_reserve += irandom_range(2,9);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 45401C06
instance_destroy();