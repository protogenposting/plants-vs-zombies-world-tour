draw_sprite_ext(chillflowa,image_index,x,y,1,1,0,col,1)

if(drawing)
{
if(instance_exists(inst))
{
if(instance_exists(inst))
{
	if(inst.hp<=10)
	{
		instance_create(instx,insty,plant31)
		instance_destroy(inst)
		effect_create_above(ef_smoke,x,y,1,c_purple)
	}
}
draw_set_colour(c_purple)
draw_line(x,y,instx,insty)
draw_set_colour(c_gray)
}
}

