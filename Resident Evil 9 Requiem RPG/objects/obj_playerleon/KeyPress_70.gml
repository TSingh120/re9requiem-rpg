/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0669661E
/// @DnDArgument : "obj" "obj_flashlight"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_flashlight"
var l0669661E_0 = false;
l0669661E_0 = instance_exists(obj_flashlight);
if(!l0669661E_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5B32D595
	/// @DnDApplyTo : {obj_handgun}
	/// @DnDParent : 0669661E
	with(obj_handgun) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2144D9AD
	/// @DnDApplyTo : {obj_assault_rifle}
	/// @DnDParent : 0669661E
	with(obj_assault_rifle) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22217EC7
	/// @DnDApplyTo : {obj_sniper}
	/// @DnDParent : 0669661E
	with(obj_sniper) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 383D40CF
	/// @DnDApplyTo : {obj_shotgun}
	/// @DnDParent : 0669661E
	with(obj_shotgun) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1397DB22
	/// @DnDParent : 0669661E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_flashlight"
	/// @DnDArgument : "layer" ""guns""
	/// @DnDSaveInfo : "objectid" "obj_flashlight"
	instance_create_layer(x + 0, y + 0, "guns", obj_flashlight);
}