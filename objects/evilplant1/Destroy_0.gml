/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,tiletypeunplantable))
{
	effect_create_above(ef_smokeup,x,y,1,c_grey)
}
instance_destroy(effect)
inst=instance_create(x,y,effect)
inst.sprite_index=GORP