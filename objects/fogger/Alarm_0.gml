why=160
ecs=0
repeat(5)
{
repeat((room_width/64))
{
instance_create(ecs+32,why+32,tiletypesteam)
ecs+=64
}
ecs=0
why+=64
}

action_set_alarm(720*2, 0);
