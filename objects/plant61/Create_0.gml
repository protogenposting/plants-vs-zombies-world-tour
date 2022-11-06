reload=60
sh=reload
hp=100
image_speed=1

action_set_alarm(60, 0);
pfactive=false
pftime=120
pfi=0
pfr=3

if(!instance_exists(obj_mic))
{
	instance_create(x,y,obj_mic)
}
yscale=0