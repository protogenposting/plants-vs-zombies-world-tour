audio_play_sound(hit,1000,false)

other.hp-=1

other.hitty=true
other.alarm[1]=10
action_kill_object();

inst=instance_create(other.x,other.y,effect)
inst.sprite_index=splatter1
if(other.hp<=0)
{
	inst=instance_create(other.x,other.y,effect)
	inst.sprite_index=effectdead1
}