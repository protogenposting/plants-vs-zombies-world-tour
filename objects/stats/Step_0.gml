/// @description Insert description here
// You can write your code in this editor
ecs=room_width
why=room_height/2
inst=instance_create(ecs,why,tiletypewater)
inst.image_xscale=waterlevel*2
inst.image_yscale=room_height/64
inst.alarm[0]=2