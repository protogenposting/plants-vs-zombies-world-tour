/// @description kill
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		hp*=2
		pfi=pfr
	}
}
if(instance_exists(basiczombie))
{
inst=instance_nearest(x,y,basiczombie)
dir=point_direction(x,y,inst.x,inst.y)
}
else
{
	dir=0
}
if(mouse_check_button(mb_left))
{
	dir=point_direction(x,y,mouse_x,mouse_y)
}