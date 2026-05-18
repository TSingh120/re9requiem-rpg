var needed = obj_playerleon.sniper_mag_size - obj_playerleon.sniper_ammo;

var taken = min(needed, obj_playerleon.sniper_reserve);

obj_playerleon.sniper_ammo += taken;

obj_playerleon.sniper_reserve -= taken;

obj_playerleon.sniper_reloading = false;