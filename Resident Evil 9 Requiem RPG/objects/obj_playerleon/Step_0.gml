/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 532BCD2B
/// @DnDArgument : "var" "flash_timer"
/// @DnDArgument : "op" "3"
if(flash_timer <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 325BC1F2
	/// @DnDParent : 532BCD2B
	/// @DnDArgument : "expr" "c_white"
	/// @DnDArgument : "var" "image_blend"
	image_blend = c_white;
}

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
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "flash_timer"
	flash_timer = -1;
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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0CA5E526
/// @DnDArgument : "var" "playerhp"
/// @DnDArgument : "op" "3"
if(playerhp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5C166E0E
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 0CA5E526
	/// @DnDArgument : "objind" "obj_playerdead"
	/// @DnDSaveInfo : "objind" "obj_playerdead"
	with(obj_playerleon) instance_change(obj_playerdead, true);
}