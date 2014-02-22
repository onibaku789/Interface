-- ********************************************************
-- **           Mizus RaidTracker - itIT Local           **
-- **           <http://nanaki.affenfelsen.de>           **
-- ********************************************************
--
-- This localization is written by:
--  <NOBODY>
--
-- Note: 
--  MRT requires a correct localization of bossyells for working
--

----------------------
--  Are you local?  --
----------------------
if GetLocale() ~= "itIT" then return end


-----------------
--  Bossyells  --
-----------------
MRT_L.Bossyells = {
    -- Naxxramas
    [535] = {
        ["I grow tired of these games. Proceed, and I will banish your souls to oblivion!"] = "Four Horsemen",
    },

    -- Ulduar
    [529] = {
        ["You rush headlong into the maw of madness!"] = "Iron Council",  -- Normalmode - Stormcaller Brundir last
        ["What have you gained from my defeat? You are no less doomed, mortals."] = "Iron Council",  -- Semi-Hardmode - Runemaster Molgeim last
        ["Impossible..."] = "Iron Council",  -- Hardmode - Steelbreaker last
        ["I... I am released from his grasp... at last."] = "Hodir",
        ["Stay your arms! I yield!"] = "Thorim",
        ["His hold on me dissipates. I can see clearly once more. Thank you, heroes."] = "Freya",
        ["It would appear that I've made a slight miscalculation. I allowed my mind to be corrupted by the fiend in the prison, overriding my primary directive. All systems seem to be functional now. Clear."] = "Mimiron",
        ["I have seen worlds bathed in the Makers' flames, their denizens fading without as much as a whimper. Entire planetary systems born and razed in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart devoid of emotion... of empathy. I. Have. Felt. Nothing. A million-million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?"] = "Algalon the Observer",
    },
    
    -- Trial of the Crusader
    [543] = {
        ["A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death."] = "Faction Champions",
    },
    
    -- Icecrown Citadel
    [604] = {
        ["Don't say I didn't warn ya, scoundrels! Onward, brothers and sisters!"] = "Icecrown Gunship Battle", -- Muradin
        ["The Alliance falter. Onward to the Lich King!"] = "Icecrown Gunship Battle", -- Saurfang
        ["I AM RENEWED! Ysera grant me the favor to lay these foul creatures to rest!"] = "Valithria Dreamwalker", -- Dreamwalker
    },
      
    -- Ruby Sanctum
    [609] = {
        ["Relish this victory, mortals, for it will be your last. This world will burn with the master's return!"] = "Halion", -- Halion
    },
    
    -- Throne of the Four Winds
    [773] = {
        ["The Conclave of Wind has dissipated. Your honorable conduct and determination have earned you the right to face me in battle, mortals. I await your assault on my platform! Come!"] = "Conclave of Wind", -- Conclave of Wind
    },
    
    -- Firelands
    [800] = {
        ["Too soon! ... You have come too soon..."] = "Ragnaros",
    },
}


---------------------------------
--  Core frames local strings  --
---------------------------------
-- MRT_L.Core["DKP_Frame_Bank_Button"] = "Bank"
-- MRT_L.Core["DKP_Frame_Cancel_Button"] = "Cancel"
-- MRT_L.Core["DKP_Frame_Cost"] = "Cost"
-- MRT_L.Core["DKP_Frame_Delete_Button"] = "Delete"
-- MRT_L.Core["DKP_Frame_Disenchanted_Button"] = "Disenchanted"
-- MRT_L.Core["DKP_Frame_EnterCostFor"] = "Enter cost for"
-- MRT_L.Core["DKP_Frame_LootetBy"] = "looted by |cFFFFFFFF%s|r."
-- MRT_L.Core["DKP_Frame_Note"] = "Note"
-- MRT_L.Core["DKP_Frame_OK_Button"] = "Ok"
-- MRT_L.Core["DKP_Frame_Title"] = "Enter cost"
--[==[ MRT_L.Core["Export_AttendanceNote"] = [=[In the Raid-Log-Import-Settings, please set the option
"Time in seconds, the loot belongs to the boss before."
to or below 180 seconds to avoid attendance issues.]=] ]==]
-- MRT_L.Core["Export_Attendees"] = "Attendees"
-- MRT_L.Core["Export_Button"] = "Close"
--[==[ MRT_L.Core["Export_Explanation"] = [=[Press Ctrl+C to copy the data to the clipboard.
Press Ctrl+V to import data in your webbrowser.]=] ]==]
-- MRT_L.Core["Export_Frame_Title"] = "Data export"
-- MRT_L.Core["Export_Heroic"] = "Heroic"
-- MRT_L.Core["Export_Loot"] = "Loot"
-- MRT_L.Core["Export_Normal"] = "Normal"
-- MRT_L.Core["GuildAttendanceAddNotice"] = "%s added %s to the boss attendee list."
-- MRT_L.Core["GuildAttendanceAnnounceText"] = "Whisper me your mains name to be added to the DKP list."
-- MRT_L.Core["GuildAttendanceAnnounceText2"] = "Whisper me with '%s' to be added to the DKP list."
-- MRT_L.Core["GuildAttendanceBossDownText"] = "%s down!"
-- MRT_L.Core["GuildAttendanceBossEntry"] = "Attendance check"
-- MRT_L.Core["GuildAttendanceFailNotice"] = "%s failed to add %s to the boss attendee list."
-- MRT_L.Core["GuildAttendanceMsgBox"] = "%s down. Make attendance check now?"
-- MRT_L.Core["GuildAttendanceRemainingTimeText"] = "%d minutes remaining."
-- MRT_L.Core["GuildAttendanceReply"] = "Added %s to DKP list."
-- MRT_L.Core["GuildAttendanceReplyFail"] = "%s is already in DKP list."
-- MRT_L.Core["GuildAttendanceTimeUpText"] = "If you haven't whispered me by now, you're too late."
-- MRT_L.Core["LDB Left-click to toggle the raidlog browser"] = "Left-click to toggle the raidlog browser"
-- MRT_L.Core["LDB Right-click to open the options menu"] = "Right-click to open the options menu"
-- MRT_L.Core["MB_Cancel"] = "Cancel"
-- MRT_L.Core["MB_No"] = "No"
-- MRT_L.Core["MB_Ok"] = "Ok"
-- MRT_L.Core["MB_Yes"] = "Yes"
-- MRT_L.Core["TakeSnapshot_CurrentRaidError"] = "Error: Active raid in progress. No snapshot taken."
-- MRT_L.Core["TakeSnapshot_Done"] = "Snapshot taken."
-- MRT_L.Core["TakeSnapshot_NotInRaidError"] = "Error: You are not in a raid. No snapshot taken."
-- MRT_L.Core["Trash Mob"] = "Trash Mob"



-----------------------------------
--  Option panels local strings  --
-----------------------------------
-- MRT_L.Options["AP_GroupRestriction"] = "Track only first 2/5 groups"
-- MRT_L.Options["AP_GuildAttendance"] = "Enable guild attendance check"
-- MRT_L.Options["AP_GuildAttendanceCustomTextTitle"] = "Custom guild attendance text:"
-- MRT_L.Options["AP_GuildAttendanceDuration"] = "Duration of taking attendance"
-- MRT_L.Options["AP_GuildAttendanceNoAuto"] = "Ask for confirmation"
-- MRT_L.Options["AP_GuildAttendanceTrigger"] = "Trigger"
-- MRT_L.Options["AP_GuildAttendanceUseCustomText"] = "Use custom guild attendance text"
-- MRT_L.Options["AP_GuildAttendanceUseTrigger"] = "Use trigger instead of character name"
-- MRT_L.Options["AP_Minutes"] = "minutes"
-- MRT_L.Options["AP_Title"] = "Attendance"
-- MRT_L.Options["AP_TitleText"] = "MRT - Attendance options"
-- MRT_L.Options["AP_TrackOfflinePlayers"] = "Track offline players"
-- MRT_L.Options["EP_AllXMLExportsTitle"] = "All XML export formats"
-- MRT_L.Options["EP_BBCode"] = "BBCode formatted Text"
-- MRT_L.Options["EP_BBCode_wowhead"] = "BBCode formatted Text with wowhead links"
-- MRT_L.Options["EP_ChooseExport_Title"] = "Export format"
--[==[ MRT_L.Options["EP_CTRT_AddPoorItem"] = [=[Enable boss encounter detection fix for the
EQdkp(-Plus) CT_RaidTrackerImport 1.16.x]=] ]==]
-- MRT_L.Options["EP_CTRT_compatible"] = "EQdkp / MLdkp 1.1 (CT RaidTracker compatible)"
-- MRT_L.Options["EP_CTRT_IgnorePerBossAttendance"] = "Ignore per boss attendance"
--[==[ MRT_L.Options["EP_CTRT_RLIAttendanceFix"] = [=[Enable attendance fix for the 
EQdkp-Plus Raid-Log-Import 0.5.6.x]=] ]==]
-- MRT_L.Options["EP_CTRTTitleText"] = "CTRT compatible export settings"
-- MRT_L.Options["EP_Currency"] = "Currency"
-- MRT_L.Options["EP_DKPBoard"] = "DKPBoard"
-- MRT_L.Options["EP_EnglishExport"] = "Export zone names and boss names in english"
-- MRT_L.Options["EP_EQDKP_Plus_XML"] = "EQdkp-Plus XML"
-- MRT_L.Options["EP_EQDKPTitleText"] = "EQdkp-Plus XML settings"
-- MRT_L.Options["EP_HTML"] = "CSS based HTML with wowhead links"
-- MRT_L.Options["EP_MLDKP_15"] = "MLdkp 1.5"
-- MRT_L.Options["EP_Plain_Text"] = "Plain Text"
-- MRT_L.Options["EP_SetDateTimeFormat"] = "Set format of date and time"
-- MRT_L.Options["EP_TextExportTitleText"] = "Text export settings"
-- MRT_L.Options["EP_Title"] = "Export"
-- MRT_L.Options["EP_TitleText"] = "MRT - Export options"
-- MRT_L.Options["ITP_AutoFocus_Always"] = "Always"
-- MRT_L.Options["ITP_AutoFocus_Never"] = "Never"
-- MRT_L.Options["ITP_AutoFocus_NoCombat"] = "When not in combat"
-- MRT_L.Options["ITP_AutoFocus_Title"] = "AutoFocus on loot cost dialog"
-- MRT_L.Options["ITP_IgnoreEnchantingMats"] = "Ignore enchanting materials"
-- MRT_L.Options["ITP_IgnoreGems"] = "Ignore gems"
-- MRT_L.Options["ITP_Title"] = "Item tracking"
-- MRT_L.Options["ITP_TitleText"] = "MRT - Item tracking options"
-- MRT_L.Options["ITP_UseEPGP_GP_Values"] = "Use EPGP GP values"
-- MRT_L.Options["MP_AutoPrunning"] = "Automatically delete raids older than"
-- MRT_L.Options["MP_Days"] = "days"
-- MRT_L.Options["MP_Debug"] = "Enable debug messages"
-- MRT_L.Options["MP_Description"] = "Tracks raids, loot and attendance"
-- MRT_L.Options["MP_Enabled"] = "Enable automatic tracking"
-- MRT_L.Options["MP_MinimapIcon"] = "Show minimap icon"
-- MRT_L.Options["MP_SlashCmd"] = "Slash command"
-- MRT_L.Options["TP_AskForDKPValue"] = "Ask for item cost"
-- MRT_L.Options["TP_CreateNewRaidOnNewZone"] = "Create new raid on new zone"
-- MRT_L.Options["TP_Log10MenRaids"] = "Track 10 player raids"
-- MRT_L.Options["TP_LogAVRaids"] = "Track PVP raids (VoA, BH)"
-- MRT_L.Options["TP_LogLFRRaids"] = "Track LFR raids"
-- MRT_L.Options["TP_LogWotLKRaids"] = "Track WotLK raids"
-- MRT_L.Options["TP_MinItemQualityToGetCost_Desc"] = "Min item quality to ask cost for"
-- MRT_L.Options["TP_MinItemQualityToLog_Desc"] = "Min item quality to log"
-- MRT_L.Options["TP_OnlyTrackItemsAbove"] = "Only track items equal or above Itemlevel"
-- MRT_L.Options["TP_OnlyTrackItemsBelow"] = "or equal or below Itemlevel"
-- MRT_L.Options["TP_Title"] = "Raid tracking"
-- MRT_L.Options["TP_TitleText"] = "MRT - Raid tracking options"
-- MRT_L.Options["TP_UseServerTime"] = "Use server time"
--[==[ MRT_L.Options["TT_AP_GA_CustomText"] = [=[Available variables:
<<BOSS>> - Name of the boss event
<<TIME>> - Remaining time of the guild attendance check
<<TRIGGER>> - The custom trigger command]=] ]==]
--[==[ MRT_L.Options["TT_EP_AddPoorItem"] = [=[This option changes the loot export a bit to fix the boss encounter detection 
of the CT_RaidTrackerImport. Use this, if you have boss events 
in your raid without loot associated to it. (e.g. attendance checks).]=] ]==]
--[==[ MRT_L.Options["TT_EP_DateTimeTT"] = [=[ %d - day of the month [01-31] 
 %m - month [01-12] 
 %y - two-digit year [00-99] 
 %Y - full year 

 %H - hour, using a 24-hour clock [00-23] 
 %I - hour, using a 12-hour clock [01-12] 
 %M - minute [00-59] 
 %S - second [00-59] 
 %p - either 'am' or 'pm']=] ]==]
--[==[ MRT_L.Options["TT_EP_RLIAttendanceFix"] = [=[This option changes the export of timestamps a bit to pass 
the 50% attendance threshold of the Raid-Log-Importer. 
Only use this option, if your DKP system is based on per boss attendance.]=] ]==]
--[==[ MRT_L.Options["TT_MP_SlashCmd"] = [=[Command without leading slash.
A relog after changing this value is recommended.]=] ]==]



-------------------
--  GUI strings  --
-------------------
-- MRT_L.GUI["Active raid found. End current one first."] = "Error: Active raid found. Please end the active raid before starting a new one."
-- MRT_L.GUI["Add boss attendee"] = "Add boss attendee"
-- MRT_L.GUI["Add bosskill"] = "Add bosskill"
-- MRT_L.GUI["Add loot data"] = "Add loot data"
-- MRT_L.GUI["Add raid attendee"] = "Add raid attendee"
-- MRT_L.GUI["Bossname"] = "Bossname"
-- MRT_L.GUI["Button_Add"] = "Add"
-- MRT_L.GUI["Button_Delete"] = "Delete"
-- MRT_L.GUI["Button_EndCurrentRaid"] = "End current raid"
-- MRT_L.GUI["Button_Export"] = "Export"
-- MRT_L.GUI["Button_ExportHeroic"] = "Export H"
-- MRT_L.GUI["Button_ExportNormal"] = "Export N"
-- MRT_L.GUI["Button_MakeGuildAttendanceCheck"] = "Make guild attendance check"
-- MRT_L.GUI["Button_Modify"] = "Modify"
-- MRT_L.GUI["Button_ResumeLastRaid"] = "Resume last raid"
-- MRT_L.GUI["Button_StartNewRaid"] = "Start new raid"
-- MRT_L.GUI["Button_TakeSnapshot"] = "Take Snapshot"
-- MRT_L.GUI["Can not delete current raid"] = "Error: Can't delete current raid."
-- MRT_L.GUI["Cell_Hard"] = "Hard"
-- MRT_L.GUI["Cell_Normal"] = "Normal"
-- MRT_L.GUI["Col_Cost"] = "Cost"
-- MRT_L.GUI["Col_Date"] = "Date"
-- MRT_L.GUI["Col_Difficulty"] = "Mode"
-- MRT_L.GUI["Col_Join"] = "Join"
-- MRT_L.GUI["Col_Leave"] = "Leave"
-- MRT_L.GUI["Col_Looter"] = "Looter"
-- MRT_L.GUI["Col_Name"] = "Name"
-- MRT_L.GUI["Col_Num"] = "#"
-- MRT_L.GUI["Col_Size"] = "Size"
-- MRT_L.GUI["Col_Time"] = "Time"
-- MRT_L.GUI["Col_Zone"] = "Zone"
-- MRT_L.GUI["Confirm boss attendee entry deletion"] = "Do you want to delete %s from the boss attendees list?"
-- MRT_L.GUI["Confirm boss entry deletion"] = "Do you want to delete entry %d - %s - from the bosskill list?"
-- MRT_L.GUI["Confirm loot entry deletion"] = "Do you want to delete item %s from the loot list?"
-- MRT_L.GUI["Confirm raid attendee entry deletion"] = "Do you want to delete %s from the raid attendees list?"
-- MRT_L.GUI["Confirm raid entry deletion"] = "Do you want to delete raid number %d?"
-- MRT_L.GUI["Difficulty N or H"] = "Difficulty ('N' or 'H')"
-- MRT_L.GUI["End tracking of current raid before exporting it"] = "Error: Can't export active raid."
-- MRT_L.GUI["Entered join time is not before leave time"] = "Error: Entered join time is not before leave time."
-- MRT_L.GUI["Entered time is not between start and end of raid"] = "Error: Entered time is not between start and end of raid."
-- MRT_L.GUI["Header_Title"] = "MRT - Raidlog"
-- MRT_L.GUI["Item cost invalid"] = "Error: Item cost is not a number."
-- MRT_L.GUI["Itemlink"] = "Itemlink or ItemID or Itemname"
-- MRT_L.GUI["Looter"] = "Looter"
-- MRT_L.GUI["Modify loot data"] = "Modify loot data"
-- MRT_L.GUI["No active raid."] = "Error: No active raid."
-- MRT_L.GUI["No active raid in progress. Please enter time."] = "Error: No active raid in progress. Please enter time."
-- MRT_L.GUI["No boss attendee selected"] = "Error: No boss attendee selected."
-- MRT_L.GUI["No boss name entered"] = "Error: No boss name entered."
-- MRT_L.GUI["No boss selected"] = "Error: No boss selected."
-- MRT_L.GUI["No itemLink found"] = "Error: Itemlink is not valid."
-- MRT_L.GUI["No loot selected"] = "Error: No item selected."
-- MRT_L.GUI["No name entered"] = "Error: No name entered."
-- MRT_L.GUI["No raid attendee selected"] = "Error: No raid attendee selected."
-- MRT_L.GUI["No raid selected"] = "Error: No raid selected."
-- MRT_L.GUI["Note"] = "Note"
-- MRT_L.GUI["No valid difficulty entered"] = "Error: No valid difficulty entered."
-- MRT_L.GUI["No valid raid size"] = "Error: No valid raid size entered."
-- MRT_L.GUI["No valid time entered"] = "Error: No valid time entered."
-- MRT_L.GUI["Player not in raid."] = "Error: You are not in a raid."
-- MRT_L.GUI["Raid size"] = "Raid size"
-- MRT_L.GUI["Resuming last raid failed"] = "Error: Failed to resume last raid"
-- MRT_L.GUI["Resuming last raid successful"] = "Last raid successfully resumed."
-- MRT_L.GUI["Tables_BossAttendeesTitle"] = "Boss attendees"
-- MRT_L.GUI["Tables_BossLootTitle"] = "Boss loot"
-- MRT_L.GUI["Tables_RaidAttendeesTitle"] = "Raid attendees"
-- MRT_L.GUI["Tables_RaidBosskillsTitle"] = "Raid bosskills"
-- MRT_L.GUI["Tables_RaidLogTitle"] = "Raid list"
-- MRT_L.GUI["Tables_RaidLootTitle"] = "Raid loot"
-- MRT_L.GUI["Time"] = "Time"
--[==[ MRT_L.GUI["TT_Attendee_Add_JoinEB"] = [=[Format HH:MM 

If left blank, MRT will use 
the raid start time.]=] ]==]
--[==[ MRT_L.GUI["TT_Attendee_Add_LeaveEB"] = [=[Format HH:MM 

If left blank, MRT will use 
the raid end time or current time.]=] ]==]
-- MRT_L.GUI["TT_BA_Add"] = "Add an attendee to the boss attendee list."
-- MRT_L.GUI["TT_BA_Delete"] = "Delete selected boss attendee."
-- MRT_L.GUI["TT_Boss_Add"] = "Add a boss encounter."
--[==[ MRT_L.GUI["TT_Boss_Add_TimeEB"] = [=[Format HH:MM 

Leave blank, if you want to add a boss 
as the most recent of the current raid.]=] ]==]
-- MRT_L.GUI["TT_Boss_Delete"] = "Delete selected boss encounter."
-- MRT_L.GUI["TT_Boss_Export"] = "Export selected boss encounter."
-- MRT_L.GUI["TT_Loot_Add"] = "Add an item to the loot list."
-- MRT_L.GUI["TT_Loot_Delete"] = "Delete selected item."
-- MRT_L.GUI["TT_Loot_Modify"] = "Modify data of selected item."
-- MRT_L.GUI["TT_RA_Add"] = "Add an attendee to the raid attendee list."
-- MRT_L.GUI["TT_RA_Delete"] = "Delete selected raid attendee."
-- MRT_L.GUI["TT_Raid_Delete"] = "Delete selected raid."
-- MRT_L.GUI["TT_Raid_Export"] = "Export selected raid."
-- MRT_L.GUI["TT_Raid_ExportH"] = "Export all heroic mode encounters of selected raid."
-- MRT_L.GUI["TT_Raid_ExportN"] = "Export all normal mode encounters of selected raid."
-- MRT_L.GUI["TT_StartNewRaid_RaidSizeEB"] = "If left blank, MRT will use 25 as the default value."
-- MRT_L.GUI["TT_StartNewRaid_ZoneNameEB"] = "If left blank, MRT will use your current zone."
--[==[ MRT_L.GUI["TT_TakeSnapshot"] = [=[Make a snapshot of the current raidgroup. 
Doesn't work, if raidtracking is in progress. 
In that case, add a boss event.]=] ]==]
-- MRT_L.GUI["Value"] = "Value"
-- MRT_L.GUI["Zone name"] = "Zone name"


