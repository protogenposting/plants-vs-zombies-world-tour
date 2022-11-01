/// @description Insert description here
// You can write your code in this editor
spd=1
hp=20
i=0

nspd=1

frozen=false

withered=false

zapped=false

var p1 = part_type_create();

if(place_meeting(x,y,tiletypewater))
{
	instance_destroy()
}
nutted=false