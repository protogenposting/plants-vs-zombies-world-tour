reload=random_range(1,1000)
sh=reload+random_range(0,50)
hp=100
col=c_white

proj=choose(bullet1,bullet2,bullet3,bullet4,bullet5,bullet6,bullet8,bullet9,bullet10,bullet11,bullet12,bullet13,bullet14,bullet15,bullet16,bullet17,bullet19,bullet20,bullet21,bullet22,bullet23,bullet24,star,droppletbig,sun,coldsun)
action_set_alarm(30, 0);

pfactive=false
pftime=30
pfi=0
pfr=10