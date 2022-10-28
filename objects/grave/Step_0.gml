/// @description Insert description here
// You can write your code in this editor
if(hp<0)
{
	instance_destroy()
}
i-=1
col=c_white
if(place_meeting(x,y,plant1))
{
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

while(place_meeting(x,y,tiletypewater))
		{
			x-=32
		}