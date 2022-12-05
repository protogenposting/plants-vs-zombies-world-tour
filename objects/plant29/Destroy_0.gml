/// @description Insert description here
// You can write your code in this editor
	with(tiletypeunplantable)
{
	if(distance_to_object(other)<64)
	{
		instance_destroy()
		effect_create_above(ef_smokeup,x,y,1,c_grey)
	}
}