chose=round(random_range(0,array_length(plants.plant)))
if(chose>=array_length(plants.plant))
{
chose-=5
}
planty=plants.plant[chose].object
instance_create(x,y,planty)
effect_create_above(ef_explosion,x,y,1,c_white)

action_kill_object();
