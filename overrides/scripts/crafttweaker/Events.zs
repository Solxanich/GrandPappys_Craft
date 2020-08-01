import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntity;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.command.ICommandSender;
import crafttweaker.event.IEventCancelable;

events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
    if (event.from==56) { event.player.addGameStage("Overworld"); }
	if (event.from==0 & event.to==56) {event.player.addGameStage("Terraria"); event.player.removeGameStage("Overworld"); }
	if (event.from==57) { event.player.addGameStage("Overworld"); }
	if (event.from==0 & event.to==57) {event.player.addGameStage("Pixelmon"); event.player.sendChat("What is a Pixelmon? Can I eat it?"); event.player.removeGameStage("Overworld"); }
	if (event.from==8) { event.player.addGameStage("Overworld"); }
	if (event.from==0 & event.to==8) {event.player.sendChat("Digimon activated. Now downloading..."); event.player.removeGameStage("Overworld");
		event.player.sendChat("Downloaded.");}
});

events.onPlayerAdvancement(function(event as crafttweaker.event.PlayerAdvancementEvent){
	if (!event.player.hasGameStage("Overworld") & event.player.dimension==0 & event.id=="minecraft:adventure/sleep_in_bed"){
		event.player.addGameStage("Overworld");event.player.sendChat("You hear a strange noise coming from beneath you...");
		event.player.sendChat("The ancient spirits of light and dark have awoken!");
		event.player.sendChat("It's dangerous to go alone now. Take this, and use it wisely!");
		event.player.give(<bountifulbaubles:potionwormhole>);}
});
// add a remove gamestage overworld for respawn event when bed is obstructed or missing


events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent){
	if (!event.player.hasGameStage("Default") & event.player.dimension==58){
		event.player.addGameStage("Default");
		event.player.give(<minecraft:written_book>.withTag({
			pages:["{\"text\":\"Oh my.\\nThe plane's left and right engines are gone! \\n
			You better quickly learn how to use your parachute, and then jump!\"}",
			"{\"text\":\"Parachute Instructions: \\n 1. Wear Parachute in \\u0020Armor Slot  \\n 2. 
			Jump through plane hatch to get out of crashing plane \\n 3. 
			Press ALT+B to open parachute when you can see land. \"}"],
			title:"IMPORTANT: READ NOW",author:"Flight Attendant",
			display:{Lore:["If you wish to live, you should probably listen to your flight attendant."]}}));
		event.player.give(<improvedbackpacks:backpack>.withDisplayName("Parachute"));
		event.player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(6000,2));
		event.player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(6000,2));
	}
});

events.onPlayerItemPickup(function(event as crafttweaker.event.PlayerItemPickupEvent){
	if (!event.player.hasGameStage("Digimon") & event.stackCopy.name=="tile.digidirt"){event.player.addGameStage("Digimon"); event.player.give(<digimobs:storymode>);event.player.sendChat("Installed.");}
});	

events.onPlayerAttackEntity(function(event as crafttweaker.event.PlayerAttackEntityEvent){
	
	if(event.player.name=="LMM_EntityLittleMaidAvatar"){
		if (true){
			event.canceled=true;
			event.cancel();
		}
	}
});

events.onEntityLivingHurt(function(event as crafttweaker.event.EntityLivingHurtEvent){
	var dispNm = event.entity.displayName.split("_",2)[0];
	if(dispNm=="LMM"){
		if (true){
			event.canceled=true;
			event.cancel();
		}
	}
});



		