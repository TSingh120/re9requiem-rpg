/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37478C80
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "var" "damage_timer"
/// @DnDArgument : "op" "3"
with(obj_playerleon) var l37478C80_0 = damage_timer <= 0;
if(l37478C80_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7203CF3E
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 37478C80
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "playerhp"
	with(obj_playerleon) {
	playerhp += -3;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E02698A
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 37478C80
	/// @DnDArgument : "expr" "30"
	/// @DnDArgument : "var" "damage_timer"
	with(obj_playerleon) {
	damage_timer = 30;
	
	}
}