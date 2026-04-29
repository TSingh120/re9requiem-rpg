/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1EF71CC7
/// @DnDArgument : "obj" "obj_playerleon"
/// @DnDSaveInfo : "obj" "obj_playerleon"
var l1EF71CC7_0 = false;
l1EF71CC7_0 = instance_exists(obj_playerleon);
if(l1EF71CC7_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4AABCC0D
	/// @DnDParent : 1EF71CC7
	/// @DnDArgument : "expr" "distance_to_object(obj_playerleon)<75"
	if(distance_to_object(obj_playerleon)<75)
	{
		/// @DnDAction : YoYo Games.Movement.move_and_collide
		/// @DnDVersion : 1
		/// @DnDHash : 38D5A248
		/// @DnDParent : 4AABCC0D
		/// @DnDArgument : "xvel" "obj_playerleon.x-x"
		/// @DnDArgument : "yvel" "obj_playerleon.y-y"
		/// @DnDArgument : "maxxmove" "var_zombie_speed"
		/// @DnDArgument : "maxymove" "var_zombie_speed"
		/// @DnDArgument : "object" "obj_barrier"
		/// @DnDSaveInfo : "object" "obj_barrier"
		move_and_collide(obj_playerleon.x-x, obj_playerleon.y-y, obj_barrier,4,0,0,var_zombie_speed,var_zombie_speed);
	}
}