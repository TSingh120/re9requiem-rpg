/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 055656FB
/// @DnDApplyTo : {obj_playerleon}
/// @DnDArgument : "obj" "obj_playerdead"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_playerdead"
var l055656FB_0 = false;
with(obj_playerleon) l055656FB_0 = instance_exists(obj_playerdead);
if(!l055656FB_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37478C80
	/// @DnDApplyTo : {obj_playerleon}
	/// @DnDParent : 055656FB
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
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "playerhp"
		with(obj_playerleon) {
		playerhp += -10;
		
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
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0348EFE6
		/// @DnDApplyTo : {obj_playerleon}
		/// @DnDParent : 37478C80
		/// @DnDArgument : "expr" "c_red"
		/// @DnDArgument : "var" "image_blend"
		with(obj_playerleon) {
		image_blend = c_red;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0CA89944
		/// @DnDApplyTo : {obj_playerleon}
		/// @DnDParent : 37478C80
		/// @DnDArgument : "expr" "+60"
		/// @DnDArgument : "var" "flash_timer"
		with(obj_playerleon) {
		flash_timer = +60;
		
		}
	}
}