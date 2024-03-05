event_inherited()

reload=60
sh=reload
hp=5
image_speed=1
spd=0
nspd=1
action_set_alarm(30, 0);
pfactive=false
pftime=120
pfi=0
pfr=3
image_alpha=1
col=c_white

move_snap(64,64)

spd=0

frozen=false

withered=false

zapped=false

elected=false

i=1
shooting=false
while(place_meeting(x,y,evilplant1))
{
	instance_destroy()
}
hitty=false

hitsprite=brownflash

armor=-1
armorhit=-1

ogsprite=sprite1

col=c_white