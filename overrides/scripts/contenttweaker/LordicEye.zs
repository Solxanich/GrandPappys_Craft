#priority 3999
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

var item = mods.contenttweaker.VanillaFactory.createItemFood("TaintedMilk",2);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("TC")) {
		player.addGameStage("TC");
		player.sendChat("You're stomach whispers that you must seek Thaumic crystals");
		player.sendChat("... and a bathroom.");}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("AscendedMilk",2);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("aoa")) {
		player.addGameStage("aoa");
		player.sendChat("You're mind and body are cleansed in preparation for meeting the Ascended");}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("DemonicMilk",2);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("evil")) {
		player.addGameStage("evil");
		player.sendChat("You're canine teeth grow larger?!?");
		player.sendChat("And... you feel an unhealthy desire to work with blood.");}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("bottleSteam",2);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("icefire")) {
		player.addGameStage("icefire");
		player.sendChat("When the steam hits your throat, you immediately exhale it.");
		player.sendChat("You have a sudden inspiration of how dragon breath works.");}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("mysticEgg",2);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("chickens")) {
		player.addGameStage("chickens");
		player.sendChat("Perhaps chickens may hold more power than you imagined...");
	}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("outcastredmp",1);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("outcast")) {
		player.addGameStage("outcast");player.addGameStage("warrior");
		player.sendChat("The Outcast implants their secrets within you...");
	}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("farmermarket",1);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("farmer")) {
		player.addGameStage("farmer");player.addGameStage("tech");
		player.sendChat("The Farmer sells their secrets to you...");
	}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("bardstale",1);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("bard")) {
		player.addGameStage("bard");player.addGameStage("warrior");
		player.sendChat("The Bard sings their journey to you...");
	}
}; item.register();

item = mods.contenttweaker.VanillaFactory.createItemFood("engineersdiagram",1);
item.alwaysEdible = true;
item.saturation = 2;
item.onItemFoodEaten = function(stack,world,player){
	if (!player.hasGameStage("engg")) {
		player.addGameStage("engg");player.addGameStage("tech");
		player.sendChat("The Engineer demonstrates their plans to you...");
	}
}; item.register();

var toy = VanillaFactory.createItem("everFeather");
toy.rarity = "rare";
toy.register();

toy = VanillaFactory.createItem("drillLicense");
toy.rarity = "rare";
toy.register();

toy = VanillaFactory.createItem("VocationalToken");
toy.rarity = "rare";
toy.register();