if(instance_exists(plant5))
{
inst=instance_nearest(x,y,plant5)
move_towards_point(inst.x,inst.y,20)
}
if(distance_to_object(plant2)<64||distance_to_object(plant11)<64||distance_to_object(plant10)<64||distance_to_object(plant64)<64||distance_to_object(plant24)<64||distance_to_object(bullet13)<64||distance_to_object(bullet16)<64||distance_to_object(plant72)<64)
{
	action_kill_object();
}
if(distance_to_object(plant36)<128)
{
	instance_destroy()
}