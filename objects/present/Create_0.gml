move_snap(64,64)
alarm[0]=180
down=false
snapvar = function(num,snap){
	var ret=round(num/snap)*snap;
	return ret
}
endposx=snapvar(mouse_x,64)
endposy=snapvar(mouse_y,64)
ogy=endposy
done=false

y-=16

sprite_index=giftspin
i=0

image_speed=1