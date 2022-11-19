if(collision_line(x, y, room_width, y, basiczombie, true, true))
{
	image_speed=1
}
else
{
	i=16*(room_speed/sprite_get_speed(sprite_index))
	image_speed=0
	image_index=0
}
if(image_index>image_number)
{
	image_index=0
}
i-=1
if(i<=0)
{
inst=instance_create(x,y,bullet22)
inst.hspeed=5
i=reload
}

///kill
if(hp<=0)
{
instance_destroy()
}