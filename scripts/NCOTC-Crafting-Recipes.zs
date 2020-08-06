import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Infuser;


val material_map = {redstone: <minecraft:redstone>, graphite: <nuclearcraft:ingot:8>, lithium: <nuclearcraft:ingot:6>, lapis: <minecraft:dye:4>,
emerald: <minecraft:emerald>, diamond: <minecraft:diamond>, villiaumite: <nuclearcraft:gem:3>, fluorite: <nuclearcraft:gem:2>, carobbiite: <nuclearcraft:gem:4>,
hardcarbon: <nuclearcraft:alloy:2>, zircaloy: <nuclearcraft:alloy:12>, thermoconducting: <nuclearcraft:alloy:11>, iron: <minecraft:iron_ingot>,
boron: <nuclearcraft:ingot:5>, quartz: <minecraft:quartz>, arsenic: <nuclearcraft:gem_dust:10>, glowstone: <minecraft:glowstone_dust>,
nether: <minecraft:netherbrick>, obsidian: <minecraft:obsidian>, end: <minecraft:end_stone>, prismarine: <minecraft:prismarine_shard>,
purpur: <minecraft:purpur_block>,lead: <nuclearcraft:ingot:2>,manganese: <nuclearcraft:ingot:11>, slime: <minecraft:slime_ball>} as IItemStack[string];

for name, material in material_map {
	recipes.addShaped("tncotc" ~ name ~ "coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ name)*2,
	[[material, material, material],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[material, material, material]]); }

recipes.addShaped("TNCOTCEmptyCoil", <nuclearcraft:turbine_dynamo_coil_empty>*2, 
[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:nak>*1000, <nuclearcraft:turbine_dynamo_coil_nak>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:corium>*1000, <nuclearcraft:turbine_dynamo_coil_corium>, 1.0 , 1.0, 15.0e-6);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_dynamo_coil_corium>, 15.0e-6);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_helium>*1000, <nuclearcraft:turbine_dynamo_coil_helium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_nitrogen>*1000, <nuclearcraft:turbine_dynamo_coil_nitrogen>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:enderium>*864, <nuclearcraft:turbine_dynamo_coil_enderium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:cryotheum>*1000, <nuclearcraft:turbine_dynamo_coil_cryotheum>);



//optional Bucket recipes
//recipes.addShapeless("TNCOTCNaKCoil", <nuclearcraft:turbine_dynamo_coil_nak>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "nak", Amount: 1000})]);
//recipes.addShapeless("TNCOTCCoriumCoil", <nuclearcraft:turbine_dynamo_coil_corium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "corium", Amount: 1000})]);
//recipes.addShapeless("TNCOTCHeliumCoil", <nuclearcraft:turbine_dynamo_coil_helium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_helium", Amount: 1000})]);
//recipes.addShapeless("TNCOTCNitrogenCoil", <nuclearcraft:turbine_dynamo_coil_nitrogen>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000})]);
//recipes.addShapeless("TNCOTCCryotheumCoil", <nuclearcraft:turbine_dynamo_coil_cryotheum>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000})]);
