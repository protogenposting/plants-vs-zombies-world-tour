/// @description Insert description here
// You can write your code in this editor
var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);
if(layer_background_get_sprite(bg)==tilerussia)
{
	frozen=true
	alarm[0]=360
}