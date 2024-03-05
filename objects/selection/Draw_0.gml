/// @description Insert description here
// You can write your code in this editor
ecs=room_width-64+random_range(-1,1)
why=256+random_range(-1,1)

num=0
repeat(array_length(zomb))
{
	draw_sprite_ext(object_get_sprite(zomb[num]),0,ecs,why,1,1,random_range(-1,1),c_dkgray,0.5)
	why+=random_range(63,65)
	ecs+=random_range(-1,1)
	num+=1
}