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