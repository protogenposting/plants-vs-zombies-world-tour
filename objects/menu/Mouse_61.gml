/// @description Insert description here
// You can write your code in this editor
if(areaselected==0)
{
plantselected-=1
if(plantselected<=0)
{
	plantselected=array_length(plants.plant)-1
}
}
if(areaselected==1)
{
zombieselected-=1
if(zombieselected<=0)
{
	zombieselected=array_length(plants.zombie)-1
}
}
if(areaselected==2)
{
tileselected-=1
if(tileselected<0)
{
	tileselected=array_length(tiletypes)-1
}
}