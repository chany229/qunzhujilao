@call storage="macro.ks"

//f为可存档变量
//tf为临时变量
//sf为常量
@eval exp="f.max_hp = 100"
@eval exp="tf.hero_hp = f.hero_max_hp"

//随机数
[eval exp="tf.test = intrandom(0,3)"]

//数组定义方法
[iscript]
f.hero = {hp: f.max_hp, mp: f.max_mp}
f.num_2 = {}
f.party = [f.hero]
f.index = 2
//$('#save_btn').hide();
[endscript]



[call target="*start"]


*start
战斗系统测试中[c]
//[emb exp="f.hero.hp"]
//[emb exp="f.hoge[f.index]"]
//[if exp="f.hoge.indexOf("hoge") > -1"]
//true
//[elsif exp="true"]
//[else]
//false
//[endif]
//@c
[call target="*action"]
@s

*action
@choices text1="攻击" target1="*attack" text2="防御" target2="*defend"
//选择支变量需要加plugin
@s

*attack
进行了攻击[c]
[call target="*action"]

*defend
进行了防御[c]
[call target="*action"]