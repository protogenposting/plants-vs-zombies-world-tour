audio_play_sound(hit,1000,false)
other.hp-=image_xscale
stats.dps+=image_xscale
action_kill_object();
other.hitty=true
other.alarm[1]=10