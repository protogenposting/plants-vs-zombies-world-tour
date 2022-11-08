if(other.y<oy+30&&other.y>oy-30)
{
audio_play_sound(hit,1000,false)
other.hp-=5
action_kill_object();
}