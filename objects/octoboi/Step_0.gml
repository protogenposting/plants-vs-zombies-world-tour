x-=spd/4
if(hp<=0)
{
instance_destroy()
}

i-=1

///speed
col=c_white

if(place_meeting(x,y,tiletypewater))
{
if(room==endless5)
{
	frozen=true
	alarm[0]=360
}
}
else if(place_meeting(x,y,tiletypestink))
{
spd=nspd/2
hp-=0.1
stats.dps+=0.1
}
else
{
spd=nspd
}
if(frozen)
{
image_speed=0.5
col=c_aqua
spd=nspd/2
}
sprite_index=ogsprite
hitsprite=brownflash
if(place_meeting(x,y,zoybeanzombie))
{
spd=0
}
image_speed=1

if(withered)
{
hp-=0.01
stats.dps+=0.01
col=c_black
}

if(elected)
{
	spd=0
}
if(place_meeting(x,y,zoybeanzombie))
{
hp-=0.1
stats.dps+=0.1
}

if(nutted)
{
	x+=spd*2
	image_xscale=-1
	col=c_ltgray
}
else
{
	image_xscale=1
}
if(hitty)
{
	col=c_white
}

if(hp<=10)
{
	armor=-1
	armorhit=-1
}


coly=instance_place(x,y,plant1)
if(coly)
{
	sprite_index=octohide
	spd=0
	x=coly.x
	y=coly.y
	if(variable_instance_exists(col,"sh"))
	{
		coly.sh+=1
	}
}
else
{
	sprite_index=octo
}

if(!place_meeting(x,y,tiletypewater))
{
	hp-=0.01
	nspd*=0.99
}