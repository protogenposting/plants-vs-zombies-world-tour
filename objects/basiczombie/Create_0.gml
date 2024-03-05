spd=0.5
hp=20
i=0

nspd=0.5

frozen=false

withered=false

zapped=false

elected=false

anim=0

alarm[5]=20

y+=32

nutted=false

col=c_white

hitty=false

hitsprite=brownflash

armor=-1
armorhit=-1

ogsprite=sprite_index

variant=choose(0,1)

canTouchPlants=true

if(variant==1)
{
	hp=10
	spd=1
	nspd=1
	canTouchPlants=false
}