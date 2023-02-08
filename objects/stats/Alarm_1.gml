if(num<mnum)
{
if(killed>500)
{
killed-=1
}
var numyo=0
repeat(killed/10)
{
var zomby=basiczombie
if(num>4)
{
	var bnum=0
	repeat(array_length(zomb))
	{
		if(random_range(0,10)>=6)
		{
			zomby=zomb[bnum]
		}
		bnum+=1
	}
}
if(room==minigamebeach||room==minigamelawn)
{
	zomby=basiczombie
}
undergrounded=false
var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);
if(layer_background_get_sprite(bg)==tileunderground2)
{
	undergrounded=choose(true,false)
}
why=choose(160,160+64,160+128,160+192,160+192+64)
if(undergrounded)
{
	why+=room_height/1.5
}
inst=instance_create(32+(64*11)+64*5,why,zomby)
numyo+=1
action_set_alarm(random_range(2,1000-killed*3), 1);
if(num<4)
{
	alarm[1]=720*2
}
if(room==minigamebeach||room==minigamelawn)
{
	if(numyo>=4)
	{
		break;
	}
	alarm[1]=60
	inst.nspd=3
	inst.spd=3
	break;
}
}
num+=1
if(alarm[1]<20)
{
	alarm[1]=120
}
}