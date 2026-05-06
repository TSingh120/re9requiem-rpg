/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 47EBC48A
/// @DnDArgument : "obj" "obj_flashlight"
/// @DnDSaveInfo : "obj" "obj_flashlight"
var l47EBC48A_0 = false;
l47EBC48A_0 = instance_exists(obj_flashlight);
if(l47EBC48A_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 041858AF
	/// @DnDApplyTo : {obj_flashlight}
	/// @DnDParent : 47EBC48A
	with(obj_flashlight) instance_destroy();
}

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