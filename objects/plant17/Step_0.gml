sh-=1
if(!powered)
{
if(sh<=0 && collision_line(x,y,x+96,y,basiczombie,true,true))
{
inst=instance_create(x+96,y,bullet8)
sh=reload
}
}
else
{
if(sh<=0 && collision_rectangle(x,y-96,x+96,y+96,basiczombie,true,true))
{
inst=instance_create(x+96,y,bullet9)
sh=reload
}
}

///kill
if(hp<=0)
{
instance_destroy()
}

///powering
if(place_meeting(x,y,tiletypepower))
{
powered=true
sprite_index=poweredhaywhip
}
else
{
powered=false
sprite_index=haywhip
}

var ecs=0
var why=0
if(pfactive)
{
	repeat(room_height/64)
	{
		repeat(room_width/64)
		{
			instance_create(ecs,why,bullet9)
			ecs+=64
		}
		ecs=0
		why+=64
	}
}