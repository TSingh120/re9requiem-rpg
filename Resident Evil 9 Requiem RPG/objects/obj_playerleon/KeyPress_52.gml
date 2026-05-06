/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 409B1966
/// @DnDArgument : "expr" "has_sniper=true"
if(has_sniper=true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 26925817
	/// @DnDParent : 409B1966
	/// @DnDArgument : "obj" "obj_sniper"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_sniper"
	var l26925817_0 = false;
	l26925817_0 = instance_exists(obj_sniper);
	if(!l26925817_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 73B32D3C
		/// @DnDApplyTo : {obj_assault_rifle}
		/// @DnDParent : 26925817
		with(obj_assault_rifle) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 45C1249E
		/// @DnDApplyTo : {obj_handgun}
		/// @DnDParent : 26925817
		with(obj_handgun) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1E00E5AA
		/// @DnDApplyTo : {obj_shotgun}
		/// @DnDParent : 26925817
		with(obj_shotgun) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 67F2BEC0
		/// @DnDApplyTo : {obj_flashlight}
		/// @DnDParent : 26925817
		with(obj_flashlight) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1DA50EA0
		/// @DnDParent : 26925817
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_sniper"
		/// @DnDArgument : "layer" ""guns""
		/// @DnDSaveInfo : "objectid" "obj_sniper"
		instance_create_layer(x + 0, y + 0, "guns", obj_sniper);
	}
}