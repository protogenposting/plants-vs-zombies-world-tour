sh-=1
if(sh<=0)
{
inst=instance_create(x,y,plant28)
inst.hspeed=random_range(1,10)
inst.vspeed=random_range(-2.5,2.5)
audio_play_sound(pop,1000,false)
sh=reload
}

///kill
if(hp<=0)
{
instance_destroy()
}

