sh-=1
if(sh<=0)
{
var	num=0
repeat(instance_number(plant1))
{
	inst=instance_find(plant1,num)
	with(inst)
	{
		if(distance_to_object(other)<=68)
		{
			hp+=6.1*5
			inst=instance_create(x,y,effect)
			inst.depth=depth-100
		}
	}
	sh=reload
	num+=1
}
sprite_index=healyhockheal
image_index=0
alarm[1]=image_number*(room_speed/sprite_get_speed(sprite_index))
}

if(sh<=100)
{
col=c_gray
}
else
{
col=c_white
}

///kill
if(hp<=0)
{
instance_destroy()
}

