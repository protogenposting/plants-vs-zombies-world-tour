inst1=instance_create(x,y+32,tiletypestink)
inst1.alarm[0]=5
inst1.vspeed=1
inst2=instance_create(x,y-32,tiletypestink)
inst2.alarm[0]=5
inst1.vspeed=-1
inst3=instance_create(x+32,y,tiletypestink)
inst3.alarm[0]=5
inst1.hspeed=1
inst4=instance_create(x-32,y,tiletypestink)
inst4.alarm[0]=5
inst1.hspeed=-1
effect_create_below(ef_explosion,x,y,1,c_green)

action_kill_object();
