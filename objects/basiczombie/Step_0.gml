x-=spd

if(hp<=0)
{
instance_destroy()
}

i-=1


///speed
col=c_white
if(place_meeting(x,y,tiletypewater))
{
spd=nspd/2
}
else if(place_meeting(x,y,tiletypestink))
{
spd=nspd/2
hp-=0.1
}
else
{
spd=nspd
}
col=instance_place(x,y,plant44)
if(place_meeting(x,y,plant1))
{
spd=0
if(col&&col.image_index==0)
{
	spd=1
}
}
if(place_meeting(x,y,zoybeanzombie))
{
spd=0
}

if(frozen)
{
col=c_aqua
spd/=2
}

if(withered)
{
hp-=0.01
col=c_black
}

if(elected)
{
	spd=0
}
if(place_meeting(x,y,zoybeanzombie))
{
hp-=0.1
}