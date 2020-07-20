import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntity;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;


events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
    if (event.from==56) { event.player.addGameStage("Overworld"); }
	if (event.from==0 & event.to==56) {event.player.addGameStage("Terraria"); event.player.removeGameStage("Overworld"); }
	if (event.from==57) { event.player.addGameStage("Overworld"); }
	if (event.from==0 & event.to==57) {event.player.addGameStage("Pixelmon"); event.player.sendChat("What is a Pixelmon? Can I eat it?"); event.player.removeGameStage("Overworld"); }
	if (event.from==8) { event.player.addGameStage("Overworld"); }
	if (event.from==0 & event.to==8) {event.player.sendChat("Digimon activated. Now downloading..."); event.player.removeGameStage("Overworld");
		event.player.sendChat("Downloaded.");}
});

events.onPlayerSleepInBed(function(event as crafttweaker.event.PlayerSleepInBedEvent){
	if (!event.player.hasGameStage("Overworld") & event.player.dimension==0){event.player.addGameStage("Overworld");event.player.sendChat("You hear a strange noise coming from beneath you...");
		event.player.sendChat("The ancient spirits of light and dark have awoken!");
		event.player.sendChat("It's dangerous to go alone now. Take this, and use it wisely!");
		event.player.give(<bountifulbaubles:potionwormhole>);}
});
// add a remove gamestage overworld for respawn event when bed is obstructed or missing


events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent){
	if (!event.player.hasGameStage("Default") & event.player.dimension==0){event.player.addGameStage("Default");}
});

events.onPlayerItemPickup(function(event as crafttweaker.event.PlayerItemPickupEvent){
	if (!event.player.hasGameStage("Digimon") & event.stackCopy.name=="tile.digidirt"){event.player.addGameStage("Digimon"); event.player.give(<digimobs:storymode>);event.player.sendChat("Installed.");}
});	

events.onPlayerCrafted(function(event as crafttweaker.event.PlayerCraftedEvent){
	if (event.output.displayName == "Deep Drilling License" & !event.player.hasGameStage("envtech")) {
		event.player.sendChat("You (somehow) feel qualified to extract resources from below Bedrock!");
		event.player.addGameStage("envtech");
	}
	if (event.output.displayName == "Ever Falling Feather" & !event.player.hasGameStage("aether")) {
		event.player.sendChat("You now believe there may exist a sky region where gravity behaves abnormally...");
		event.player.addGameStage("aether");
	}
});


		