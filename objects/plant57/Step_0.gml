if(image_index>=16)
{
image_alpha=0
image_index=0
effect_create_above(ef_cloud,x,y,1,c_white)
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
}
