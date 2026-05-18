var needed = obj_playerleon.ar_mag_size - obj_playerleon.ar_ammo;

var taken = min(needed, obj_playerleon.ar_reserve);

obj_playerleon.ar_ammo += taken;

obj_playerleon.ar_reserve -= taken;

obj_playerleon.ar_reloading = false;