inst=instance_create(x,y,bullet4)
inst.hspeed=hspeed*5
inst.vspeed=vspeed+5
inst.x+=32
inst=instance_create(x,y,bullet4)
inst.hspeed=hspeed*5
inst.vspeed=vspeed-5
inst.x+=32
instance_destroy()