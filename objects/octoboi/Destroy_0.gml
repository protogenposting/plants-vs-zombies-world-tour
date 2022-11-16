/// @description Insert description here
// You can write your code in this editor
inst=instance_create(x,y,planttype)
waterboi=false
	var num=0
	repeat(array_length(plants.plant))
	{
		var planty=plants.plant[num].object
		if(inst.object_index==planty)
		{
			if(variable_struct_exists(plants.plant[num],"waterplant"))
			{
				inst.waterboi=true
				break;
			}
		}
	num+=1
	}