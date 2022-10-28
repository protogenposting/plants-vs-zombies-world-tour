image_angle=direction
spd+=0.1
if(instance_exists(target))
{
	move_towards_point(target.x,target.y,spd)
}
else if(instance_exists(basiczombie))
	{
		target=instance_nearest(x,y,basiczombie)
	}