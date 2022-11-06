/// @description Insert description here
// You can write your code in this editor
inst=instance_create(x,y,tiletypesteam)
with(inst)
{
	action_set_alarm(360, 0);
}
instance_create(x-64,y,tiletypesteam)

instance_create(x+64,y,tiletypesteam)

instance_create(x,y-64,tiletypesteam)

instance_create(x,y+64,tiletypesteam)

instance_create(x+64,y-64,tiletypesteam)

instance_create(x-64,y+64,tiletypesteam)

instance_create(x-64,y-64,tiletypesteam)

instance_create(x+64,y+64,tiletypesteam)