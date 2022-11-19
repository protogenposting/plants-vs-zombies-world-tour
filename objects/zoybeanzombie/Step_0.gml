x+=spd

anim1[0]=0
anim1[1]=1
anim2[0]=2
anim2[1]=3

if(hp<=0)
{
instance_destroy()
}

i-=1

image_index=anim1[anim]
///speed
col=c_white
if(place_meeting(x,y,basiczombie))
{
image_index=anim2[anim]
spd=0
}
else if(place_meeting(x,y,tiletypewater))
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

if(place_meeting(x,y,basiczombie))
{
hp-=0.1
}