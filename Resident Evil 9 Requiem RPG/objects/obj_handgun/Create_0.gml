//unarmed
weapons[0] = ds_map_create();
ds_map_add(weapons[0],"sprite",-1);
ds_map_add(weapons[0],"recoil",0);
ds_map_add(weapons[0],"recoil_push",0);
ds_map_add(weapons[0],"damage",0);
ds_map_add(weapons[0],"projectile",-1);
ds_map_add(weapons[0],"startup",0);
ds_map_add(weapons[0],"length",0);
ds_map_add(weapons[0],"cooldown",0);
ds_map_add(weapons[0],"bulletspeed",0);
ds_map_add(weapons[0],"automatic",false);

//handgun
weapons[1] = ds_map_create();
ds_map_add(weapons[1],"sprite",spr_handgun);
ds_map_add(weapons[1],"recoil",1);
ds_map_add(weapons[1],"recoil_push",0);
ds_map_add(weapons[1],"damage",8);
ds_map_add(weapons[1],"projectile",obj_hitscan);
ds_map_add(weapons[1],"startup",0);
ds_map_add(weapons[1],"length",24);
ds_map_add(weapons[1],"cooldown",5);
ds_map_add(weapons[1],"bulletspeed",0);
ds_map_add(weapons[1],"automatic",false);

//assault_rifle
weapons[2] = ds_map_create();
ds_map_add(weapons[2],"sprite",spr_assault_rifle);
ds_map_add(weapons[2],"recoil",3);
ds_map_add(weapons[2],"recoil_push",0.2);
ds_map_add(weapons[2],"damage",13);
ds_map_add(weapons[2],"projectile",obj_hitscan);
ds_map_add(weapons[2],"startup",0);
ds_map_add(weapons[2],"length",24);
ds_map_add(weapons[2],"cooldown",3);
ds_map_add(weapons[2],"bulletspeed",0);
ds_map_add(weapons[2],"automatic",true);

weapon = 0;
ammo[array_length_1d(weapons)-1] = 0;
ammo[0] = -1;

weapon = 2;
var wp_map = weapons[weapon];
sprite = ds_map_find_value(wp_map,"sprite");
recoil = wp_map[? "recoil"];
recoil_push = wp_map[? "recoil_push"];
damage = wp_map[? "damage"];
projectile = wp_map[? "projectile"];
startup = wp_map[? "startup"];
length = wp_map[? "length"];
cooldown = wp_map[? "cooldown"];
bulletspeed = wp_map[? "bulletspeed"];
automatic = wp_map[? "automatic"];