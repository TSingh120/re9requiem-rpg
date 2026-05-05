mouse_angle = 0;
knockback_angle= 0;

obj_playerleon.x = x;
obj_playerleon.y = y;

bulletar = {
	sprite: spr_arbullet,
	spd: 50,
	rate_start: 30,
	rate_end: 30,
	rate_mult: 0,
	firerate: 30,
}; 

argun = {
	name: "Assault_Rifle",
	sprite: spr_assault_rifle,
	ammo: [bulletar],
	inaccuracy: 2,
	kick: 1,
	sound: snd_arshot,
	spread_number: 1,
	spread_angle: 20,
	fullauto: true,
	burst_number: 0,
	burst_delay: 0
};

canshoot = 0;
bulletar_index = 0;
