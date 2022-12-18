sh-=1
i-=1
if(sh<=0&&i<=0)
{
sprite_index=treeman

if(point_in_rectangle(mouse_x,mouse_y,x-32,y-32,x+32,y+32)&&mouse_check_button_pressed(mb_left))
{
	aiming=!aiming
}
if(mouse_check_button_pressed(mb_left)&&aiming&&!point_in_rectangle(mouse_x,mouse_y,x-32,y-32,x+32,y+32))
{
	inst=instance_create(x,y,present)
	sh=reload
	aiming=false
	sprite_index=treemanshoot
	image_index=0
	i=image_number*(room_speed/sprite_get_speed(sprite_index))
}
}
else if(i<=0)
{
	sprite_index=treemansad
	if(sh<=sprite_get_number(treemanreload)*(room_speed/sprite_get_speed(treemanreload))&&!done)
	{
		sprite_index=treemanreload
		image_index=0
		i=image_number*(room_speed/sprite_get_speed(sprite_index))
		done=true
	}
}
else if(sh>0)
{
	sprite_index=treemanreload
}
else
{
	sprite_index=treemanshoot
	done=false
}

///kill
if(hp<=0)
{
instance_destroy()
}
