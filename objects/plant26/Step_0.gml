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

