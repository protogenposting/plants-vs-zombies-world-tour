/// @description Insert description here
// You can write your code in this editor
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
draw=false

depth=-100000

aud=audio_play_sound(menutheme,1000,false)
beatlen=0.5
nextbeat=beatlen

spr=choose(tilegrass,tilerussia,tilemud,tilevolcano,tilesand)
pspr = spr
al=1