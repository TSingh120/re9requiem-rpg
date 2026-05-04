/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 04746E15
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "var" "playerhp"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
with(obj_playerleon) var l04746E15_0 = playerhp < 100;
if(l04746E15_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0519B963
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 04746E15
	/// @DnDArgument : "expr" "+15"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "playerhp"
	with(obj_playerleon) {
	playerhp += +15;
	
	}
}