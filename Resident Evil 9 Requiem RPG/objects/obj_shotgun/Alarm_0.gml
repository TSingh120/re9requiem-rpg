var needed = obj_playerleon.shotgun_mag_size - obj_playerleon.shotgun_ammo;

var taken = min(needed, obj_playerleon.shotgun_reserve);

obj_playerleon.shotgun_ammo += taken;

obj_playerleon.shotgun_reserve -= taken;

obj_playerleon.shotgun_reloading = false;