sh-=1
if(inst!=-1&&!instance_exists(inst))
{
	inst=-1
}
if(sh<=0)
{
inst=instance_create(x,y,coldsun)
inst.flowad=true
sh=reload
}

if(sh<=100)
{
col=c_blue
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

if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		instance_create(x+random_range(-6,6),y,coldsun)
		pfi=pfr
	}
}
var lay_id = layer_get_id("Compatibility_Colour"); var bg = layer_background_get_id(lay_id); if(y>room_height/2&&layer_background_get_sprite(bg)==tileunderground2)
{
	hp-=1
}