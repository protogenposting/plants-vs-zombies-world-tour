if(room!=endless5)
{
var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);
if(layer_background_get_sprite(bg)==tilevolcano)
{
	numbah=choose(sun,sun,volcanosun)
}
else
{
	numbah=sun
}
inst=instance_create(random_range(0,room_width),-64,numbah)
inst.vsp=0.5*((inst.object_index==volcanosun)+1)
}

var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);
if(layer_background_get_sprite(bg)==tilesand)
{
	waterlevel=random_range(0,20)
}
action_set_alarm(720, 0);
