draw_circular_HP(1250,670,obj_playerleon.playerhp,100,c_lime,80,1,17);
draw_circular_HP(1250,670,100,100,c_black,82,0.5,21);

var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;

//Properties
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);	

draw_set_font(Font1);
draw_set_color(c_white);

draw_text(120, 50, "Mutagen: " + string(global.mutagen));

if instance_exists(obj_handgun)
{
    draw_text(
    1247,
    670,
    string(handgun_ammo) + "/" + string(handgun_reserve)
    );
}
if instance_exists(obj_assault_rifle)
{
    draw_text(
    1242,
    670,
    string(ar_ammo) + "/" + string(ar_reserve)
    );
}
if instance_exists(obj_shotgun)
{
    draw_text(
    1242,
    670,
    string(shotgun_ammo) + "/" + string(shotgun_reserve)
    );
}
if instance_exists(obj_sniper)
{
    draw_text(
    1242,
    670,
    string(sniper_ammo) + "/" + string(sniper_reserve)
    );
}