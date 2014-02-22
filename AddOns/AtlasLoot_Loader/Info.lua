﻿--[[
Atlasloot Enhanced
Author Hegarol
Loot browser associating loot with instance bosses
Can be integrated with Atlas (http://www.atlasmod.com)
]]

local AtlasLoot = _G.AtlasLoot
--Invoke libraries
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot");

AtlasLoot.AddonInfo = {
	support = {
		email = "manager@atlasloot.net",
		forum = "http://www.atlasloot.net/",
		curse = "http://wow.curse.com/downloads/wow-addons/details/atlasloot-enhanced.aspx",
		wowinterface = "http://www.wowinterface.com/downloads/info5541-AtlasLootEnhanced.html",
	},
	authors = {
		["Hegarol"] = {
			email = "hegarol@atlasloot.net",
			ingame = {"Hegarol@Dun Morogh"},
		},
		["Lag"] = {
			email = "lag@atlasloot.net",
			ingame = {"Lâg@Arthas", "Calî@Arthas", "Shijera@Arthas"},
			friends = {"Malina@Nera'thor", "Slýk@Nera'thor", "Hernandez@Arthas"},
		},
		["Celellach"] = {
			email = "celellach@atlasloot.net",
			ingame = {"Celellach@Turalyon"},
		},
		["Daviesh"] = {
			email = "daviesh@atlasloot.net",
			ingame = {"Daviesh@Thaurissan"},
		},
	},
	help = {
		{
			AL["How to open the standalone Loot Browser:"],
			AL["If you have AtlasLootFu enabled, click the minimap button, or alternatively a button generated by a mod like Titan or FuBar.  Finally, you can type '/al' in the chat window."],
		},
		{
			AL["How to link an item to someone else:"],
			AL["Shift+Left Click the item like you would for any other in-game item"],
		},
		{
			AL["How to view an 'unsafe' item:"],
			AL["Unsafe items have a red border around the icon and are marked because you have not seen the item since the last patch or server restart. Right-click the item, then move your mouse back over the item or click the 'Query Server' button at the bottom of the loot page."],
		},
		{
			AL["How to view an item in the Dressing Room:"],
			AL["Simply Ctrl+Left Click on the item.  Sometimes the dressing room window is hidden behind the Atlas or AtlasLoot windows, so if nothing seems to happen move your Atlas or AtlasLoot windows and see if anything is hidden."],
		},
		{
			AL["How to add an item to the wishlist:"],
			AL["Alt+Left Click any item to add it to the wishlist."],
		},
		{
			AL["How to delete an item from the wishlist:"],
			AL["While on the wishlist screen, just Alt+Left Click on an item to delete it."],
		},
		{
			AL["What else does the wishlist do?"],
			AL["If you Left Click any item on the wishlist, you can jump to the loot page the item comes from.  Also, on a loot page any item already in your wishlist is marked with a yellow star."],
		},
		{
			AL["HELP!! I have broken the mod somehow!"],
			AL["Use the reset buttons available in the options menu, or type '/al reset' in your chat window."],
		},	
	},
}