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
button[13]={
	button:"water lily time",
	roomy: quest5
}
button[14]={
	button:"BEANNNS WTF",
	roomy: quest6
}
draw=false

depth=-100000

var _strucc = {
	button:"Saharah desert endless",
	roomy: endless6
}
array_insert(button,8,_strucc)

aud=audio_play_sound(menutheme,1000,false)
beatlen=0.5
nextbeat=beatlen

spr=choose(tilegrass,tilerussia,tilemud,tilevolcano,tilesand)
pspr = spr
al=1
plantdataget=function(){
			var num = 0
			var array = array_create(0)
			repeat(array_length(plants.plant))
			{
				var planty=false
				if(variable_struct_exists(plants.plant[num],"unlocked")&&plants.plant[num].unlocked)
				{
					var planty=true
				}
				array_push(array,planty)
				num+=1
			}
			return array
		}
plantdatareset=function(){
			var array = array_create(2)
			array[0]={
	object: plant1,
	cost: 100,
	recharge:200,
	desc:"peashooter fires peas at zombies",
	lawn: tilegrass,
	unlocked:true,
	entry:"'I began fighting zombies in 2009,' Peashooter says. 'Little did I know, I'd be doing that for the rest of my life.'"
}
array[1]={
	object: plant2,
	cost: 50,
	recharge:200,
	desc:"sunflower produces sun",
	lawn: tilegrass,
	unlocked:true,
	entry:"After her hit single 'Zombies on Your Lawn' 13 years ago, Sunflower immediately gained tons of fans. 'Ironically, they're all after my autograph. Not what I wanted.' she says."
}
			repeat(array_length(plants.plant)-2)
			{
				var planty=true
				planty=false
				array_push(array,planty)
			}
			return array
		}
del_level=function(){
	//make epoc array
	instance_destroy(plants)
	inst=instance_create(0,0,plants)
	var _saveData = {
		plantdata: menu.plantdatareset(),
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
		plantdata: menu.plantdataget(),
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
		
		var num = 0
		repeat(array_length(plants.plant))
		{
			if(num>array_length(_loadData.plantdata)-1)
			{
				plants.plant[num].unlocked=false
			}
			else
			{
				plants.plant[num].unlocked=_loadData.plantdata[num]
			}
			num+=1
		}
		menu.clevel=_loadData.level
	}
	else
	{
		inst=instance_create(0,0,plants)
		var num = 2
		repeat(array_length(plants.plant)-2)
		{
			plants.plant[num].unlocked=false
			num+=1
		}
		show_message("no file to load")
	}
}

slotty=0

global.tapping=false
global.Touch_X=0
global.Touch_Y=0