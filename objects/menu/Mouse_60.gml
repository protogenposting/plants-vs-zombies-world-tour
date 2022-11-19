/// @description Insert description here
// You can write your code in this editor
if(areaselected==0)
{
plantselected+=1
if(plantselected>=array_length(plants.plant))
{
	plantselected=0
}
}
if(areaselected==1)
{
zombieselected+=1
if(zombieselected>=array_length(plants.zombie))
{
	zombieselected=0
}
}
if(areaselected==2)
{
tileselected+=1
if(tileselected>=array_length(tiletypes))
{
	tileselected=0
}
}