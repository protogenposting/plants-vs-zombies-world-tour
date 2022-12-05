if(other.y<oy+30&&other.y>oy-30)
{
audio_play_sound(hit,1000,false)
other.hp-=1
other.hitty=true
other.alarm[1]+=10
action_kill_object();
}