/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 111019C7
/// @DnDArgument : "obj" "obj_handgun"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_handgun"
var l111019C7_0 = false;
l111019C7_0 = instance_exists(obj_handgun);
if(!l111019C7_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1DE5845F
	/// @DnDApplyTo : {obj_assault_rifle}
	/// @DnDParent : 111019C7
	with(obj_assault_rifle) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 297EF011
	/// @DnDApplyTo : {obj_shotgun}
	/// @DnDParent : 111019C7
	with(obj_shotgun) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35889036
	/// @DnDApplyTo : {obj_sniper}
	/// @DnDParent : 111019C7
	with(obj_sniper) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 758E7E15
	/// @DnDParent : 111019C7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_handgun"
	/// @DnDArgument : "layer" ""guns""
	/// @DnDSaveInfo : "objectid" "obj_handgun"
	instance_create_layer(x + 0, y + 0, "guns", obj_handgun);
}