with(basiczombie)
{
if(hp<=2)
{
instance_destroy()
inst=instance_create(other.x,other.y-6,plant21)
inst.alarm[1]=60*10
inst.hp=10
}
}

