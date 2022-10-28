sh-=1
col=collision_line(x, y, room_width, y, basiczombie, true, true)
if(sh<=0 && col)
{
inst=instance_create(x,y,bullet7)
sh=reload
if(powered)
{
	sh=reload/3
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
sprite_index=poweredzombean
}
else
{
powered=false
sprite_index=zombean
}

if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		audio_play_sound(pop,1000,false)
		repeat(10)
		{
			inst=instance_create(x,y,bullet7)
			inst.image_xscale=4
			inst.image_yscale=4
		}
		pfi=pfr
	}
}