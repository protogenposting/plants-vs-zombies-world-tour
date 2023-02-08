/// @description Insert description here
// You can write your code in this editor
var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);
layer_background_visible(bg,false)
var ecs=-32
var why=-32
repeat((room_height/sprite_get_height(layer_background_get_sprite(bg))))
{
	repeat((room_width/sprite_get_width(layer_background_get_sprite(bg)))+1)
	{
		if(layer_background_get_sprite(bg)==tileunderground2&&why<room_width/2)
		{
			draw_sprite(tilepurpgrass,0,ecs,why)
		}
		else
		{
		draw_sprite(layer_background_get_sprite(bg),0,ecs,why)
		}
		ecs+=sprite_get_width(layer_background_get_sprite(bg))
	}
why+=sprite_get_height(layer_background_get_sprite(bg))
ecs=-32
}