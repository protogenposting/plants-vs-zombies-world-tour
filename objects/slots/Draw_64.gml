draw_set_color(c_black)
ecs=64
repeat(maxslots)
{
slottyoa=(ecs/64)-1
slotty=slot[(ecs/64)-1]
reload[slottyoa]-=1
hasplant=true


if(hasplant)
{
if(variable_struct_exists(plants.plant[slotty],"lawn"))
		{
			draw_sprite(plants.plant[slotty].lawn, 0, ecs + 32, 32);
		}
		else
		{
			draw_sprite(tilestore, 0, ecs + 32, 32);
		}
draw_rectangle(ecs,0,ecs+64,64,true)
draw_sprite(object_get_sprite(plants.plant[slotty].object),0,ecs+32,32)
draw_text(ecs+30,y+76,string_hash_to_newline(string(plants.plant[slotty].cost)))
draw_healthbar(ecs,0,ecs+64,64,(reload[slottyoa]/plants.plant[slotty].recharge)*100,c_black,c_black,c_black,0,false,false)
if(keyboard_check_pressed(ord(slottyoa+1)))
{
if(stats.sunny>=plants.plant[slotty].cost&&reload[(ecs/64)-1]<=0)
{
instance_destroy(placer)
inst=instance_create(x,y,placer)
inst.slot=slotty
inst.slotselected=(ecs/64)-1
}
}
if(mouse_x<ecs+64&&mouse_x>ecs&&mouse_y<64&&mouse_y>0||point_in_rectangle(global.Touch_X, global.Touch_Y, ecs, 0, ecs+64, 64))
{
if(mouse_check_button_pressed(mb_left)||global.tapping)
{
if(stats.sunny>=plants.plant[slotty].cost&&reload[(ecs/64)-1]<=0)
{
instance_destroy(placer)
inst=instance_create(x,y,placer)
inst.slot=slotty
inst.slotselected=(ecs/64)-1
}
}
}
ecs+=64
}
}
draw_rectangle(ecs,0,ecs+128+32,64,true)
draw_text(ecs,0,"plant food: "+string(pf)+"/"+string(pfcap))
if(pf>0&&mouse_x<ecs+128+32&&mouse_x>ecs&&mouse_y<64&&mouse_y>0&&mouse_check_button_pressed(mb_left))
{
	inst=instance_create(x,y,plantfood)
}
ecs+=128+32
draw_rectangle(ecs,0,ecs+128,64,true)
draw_text(ecs,0,"shovel")
if(mouse_x<ecs+128&&mouse_x>ecs&&mouse_y<64&&mouse_y>0&&mouse_check_button_pressed(mb_left)||point_in_rectangle(global.Touch_X, global.Touch_Y, ecs, 0, ecs+128, 64)&&global.tapping)
{
	inst=instance_create(x,y,shovel)
}
ecs+=128
draw_healthbar(ecs,0,ecs+128,64,(stats.num/stats.mnum)*100,c_black,c_red,c_green,0,true,true)