#priority 3998

/*
	SevTech: Ages Stages Stages Script Exert
	Creates the statics to import the Stages to other scripts.
	Note: Portions of these scripts were created for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import crafttweaker.item.IIngredient;

static stageWar as Stage = ZenStager.initStage("war");
static stageDefault as Stage = ZenStager.initStage("Default");
static stagePixelmon as Stage = ZenStager.initStage("Pixelmon");
static stageOverworld as Stage = ZenStager.initStage("Overworld");
static stageDigimon as Stage = ZenStager.initStage("Digimon");
static stageThaumcraft as Stage = ZenStager.initStage("TC"); //2x damp Crystal, 1x glass bottle,  3x wheat, 1x netherwart => Tainted Milk
static stageEnviTech as Stage = ZenStager.initStage("envtech"); //2x dense crystal, 1x map, 1x book and quill => deep drilling license
static stageAOA as Stage = ZenStager.initStage("aoa"); //2x bright crystal, 1x glass bottle, 3x wheat, 1x golden apple => Ascended Milk
static stageEvil as Stage = ZenStager.initStage("evil"); //2x dull crystal, 1x glass bottle, 3x wheat, 1x soul sand => Demonic Milk
static stageFire as Stage = ZenStager.initStage("icefire"); //2x searing crystal, 1x glass bottle, 1x packed ice, 1x magma block => Steam in a Bottle
static stageAether as Stage = ZenStager.initStage("aether"); //2x floating crystal, 1x glass bottle, 1x feather => Ever Falling Feather 
static stageChickens as Stage = ZenStager.initStage("chickens");

static stageTech as Stage = ZenStager.initStage("tech"); //applets, immersiveengineering
static stageOutcast as Stage = ZenStager.initStage("outcast"); //evil, tainted
static stageEngg as Stage = ZenStager.initStage("engg"); //drilling
static stageFarmer as Stage = ZenStager.initStage("farmer"); //chickens
static stageBard as Stage = ZenStager.initStage("bard"); //AoA, aether
static stageWarrior as Stage = ZenStager.initStage("warrior"); //icefire

static stageUnused as Stage = ZenStager.initStage("unused"); 

// ==================================
// Mob Staging
var mobsMap as string[][string]=[];
if(loadedMods.contains("armorplus")){
	mobsMap = {
		stageOverworld.stage: [
			"armorplus:demonic_dragon","armorplus:ice_golem","armorplus:overlord_of_the_guardians",
			"armorplus:skeletal_king","armorplus:wither_minion","armorplus:witherling"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("defiledlands")){
	mobsMap = {
		stageOverworld.stage: [
			"defiledlands:book_wyrm","defiledlands:host","defiledlands:scuttler","defiledlands:shambler",
			"defiledlands:shambler_twisted","defiledlands:slime_defiled","defiledlands:the_destroyer",
			"defiledlands:the_mourner"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("mod_lavacow")){
	mobsMap = {
		stageOverworld.stage: [
			"mod_lavacow:boneworm","mod_lavacow:ithaqua","mod_lavacow:lilsludge",
			"mod_lavacow:mimic","mod_lavacow:parasite","mod_lavacow:pingu","mod_lavacow:piranha",
			"mod_lavacow:piranhalauncher","mod_lavacow:ptera","mod_lavacow:raven","mod_lavacow:salamander",
			"mod_lavacow:scarecrow","mod_lavacow:sludgejet","mod_lavacow:sludgelord","mod_lavacow:unburied",
			"mod_lavacow:undeadswine","mod_lavacow:undertaker","mod_lavacow:vespa","mod_lavacow:vespacocoon",
			"mod_lavacow:warsmallfireball","mod_lavacow:zombiefrozen","mod_lavacow:zombiemushroom",
			"mod_lavacow:zombiepiranha","mod_lavacow:foglet"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("iceandfire")){
	mobsMap = {
		stageOverworld.stage: [
			"iceandfire:amphithere","iceandfire:amphitherearrow",
			"iceandfire:cyclops","iceandfire:deathworm","iceandfire:deathwormegg","iceandfire:dragonarrow",
			"iceandfire:dragonegg","iceandfire:dragonfirecharge",
			"iceandfire:dragonicecharge","iceandfire:firedragon","iceandfire:gorgon","iceandfire:hippocampus",
			"iceandfire:hippogryph","iceandfire:hippogryphegg","iceandfire:icedragon",
			"iceandfire:if_cockatrice","iceandfire:if_cockatriceegg","iceandfire:if_pixie","iceandfire:if_troll",
			"iceandfire:myrmex_egg","iceandfire:myrmex_queen","iceandfire:myrmex_royal",
			"iceandfire:myrmex_sentinel","iceandfire:myrmex_soldier","iceandfire:myrmex_worker",
			"iceandfire:seaserpent","iceandfire:seaserpentarrow","iceandfire:seaserpentbubble",
			"iceandfire:siren","iceandfire:stonestatue", "iceandfire:if_hydra",
			"iceandfire:stymphalianarrow","iceandfire:stymphalianbird","iceandfire:stymphalianfeather",
			"iceandfire:dread_beast","iceandfire:dread_ghoul","iceandfire:dread_horse","iceandfire:dread_knight",
			"iceandfire:dread_lich","iceandfire:dread_lich_skull","iceandfire:dread_scuttler",
			"iceandfire:dread_thrall"
		],
		stageDefault.stage: [
			"iceandfire:snowvillager"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("lycanitesmobs")){
	mobsMap = {
		stageOverworld.stage: [
			"lycanitesmobs:abaia","lycanitesmobs:abtu","lycanitesmobs:afrit",
			"lycanitesmobs:aglebemu","lycanitesmobs:amalgalich","lycanitesmobs:archvile",
			"lycanitesmobs:argus","lycanitesmobs:arix","lycanitesmobs:asmodeus",
			"lycanitesmobs:aspid","lycanitesmobs:astaroth","lycanitesmobs:banshee","lycanitesmobs:barghest",
			"lycanitesmobs:behemoth","lycanitesmobs:beholder","lycanitesmobs:belph","lycanitesmobs:cacodemon",
			"lycanitesmobs:calpod","lycanitesmobs:cephignis","lycanitesmobs:chupacabra","lycanitesmobs:cinder",
			"lycanitesmobs:clink","lycanitesmobs:cockatrice","lycanitesmobs:conba","lycanitesmobs:concapede",
			"lycanitesmobs:concapedesegment","lycanitesmobs:crusk","lycanitesmobs:cryptkeeper",
			"lycanitesmobs:crystalshard","lycanitesmobs:crystalshard","lycanitesmobs:crystalshard",
			"lycanitesmobs:crystalshard","lycanitesmobs:crystalshard","lycanitesmobs:darkling",
			"lycanitesmobs:dawon","lycanitesmobs:devilgatling","lycanitesmobs:djinn","lycanitesmobs:dweller",
			"lycanitesmobs:eechetik","lycanitesmobs:ent","lycanitesmobs:epion","lycanitesmobs:erepede",
			"lycanitesmobs:ettin","lycanitesmobs:eyewig","lycanitesmobs:fear","lycanitesmobs:feradon",
			"lycanitesmobs:frostweaver","lycanitesmobs:geist","lycanitesmobs:geken","lycanitesmobs:geonach",
			"lycanitesmobs:ghoul","lycanitesmobs:gnekk","lycanitesmobs:gorger","lycanitesmobs:gorgomite",
			"lycanitesmobs:grue","lycanitesmobs:hellfirebarrier","lycanitesmobs:hellfirebarrierpart",
			"lycanitesmobs:hellfireorb","lycanitesmobs:hellfirewall","lycanitesmobs:hellfirewave",
			"lycanitesmobs:hellfirewavepart","lycanitesmobs:helllaser","lycanitesmobs:helllaserend",
			"lycanitesmobs:hellshield","lycanitesmobs:herma","lycanitesmobs:hitarea","lycanitesmobs:ignibus",
			"lycanitesmobs:ioray","lycanitesmobs:jabberwock","lycanitesmobs:jengu",
			"lycanitesmobs:joustalpha","lycanitesmobs:khalk","lycanitesmobs:kobold",
			"lycanitesmobs:lacedon","lycanitesmobs:laserend","lycanitesmobs:lobber",
			"lycanitesmobs:lurker","lycanitesmobs:makaalpha","lycanitesmobs:manticore",
			"lycanitesmobs:maug","lycanitesmobs:morock","lycanitesmobs:pinky",
			"lycanitesmobs:quetzodracl","lycanitesmobs:quillbeast",
			"lycanitesmobs:rahovart","lycanitesmobs:raiko","lycanitesmobs:reaper","lycanitesmobs:reiver",
			"lycanitesmobs:remobra","lycanitesmobs:roa","lycanitesmobs:roc","lycanitesmobs:salamander",
			"lycanitesmobs:serpix","lycanitesmobs:shade","lycanitesmobs:shadowfirebarrier",
			"lycanitesmobs:shambler","lycanitesmobs:skylus","lycanitesmobs:spectre",
			"lycanitesmobs:spriggan","lycanitesmobs:strider","lycanitesmobs:summoningportal",
			"lycanitesmobs:sutiramu","lycanitesmobs:sylph","lycanitesmobs:tarantula","lycanitesmobs:thresher",
			"lycanitesmobs:treant","lycanitesmobs:tremor","lycanitesmobs:triffid","lycanitesmobs:trite",
			"lycanitesmobs:troll","lycanitesmobs:uvaraptor","lycanitesmobs:vapula","lycanitesmobs:ventoraptor",
			"lycanitesmobs:vespid","lycanitesmobs:vespidqueen","lycanitesmobs:volcan","lycanitesmobs:warg",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet","lycanitesmobs:waterjet",
			"lycanitesmobs:wendigo","lycanitesmobs:wildkin","lycanitesmobs:wraamon",
			"lycanitesmobs:wraith","lycanitesmobs:xaphan","lycanitesmobs:yale",
			"lycanitesmobs:zephyr","lycanitesmobs:zoataur"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("minecraft")){
	mobsMap = {
		stageOverworld.stage: [
			"minecraft:blaze","minecraft:cave_spider",
			"minecraft:creeper","minecraft:stray",
			"minecraft:evocation_fangs","minecraft:evocation_illager",
			"minecraft:ghast","minecraft:giant","minecraft:guardian",
			"minecraft:illusion_illager","minecraft:polar_bear","minecraft:shulker",
			"minecraft:skeleton","minecraft:skeleton_horse","minecraft:spider",
			"minecraft:vex","minecraft:villager_golem","minecraft:vindication_illager","minecraft:witch",
			"minecraft:wither","minecraft:wither_skeleton","minecraft:zombie","minecraft:zombie_horse",
			"minecraft:zombie_pigman","minecraft:zombie_villager","minecraft:husk","minecraft:endermite"
		],
		stageDefault.stage: [
			"minecraft:ender_dragon","minecraft:elder_guardian",
			"minecraft:ender_crystal","minecraft:silverfish","minecraft:slime"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("primitivemobs")){
	mobsMap = {
		stageOverworld.stage: [
			"primitivemobs:baby_spider",
			"primitivemobs:blazing_juggernaut","primitivemobs:festive_creeper",
			"primitivemobs:flame_spewer","primitivemobs:flame_spit","primitivemobs:goblin",
			"primitivemobs:harpy",
			"primitivemobs:mimic","primitivemobs:mother_spider","primitivemobs:primitive_egg",
			"primitivemobs:primitive_tnt_primed","primitivemobs:rocket_creeper",
			"primitivemobs:skeleton_warrior","primitivemobs:support_creeper","primitivemobs:trollager",
			"primitivemobs:void_eye","primitivemobs:lily_lurker","primitivemobs:haunted_tool","primitivemobs:brain_slime",
			"primitivemobs:chameleon","primitivemobs:dodo","primitivemobs:grovesprite","primitivemobs:traveling_merchant"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("vampirism")){
	mobsMap = {
		stageOverworld.stage: [
			"vampirism:advanced_hunter","vampirism:advanced_vampire",
			"vampirism:blinding_bat","vampirism:converted_creature","vampirism:converted_horse",
			"vampirism:converted_sheep",
			"vampirism:dummy_creature","vampirism:ghost","vampirism:hunter_trainer",
			"vampirism:hunter_trainer_dummy","vampirism:soul_orb",
			"vampirism:special_dracula_halloween","vampirism:vampire",
			"vampirism:vampire_baron","vampirism:vampire_hunter","vampirism:vampire_minion_s",
			"vampirism:villager_angry","vampirism:villager_converted","vampirism:villager_hunter_faction",
			"vampirism:villager_vampire_faction"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("thaumcraft")){
	mobsMap = {
		stageOverworld.stage: [
			"thaumcraft:brainyzombie",
			"thaumcraft:cultistcleric","thaumcraft:cultistknight","thaumcraft:cultistleader",
			"thaumcraft:cultistportalgreater","thaumcraft:cultistportallesser","thaumcraft:eldritchcrab",
			"thaumcraft:eldritchgolem","thaumcraft:eldritchguardian","thaumcraft:eldritchorb",
			"thaumcraft:eldritchwarden","thaumcraft:firebat","thaumcraft:giantbrainyzombie",
			"thaumcraft:inhabitedzombie","thaumcraft:pech",
			"thaumcraft:taintacle","thaumcraft:taintaclegiant","thaumcraft:taintacletiny",
			"thaumcraft:taintcrawler","thaumcraft:taintseed","thaumcraft:taintseedprime",
			"thaumcraft:taintswarm","thaumcraft:thaumslime","thaumcraft:wisp"
		],
		stageDefault.stage: [
			"thaumcraft:mindspider","thaumcraft:golem"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
if(loadedMods.contains("aoa3")){
	mobsMap = {
		stageOverworld.stage: [
			"aoa3:abyssal_lottoman","aoa3:agility_tablet","aoa3:airhead","aoa3:alarmo","aoa3:alluricorn",
			"aoa3:ambient_pixon","aoa3:amphibior","aoa3:amphibiyte","aoa3:ancient_golem","aoa3:anemia",
			"aoa3:anemia_bomb","aoa3:angelica","aoa3:angler","aoa3:anima_master","aoa3:anima_stone",
			"aoa3:apparition","aoa3:aquaball","aoa3:aquatic_shot","aoa3:arc_flower","aoa3:arc_wizard",
			"aoa3:arcbeast","aoa3:archvine","aoa3:arcworm","aoa3:arcworm_shot","aoa3:ariel","aoa3:arkback",
			"aoa3:arkzyne","aoa3:arocknid","aoa3:assassin","aoa3:atomizer_bounce","aoa3:atomizer_shot",
			"aoa3:augury_master","aoa3:automaton","aoa3:awareness_tablet","aoa3:axiolight","aoa3:bane",
			"aoa3:bane_big","aoa3:bane_clone","aoa3:banshee","aoa3:baron_bomb","aoa3:baron_lottoman",
			"aoa3:baron_shot","aoa3:baroness","aoa3:baroness_shot","aoa3:basilisk","aoa3:baumba",
			"aoa3:beamer_shot","aoa3:black_ursa","aoa3:blissard","aoa3:blood_drainer","aoa3:bloodball",
			"aoa3:bloodlust","aoa3:bloodmist","aoa3:bloodsucker","aoa3:blooming_pixon","aoa3:blue_flower",
			"aoa3:blue_guardian","aoa3:blue_guardian_shot","aoa3:blue_rune_templar",
			"aoa3:blue_runic_lifeform","aoa3:bobo","aoa3:bomb_carrier","aoa3:bone_creature",
			"aoa3:bone_creeper","aoa3:bone_pellet","aoa3:boneback","aoa3:boreic_lottoman","aoa3:boss_item",
			"aoa3:bouncer","aoa3:bozo_ball","aoa3:breeding_tablet","aoa3:broccohead","aoa3:brute",
			"aoa3:bubble_shot","aoa3:bugeye","aoa3:bullet_bone","aoa3:bullet_shot","aoa3:bush_baby",
			"aoa3:butchery_master","aoa3:candied_lottoman","aoa3:candy_corny","aoa3:cane_bug",
			"aoa3:cannonball","aoa3:cannonball_balloon_bomb","aoa3:cannonball_blue_heavy","aoa3:cannonball_carrot",
			"aoa3:cannonball_clown_ball","aoa3:cannonball_energy_shot","aoa3:cannonball_erebon_stickler",
			"aoa3:cannonball_erebon_stickler_stuck","aoa3:cannonball_flower_ball","aoa3:cannonball_fungal_ball",
			"aoa3:cannonball_ghoul_ball","aoa3:cannonball_golden","aoa3:cannonball_green_ball_giga",
			"aoa3:cannonball_green_ball_mini","aoa3:cannonball_green_ball_super","aoa3:cannonball_green_ball_ultra",
			"aoa3:cannonball_heavy","aoa3:cannonball_heavy_bone","aoa3:cannonball_heavy_red",
			"aoa3:cannonball_heavy_shadowball","aoa3:cannonball_heavy_wither","aoa3:cannonball_hive_ball",
			"aoa3:cannonball_luxon_stickler","aoa3:cannonball_luxon_stickler_stuck","aoa3:cannonball_moon_shot",
			"aoa3:cannonball_orange","aoa3:cannonball_pluton_stickler","aoa3:cannonball_pluton_stickler_stuck",
			"aoa3:cannonball_selyan_stickler","aoa3:cannonball_selyan_stickler_stuck",
			"aoa3:cannonball_smile_blaster","aoa3:cannonball_smiley","aoa3:cannonball_sticky_bomb_cool",
			"aoa3:cannonball_sticky_bomb_red","aoa3:cannonball_vox_cannon","aoa3:cannonball_water_balloon_bomb",
			"aoa3:carrotop","aoa3:case_construct","aoa3:cave_creep","aoa3:cave_creepoid","aoa3:celestial_fall",
			"aoa3:celevian_lottoman","aoa3:centinel","aoa3:chakram","aoa3:charger","aoa3:cherry_barrager",
			"aoa3:cherry_blaster","aoa3:cherry_shot","aoa3:chilli_shot","aoa3:chimera","aoa3:chocko",
			"aoa3:chomper","aoa3:cleansing_tablet","aoa3:clown","aoa3:clown_shot","aoa3:clunkhead",
			"aoa3:compeer","aoa3:confetti_cluster","aoa3:confetti_shot","aoa3:coniferon","aoa3:construct_flight",
			"aoa3:construct_mind","aoa3:construct_of_servility","aoa3:construct_range","aoa3:construct_resistance",
			"aoa3:construct_shot","aoa3:construct_speed","aoa3:construct_strength","aoa3:construct_terror",
			"aoa3:corallus","aoa3:corallus_shot","aoa3:coralon","aoa3:coratee","aoa3:corby","aoa3:corny",
			"aoa3:corrupted_traveller","aoa3:cotton_candor","aoa3:cotton_candor_shot","aoa3:craexxeus",
			"aoa3:craexxeus_nuke","aoa3:craexxeus_shot","aoa3:craggy","aoa3:creation_master","aoa3:creep",
			"aoa3:creep_banker","aoa3:creep_bomb","aoa3:creep_cow","aoa3:creep_tube","aoa3:creeper_shot",
			"aoa3:creeperlock","aoa3:creepird","aoa3:creeponia_lottoman","aoa3:creepuple","aoa3:crusilisk",
			"aoa3:cryptid","aoa3:crystal_lottoman","aoa3:crystal_trader","aoa3:crystocore","aoa3:cyan_shot",
			"aoa3:cyclops","aoa3:dark_beast","aoa3:dawnlight","aoa3:daysee","aoa3:dead_tree","aoa3:death_hunter",
			"aoa3:death_ray","aoa3:deinotherium","aoa3:demon_reaper","aoa3:desert_charger","aoa3:destroyer_shot",
			"aoa3:destruction_shot","aoa3:destructor","aoa3:devourer","aoa3:dicer","aoa3:diocus",
			"aoa3:discharge_shot","aoa3:discharge_slug","aoa3:distorter","aoa3:distortion_tablet",
			"aoa3:doom_shot","aoa3:doubler","aoa3:dracyon","aoa3:draggy","aoa3:dungeon_keeper","aoa3:dust_strider",
			"aoa3:dusteiva","aoa3:duston","aoa3:dustopian_lottoman","aoa3:dweller","aoa3:dyrehorn",
			"aoa3:echodar","aoa3:eeo","aoa3:eilosapien","aoa3:elite_skele_hopper","aoa3:elite_skele_pig",
			"aoa3:elite_skeleman","aoa3:elusive","aoa3:elusive_clone","aoa3:embrake",
			"aoa3:emperor_beast","aoa3:ender_carrier","aoa3:energy_tablet","aoa3:enforcer","aoa3:eradicator_shot",
			"aoa3:everbeast","aoa3:exohead","aoa3:exoid","aoa3:expedition_master","aoa3:explodot",
			"aoa3:explosives_expert","aoa3:extraction_master","aoa3:eye_creature","aoa3:faceless_floater",
			"aoa3:faceless_runner","aoa3:fake_pigman","aoa3:fake_tnt","aoa3:fake_zorp","aoa3:fenix","aoa3:fiend",
			"aoa3:firefly_shot","aoa3:firestorm_fall","aoa3:fischer","aoa3:fishix","aoa3:flamewalker",
			"aoa3:flash","aoa3:flesh_eater","aoa3:floro_lottoman","aoa3:flower_shot","aoa3:flowerface","aoa3:flye",
			"aoa3:foraging_master","aoa3:fragment_shot","aoa3:friendly_creeper","aoa3:fungat","aoa3:fungback",
			"aoa3:fungik","aoa3:fungock","aoa3:fungung","aoa3:furlion","aoa3:gadgetoid","aoa3:ghastus",
			"aoa3:ghost","aoa3:ghostine_ancient","aoa3:ghostly_bugeye","aoa3:ghostly_charger","aoa3:ghostly_cyclops",
			"aoa3:ghostly_goblin","aoa3:ghostly_night_reaper","aoa3:ghostly_sasquatch","aoa3:ghoul_shot",
			"aoa3:giant_snail","aoa3:gingerbird","aoa3:gingerbread_man","aoa3:glaring_pixon","aoa3:gleaming_pixon",
			"aoa3:glistening_pixon","aoa3:glowing_pixon","aoa3:gnawer","aoa3:goalby","aoa3:goblin",
			"aoa3:gold_shot","aoa3:golden_lottoman","aoa3:goldorth","aoa3:goldum","aoa3:goldus","aoa3:goo_ball",
			"aoa3:goofer","aoa3:gorb_arms_dealer","aoa3:gorb_citizen","aoa3:gorb_engineer","aoa3:gravity_tablet",
			"aoa3:graw","aoa3:graw_shot","aoa3:green_flower","aoa3:green_guardian","aoa3:green_guardian_shot",
			"aoa3:green_rune_templar","aoa3:green_runic_lifeform","aoa3:grenade","aoa3:grenade_floro_rpg",
			"aoa3:grenade_multiplying","aoa3:grenade_rpg","aoa3:grillface","aoa3:grobbler","aoa3:grocculate",
			"aoa3:grunt","aoa3:gyro","aoa3:gyrocopter","aoa3:hag","aoa3:hag_shot","aoa3:halycon","aoa3:harkos",
			"aoa3:hauling_master","aoa3:haunted_lottoman","aoa3:haunter_shot","aoa3:headless_destroyer",
			"aoa3:headless_hunter","aoa3:healing_golem","aoa3:heart_stone","aoa3:heavy_grenade",
			"aoa3:heavy_runic_guardian_shot","aoa3:heavy_shower_shot","aoa3:heavy_tri_discharge_shot",
			"aoa3:hell_bubble","aoa3:hellcat","aoa3:hellfire","aoa3:hellfire_tail","aoa3:hellquin","aoa3:hellspot",
			"aoa3:hiding_fungi","aoa3:hill_charger","aoa3:hive_king","aoa3:hive_soldier","aoa3:hive_worker",
			"aoa3:holly_arrow","aoa3:holly_arrow_shot","aoa3:horndron","aoa3:horntail","aoa3:horon","aoa3:host",
			"aoa3:hot_shot","aoa3:hunch","aoa3:hunter","aoa3:hunter_master","aoa3:hydrolisk","aoa3:hydrolon",
			"aoa3:ice_giant","aoa3:ice_shot","aoa3:illusion_shot","aoa3:infernal","aoa3:infusion_master",
			"aoa3:inmate_x","aoa3:inmate_y","aoa3:innervation_master","aoa3:ion_shot","aoa3:iosaur","aoa3:irkling",
			"aoa3:iro_miner_shot","aoa3:jawe","aoa3:jumbo","aoa3:kaiyu","aoa3:kajaros","aoa3:keeler",
			"aoa3:king_bambambam","aoa3:king_charger","aoa3:king_creeper","aoa3:king_shroomus","aoa3:klobber",
			"aoa3:koko","aoa3:kranky","aoa3:kror","aoa3:laser_shot","aoa3:leafy_giant","aoa3:lelyetian_banker",
			"aoa3:lelyetian_caster","aoa3:lelyetian_lottoman","aoa3:lelyetian_shot","aoa3:lelyetian_trader",
			"aoa3:lelyetian_warrior","aoa3:light_blaster_shot","aoa3:light_iron_shot",
			"aoa3:light_runic_guardian_shot","aoa3:light_spark","aoa3:lightwalker","aoa3:limonite_bullet",
			"aoa3:limonite_bullet_blue","aoa3:limonite_bullet_fire","aoa3:limonite_bullet_green",
			"aoa3:limonite_bullet_red","aoa3:limonite_bullet_red_heavy","aoa3:limonite_bullet_shroom",
			"aoa3:limonite_bullet_sunset","aoa3:limonite_bullet_toxic","aoa3:limonite_bullet_yellow",
			"aoa3:linger","aoa3:little_bam","aoa3:living_fungi","aoa3:logging_master","aoa3:lollypopper",
			"aoa3:lost_soul","aoa3:lotto_totem","aoa3:lottoman","aoa3:luna_shot","aoa3:lunar_fall",
			"aoa3:lunar_holly_arrow_shot","aoa3:lunar_lottoman","aoa3:lunarcher","aoa3:lurker","aoa3:luxocron",
			"aoa3:lyonic_shot","aoa3:magic_ball","aoa3:magical_creeper","aoa3:magicke","aoa3:magicke_shot",
			"aoa3:mech_fall","aoa3:mech_shot","aoa3:mecha_cyclops","aoa3:mecha_skellox","aoa3:mechachron",
			"aoa3:mechamaton","aoa3:mechbot","aoa3:mechyon","aoa3:meganeuropsis","aoa3:merkyre","aoa3:mermage",
			"aoa3:metal_slug","aoa3:metalloid","aoa3:meteor_fall","aoa3:mind_blaster_shot","aoa3:mirage",
			"aoa3:miskel","aoa3:modulo","aoa3:modulo_shot","aoa3:moon_destroyer_shot","aoa3:moon_maker",
			"aoa3:moon_shiner_shot","aoa3:moonlight_fall","aoa3:mother_void_walker","aoa3:muckopede",
			"aoa3:muncher","aoa3:mushroom_spider","aoa3:mystic_lottoman","aoa3:natura","aoa3:naturalist",
			"aoa3:neptuno","aoa3:nethengeic_beast","aoa3:nethengeic_wither","aoa3:nethengeic_wither_shot",
			"aoa3:night_reaper","aoa3:night_watcher","aoa3:nightfly","aoa3:nightmare_fall",
			"aoa3:nightmare_spider","aoa3:nightwing","aoa3:nipper","aoa3:nospike","aoa3:noxious_shot",
			"aoa3:occulent","aoa3:occult_block","aoa3:odious_shot","aoa3:okazor","aoa3:omnilight",
			"aoa3:omnilight_shot","aoa3:opteryx","aoa3:orange_flower","aoa3:orbiter","aoa3:orbling",
			"aoa3:orbocron_shot","aoa3:oxygen_tablet","aoa3:paladin","aoa3:paralyzer_shot","aoa3:parasect",
			"aoa3:paravite","aoa3:party_popper_shot","aoa3:penguin","aoa3:penumbra","aoa3:penumbra_shot",
			"aoa3:peppermint_snail","aoa3:phantom","aoa3:phantom_shot","aoa3:pigotron","aoa3:pincher",
			"aoa3:plateosaur","aoa3:pod_plant","aoa3:poison_plunger_shot","aoa3:poison_shot",
			"aoa3:polar_ursa","aoa3:polymorph_shot","aoa3:polytom","aoa3:polytom_shot","aoa3:pop_shot",
			"aoa3:portal_master","aoa3:power_ray","aoa3:power_shot","aoa3:precasian_lottoman",
			"aoa3:pressure_tablet","aoa3:primitive_carrotop","aoa3:primordial_banker","aoa3:primordial_guide",
			"aoa3:primordial_merchant","aoa3:primordial_shot","aoa3:primordial_spellbinder",
			"aoa3:primordial_wizard","aoa3:professor","aoa3:proficiency_tablet","aoa3:proshield",
			"aoa3:proton_shot","aoa3:purple_flower","aoa3:quickpocket","aoa3:radiant_pixon",
			"aoa3:rainbow_shot","aoa3:rainicorn","aoa3:rammerhead","aoa3:rammerhorn","aoa3:ramradon",
			"aoa3:rawbone","aoa3:raxxan","aoa3:realmshifter","aoa3:reaper_twins","aoa3:reaver",
			"aoa3:red_guardian","aoa3:red_guardian_shot","aoa3:red_rune_templar","aoa3:red_runic_lifeform",
			"aoa3:reefer_shot","aoa3:refluct","aoa3:resistance_tablet","aoa3:revolution_shot","aoa3:rock_crawler",
			"aoa3:rock_critter","aoa3:rock_fragment","aoa3:rock_fragment_fungal","aoa3:rock_rider",
			"aoa3:rockbiter","aoa3:rocky_lottoman","aoa3:roloscope","aoa3:rosid","aoa3:rosidian_shot",
			"aoa3:runation_master","aoa3:runic_bomb","aoa3:runic_golem","aoa3:runic_guardian",
			"aoa3:runic_guardian_shot","aoa3:runic_lottoman","aoa3:runicorn","aoa3:runicorn_rider",
			"aoa3:sabretooth","aoa3:sanctity_tablet","aoa3:sand_giant","aoa3:sand_golem","aoa3:sasquatch",
			"aoa3:satiation_tablet","aoa3:scrubby","aoa3:sea_charger","aoa3:sea_skeleton","aoa3:sea_spider",
			"aoa3:sea_troll","aoa3:sea_viper","aoa3:seaocron_shot","aoa3:seed_dart","aoa3:seeker",
			"aoa3:shaddy","aoa3:shade","aoa3:shadow","aoa3:shadow_stalker","aoa3:shadowlord",
			"aoa3:shadowlord_shot","aoa3:shavo","aoa3:shifter","aoa3:shik","aoa3:shining_pixon",
			"aoa3:shoe_shot","aoa3:shower_shot","aoa3:shyre_archer","aoa3:shyre_banker","aoa3:shyre_beam",
			"aoa3:shyre_knight","aoa3:shyre_shot","aoa3:shyre_troll","aoa3:shyrelands_lottoman",
			"aoa3:sight_tablet","aoa3:silencer","aoa3:silverfoot","aoa3:skele_elder","aoa3:skele_hopper",
			"aoa3:skele_pig","aoa3:skeledon","aoa3:skelekyte","aoa3:skeleman","aoa3:skeletal_cowman",
			"aoa3:skeletron","aoa3:skellox","aoa3:skipper","aoa3:skolle","aoa3:skull_creature",
			"aoa3:skullo_shot","aoa3:sky_shot","aoa3:slice_star","aoa3:slimer","aoa3:smash","aoa3:snappy",
			"aoa3:sniper_slug","aoa3:snow_charger","aoa3:soul_drainer_shot","aoa3:soul_spark",
			"aoa3:soul_storm_shot","aoa3:soulscorne","aoa3:soulvyre","aoa3:spearmint_snail",
			"aoa3:spectral_holly_arrow","aoa3:spectral_shot","aoa3:spectral_wizard","aoa3:sphinx",
			"aoa3:spikeback","aoa3:spinoledon","aoa3:spinux","aoa3:spirit_guardian","aoa3:spirit_protector",
			"aoa3:spiritual_shot","aoa3:spraggy","aoa3:squasher","aoa3:squiggler","aoa3:stalker",
			"aoa3:stalker_prime","aoa3:sticky","aoa3:stimulo","aoa3:stimulosus","aoa3:stinger","aoa3:stitches",
			"aoa3:stone_giant","aoa3:store_keeper","aoa3:strength_tablet","aoa3:strong_skele_hopper",
			"aoa3:strong_skele_pig","aoa3:strong_skeleman","aoa3:sugarface","aoa3:sun_shot","aoa3:sunny",
			"aoa3:surveyor","aoa3:swamp_charger","aoa3:swarm_shot","aoa3:sysker","aoa3:tangle_fall",
			"aoa3:terradon","aoa3:terrestrial","aoa3:terror_construct_shot","aoa3:tharafly","aoa3:tidal_wave",
			"aoa3:tipped_holly_arrow","aoa3:tipsy","aoa3:token_collector","aoa3:tortione",
			"aoa3:toxic_lottoman","aoa3:toxic_shot","aoa3:toxxulous","aoa3:toy_merchant","aoa3:tracker",
			"aoa3:tree_spirit","aoa3:tri_discharge_shot","aoa3:trickster","aoa3:trickster_clone",
			"aoa3:triclops","aoa3:troll_trader","aoa3:trotter","aoa3:twinkling_lottoman","aoa3:tyrosaur",
			"aoa3:ultimatum_shot","aoa3:undead_herald","aoa3:undead_troll","aoa3:untiring_tablet",
			"aoa3:urioh","aoa3:urka","aoa3:urv","aoa3:valkyrie","aoa3:valkyrie_shot","aoa3:vertebron",
			"aoa3:vine_wizard","aoa3:vine_wizard_shot","aoa3:vinocorne","aoa3:visage","aoa3:visualent",
			"aoa3:visular","aoa3:visulon","aoa3:vitality_tablet","aoa3:void_charger","aoa3:void_walker",
			"aoa3:volar","aoa3:volar_shot","aoa3:voliant","aoa3:voltron","aoa3:vortex_blast",
			"aoa3:voxxulon","aoa3:voxxulon_meteor","aoa3:vulkram","aoa3:waggy","aoa3:walker","aoa3:warclops",
			"aoa3:wart_dart","aoa3:water_shot","aoa3:web_reaper","aoa3:weighted_shower_shot","aoa3:white_ball",
			"aoa3:wickett","aoa3:winder_shot","aoa3:winged_creeper","aoa3:wither_ball","aoa3:wither_shot",
			"aoa3:wither_wizard","aoa3:withering_lottoman","aoa3:wood_giant","aoa3:wrath_shot","aoa3:xxeus",
			"aoa3:yellow_flower","aoa3:yellow_guardian","aoa3:yellow_guardian_shot","aoa3:yellow_rune_templar",
			"aoa3:yellow_runic_lifeform","aoa3:yeti","aoa3:zal_banker","aoa3:zal_child","aoa3:zal_citizen",
			"aoa3:zal_grocer","aoa3:zal_herbalist","aoa3:zal_spellbinder","aoa3:zal_vendor","aoa3:zarg",
			"aoa3:zhinx","aoa3:zorp"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}

if(loadedMods.contains("evilcraft")){
	mobsMap = {
		stageOverworld.stage: [
			"evilcraft:broom_entity","evilcraft:controlled_zombie","evilcraft:entity_attack_vengeance_beam",
			"evilcraft:entity_biome_extract","evilcraft:entity_blood_pearl","evilcraft:entity_item_dark_stick",
			"evilcraft:entity_item_empowerable","evilcraft:entity_item_undespawnable",
			"evilcraft:entity_lightning_bomb","evilcraft:entity_lightning_grenade",
			"evilcraft:entity_necromancers_head","evilcraft:entity_neutron_beam",
			"evilcraft:entity_redstone_grenade","evilcraft:entity_weather_container",
			"evilcraft:netherfish","evilcraft:poisonous_libelle","evilcraft:werewolf"
		],
		stageThaumcraft.stage: [
			"evilcraft:vengeance_spirit"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}


if(loadedMods.contains("nex")){
	mobsMap = {
		stageOverworld.stage: [
			"netherex:brute","netherex:coolmar_spider","netherex:ember","netherex:ghast_queen",
			"netherex:ghastling","netherex:gold_golem","netherex:mogus","netherex:nethermite",
			"netherex:salamander","netherex:spinout","netherex:spore","netherex:spore_creeper",
			"netherex:wight"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}

if(loadedMods.contains("instrumentalmobs")){
	mobsMap = {
		stageOverworld.stage: [
			"instrumentalmobs:cymbal_husk",
			"instrumentalmobs:drum_zombie",
			"instrumentalmobs:french_horn_creeper",
			"instrumentalmobs:maraca_spider",
			"instrumentalmobs:microphone_ghast",
			"instrumentalmobs:microphone_sound",
			"instrumentalmobs:sound_waves",
			"instrumentalmobs:tuba_enderman",
			"instrumentalmobs:xylophone_skeleton"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}

if(loadedMods.contains("lmreengaged")){
	mobsMap = {
		stageEngg.stage: [
			"lmreengaged:littlemaid"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}

if(loadedMods.contains("bewitchment")){
	mobsMap = {
		stageOverworld.stage: [
			"bewitchment:bafometyr","bewitchment:baphomet","bewitchment:black_dog","bewitchment:cambion",
			"bewitchment:cleaver","bewitchment:cypress_broom","bewitchment:demon","bewitchment:demoness",
			"bewitchment:dragons_blood_broom","bewitchment:druden","bewitchment:elder_broom",
			"bewitchment:feuerwurm","bewitchment:ghost","bewitchment:hellhound","bewitchment:imp",
			"bewitchment:juniper_broom","bewitchment:leonard","bewitchment:lizard","bewitchment:owl",
			"bewitchment:raven","bewitchment:shadow_person","bewitchment:silver_arrow","bewitchment:snake",
			"bewitchment:toad","bewitchment:werewolf"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}

if(loadedMods.contains("trumpetskeleton")){
	mobsMap = {
		stageOverworld.stage: [
			"trumpetskeleton:trumpet_skeleton"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}
/*if(loadedMods.contains("mw")){
	mobsMap = {
		stageWar.stage: [
			"mw:ammo256","mw:bandit1","mw:deathclaw","mw:defiled zombie","mw:entityspreadable262",
			"mw:gasgrenade261","mw:grenade259","mw:hazmat_zombie","mw:licker","mw:molded","mw:necromorph",
			"mw:shellcasing258","mw:smokegrenade260","mw:tornzombie","mw:wcam257","mw:zombie",
			"mw:zombieblistered","mw:zombieripper"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}*/

if(loadedMods.contains("thermalfoundation")){
	mobsMap = {
		stageOverworld.stage: [
			"thermalfoundation:basalz","thermalfoundation:blitz","thermalfoundation:blizz"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs);
	}
}




// Passive Mobs Not in Wrong Dims

if(loadedMods.contains("animania")){
	mobsMap = {
		stageOverworld.stage: [
			"animania:buck_alpine","animania:buck_angora","animania:buck_chinchilla","animania:buck_cottontail",
			"animania:buck_dutch","animania:buck_fainting","animania:buck_havana","animania:buck_jack",
			"animania:buck_kiko","animania:buck_kinder","animania:buck_lop","animania:buck_new_zealand",
			"animania:buck_nigerian_dwarf","animania:buck_pygmy","animania:buck_rex","animania:bull_angus",
			"animania:bull_friesian","animania:bull_hereford","animania:bull_highland","animania:bull_holstein",
			"animania:bull_jersey","animania:bull_longhorn","animania:bull_mooshroom","animania:calf_angus",
			"animania:calf_friesian","animania:calf_hereford","animania:calf_highland","animania:calf_holstein",
			"animania:calf_jersey","animania:calf_longhorn","animania:calf_mooshroom","animania:chick_leghorn",
			"animania:chick_orpington","animania:chick_plymouth_rock","animania:chick_rhode_island_red",
			"animania:chick_wyandotte","animania:cow_angus","animania:cow_friesian","animania:cow_hereford",
			"animania:cow_highland","animania:cow_holstein","animania:cow_jersey","animania:cow_longhorn",
			"animania:cow_mooshroom","animania:dartfrog","animania:doe_alpine","animania:doe_angora",
			"animania:doe_chinchilla","animania:doe_cottontail","animania:doe_dutch","animania:doe_fainting",
			"animania:doe_havana","animania:doe_jack","animania:doe_kiko","animania:doe_kinder","animania:doe_lop",
			"animania:doe_new_zealand","animania:doe_nigerian_dwarf","animania:doe_pygmy","animania:doe_rex",
			"animania:ewe_dorper","animania:ewe_dorset","animania:ewe_friesian","animania:ewe_jacob",
			"animania:ewe_merino","animania:ewe_suffolk","animania:ferret_grey","animania:ferret_white",
			"animania:foal_draft","animania:frog","animania:hamster","animania:hedgehog","animania:hedgehog_albino",
			"animania:hen_leghorn","animania:hen_orpington","animania:hen_plymouth_rock","animania:hen_rhode_island_red",
			"animania:hen_wyandotte","animania:hog_duroc","animania:hog_hampshire","animania:hog_large_black",
			"animania:hog_large_white","animania:hog_old_spot","animania:hog_yorkshire","animania:kid_alpine",
			"animania:kid_angora","animania:kid_fainting","animania:kid_kiko","animania:kid_kinder",
			"animania:kid_nigerian_dwarf","animania:kid_pygmy","animania:kit_chinchilla","animania:kit_cottontail",
			"animania:kit_dutch","animania:kit_havana","animania:kit_jack","animania:kit_lop","animania:kit_new_zealand",
			"animania:kit_rex","animania:lamb_dorper","animania:lamb_dorset","animania:lamb_friesian",
			"animania:lamb_jacob","animania:lamb_merino","animania:lamb_suffolk","animania:mare_draft",
			"animania:peachick_blue","animania:peachick_charcoal","animania:peachick_opal","animania:peachick_peach",
			"animania:peachick_purple","animania:peachick_taupe","animania:peachick_white","animania:peacock_blue",
			"animania:peacock_charcoal","animania:peacock_opal","animania:peacock_peach","animania:peacock_purple",
			"animania:peacock_taupe","animania:peacock_white","animania:peahen_blue","animania:peahen_charcoal",
			"animania:peahen_opal","animania:peahen_peach","animania:peahen_purple","animania:peahen_taupe",
			"animania:peahen_white","animania:piglet_duroc","animania:piglet_hampshire","animania:piglet_large_black",
			"animania:piglet_large_white","animania:piglet_old_spot","animania:piglet_yorkshire",
			"animania:ram_dorper","animania:ram_dorset","animania:ram_friesian","animania:ram_jacob",
			"animania:ram_merino","animania:ram_suffolk","animania:rooster_leghorn","animania:rooster_orpington",
			"animania:rooster_plymouth_rock","animania:rooster_rhode_island_red","animania:rooster_wyandotte",
			"animania:sow_duroc","animania:sow_hampshire","animania:sow_large_black","animania:sow_large_white",
			"animania:sow_old_spot","animania:sow_yorkshire","animania:stallion_draft","animania:tiller",
			"animania:toad"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
if(loadedMods.contains("minecraft")){
	mobsMap = {
		stageOverworld.stage: [
			"minecraft:enderman","minecraft:bat","minecraft:chicken","minecraft:cow","minecraft:donkey","minecraft:horse",
			"minecraft:llama","minecraft:mooshroom","minecraft:mule","minecraft:ocelot",
			"minecraft:parrot","minecraft:pig","minecraft:rabbit","minecraft:sheep",
			"minecraft:squid","minecraft:wolf"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
if(loadedMods.contains("familiarfauna")){
	mobsMap = {
		stageOverworld.stage: [
			"familiarfauna:familiarfauna.butterfly","familiarfauna:familiarfauna.deer",
			"familiarfauna:familiarfauna.dragonfly","familiarfauna:familiarfauna.pixie",
			"familiarfauna:familiarfauna.snail","familiarfauna:familiarfauna.turkey"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
if(loadedMods.contains("chickens")){
	mobsMap = {
		stageOverworld.stage: [
			"chickens:chickenschicken"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
if(loadedMods.contains("hatchery")){
	mobsMap = {
		stageOverworld.stage: [
			"hatchery:roosterentity"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}

if(loadedMods.contains("totemic")){
	mobsMap = {
		stageOverworld.stage: [
			"totemic:bald_eagle","totemic:baykok","totemic:buffalo"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
if(loadedMods.contains("waddles")){
	mobsMap = {
		stageOverworld.stage: [
			"waddles:adelie_penguin"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
if(loadedMods.contains("aoa3")){
	mobsMap = {
		stageOverworld.stage: [
			"aoa3:elkanyne"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
if(loadedMods.contains("lycanitesmobs")){
	mobsMap = {
		stageOverworld.stage: [
			"lycanitesmobs:aegis","lycanitesmobs:nymph","lycanitesmobs:wisp","lycanitesmobs:maka","lycanitesmobs:yeti",
			"lycanitesmobs:arisaur","lycanitesmobs:joust","lycanitesmobs:ika","lycanitesmobs:silex","lycanitesmobs:krake",
			"lycanitesmobs:pixen"
		]
	};
	for _stage, mobs in mobsMap {
		ZenStager.getStage(_stage).addMobs(mobs,8);
		ZenStager.getStage(_stage).addMobs(mobs,57);
		ZenStager.getStage(_stage).addMobs(mobs,72);
	}
}
// ==================================
// Mod Staging
static stagedMods as string[][string] = {
	stageOverworld.stage : [
		"akashictome",
		"cookingforblockheads",
		"spartanweaponry",
		"storagedrawers",
		"aquaculture",
		"lycanitesmobs",
		"netherex",
		"openblocks",
		"thermalfoundation"
	],
	stageTech.stage:[
		"immersiveengineering",
		"immersivetech",
		"mcwbridges"
	],
	stageWar.stage:[
		"lostsouls",
		"mw"
	],
	stagePixelmon.stage : [
		"pixelmon"
	],
	stageDefault.stage : [
		"harvestcraft",
		"totemic"
	],
	stageDigimon.stage : [
		"digimobs"
	],
	stageThaumcraft.stage : [
		"crimsonrevelations",
		"thaumcraft",
		"thaumicaugmentation",
		"thaumicperiphery",
		"thaumictinkerer"
	],
	stageEnviTech.stage : [
		"environmentaltech",
		"immersivepetroleum",
		"valkyrielib",
		"thermalexpansion"
	],
	stageAOA.stage : [
		"aoa3"
	],
	stageEvil.stage : [
		"bloodmagic",
		"animus",
		"bloodarsenal",
		"evilcraft",
		"bewitchment"
	],
	stageFire.stage : [
		"iceandfire",
		"spartanfire"
	],
	stageAether.stage : [
		"aether"
	],
	stageChickens.stage : [
		"chickens",
		"morechickens",
		"hatchery"
	],
	stageFarmer.stage: [
		"tropicraft",
		"mahoutsukai",
		"soulus",
		"bibliocraft"
	],
	stageBard.stage: [
		"thebetweenlands",
		"heroesexpansion",
		"lucraftcore",
		"petrock",
		"glacidus"
	],
	stageEngg.stage: [
		"atum",
		"academy",
		"lmreengaged"
	],
	stageOutcast.stage: [
		"vampirism",
		"goodnightsleep"
	],
	stageWarrior.stage: [
		"defiledlands",
		"armorplus",
		"improvedbackpacks"
	]
};


function init_mod() {
	for stageName, modId in stagedMods {
		ZenStager.getStage(stageName).addModId(modId, true);
	}
}

function containsMod(targetModId as string) as string {
	for stageName, modIds in stagedMods {
		if (modIds has targetModId) {
			return stageName;
		}
	}
	return "";
}
// ==================================
// Specific Items
static stagedCT as IIngredient[][string] = {
	stageBard.stage: [
		<contenttweaker:ascendedmilk>,
		<contenttweaker:everfeather>
	],
	stageEngg.stage: [
		<contenttweaker:drilllicense>,
		<contenttweaker:digimoncartridge>,
		<contenttweaker:vicmwcartridge>,
		//<item.lmreengaged:spawn_littlemaid_egg>
	],
	stageFarmer.stage: [
		<contenttweaker:mysticegg>
	],
	stageTech.stage: [
		<contenttweaker:power_pin>,
		<contenttweaker:data_pin>,
		<contenttweaker:pixelmoncartridge>
	],
	stageOutcast.stage: [
		<contenttweaker:taintedmilk>,
		<contenttweaker:demonicmilk>
	],
	stageWarrior.stage: [
		<contenttweaker:bottlesteam>
	]
};
for stageName, items in stagedCT {
	ZenStager.getStage(stageName).addIngredients(items);
}



// ==================================
// Item Correction Staging
static stagedItems as IIngredient[][string] = {
	stageDefault.stage: [
		<digimobs:digidirt>
	]
};
static mobSpawners as string[] = ["minecraft:blaze","minecraft:cave_spider",
			"minecraft:creeper","minecraft:skeleton","minecraft:skeleton_horse","minecraft:spider",
			"minecraft:wither_skeleton","minecraft:zombie","minecraft:zombie_horse",
			"minecraft:zombie_villager"
		];

	
	

function init_correct() {
	for stageName, items in stagedItems {
		ZenStager.addModItemOverrides("digimobs", items);
	}	
}

// ==================================
// Initialize Scripts
init_mod();
init_correct();

// ==================================
// Build the Basic Stages

ZenStager.checkConflicts();
ZenStager.buildAll();
// Apply Mob Spawners
for mobs in mobSpawners {
	mods.MobStages.toggleSpawner(mobs, true);
}
// Apply Dimension Stages
mods.recipestages.Recipes.setRecipeStage("engg","lmreengaged:spawn_littlemaid_egg");
mods.DimensionStages.addDimensionStage("tech",8);
mods.DimensionStages.addDimensionStage("tech",57);
mods.DimensionStages.addDimensionStage("Overworld",-1);
mods.DimensionStages.addDimensionStage("Overworld",1);
mods.DimensionStages.addDimensionStage("Overworld",2);
mods.DimensionStages.addDimensionStage("aether",3);
mods.DimensionStages.addDimensionStage("bard",20);
mods.DimensionStages.addDimensionStage("bard",84);
mods.DimensionStages.addDimensionStage("outcast",44);
mods.DimensionStages.addDimensionStage("outcast",45);
mods.DimensionStages.addDimensionStage("farmer",-127);
mods.DimensionStages.addDimensionStage("engg",17);
mods.DimensionStages.addDimensionStage("Default",0);
// ==================================
