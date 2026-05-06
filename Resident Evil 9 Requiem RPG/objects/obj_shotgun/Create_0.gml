mouse_angle = 0;
knockback_angle= 0;

obj_playerleon.x = x;
obj_playerleon.y = y;

pellet = {
	sprite: spr_pellet,
	spd: 25,
	rate_start: 60,
	rate_end: 60,
	rate_mult: 0,
	firerate: 60,
	damage: 6,
}; 

shotgun = {
	name: "Shotgun",
	sprite: spr_shotgun,
	ammo: [pellet],
	inaccuracy: 15,
	kick: 7,
	sound: snd_shotgunshot,
	spread_number: 8,
	spread_angle: 10,
	fullauto: false,
	burst_number: 1,
	burst_delay: 0
};

weapon = shotgun;

canshoot = 0;
bullethg_index = 0;
