if(num<mnum)
{
if(killed>500)
{
killed-=1
}
var numyo=0
repeat(killed/10)
{
zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener)
if(room==endless2)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb)
}
if(room==endless3)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb)
}
if(room==endless4)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener)
}
if(room==endless5)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener,redcup)
}
if(room==endless6)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener)
}
if(room==level1)
{
	zomb=choose(basiczombie)
}
if(room==level2)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level3)
{
	zomb=choose(basiczombie,coneheadzombie)
}
if(room==level4)
{
	zomb=choose(basiczombie,coneheadzombie)
}
if(room==level5)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level6)
{
	zomb=choose(basiczombie,coneheadzombie,octozomb,bucketheadzombie)
}
if(room==level7)
{
	zomb=choose(basiczombie,coneheadzombie,octozomb,bucketheadzombie)
}
if(room==level8)
{
	zomb=choose(basiczombie,coneheadzombie,octozomb,octozomb,octozomb,bucketheadzombie)
}
if(room==level9)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level10)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level11)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level12)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level13)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level14)
{
	zomb=choose(basiczombie,coneheadzombie,gardener)
}
if(room==level15)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb,grave,tombraiser)
}
if(room==level16)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb,grave,tombraiser)
}
if(room==level17)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb,grave,tombraiser)
}
if(room==level18)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener)
}
if(room==level19)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener)
}
if(room==level20)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener,tombraiser)
}
if(room==level21)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener,tombraiser)
}
if(room==level22)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener,tombraiser)
}
if(room==level23)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie)
}
if(room==level24)
{
	zomb=choose(basiczombie,coneheadzombie,feddy)
}
if(room==level25)
{
	zomb=choose(basiczombie,coneheadzombie,feddy)
}
if(killed<13)
{
	zomb=basiczombie
}
if(room==minigamebeach)
{
	zomb=choose(crab)
}
instance_create(32+(64*11)+64*5,choose(160,160+64,160+128,160+192,160+192+64),zomb)
numyo+=1
if(room==minigamebeach)
{
	if(numyo>=4)
	{
		break;
	}
}
}
action_set_alarm(random_range(2,1000-killed), 1);
if(room==minigamebeach)
{
	alarm[1]=60
}
num+=1
if(alarm[1]<20)
{
	alarm[1]=20
}
}