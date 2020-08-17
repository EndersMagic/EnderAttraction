import crafttweaker.oredict.IOreDict;

val timemachine=<intimepresence:timemachine>;
val shardprocessor=<intimepresence:shardprocessor>;

recipes.remove(timemachine);
recipes.remove(shardprocessor);

val plateIron=oreDict.plateIron;
val plateGold=oreDict.plateGold;
val dragon_diamond=<endmagic:dragon_diamond>;
val shardsDiamond=oreDict.shardsDiamond;
val shardsDimensional=oreDict.shardsDimensional;
val piston=<intimepresence:piston>;
val natural_steel=<endmagic:natural_steel>;

recipes.addShaped("intimepresence_timemachine", timemachine, 
	   [[shardsDiamond,	piston,				shardsDiamond],
		[natural_steel,	shardsDimensional,	natural_steel],
		[plateIron,		plateIron,			plateIron]]);
		
recipes.addShaped("intimepresence_shardprocessor",shardprocessor,
	   [[plateGold,	plateGold,		plateGold],
		[plateGold,	dragon_diamond,	plateGold],
		[plateGold,	plateGold,		plateGold]]);
		
for i in 0 .. 15 {
	recipes.addShapeless("miniisland_petal"+i, <botania:petal>.withDamage(i) * 2, [<botania:miniisland>.withDamage(i)]);
}
//for i in 0..15 {
//	recipes.addShapeless("miniisland_petal", <botania:petal>.withDamage(i) * 2, [<botania:miniisland>.withDamage(i)]);
//}

//$1_flower = forBlock\("botania:miniisland"\) \n $1_flower.setProperty\("color", "$1"\) \n $1_flowerDec = newOreDecoration\(\) \n $1_flowerDec.set\("count", 4\) \n $1_flowerDec.set\("mainBlock", $1_flower\) \n $1_flowerDec.set\("size", 3\) \n $1_flowerDec.set\("minY", 70\) \n $1_flowerDec.set\("maxY", 100\) \n $1_flowerDec.addBlockToReplace\("minecraft:air"\) \n sky.addDecoration\($1_flowerDec\) \n 

val bag_upgrade=<multibags:bag_upgrade>;
recipes.remove(bag_upgrade);
recipes.addShaped("multibags_bag_upgrade",bag_upgrade,
	   [[<tconstruct:ingots:3>,		<minecraft:crafting_table>,		<tconstruct:ingots:3>],
		[<minecraft:lapis_block>,	<minecraft:enchanting_table>,	<minecraft:lapis_block>],
		[<minecraft:obsidian>,		<minecraft:glowstone>,			<minecraft:obsidian>]]);