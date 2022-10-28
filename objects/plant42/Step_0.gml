sh-=1
if(sh<=0 && collision_line(x, y, room_width, y, basiczombie, true, true)||sh<=0 && collision_line(x, y+32, room_width, y+32, basiczombie, true, true)||sh<=0 && collision_line(x, y-32, room_width, y-32, basiczombie, true, true))
{
inst=instance_create(x,y,bullet17)
inst.hspeed=0
inst2=instance_create(x,y+64,bullet17)
inst2.hspeed=0
inst3=instance_create(x,y-64,bullet17)
inst3.hspeed=0
audio_play_sound(pop,1000,false)
sh=reload
}

///kill
if(hp<=0)
{
instance_destroy()
}

