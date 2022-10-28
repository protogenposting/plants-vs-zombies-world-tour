/// @description Insert description here
// You can write your code in this editor
if(hp<=0)
{
	instance_destroy()
}
col=c_white
if(place_meeting(x,y,plant1))
{
}
if(place_meeting(x,y,zoybeanzombie))
{
}
else if(place_meeting(x,y,tiletypewater))
{
}
else if(place_meeting(x,y,tiletypestink))
{
hp-=0.1
}
else
{
spd=nspd
}

if(frozen)
{
col=c_aqua
}

if(withered)
{
hp-=0.01
col=c_black
}

if(elected)
{
}
if(place_meeting(x,y,zoybeanzombie))
{
hp-=0.1
}