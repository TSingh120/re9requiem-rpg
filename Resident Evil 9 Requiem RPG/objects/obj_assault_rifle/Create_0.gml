
mouse_angle = 0;
knockback_angle= 0;

obj_playerleon.x = x;
obj_playerleon.y = y;

bulletar = {
	sprite: spr_arbullet,
	spd: 30,
	rate_start: 10,
	rate_end: 10,
	rate_mult: 0,
	firerate: 10,
	damage: 20,
}; 

assault = {
	name: "Assault",
	sprite: spr_assault_rifle,
	ammo: [bulletar],
	inaccuracy: 1,
	kick: 3,
	sound: snd_arshot,
	spread_number: 1,
	spread_angle: 15,
	fullauto: true,
	burst_number: 1,
	burst_delay: 0
};

weapon = assault;

canshoot = 0;
bullethg_index = 0;
