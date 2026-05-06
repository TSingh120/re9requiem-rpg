
mouse_angle = 0;
knockback_angle= 0;

obj_playerleon.x = x;
obj_playerleon.y = y;

bulletsr = {
	sprite: spr_bulletsr,
	spd: 50,
	rate_start: 90,
	rate_end: 90,
	rate_mult: 0,
	firerate: 90,
	damage: 70,
}; 

sniper = {
	name: "Sniper",
	sprite: spr_sniper,
	ammo: [bulletsr],
	inaccuracy: 0,
	kick: 15,
	sound: snd_snipershot,
	spread_number: 1,
	spread_angle: 0,
	fullauto: false,
	burst_number: 1,
	burst_delay: 0
};

weapon = sniper;

canshoot = 0;
bullethg_index = 0;
