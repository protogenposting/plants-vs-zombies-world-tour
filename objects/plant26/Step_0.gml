sh-=1
if(sh<=0)
{
var	num=0
repeat(instance_number(plant1))
{
	inst=instance_find(plant1,num)
	with(inst)
	{
		if(distance_to_object(other)<=64+32)
		{
			hp+=6.1
			effect_create_above(ef_spark,x,y,1,c_white)
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

