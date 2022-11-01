sh-=1
if(sh<=0 && collision_line(x, y, room_width, y, basiczombie, true, true))
{
inst=instance_create(x,y-6,bullet19)
inst.speed=5
inst.direction=0
audio_play_sound(toxishot,1000,false)
audio_sound_gain(toxishot,2,0)
sh=reload
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
		audio_play_sound(toxishot,1000,false)
		audio_sound_gain(toxishot,2,0)
		inst=instance_create(x,y+random_range(-6,6),bullet19)
		inst.speed=1
		inst.direction=random_range(-45,45)
		pfi=pfr
	}
}