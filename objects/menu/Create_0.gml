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
button[12]={
	button:"the clone wars",
	roomy: quest4
}
draw=false

depth=-100000

aud=audio_play_sound(menutheme,1000,false)
beatlen=0.5
nextbeat=beatlen

spr=choose(tilegrass,tilerussia,tilemud,tilevolcano,tilesand)
pspr = spr
al=1

del_level=function(){
	//make epoc array
	instance_destroy(plants)
	inst=instance_create(0,0,plants)
	var _saveData = {
		plantdata: inst.plant,
		level: level1
	}
	
	var _string = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed,1)
	buffer_write(_buffer, buffer_string,_string)
	buffer_save(_buffer,"savedshit.txt")
	buffer_delete(_buffer)
	
	show_debug_message("game reset! "+_string)
}
save_level=function(){
	//make epoc array
	var _saveData = {
		plantdata: plants.plant,
		level: menu.clevel
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
		show_debug_message("game LOADED DIAPER! "+string(_loadData))
		instance_destroy(plants)
		inst=instance_create(0,0,plants)
		show_debug_message("instance_created")
		
		if(array_length(inst.plant)>array_length(_loadData.plantdata))
		{
			var num = array_length(_loadData.plantdata)-1
			var _array = array_create(0)
			repeat(array_length(inst.plant)-array_length(_loadData.plantdata))
			{
				var arrayboi=inst.plant[num]
				array_push(_array,arrayboi)
				num+=1
			}
		}
		inst.plant=_loadData.plantdata
		menu.clevel=_loadData.level
	}
	else
	{
		inst=instance_create(0,0,plants)
		show_debug_message("no file to load")
	}
}

slotty=0