/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7DDE0013
/// @DnDArgument : "obj" "obj_assault_rifle"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_assault_rifle"
var l7DDE0013_0 = false;
l7DDE0013_0 = instance_exists(obj_assault_rifle);
if(!l7DDE0013_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 03B0FBCF
	/// @DnDApplyTo : {obj_handgun}
	/// @DnDParent : 7DDE0013
	with(obj_handgun) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 07D95A31
	/// @DnDApplyTo : {obj_shotgun}
	/// @DnDParent : 7DDE0013
	with(obj_shotgun) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E68B3E7
	/// @DnDApplyTo : {obj_sniper}
	/// @DnDParent : 7DDE0013
	with(obj_sniper) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E660874
	/// @DnDParent : 7DDE0013
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_assault_rifle"
	/// @DnDArgument : "layer" ""guns""
	/// @DnDSaveInfo : "objectid" "obj_assault_rifle"
	instance_create_layer(x + 0, y + 0, "guns", obj_assault_rifle);
}