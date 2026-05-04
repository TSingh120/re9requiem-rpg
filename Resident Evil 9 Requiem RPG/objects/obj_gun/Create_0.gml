mouse_angle = 0;
knockback_angle= 0;

obj_playerleon.x = x;
obj_playerleon.y = y;

bullet = {
	sprite: spr_bullet,
	spd: 20,
	rate_start: 20,
	rate_end: 20,
	rate_mult: 0,
	firerate: 20,
}; 

gun = {
	name: "Pistol",
	sprite: spr_handgun,
	ammo: [bullet],
	inaccuracy: 0,
	kick: 2,
	sound: snd_pistolshot,
	spread_number: 3,
	spread_angle: 15,
	fullauto: true,
	burst_number: 1,
	burst_delay: 0
};

canshoot = 0;
bullet_index = 0;
