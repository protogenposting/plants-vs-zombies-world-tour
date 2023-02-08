/*why=0
ecs=0
repeat(room_height/64)
{
repeat((room_width/64))
{
inst=instance_create(ecs+32,why+32,tiletypesteam)
if(instance_exists(inst))
{
inst.col=c_black
}
ecs+=64
}
ecs=0
why+=64
}

action_set_alarm(120, 0);
