/// @description Insert description here
// You can write your code in this editor
global.Touch_X=event_data[?"posX"]
global.Touch_Y=event_data[?"posY"]
global.tapping=true

window_mouse_set(global.Touch_X,global.Touch_Y)
alarm[0]=2