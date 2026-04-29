/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 649A4D91
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "2"
if(flash_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B08DB3D
	/// @DnDParent : 649A4D91
	variable = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11756B54
/// @DnDArgument : "var" "damage_timer"
/// @DnDArgument : "op" "2"
if(damage_timer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 303CA7A5
	/// @DnDParent : 11756B54
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "damage_timer"
	damage_timer += -1;
}