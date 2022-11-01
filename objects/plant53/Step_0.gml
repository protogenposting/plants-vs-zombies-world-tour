image_xscale+=0.1
image_yscale+=0.1
sh-=1
if(sh<=0)
{
	audio_play_sound(bewm,1000,false)
	effect_create_above(ef_explosion,x,y,1,c_red)
with(basiczombie)
{
	
	if(distance_to_object(other)<=64)
	{
		hp-=20
	}
}
sh=reload
instance_destroy()
}

///kill
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	pfi-=1
	col=collision_rectangle(x-64,y-4,x+64*3,y+4,basiczombie,true,true)
	if(pfi<=0 && col)
	{
		col.hp-=0.01
		pfi=pfr
	}
}