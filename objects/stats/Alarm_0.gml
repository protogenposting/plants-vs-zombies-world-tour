inst=instance_create(random_range(0,room_width),-64,sun)
inst.vsp=0.5

if(room==endless3)
{
	waterlevel=random_range(0,10)
}
action_set_alarm(720, 0);
