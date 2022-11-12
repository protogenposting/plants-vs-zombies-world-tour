col=c_red
if(elected)
{
	col=c_yellow
	sh+=1
}
if(frozen)
{
col=c_aqua
sh-=0.5
}
else
{
sh-=1
}
if(sh<=0)
{
inst=instance_create(x,y-6,bulletbad)
inst.hspeed=-5
audio_play_sound(pop,1000,false)
sh=reload
}

///kill
if(hp<=0)
{
instance_destroy()
}

if(withered)
{
hp-=0.01
stats.dps+=0.01
col=c_black
}

i-=1