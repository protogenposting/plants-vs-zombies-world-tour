/// @description Insert description here
// You can write your code in this editor
col=instance_place(x,y,tiletypeunplantable)
if(col)
{
	effect_create_above(ef_smokeup,x,y,1,c_grey)
	instance_destroy(col)
}