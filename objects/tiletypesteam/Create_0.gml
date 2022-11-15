action_set_alarm(120, 0);
action_set_alarm(6, 1);
if(distance_to_object(plant2)<64||distance_to_object(plant11)<64||distance_to_object(plant10)<64||distance_to_object(plant64)<64)
{
	action_kill_object();
}
if(distance_to_object(plant36)<128)
{
	instance_destroy()
}