#priority 4000
#loader contenttweaker
/*
	SevTech: Ages ContentTweaker Script Exert
	Creates the statics to import the Stages to other scripts.
	Note: Portions of these scripts were created for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;


var PowerPin = VanillaFactory.createItem("Power_Pin");
PowerPin.rarity = "rare";
PowerPin.register();

var DataPin = VanillaFactory.createItem("Data_Pin");
DataPin.rarity = "rare";
DataPin.register();

var VICMWCartridgeBlock = VanillaFactory.createBlock("VICMWCartridge",<blockmaterial:ice>);
VICMWCartridgeBlock.setLightOpacity(3);
VICMWCartridgeBlock.setBlockHardness(20.0);
VICMWCartridgeBlock.setBlockResistance(999.0);
VICMWCartridgeBlock.setToolClass("pickaxe");
VICMWCartridgeBlock.setToolLevel(1);
VICMWCartridgeBlock.setBlockSoundType(<soundtype:Anvil>);
VICMWCartridgeBlock.setSlipperiness(0.3);
VICMWCartridgeBlock.register();

var PixelmonCartridgeBlock = VanillaFactory.createBlock("PixelmonCartridge",<blockmaterial:ice>);
PixelmonCartridgeBlock.setLightOpacity(3);
PixelmonCartridgeBlock.setBlockHardness(20.0);
PixelmonCartridgeBlock.setBlockResistance(999.0);
PixelmonCartridgeBlock.setToolClass("pickaxe");
PixelmonCartridgeBlock.setToolLevel(1);
PixelmonCartridgeBlock.setBlockSoundType(<soundtype:Anvil>);
PixelmonCartridgeBlock.setSlipperiness(0.3);
PixelmonCartridgeBlock.register();

var DigimonCartridgeBlock = VanillaFactory.createBlock("DigimonCartridge",<blockmaterial:ice>);
DigimonCartridgeBlock.setLightOpacity(3);
DigimonCartridgeBlock.setBlockHardness(20.0);
DigimonCartridgeBlock.setBlockResistance(999.0);
DigimonCartridgeBlock.setToolClass("pickaxe");
DigimonCartridgeBlock.setToolLevel(1);
DigimonCartridgeBlock.setBlockSoundType(<soundtype:Anvil>);
DigimonCartridgeBlock.setSlipperiness(0.3);
DigimonCartridgeBlock.register();