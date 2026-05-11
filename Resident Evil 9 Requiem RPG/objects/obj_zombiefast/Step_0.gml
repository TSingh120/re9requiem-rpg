/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4945AF74
/// @DnDArgument : "obj" "obj_playerleon"
/// @DnDSaveInfo : "obj" "obj_playerleon"
var l4945AF74_0 = false;
l4945AF74_0 = instance_exists(obj_playerleon);
if(l4945AF74_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4180ED7A
	/// @DnDParent : 4945AF74
	/// @DnDArgument : "var" "point_distance(x,y,obj_playerleon.x,obj_playerleon.y)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "walk_range"
	if(point_distance(x,y,obj_playerleon.x,obj_playerleon.y) < walk_range)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4F5071E9
		/// @DnDParent : 4180ED7A
		/// @DnDArgument : "expr" "spr_zombiewalk"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_zombiewalk;
	
		/// @DnDAction : YoYo Games.Movement.move_and_collide
		/// @DnDVersion : 1
		/// @DnDHash : 4C1C6221
		/// @DnDParent : 4180ED7A
		/// @DnDArgument : "xvel" "lengthdir_x(var_zombie_speed, point_direction(x, y, obj_playerleon.x, obj_playerleon.y))"
		/// @DnDArgument : "yvel" "lengthdir_y(var_zombie_speed, point_direction(x, y, obj_playerleon.x, obj_playerleon.y))"
		/// @DnDArgument : "maxxmove" "var_zombie_speed"
		/// @DnDArgument : "maxymove" "var_zombie_speed-0.4"
		/// @DnDArgument : "object" "obj_barrier"
		/// @DnDSaveInfo : "object" "obj_barrier"
		move_and_collide(lengthdir_x(var_zombie_speed, point_direction(x, y, obj_playerleon.x, obj_playerleon.y)), lengthdir_y(var_zombie_speed, point_direction(x, y, obj_playerleon.x, obj_playerleon.y)), obj_barrier,4,0,0,var_zombie_speed,var_zombie_speed-0.4);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76DCD2C8
	/// @DnDParent : 4945AF74
	/// @DnDArgument : "var" "obj_playerleon.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "x"
	if(obj_playerleon.x < x)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27FA40BC
		/// @DnDParent : 76DCD2C8
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = -1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 12352C4F
	/// @DnDParent : 4945AF74
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07A7490E
		/// @DnDParent : 12352C4F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4431C9D8
	/// @DnDParent : 4945AF74
	/// @DnDArgument : "var" "point_distance(x,y,obj_playerleon.x,obj_playerleon.y)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "attack_range"
	if(point_distance(x,y,obj_playerleon.x,obj_playerleon.y) <= attack_range)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EDE111E
		/// @DnDParent : 4431C9D8
		/// @DnDArgument : "expr" "spr_zombieattack"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_zombieattack;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05AB71C7
		/// @DnDParent : 4431C9D8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "attack_state"
		attack_state = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79AA8223
		/// @DnDParent : 4431C9D8
		/// @DnDArgument : "var" "var_zombie_speed"
		var_zombie_speed = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 570C9930
	/// @DnDParent : 4945AF74
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10AD8275
		/// @DnDParent : 570C9930
		/// @DnDArgument : "expr" "spr_zombiewalk"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_zombiewalk;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 796DD4E7
		/// @DnDParent : 570C9930
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "attack_state"
		attack_state = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B011940
		/// @DnDParent : 570C9930
		/// @DnDArgument : "expr" "2.2"
		/// @DnDArgument : "var" "var_zombie_speed"
		var_zombie_speed = 2.2;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32320F7E
	/// @DnDParent : 4945AF74
	/// @DnDArgument : "var" "point_distance(x,y,obj_playerleon.x,obj_playerleon.y)"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "walk_range"
	if(point_distance(x,y,obj_playerleon.x,obj_playerleon.y) >= walk_range)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 349545F8
		/// @DnDParent : 32320F7E
		/// @DnDArgument : "expr" "spr_zombieidle"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_zombieidle;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D45EB1D
	/// @DnDParent : 4945AF74
	/// @DnDArgument : "var" "var_zombie_hp"
	/// @DnDArgument : "op" "3"
	if(var_zombie_hp <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7478D96C
		/// @DnDParent : 7D45EB1D
		/// @DnDArgument : "objind" "obj_zombie_corpse"
		/// @DnDSaveInfo : "objind" "obj_zombie_corpse"
		instance_change(obj_zombie_corpse, true);
	}
}