--
-- Proculas: Warlock Procs
-- Created by Mcstabin of Hellscream [US]
--
-- Generated by Proc DB 3.0
--

if select(2, UnitClass("player")) ~= "WARLOCK" then return end

local Proculas = LibStub("AceAddon-3.0"):GetAddon("Proculas")
local WarlockProcs = Proculas:NewModule("WarlockProcs")
if not Proculas.enabled then
	return nil
end

local PROCS = {

}

function WarlockProcs:OnInitialize()
	Proculas:addProcList('WARLOCK',PROCS)
end