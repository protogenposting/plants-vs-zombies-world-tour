/// @description Insert description here
// You can write your code in this editor
waterboi=false
if(waterboi&&!place_meeting(x,y,tiletypewater))
{
	hp-=0.1
}
if(!waterboi&&place_meeting(x,y,tiletypewater)&&!place_meeting(x,y,plant4))
{
	hp-=0.1
}