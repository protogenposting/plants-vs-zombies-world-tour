audio_play_sound(hit,1000,false)

action_kill_object();
other.hp-=2
other.hitty=true
other.alarm[1]=10
inst=instance_create(other.x,other.y,effect)
inst.sprite_index=splatter2
if(other.hp<=0)
{
	inst=instance_create(other.x,other.y-16,effect)
	inst.sprite_index=effectdead2
}