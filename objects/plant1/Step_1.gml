/// @description Insert description here
// You can write your code in this editor
if(!variable_instance_exists(self,"waterboi"))
{
	waterboi=false
	var num=0
	repeat(array_length(plants.plant))
	{
		var planty=plants.plant[num].object
		if(object_index==planty)
		{
			if(variable_struct_exists(plants.plant[num],"waterplant"))
			{
				waterboi=true
				break;
			}
		}
	num+=1
	}
}
if(waterboi&&!place_meeting(x,y,tiletypewater))
{
	hp-=0.1
}
if(!waterboi&&place_meeting(x,y,tiletypewater)&&!place_meeting(x,y,plant4))
{
	hp-=0.1
}
var lay_id = layer_get_id("Compatibility_Colour");
var bg = layer_background_get_id(lay_id);
if(layer_background_get_sprite(bg)==tiledesert)
{
	hp-=1
	if(collision_rectangle(x - 65, y - 65, x + 65, y + 65, plant64, false, true)||collision_rectangle(x - 65, y - 65, x + 65, y + 65, plant65, false, true))
	{
		hp+=1
	}
}
