﻿
--
-- Thanks to evildead & Pastamancer who wrote the 
-- original GridStatusKalecgos. This module is
-- written from the ashes of it. With out that
-- we wouldn't have this.
--
-- On that note portions of the oringinal were rewritten
-- to use newer Ace3, Grid APIs, new combat events
-- ...and a few enhancements along the way.
--
-- "Always Kill Purple Dargons"
--

--Ghetto localization
local enUs = 
{
	["The Bastion of Twilight"] = "The Bastion of Twilight",
	["Sinestra Wrack"] = "Sinestra Wrack",
	["Initial Color"] = "Initial Color",
	["Initial color for a new duration"] = "Initial color for a new duration",
	["Color 2"] = "Color 2",
	["Color 2 Time"] = "Color 2 Time",
	["Second color to display for a warning duration"] = "Second color to display for a warning duration",
	["Color 3"] = "Color 3",
	["Color 3 Time"] = "Color 3 Time",
	["Third color to display for the longest duration."] = "Third color to display for the longest duration.",
	['The Twilight Caverns'] = "The Twilight Caverns",
};

L = enUs;

	
--Spell info, spell ids, full spell info caches, and a quick hash lookup for testing


--name->spellid hash
--For future me or future someone else. Just add/change the spell id's here to add/repurpose this addon.
local SPELL_ID = {
    ["Wrack"] = 92956,
	["Wrack2"] = 92955,
}

--name->spell info
local BS = {
    ["Wrack"] = GetSpellInfo(SPELL_ID["Wrack"]) ,
	["Wrack2"] = GetSpellInfo(SPELL_ID["Wrack2"]),
}

--spell name -> true hash check for alerting
local AURAS = {
    [select( 1, GetSpellInfo(SPELL_ID["Wrack"]))] = true,
	[select( 1, GetSpellInfo(SPELL_ID["Wrack2"]))] = true,
	--["Renew"] = true, --test spell
}

--name -> icon
local SPELL_ICON = {
    ["Wrack"] = select(3, GetSpellInfo(SPELL_ID["Wrack"])),
}


--Simple names for things
local GridFrame = Grid:GetModule("GridFrame");
local GridStatus = Grid:GetModule("GridStatus");
local GridStatusSinestra = GridStatus:NewModule("GridStatusSinestra", "AceEvent-3.0", "AceTimer-3.0");

--Build basic grid/ace/saved variables parts
GridStatusSinestra.menuName = L["Sinestra Wrack"];
GridStatusSinestra.defaultDB = {
    ["debug"] = false,
    ["alert_Sinestra"] = {
        ["desc"] = BS["Wrack"],
        ["enable"] = true,
        ["priority"] = 90,
        ["range"] = false,
        ["icon"] = SPELL_ICON["Wrack"],
        ["color1"] = {
            r = 0,
            g = 1,
            b = 0,
            a = 1,
        },
        ["color2"] = {
            r = 1,
            g = 1,
            b = 0,
            a = 1,
        },
        ["color3"] = {
            r = 1,
            g = 0,
            b = 0,
            a = 1,
        },
		["color2time"] = 9,
		["color3time"] = 11,
    },
}

local WrackOptions = {
    ["color"] = false,
    ["color1"] = {
        type = "color",
        name = L["Initial Color"],
        desc = L["Initial color for a new duration"],
        order = 110,
        hasAlpha = true,
        get = function ()
                  local color = GridStatusSinestra.db.profile["alert_Sinestra"].color1
                  return color.r, color.g, color.b, color.a
              end,
        set = function ( _,r, g, b, a)
                  local color = GridStatusSinestra.db.profile["alert_Sinestra"].color1
                  color.r = r
                  color.g = g
                  color.b = b
                  color.a = a or 1
				  
              end,
    },
    ["color2"] = {
        type = "color",
        name = L["Color 2"],
        desc = L["Second color to display for a warning duration"],
        order = 115,
        hasAlpha = true,
        get = function()
                  local color = GridStatusSinestra.db.profile["alert_Sinestra"].color2
                  return color.r, color.g, color.b, color.a
              end,
        set = function ( _, r, g, b, a)
                  local color = GridStatusSinestra.db.profile["alert_Sinestra"].color2
                  color.r = r
                  color.g = g
                  color.b = b
                  color.a = a or 1
              end,
    },
    ["color3"] = {
        type = "color",
        name = L["Color 3"],
        desc = L["Third color to display for the longest duration."],
        order = 120,
        hasAlpha = true,
        get = function()
                  local color = GridStatusSinestra.db.profile["alert_Sinestra"].color3
                  return color.r, color.g, color.b, color.a
              end,
        set = function ( _,r, g, b, a)
                  local color = GridStatusSinestra.db.profile["alert_Sinestra"].color3
                  color.r = r
                  color.g = g
                  color.b = b
                  color.a = a or 1
              end,
    },
	["color2time"] =
	{
		type = "range",
		name = "Color 2 Time",
		desc = "Time to switch to color 2",
		order = 105,
		softMin = 0,
		softMax = 60,
		step = 1,
		bigStep = 5,
		get = function() return GridStatusSinestra.db.profile["alert_Sinestra"].color2time end,
		set = function( r, num ) GridStatusSinestra.db.profile["alert_Sinestra"].color2time = num or 0 end,
		isPercent = false,
		width = "full",
	},
	["color3time"] =
	{
		type = "range",
		name = "Color 3 Time",
		desc = "Time to switch to color 3",
		order = 109,
		softMin = 0,
		softMax = 60,
		step = 1,
		bigStep = 5,
		get = function() return GridStatusSinestra.db.profile["alert_Sinestra"].color3time end,
		set = function( r, num ) GridStatusSinestra.db.profile["alert_Sinestra"].color3time = num or 0 end,
		isPercent = false,
		width = "full",
	},
}

GridStatusSinestra.options = false

-------------------------------------------------------------------------------
-- @override
--
-- Override for default no-op initialization. Registers a Grid Status for
-- sinestra.
--
function GridStatusSinestra:OnInitialize()
	self.super.OnInitialize(self)
    self:RegisterStatus("alert_Sinestra", L["Sinestra Wrack"], WrackOptions, true)
end

-------------------------------------------------------------------------------
-- Event handler for zone change. Activates combat log watching only while
-- in the proper zone.
-- 
function GridStatusSinestra:ZONE_CHANGED_NEW_AREA()

    for name, status, statusTbl in self.core:CachedStatusIterator("alert_Sinestra") do
        self.core:SendStatusLost(name, "alert_Sinestra")
    end
	
	self._timers = {};
	GridStatusSinestra:CheckZone()
end

function GridStatusSinestra:ZONE_CHANGED_INDOORS()
	GridStatusSinestra:CheckZone()
end

function GridStatusSinestra:CheckZone()
	if GetRealZoneText() == L["The Bastion of Twilight"] and GetSubZoneText() == L['The Twilight Caverns'] then
		self:RegisterEvent( "COMBAT_LOG_EVENT_UNFILTERED" );
		print( "'Sinestra Wrack: Always kill purple dargons!' ~ Raegx of Blood Legion @ US-Illidan" );
	else
		self:UnregisterEvent( "COMBAT_LOG_EVENT_UNFILTERED" );
	end
end

-------------------------------------------------------------------------------
-- @override
--
-- Override for default no-op enable. Registers a combat log event watcher
-- and sets up empty timer tables.
--
function GridStatusSinestra:OnEnable()
	self:Debug( "----GSS ENABLED" )
	
	self:RegisterEvent( "ZONE_CHANGED_NEW_AREA" );
	self:RegisterEvent( "ZONE_CHANGED_INDOORS" );
    self._timers = {}
	self._timerHandler = nil
	local settings = self.db.profile["alert_Sinestra"]
	if( settings.enabled ) then
		self:Debug( "---GSS settings say its enabled" );
	end
	settings.enable = true;
    for name, status, statusTbl in self.core:CachedStatusIterator("alert_Sinestra") do
        self.core:SendStatusLost(name, "alert_Sinestra")
    end
	GridStatusSinestra:CheckZone()
end

-------------------------------------------------------------------------------
-- Watches combat event logs for aura application/removals by name
-- 
-- 
function  GridStatusSinestra:COMBAT_LOG_EVENT_UNFILTERED( ... )
	local eventType = select( 3, ... );
	local auraType = select( 14, ... ) or "";
	local auraAmmount = select( 15, ... ) or "";
	local playerName = select( 10, ... );
	if( (UnitInRaid( playerName ) or UnitInParty( playerName )) ) then
		self:Debug( "----wrack applied" );
		if( eventType == "SPELL_AURA_APPLIED" and AURAS[auraType]) then
			self:AuraGained(select( 9, ... ))
		elseif( eventType == "SPELL_AURA_REMOVED" and AURAS[auraType]) then
			self:AuraFaded(select( 9, ... ))
		elseif( eventType =="UNIT_DIED" ) then
			self:AuraFaded(select( 9, ... ))
		end;
	end;
	

end

-------------------------------------------------------------------------------
-- @override
--
-- Override for default no-op disable. Unregisters event handlers, reset Grid
-- statuses, and clears timers.
--
function GridStatusSinestra:OnDisable()
	self:Debug( "--GSS DISABLED" );
	self:UnregisterEvent( "ZONE_CHANGED_NEW_AREA" );
	if not self:IsEventRegistered("COMBAT_LOG_EVENT_UNFILTERED") then
		return
	end
    self:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

    self:CancelScheduledEvent("GridStatusSinestra_SinestraDebuffTimer")
    self._timers = nil

    for name, status, statusTbl in self.core:CachedStatusIterator("alert_Sinestra") do
        self.core:SendStatusLost(name, "alert_Sinestra")
    end
end

-------------------------------------------------------------------------------
-- Resets addon state.
--
--
function GridStatusSinestra:Reset()
	self:OnDisable()
    self:OnEnable()
end

-------------------------------------------------------------------------------
-- Logic called when an applicable unit obtains a watched aura
--
--

function GridStatusSinestra:AuraGained(unit )

	if unit == "target" or unit == "focus" then
		return
	end

	local settings = self.db.profile["alert_Sinestra"]

    --Set initial color
	self.core:SendStatusGained(unit, "alert_Sinestra",
							   settings.priority, false,
							   settings.color1,
							   ("%d"):format(0),
							   0, 30,
							   settings.icon)

	--start timers
	self._timers[unit] = GetTime()
	self:StartOrStopTimer()
end

-------------------------------------------------------------------------------
-- Logic called when an applicable unit loses a watched aura
--
--
function GridStatusSinestra:AuraFaded(unit)
	if unit == "target" or unit == "focus" then
		return
	end

	self._timers[unit] = nil
	self.core:SendStatusLost(unit, "alert_Sinestra")
	self:StartOrStopTimer()
end

-------------------------------------------------------------------------------
-- Starts or stops a recurring timer to check auras if auras exist. If all
-- timers expire the timer is stopped.
--
--
function GridStatusSinestra:StartOrStopTimer()
	self:Debug( "----gss start timer" )
    
	if not next(self._timers) then
		if( GridStatusSinestra._timerHandler ) then
			self:Debug( "---stop timer" );
			self:CancelTimer(GridStatusSinestra._timerHandler)
			GridStatusSinestra._timerHandler = nil;
		end
    elseif not GridStatusSinestra._timerHandler then
		self:Debug( "-----start timer" );
        GridStatusSinestra._timerHandler = self:ScheduleRepeatingTimer( function() GridStatusSinestra.DebuffTimer( self ) end, 0.5)
    end
end

-------------------------------------------------------------------------------
-- Logic called to check aura times and update status colores.
--
--
function GridStatusSinestra:DebuffTimer()
    local settings = self.db.profile["alert_Sinestra"]
    if not settings.enable then
		self:Debug( "----------------------- disabled" );
        return self:OnDisable()
    end

    local now = GetTime()

    for unit,time in pairs(self._timers) do
        --aura's current time on target
        local elapsed = now - time

        local color = settings.color1

        -- swap color properly
        if elapsed >= GridStatusSinestra.db.profile["alert_Sinestra"].color3time then
			color = settings.color3
		elseif elapsed >= GridStatusSinestra.db.profile["alert_Sinestra"].color2time then
            color = settings.color2
        end

        self.core:SendStatusGained(unit, "alert_Sinestra",
                                   settings.priority, false,
                                   color,
                                   ("%d"):format(elapsed),
                                   elapsed, 30,
                                   settings.icon)
    end
end
