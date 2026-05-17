var needed = obj_playerleon.handgun_mag_size - obj_playerleon.handgun_ammo;

var taken = min(needed, obj_playerleon.handgun_reserve);

obj_playerleon.handgun_ammo += taken;

obj_playerleon.handgun_reserve -= taken;

obj_playerleon.handgun_reloading = false;