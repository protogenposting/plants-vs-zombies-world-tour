slot[0]=0
slot[1]=0
slot[2]=0
slot[3]=0
slot[4]=0
slot[5]=0
slot[6]=0
selected=0
slottyo=0
draw=false
str=""

depth=-100000

maxslots=2
if(room!=level1)
{
	maxslots=7
}
if(room==quest1)
{
	selected=1
	slot[0]=7
}
if(room==quest3)
{
	selected=1
	slot[0]=13
}
if(room==quest4)
{
	selected=1
	slot[0]=40
}
if(room==quest5)
{
	selected=1
	slot[0]=60
}
if(room==quest6)
{
	selected=1
	slot[0]=62
}
if(room==quest7)
{
	selected=1
	slot[0]=71
}
if(room==quest8)
{
	selected=1
	slot[0]=73
}
if(room==quest9)
{
	selected=1
	slot[0]=74
}
audio_play_sound(pickyoseeds,1000,true)

mnum=999999999999999999
plant=[1]
quest=false
maxpf=6
zomb=[basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener]

if(room==quest1)
{
	mnum=10
	plant=[7]
	quest=true
	maxpf=1
}
if(room==quest2)
{
	mnum=30
	plant=[29]
	quest=true
	maxpf=2
}
if(room==quest3)
{
	mnum=20
	plant=[13]
	quest=true
	maxpf=2
}
if(room==quest4)
{
	mnum=30
	plant=[40]
	quest=true
	maxpf=1
}
if(room==quest5)
{
	mnum=20
	plant=[60]
	quest=true
	maxpf=3
}
if(room==quest6)
{
	mnum=7
	plant=[62]
	quest=true
	maxpf=2
}
if(room==quest7)
{
	mnum=20
	plant=[71]
	quest=true
	maxpf=2
}
if(room==quest8)
{
	mnum=50
	plant=[73]
	quest=true
	maxpf=1
}
if(room==quest9)
{
	mnum=100
	plant=[74]
	quest=true
	maxpf=2
}
if(room==level1)
{
	mnum=30
	plant=[2,3,4,6]
	zomb=[basiczombie,basiczombie,basiczombie]
}
if(room==level2)
{
	mnum=30
	plant=[8]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level3)
{
	mnum=20
	plant=[5]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level4)
{
	mnum=30
	plant=[10]
	zomb=[basiczombie,basiczombie,basiczombie]
}
if(room==level5)
{
	mnum=30
	plant=[11]
	zomb=[basiczombie,basiczombie,basiczombie]
}
if(room==level6)
{
	mnum=30
	plant=[12]
	zomb=[basiczombie,basiczombie,coneheadzombie]
}
if(room==level7)
{
	mnum=30
	plant=[14]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,octozomb]
}
if(room==level8)
{
	mnum=30
	plant=[27]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,octozomb]
}
if(room==level9)
{
	mnum=30
	plant=[28]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level10)
{
	mnum=30
	plant=[30]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level11)
{
	mnum=30
	plant=[31]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level12)
{
	mnum=30
	plant=[32]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener]
}
if(room==level13)
{
	mnum=30
	plant=[34,21]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener]
}
if(room==level14)
{
	mnum=30
	plant=[22]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level15)
{
	mnum=30
	plant=[23]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level16)
{
	mnum=30
	plant=[25]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level17)
{
	mnum=30
	plant=[35]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie]
}
if(room==level18)
{
	mnum=30
	plant=[36]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener]
}
if(room==level19)
{
	mnum=30
	plant=[37]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener,tombraiser]
}
if(room==level20)
{
	mnum=25
	plant=[38]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener,tombraiser]
}
if(room==level21)
{
	mnum=25
	plant=[39,41]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener,tombraiser]
}
if(room==level22)
{
	mnum=25
	plant=[43]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener,tombraiser]
}
if(room==level23)
{
	mnum=20
	plant=[44]
	zomb=[basiczombie,basiczombie,conehead]
}
if(room==level24)
{
	mnum=25
	plant=[45]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,feddy]
}
if(room==level25)
{
	mnum=25
	plant=[45]
	zomb=[basiczombie,basiczombie,conehead,bucketheadzombie,gardener,tombraiser,feddy]
}
if(room==minigamebeach)
{
	mnum=200
	alarm[1]=5
	plant=[26]
	moosic=loobboon
	hats=-1
}
if(room==editor)
{
	mnum=instance_number(temp)
	plant=[1]
	quest=true
	alarm[1]=0
}