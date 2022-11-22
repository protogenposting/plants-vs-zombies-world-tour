// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instance_random(obj){
	return instance_find(obj,irandom(instance_number(obj)-1));
}