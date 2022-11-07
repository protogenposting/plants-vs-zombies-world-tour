/// @description Insert description here
// You can write your code in this editor
if(array_length(plants.plant)<=planttype)
{
if(instance_exists(stats))
{
inst=instance_create(x,y,planttype)
if(variable_struct_exists(plants.plant[planttype],"waterplant"))
{
	inst.waterboi=true
}
else
{
	inst.waterboi=false
}
}
}