sh-=1
if(sh<=0)
{
var dir=0
repeat(8)
{
inst=instance_create(x,y,bullet1)
inst.direction=dir
inst.speed=1
dir+=360/8
}
hp=0
}

///kill
if(hp<=0)
{
instance_destroy()
}
var num=0
repeat(instance_number(basiczombie))
{
	inst=instance_find(basiczombie,num)
	inst.x=room_width
	num+=1
}