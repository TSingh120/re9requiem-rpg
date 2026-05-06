/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0CE5DE29
/// @DnDArgument : "obj" "obj_shotgun"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_shotgun"
var l0CE5DE29_0 = false;
l0CE5DE29_0 = instance_exists(obj_shotgun);
if(!l0CE5DE29_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 19142578
	/// @DnDApplyTo : {obj_handgun}
	/// @DnDParent : 0CE5DE29
	with(obj_handgun) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 54368070
	/// @DnDApplyTo : {obj_assault_rifle}
	/// @DnDParent : 0CE5DE29
	with(obj_assault_rifle) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B33D2ED
	/// @DnDParent : 0CE5DE29
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_shotgun"
	/// @DnDArgument : "layer" ""guns""
	/// @DnDSaveInfo : "objectid" "obj_shotgun"
	instance_create_layer(x + 0, y + 0, "guns", obj_shotgun);
}