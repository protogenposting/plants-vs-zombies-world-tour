/// @description Insert description here
// You can write your code in this editor
alminacy=true
clevel=level1
button[0]={
	button:"adventure",
	roomy: clevel
}
button[1]={
	button:"endless",
	roomy: endlessmenu
}
button[2]={
	button:"alminac",
	roomy: alminac
}
button[3]={
	button:"plant quests",
	roomy: quests
}
button[4]={
	button:"lawn endless",
	roomy: endless
}
button[5]={
	button:"swamp endless",
	roomy:endless2
}
button[6]={
	button:"volcano endless",
	roomy:endless4
}
button[7]={
	button:"european peach endless",
	roomy:endless3
}
button[8]={
	button:"russia endless",
	roomy:endless5
}
button[9]={
	button:"chilly flowers",
	roomy: quest1
}
button[10]={
	button:"SEXIEST MAN ALIVE",
	roomy: quest3
}
button[11]={
	button:"random rumble",
	roomy: quest2
}
draw=false

depth=-100000

aud=audio_play_sound(menutheme,1000,false)
beatlen=0.5
nextbeat=beatlen

spr=choose(tilegrass,tilerussia,tilemud,tilevolcano,tilesand)
pspr = spr
al=1

save_level=function(){
	//make epoc array
	var _saveData = array_create(0)
	
	var _saveLevel = menu.clevel
	array_push(_saveData,_saveLevel)
	//save the plants that are saved
	with(plants)
	{	
		var num = 0
		while(num<=array_length(plants.plant)-1)
		{
			_saveEntity[num] = 1
			_saveEntity[num] = variable_struct_exists(plants.plant[num],"unlocked")&&plants.plant[num].unlocked
			num+=1
		}
		array_push(_saveData,_saveEntity)
	}
	
	var _string = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed,1)
	buffer_write(_buffer, buffer_string,_string)
	buffer_save(_buffer,"savedshit.txt")
	buffer_delete(_buffer)
	
	show_debug_message("game saved! "+_string)
}
load_level=function(){
	show_debug_message("loading save...")
	if(file_exists("savedshit.txt"))
	{
		var _buffer = buffer_load("savedshit.txt")
		var _string = buffer_read(_buffer,buffer_string)
		buffer_delete(_buffer)
		
		var _loadData = json_parse(_string)
		instance_destroy(plants)
		inst=instance_create(0,0,plants)
		show_debug_message("instance_created")
		
		while(array_length(_loadData)>0)
		{
			if(array_length(_loadData)>1)
			{
				var _loadEntity = array_pop(_loadData)
				with(inst)
				{
					var num=array_length(_loadEntity)-1
					repeat(array_length(_loadEntity))
					{
						var _loadPlant=array_pop(_loadEntity)
						plants.plant[num].unlocked=_loadPlant
						num-=1
						show_debug_message("loaded plant #"+string(num))
					}
				}
			}
			else
			{
				var _loadEntity = array_pop(_loadData)
				menu.clevel=_loadEntity
			}
		}
		show_debug_message("game LOADED DIAPER! "+_string)
	}
	else
	{
		show_debug_message("no file to load")
	}
}

slotty=0