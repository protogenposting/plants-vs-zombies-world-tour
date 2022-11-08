if(collision_line(x, y, room_width, y, basiczombie, true, true))
{
	image_speed=1
}
else
{
	image_speed=0
	image_index=0
}
if(image_index==16)
{
inst=instance_create(x,y,bigdropplet)
sh=reload
}
if(image_index==18)
{
inst=instance_create(x,y,bigdropplet)
sh=reload
}

///kill
if(hp<=0)
{
instance_destroy()
}