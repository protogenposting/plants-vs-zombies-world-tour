y=mouse_y
x=mouse_x
if(os_device==os_android)
{
	x=global.Touch_X
	y=global.Touch_Y
}
move_snap(64,64)

if(global.tapping)
{
var candig=false
var num=0
repeat(array_length(plants.plant))
{
	var planty=plants.plant[num].object
	col=instance_place(x,y,planty)
	if(col)
	{
		candig=true
		break;
	}
	num+=1
}
if(col&&candig)
{
instance_destroy(col)
}

action_kill_object();
}