/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("H")))
{
with(all)
{
	draw_set_color(c_blue)
	if(object_get_parent(object_index)==basiczombie)
	{
		draw_set_color(c_red)
	}
	if(object_get_parent(object_index)==plant1)
	{
		draw_set_color(c_green)
	}
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);
}
}