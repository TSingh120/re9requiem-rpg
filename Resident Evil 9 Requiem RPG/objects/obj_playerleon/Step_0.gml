/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19B4CD88
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "3"
if(flash_timer <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DA59B0E
	/// @DnDParent : 19B4CD88
	/// @DnDArgument : "expr" "c_white"
	/// @DnDArgument : "var" "image_blend"
	image_blend = c_white;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BE6FC50
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E6B03AB
	/// @DnDParent : 6BE6FC50
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "flash_timer"
	flash_timer += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EA761A6
/// @DnDArgument : "var" "damage_timer"
/// @DnDArgument : "op" "2"
if(damage_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40FA8030
	/// @DnDParent : 5EA761A6
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "damage_timer"
	damage_timer += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75EB0743
/// @DnDArgument : "var" "playerhp"
/// @DnDArgument : "op" "3"
if(playerhp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2282858C
	/// @DnDParent : 75EB0743
	/// @DnDArgument : "objind" "obj_playerdead"
	/// @DnDSaveInfo : "objind" "obj_playerdead"
	instance_change(obj_playerdead, true);
}