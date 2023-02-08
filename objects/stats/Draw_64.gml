draw_set_color(c_black)
//draw_text(0,32,string_hash_to_newline(string(dps)))
why=view_get_hport(view_current)-64
ecs=128
draw_rectangle(ecs,why,ecs+128,why+64,true)
draw_text(ecs,why,"swap layer")
if(point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),ecs,why,ecs+128,why+64)&&mouse_check_button_pressed(mb_left))
{
	var lay_id = layer_get_id("Compatibility_Colour");
	var bg = layer_background_get_id(lay_id);
	if(layer_background_get_sprite(bg)==tileunderground2)
	{
		underground=!underground
	}
}

if(underground)
{
	if(camera_get_view_y(view_camera[0])<room_height/1.5)
	{
		camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0])+15)
	}
}
else
{
	if(camera_get_view_y(view_camera[0])>0)
	{
		camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0])-15)
	}
}