var ecs=x-32
var why=y-32
repeat(64)
{
	repeat(64)
	{
		draw_point_color(ecs,why,make_color_rgb(irandom(255),irandom(255),irandom(255)))
		ecs+=1
	}
why+=1
ecs=x-32+random_range(-5,5)
}