sh-=1
if(sh<=0)
{
instance_create(x,y,moon)
sh=reload
}

if(sh<=100)
{
col=c_gray
}
else
{
col=c_white
}

instance_create(x-64,y,tiletypepower)
instance_create(x+64,y,tiletypepower)
instance_create(x+128,y,tiletypepower)
instance_create(x+128+64,y,tiletypepower)

///kill
if(hp<=0)
{
instance_destroy()
}

var ecs=0
var why=0
if(pfactive)
{
	repeat(room_height/64)
	{
		repeat(room_width/64)
		{
			instance_create(ecs,why,tiletypepower)
			ecs+=64
		}
		ecs=0
		why+=64
	}
}