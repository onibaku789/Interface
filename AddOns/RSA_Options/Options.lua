------------------------------------------------
---- Raeli's Spell Announcer Options Module ----
------------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_O = RSA:NewModule("RSA_Options", "LibSink-2.0")
local db
local defaults = {
	global = {
		version = 1.0, -- Automatically updates to the .toc version in OnInitialize, allows me to warn users if something big has changed.
	--[===[@alpha@
	DisableAlphaWarning == false,
	--@end-alpha@]===]
	},
	profile = {
		Modules = {
			['*'] = false, -- By default don't load any modules. This will be set and saved once a user has logged in once. Possibly should be under class section, but seems fine here for now.
		},
		General = {
			['*'] = true,
			Class = "",
			GlobalAnnouncements = {
				['*'] = true,
				InPvP = false,
				InWorld = false,
				OnlyInCombat = false,
				Battlegrounds = false,
			},
			Local = {
				['*'] = true,
			},
			GlobalCustomChannel = "MyCustomChannel",
			Spells = {
				-- RACIALS --
				Stoneform = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				EMFH = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				GOTN = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] ended on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				WarStomp = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				WOTF = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				EscapeArtist = {
					Messages = {
						Start = "[LINK] Activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ArcaneTorrent = {
					Messages = {
						Start = "[LINK] Activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				-- LEADER --
				Jeeves = {
					Messages = {
						Start = "[TARGET] has placed a [LINK]!",
						End = "[TARGET]'s [LINK] faded.",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Cauldron = {
					Messages = {
						Start = "[TARGET] has placed a [LINK]!",
						End = "[TARGET]'s [LINK] faded.",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Feasts = {
					Messages = {
						Start = "[TARGET] has placed a [LINK]!",
						End = "[TARGET]'s [LINK] faded.",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				MobileBank = {
					Messages = {
						Start = "[TARGET] has placed a [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				-- PERSONAL --
				MassRess = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				PotionOfConcentration = {
					Messages = {
						Start = "[LINK] Activated!",
						End = "[LINK] Ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
			},
		},
		Reminders = {
			DisableInPvP = true,
			EnableInSpec1 = true,
			EnableInSpec2 = false,
			CheckInterval = 10,
			RemindInterval = 15,
			RemindChannels = {
				['*'] = true,
			},
		},
		sink20OutputSink = "ChatFrame", -- Default for LibSink-2.0
		--sink20ScrollArea = ,
		DeathKnight = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				Army = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = true,
					},
				}, -- End
				AMS = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				DarkCommand = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				IceboundFortitude = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Strangulate = {
					Messages = {
						Start = "Strangulated [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Asphyxiate = {
					Messages = {
						Start = "Asphyxiated [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				MindFreeze = {
					Messages = {
						Start = "Mind Freezed [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DeathGrip = {
					Messages = {
						Start = "Death Gripped [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				VampiricBlood = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				BoneShield = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				UnholyFrenzy = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				RuneTap = {
					Messages = {
						Start = "Activated [LINK] for [AMOUNT]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DancingRuneWeapon = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				WotN = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Conversion = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DeathPact = {
					Messages = {
						Start = "Activated [LINK] for [AMOUNT]!!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				RaiseAlly = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Lichborne = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				PillarOfFrost = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Purgatory = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
			},
		},
		Druid = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				SurvivalInstincts = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Cyclone = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				FrenziedRegeneration = {
					Messages = {
						Start = "[LINK] activated!"
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Hibernate = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Innervate = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Ironbark = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SkullBash = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Growl = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Revive = {
					Messages = {
						Start = "Casting [LINK] on [TARGET]!",
						End = "Successfully resurrected [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Rebirth = {
					Messages = {
						Start = "Casting [LINK] on [TARGET]!",
						End = "Successfully resurrected [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				TreeOfLife = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Barkskin = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HeartOfTheWild = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				SavageDefense = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				MightOfUrsoc = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Tranquility = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Berserk = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				-- Nature's Cure
				RemoveCorruption = {
					Messages = {
						Start = "Removed [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Roots = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				MightyBash = {
					Messages = {
						Start = "Stunned [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Soothe = {
					Messages = {
						Start = "Purged [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				StampedingRoar = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = true,
					},
				}, -- End
				SolarBeam = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Symbiosis = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
			},
		},
		Hunter = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				Misdirection = {
					Messages = {
						Primer = "[LINK] primed on [TARGET]!",
						Start = "[LINK] started on [TARGET]!",
						End = "[LINK] on [TARGET] ended! [AMOUNT] additional threat for 30 seconds.",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				WidowVenom = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ConcussiveShot = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ScatterShot = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				FreezingTrap = {
					Messages = {
						Placement = "[LINK] Placed!",
						Start = "[LINK] hit [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SilencingShot = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				TranquilizingShot = {
					Messages = {
						Start = "Removed [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				WyvernSting = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Deterrence = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Camoflage = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				DistractingShot = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = true,
					},
				}, -- End
				MastersCall = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				RoarOfSacrifice = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				EternalGuardian = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				AncientHysteria = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
			},
		},
		Mage = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				TimeWarp = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Spellsteal = {
					Messages = {
						Start = "Stole [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Polymorph = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				RemoveCurse = {
					Messages = {
						Start = "Removed [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Counterspell = {
					Messages = {
						Start = "Counterspelled [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Portals = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Teleport = {
					Messages = {
						Start = "Warning you are Teleporting, and leaving your friends behind!",
					},
					Local = true,
				}, -- End
				RefreshmentTable = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				RingOfFrost = {
					Messages = {
						Start = "[LINK] activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Cauterize = {
					Messages = {
						Start = "[LINK] activated, please heal me!",
						End = "[LINK] faded, I'm no longer burning!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				IceBlock = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				SlowFall = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
			},
		},
		Monk = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				ZenMeditation = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = true,
					},
				}, -- End
				Provoke = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
						StatueOfTheBlackOx = "Taunted everything around [TARGET]",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				FortifyingBrew = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SpearHandStrike = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Paralysis = {
					Messages = {
						Start = "Paralyzed [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				AvertHarm = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Guard = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				ElusiveBrew = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				PurifyingBrew = {
					Messages = {
						Start = "Used [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				DampenHarm = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				LifeCocoon = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DiffuseMagic = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Detox = {
					Messages = {
						Start = "Removed [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Resuscitate = {
					Messages = {
						Start = "Casting [LINK] on [TARGET]!",
						End = "Successfully resurrected [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
			},
		},
		Paladin = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				ArdentDefender = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
						Heal = "[LINK] saved my life and healed me for [AMOUNT] hp!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DevotionAura = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DivineProtection = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Forbearance = {
					Messages = {
						Start = "",
						End = "[LINK] on [TARGET] faded!",
					},
					Local = true,
				}, -- End
				HandOfFreedom = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HandOfProtection = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HandOfSacrifice = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HandOfSalvation = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				LayOnHands = {
					Messages = {
						Start = "[LINK] on [TARGET] for [AMOUNT]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				GoAK = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HolyAvenger = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Repentance = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Rebuke = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HandOfReckoning = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Beacon = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Redemption = {
					Messages = {
						Start = "Casting [LINK] on [TARGET]!",
						End = "Successfully resurrected [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				AvengersShield = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "",
						Immune = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				TurnEvil = {
					Messages = {
						Start = "[LINK] [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DivinePlea = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HammerOfJustice = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Cleanse = {
					Messages = {
						Start = "Cleansed [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				SacredShield = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				DivineShield = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				AvengingWrath = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				WordOfGlory = {
					Messages = {
						Start = "[LINK] on [TARGET] for [AMOUNT]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
					Minimum = 10000,
				}, -- End
				HandOfPurity = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
			},
		},
		Priest = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				VampiricEmbrace = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] over!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				},
				LeapOfFaith = {
					Messages = {
						Start = "Pulling [TARGET] to Me!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				DivineHymn = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] over!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HymnOfHope = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] over!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				FearWard = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Levitate = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ShackleUndead = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DispelMagic = {
					Messages = {
						Start = "Dispelled [AURALINK] on [TARGET]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				GuardianSpirit = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Proc = "[LINK] just healed [TARGET] for [AMOUNT]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				PainSuppression = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Lightwell = {
					Messages = {
						Start = "[LINK] activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				PowerInfusion = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				LightwellRenew = {
					Messages = {
						Start = "Lightwell used by [TARGET]. [AMOUNT] remain!",
						End = "[TARGET] stole an additional Lightwell charge! [AMOUNT] remain!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				PowerWordBarrier = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Purify = {
					Messages = {
						Start = "Removed [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Resurrection = {
					Messages = {
						Start = "Casting [LINK] on [TARGET]!",
						End = "Successfully resurrected [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Fade = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				AngelicBulwark = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				PsychicScream = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				MindControl = {
					Messages = {
						Casting = "Casting [LINK] on [TARGET]!",
						Start = "Mindcontrolling [TARGET] Now!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Silence = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "[LINK] on [TARGET] ended!",
						Debuff = "[LINK] on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SpiritShell = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
						Debuff = "[LINK] on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				PsychicHorror = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				BodyAndSoul = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Shadowfiend = {
					Messages = {
						Start = "[LINK] activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				MassDispel = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				VoidShift = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
			},
		},
		Rogue = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				Sap = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Blind = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Resist = "My [LINK] [MISSTYPE] [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Kick = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Dismantle = {
					Messages = {
						Start = "Dismantled [TARGET]!",
						End = "[LINK] faded from [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Tricks = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] gave you an additional [AMOUNT] damage!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Concealment = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SmokeBomb = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Shiv = {
					Messages = {
						Start = "Shived [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
			},
		},
		Shaman = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				Hex = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Heroism = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				ShamanisticRage = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				BindElemental = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				WindShear = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Purge = {
					Messages = {
						Start = "Purged [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				CleanseSpirit = {
					Messages = {
						Start = "Cleansed [TARGET]'s [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ManaTide = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				HealingTide = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				EarthElementalTotem = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				FireElementalTotem = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				AncestralSpirit = {
					Messages = {
						Start = "Casting [LINK] on [TARGET]!",
						End = "Successfully resurrected [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SpiritLink = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				TremorTotem = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Thunderstorm = {
					Messages = {
						Start = "[LINK] activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				AncestralGuidance = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				AstralShift = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				GroundingTotem = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] absorbed [AMOUNT] from [TARGET]'s [TARLINK]!",
						Immune = "[LINK] absorbed [TARGET]'s [TARLINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				StormlashTotem = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				WindwalkTotem = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				CapacitorTotem = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] exploded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Ascendance = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
			},
		},
		Warlock = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				SoulWell = {
					Messages = {
						Start = "Casting [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SummonStone = {
					Messages = {
						Start = "Casting [LINK], please assist!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Suffering = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				SingeMagic = {
					Messages = {
						Start = "[LINK] on [TARGET] removed [AURALINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Banish = {
					Messages = {
						Start = "Banished [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Fear = {
					Messages = {
						Start = "Fearing [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				GrimoireOfSacrifice = {
					Messages = {
						Start = "Gained [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				-- MESMERIZE
				Seduce = {
					Messages = {
						Start = "Casting [SPELL] on [TARGET]!",
						End = "[LINK] on [TARGET] has ended!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SpellLock = {
					Messages = {
						Start = "Interrupted [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Devour = {
					Messages = {
						Start = "Devoured [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				CloneMagic = {
					Messages = {
						Start = "Stolen [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Soulstone = {
					Messages = {
						Start = "Casting [LINK] on [TARGET]!",
						End = "Successfully Soulstoned [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DeathCoil = {
					Messages = {
						Start = "[LINK] on [TARGET]!"
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Shadowfury = {
					Messages = {
						Start = "[LINK] on [TARGET]!"
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				HowlOfTerror = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				DarkBargain = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				UnendingResolve = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Soulshatter = {
					Messages = {
						Start = "[LINK] activated!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Gateway = {
					Messages = {
						Start = "[LINK] placed!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
			}, -- End Spells
		}, -- End Warlock
		Warrior = {
			Reminders = {
				SpellName = "",
			},
			Spells = {
				ShatteringThrow = {
					Messages = {
						Start = "[LINK] on [TARGET]!",
						End = "[LINK] on [TARGET] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ShieldWall = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Pummel = {
					Messages = {
						Start = "Pummeled [TARGET]'s [TARLINK]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
						Gag = "[TARGET] is Silenced by my Gag Order!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DemoralizingShout = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Disarm = {
					Messages = {
						Start = "Disarmed [TARGET]!",
						End = "[TARGET] is armed again!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Taunt = {
					Messages = {
						Start = "Taunted [TARGET]!",
						End = "My [LINK] [MISSTYPE] [TARGET]!",
						Immune = "[TARGET] is [MISSTYPE] to my [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				Vigilance = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
						End = "[LINK] on [TARGET] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				LastStand = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				EnragedRegeneration = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ShieldBlock = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				ShieldBarrier = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SpellReflect = {
					Messages = {
						Start = "Reflected [TARGET]'s [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				Recklessness = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				ShieldSlamDispel = {
					Messages = {
						Start = "Dispelled [TARGET]'s [AURALINK]!",
						End = "[TARGET] resisted [LINK]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				RallyingCry = {
					Messages = {
						Start = "[LINK] activated!",
						End = "[LINK] faded!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				-- SAFEGUARD
				Intervene = {
					Messages = {
						Start = "[LINK] cast on [TARGET]!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Whisper = true,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = false,
						Say = false,
					},
				}, -- End
				MockingBanner = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				SkullBanner = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DemoralizingBanner = {
					Messages = {
						Start = "[LINK] placed!",
						End = "Demoralizing Banner ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
				DieByTheSword = {
					Messages = {
						Start = "[LINK] placed!",
						End = "[LINK] ended!",
					},
					CustomChannel = {
						Enabled = false,
						Channel = "",
					},
					Local = false,
					Raid = false,
					Party = false,
					Yell = false,
					Smart = {
						RaidParty = true,
						Say = false,
					},
				}, -- End
			},
		},
	}, -- End Profile
} -- End Defaults
------------------------
---- Global Options ----
------------------------
local Options = {
	type = "group",
	--@non-alpha@
	name = "Raeli's Spell Announcer - |cff00FF00v" .. GetAddOnMetadata("RSA", "Version") .. " " .. (GetAddOnMetadata("RSA", "X-Curse-Packaged-Version") or "") .. "|r",
	--@end-non-alpha@
	--[===[@alpha@
	name = "Raeli's Spell Announcer - |cffFF0000Alpha " .. GetAddOnMetadata("RSA", "Version") .. " r116|r",
	--@end-alpha@]===]
	order = 0,
	childGroups = "tab",
	args = {
		About = {
			name = L["Global Options"],
			type = "group",
			order = 0,
			desc = L.Global_Options_Desc,
			args = {
				About_Header = {
					type = "description",
					name = "|cff00CCFF" .. L["About"] .. "|r",
					fontSize = "medium",
					order = 1,
				},
				--[===[@alpha@
				About_Alpha = {
				type = "description",
				name = "|cffFF0000" .. L.alpha_message .. "|r",
				order = 2,
				},
				--@end-alpha@]===]
				About_Description = {
					type = "description",
					name = L.About_Desc,
					order = 2,
				},
				Modules_Header = {
					type = "header",
					name = L["Module Settings"],
					order = 3,
				},
				Buff_Reminders = {
					order = 5,
					type = "toggle",
					name = "|cff00CCFF" .. L["Enable Buff Reminder Module"] .. "|r",
					width = "full",
					descStyle = "inline",
					desc = L.Buff_Reminders_Desc,
					get = function(info)
						return RSA.db.profile.Modules.Reminders
					end,
					set = function(info, value)
						RSA.db.profile.Modules.Reminders = value
						if value == false and (LoadAddOn("RSA_Reminders") == 1) then
							RSA:DisableModule("Reminders")
						elseif value == true then
							local loaded, reason = LoadAddOn("RSA_Reminders")
							if not loaded then
								if reason == "DISABLED" or reason == "INTERFACE_VERSION" then
									ChatFrame1:AddMessage("|cFFFF75B3RSA:|r Reminders " .. L.OptionsDisabled)
								elseif reason == "MISSING" or reason == "CORRUPT" then
									ChatFrame1:AddMessage("|cFFFF75B3RSA:|r Reminders " .. L.OptionsMissing)
								end
							else
								RSA:EnableModule("Reminders")
							end
						end
					end,
				},
				GlobalAnnouncementOptions_Head = {
					type = "header",
					name = L["Announcement Options"],
					order = 10,
				},
				GlobalAnnouncementOptions_Desc = {
					type = "description",
					name = L.Announcement_Options_Desc,
					order = 11,
				},
				SayWhileGrouped = {
					type = "toggle",
					name = L["Smart Say"],
					order = 40,
					desc = L.Smart_Say_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.SmartSay
					end,
					set = function (info, value)
						RSA.db.profile.General.GlobalAnnouncements.SmartSay = value
					end,
				},
				CustomChannelWhileGrouped = {
					type = "toggle",
					name = L["Smart Custom Channel"],
					order = 40,
					desc = L.Smart_Custom_Channel_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.SmartCustomChannel
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.SmartCustomChannel = value
					end,
				},
				OnlyInCombat = {
					type = "toggle",
					name = "|cff00CCFF" .. L["Enable Only In Combat"] .. "|r",
					width = "full",
					order = 49,
					desc = L.Enable_Only_In_Combat_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.OnlyInCombat
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.OnlyInCombat = value
					end,
				},
				InArenas = {
					type = "toggle",
					name = L["Enable in Arenas"],
					width = "full",
					order = 50,
					desc = L.Enable_In_Arenas_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.Arena
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.Arena = value
					end,
				},
				InBattlegrounds = {
					type = "toggle",
					name = L["Enable in Battlegrounds"],
					width = "full",
					order = 50,
					desc = L.Enable_In_Battlegrounds_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.Battlegrounds
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.Battlegrounds = value
					end,
				},
				InDungeon = {
					type = "toggle",
					name = L["Enable in Dungeons"],
					width = "full",
					order = 50,
					desc = L.Enable_In_Dungeons_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.InDungeon
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.InDungeon = value
					end,
				},
				InRaids = {
					type = "toggle",
					name = L["Enable in Raid Instances"],
					width = "full",
					order = 50,
					desc = L.Enable_In_Raid_Instances_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.InRaid
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.InRaid = value
					end,
				},
				InTolBarad = {
					type = "toggle",
					name = L["Enable in Tol Barad"],
					width = "full",
					order = 50,
					desc = L.Enable_In_Tol_Barad_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.InTolBarad
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.InTolBarad = value
					end,
				},
				InWorld = {
					type = "toggle",
					name = L["Enable in the World"],
					width = "full",
					order = 55,
					desc = L.Enable_In_The_World_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.InWorld
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.InWorld = value
					end,
				},
				InPvP = {
					type = "toggle",
					name = L["Enable in PvP"],
					width = "full",
					order = 55,
					desc = L.Enable_In_PvP_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.InPvP
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.InPvP = value
					end,
				},
				InScenario = {
					type = "toggle",
					name = L["Enable in Scenarios"],
					width = "full",
					order = 55,
					desc = L.Enable_In_Scenarios_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.InScenario
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.InScenario = value
					end,
				},
				InLFG = {
					type = "toggle",
					name = L["Enable in LFG"],
					width = "full",
					order = 55,
					desc = L.Enable_In_LFG_Desc,
					get = function(info)
						return RSA.db.profile.General.GlobalAnnouncements.InLFG
					end,
					set = function(info, value)
						RSA.db.profile.General.GlobalAnnouncements.InLFG = value
					end,
				},
			},
		},
		GeneralSpells = {
			name = L["General Announcements"],
			type = "group",
			childGroups = "select",
			--disabled = true,
			order = 3,
			desc = L.General_Announcements_Desc,
			args = {
				About = {
					type = "description",
					name = L.General_Announcements_Desc,
					fontSize = "medium",
					order = 1,
				},
				Stoneform = {
					type = "group",
					name = L["Racial: "] .. GetSpellInfo(20594),
					order = 25,
					hidden = RSA.RaceCheck("Dwarf"),
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.Stoneform.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Stoneform.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Stoneform.Messages.Start = value
							end,
						},
						End = {
							type = "input",
							width = "full",
							name = L["End"],
							desc = L.DescSpellEndCastingMessage,
							order = 32,
							get = function(info)
								return RSA.db.profile.General.Spells.Stoneform.Messages.End
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Stoneform.Messages.End = value
							end,
						},
					},
				},
				EMFH = { -- Every Man For Himself
					type = "group",
					name = L["Racial: "] .. GetSpellInfo(59752),
					order = 25,
					hidden = RSA.RaceCheck("Human"),
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.EMFH.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EMFH.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.EMFH.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.EMFH.Messages.Start = value
							end,
						},
					},
				},
				GOTN = { -- Gift Of The Naaru
					type = "group",
					name = L["Racial: "] .. GetSpellInfo(59545),
					order = 25,
					hidden = RSA.RaceCheck("Draenei"),
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.GOTN.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.GOTN.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc .. L.MST,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.GOTN.Messages.Start = value
							end,
						},
						End = {
							type = "input",
							width = "full",
							name = L["End"],
							desc = L.DescSpellEndCastingMessage,
							order = 32,
							get = function(info)
								return RSA.db.profile.General.Spells.GOTN.Messages.End
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.GOTN.Messages.End = value
							end,
						},
					},
				},
				WarStomp = {
					type = "group",
					name = L["Racial: "] .. GetSpellInfo(20549),
					order = 25,
					hidden = RSA.RaceCheck("Tauren"),
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.WarStomp.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WarStomp.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.WarStomp.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.WarStomp.Messages.Start = value
							end,
						},
					},
				},
				WOTF = { -- Will Of The Forsaken
					type = "group",
					name = L["Racial: "] .. GetSpellInfo(7744),
					order = 25,
					hidden = RSA.RaceCheck("Scourge"),
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.WOTF.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.WOTF.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.WOTF.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.WOTF.Messages.Start = value
							end,
						},
					},
				},
				EscapeArtist = {
					type = "group",
					name = L["Racial: "] .. GetSpellInfo(20589),
					order = 25,
					hidden = RSA.RaceCheck("Gnome"),
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.EscapeArtist.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.EscapeArtist.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.EscapeArtist.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.EscapeArtist.Messages.Start = value
							end,
						},
					},
				},
				ArcaneTorrent = {
					type = "group",
					name = L["Racial: "] .. GetSpellInfo(28730),
					order = 25,
					hidden = RSA.RaceCheck("BloodElf"),
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.ArcaneTorrent.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.ArcaneTorrent.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.ArcaneTorrent.Messages.Start = value
							end,
						},
					},
				},
				Jeeves = {
					type = "group",
					name = L["Leader: "] .. GetSpellInfo(67826) .. "/" .. GetSpellInfo(54711),
					order = 25,
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.Jeeves.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Jeeves.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc .. L.MST,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Jeeves.Messages.Start = value
							end,
						},
						End = {
							type = "input",
							width = "full",
							name = L["End"],
							desc = L.DescSpellEndCastingMessage,
							order = 32,
							get = function(info)
								return RSA.db.profile.General.Spells.Jeeves.Messages.End
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Jeeves.Messages.End = value
							end,
						},
					},
				},
				Cauldron = {
					type = "group",
					name = L["Leader: "] .. GetSpellInfo(92649),
					order = 25,
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.Cauldron.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Cauldron.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc .. L.MST,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Cauldron.Messages.Start = value
							end,
						},
						End = {
							type = "input",
							width = "full",
							name = L["End"],
							desc = L.DescSpellEndCastingMessage,
							order = 32,
							get = function(info)
								return RSA.db.profile.General.Spells.Cauldron.Messages.End
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Cauldron.Messages.End = value
							end,
						},
					},
				},
				Feasts = {
					type = "group",
					name = L["Leader: "] .. GetSpellInfo(57426),
					order = 25,
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.Feasts.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.Feasts.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc .. L.MST,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Feasts.Messages.Start = value
							end,
						},
						End = {
							type = "input",
							width = "full",
							name = L["End"],
							desc = L.DescSpellEndCastingMessage,
							order = 32,
							get = function(info)
								return RSA.db.profile.General.Spells.Feasts.Messages.End
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.Feasts.Messages.End = value
							end,
						},
					},
				},
				MobileBank = {
					type = "group",
					name = L["Leader: "] .. GetSpellInfo(83958),
					order = 25,
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.MobileBank.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MobileBank.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc .. L.MST,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.MobileBank.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.MobileBank.Messages.Start = value
							end,
						},
					},
				},
				MassRess = {
					type = "group",
					name = L["Personal: "] .. GetSpellInfo(83968),
					order = 25,
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.MassRess.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.MassRess.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.MassRess.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.MassRess.Messages.Start = value
							end,
						},
					},
				},
				PotionOfConcentration = {
					type = "group",
					name = L["Personal: "] .. GetSpellInfo(105701) .. "/" .. GetSpellInfo(78993),
					order = 25,
					args = {
						Title = {
							type = "header",
							name = L["Announce In"],
							order = 0,
						},
						Local = {
							type = "toggle",
							name = L["Local"], desc = L.Local_Desc,
							order = 1,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Local
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Local = value
							end,
						},
						CustomChannelEnabled = {
							type = "toggle",
							name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
							order = 3,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.CustomChannel.Enabled
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.CustomChannel.Enabled = value
							end,
						},
						CustomChannelName = {
							type = "input",
							width = "full",
							name = L["Channel Name"], desc = L.Channel_Name_Desc,
							order = 4,
							hidden = function()
								return RSA.db.profile.General.Spells.PotionOfConcentration.CustomChannel.Enabled == false
							end,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.CustomChannel.Channel
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.CustomChannel.Channel = value
							end,
						},
						Raid = {
							type = "toggle",
							name = L["Raid"], desc = L.Raid_Desc,
							order = 5,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Raid
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Raid = value
							end,
						},
						Party = {
							type = "toggle",
							name = L["Party"], desc = L.Party_Desc,
							order = 6,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Party
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Party = value
							end,
						},
						RaidParty = {
							type = "toggle",
							name = L["Smart Group"],
							desc = L.Smart_Group_Desc,
							order = 7,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Smart.RaidParty
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Smart.RaidParty = value
							end,
						},
						Say = {
							type = "toggle",
							name = L["Say"],
							desc = L.Say_Desc,
							order = 8,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Smart.Say
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Smart.Say = value
							end,
						},
						Yell = {
							type = "toggle",
							name = L.Yell,
							desc = L.Yell_Desc,
							order = 9,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Yell
							end,
							set = function (info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Yell = value
							end,
						},
						---- Custom Message ----
						Title2 = {
							type = "header",
							name = L["Message Settings"],
							order = 20,
						},
						Description = {
							type = "description",
							name = L.Message_Settings_Desc,
							order = 24,
						},
						Start = {
							type = "input",
							width = "full",
							name = L["Start"],
							desc = L.DescSpellStartCastingMessage,
							order = 28,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Messages.Start
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Messages.Start = value
							end,
						},
						End = {
							type = "input",
							width = "full",
							name = L["End"],
							desc = L.DescSpellEndCastingMessage,
							order = 32,
							get = function(info)
								return RSA.db.profile.General.Spells.PotionOfConcentration.Messages.End
							end,
							set = function(info, value)
								RSA.db.profile.General.Spells.PotionOfConcentration.Messages.End = value
							end,
						},
					},
				},
			}, -- GeneralSpells Args
		},
	}, -- Options Args
}
-----------------
---- LibSink ----
-----------------
Options.args.output = RSA_O:GetSinkAce3OptionsDataTable() -- Add LibSink Options.
Options.args.output.args.Channel = nil -- Hide Channel options, we don't want those.
Options.args.output.name = L["Local Message Output Area"]
Options.args.output.desc = L.Local_Message_Output_Area_Desc
Options.args.output.order = 2
--------------------------
---- Reminder Options ----
--------------------------
local Reminders = {
	type = "group",
	name = L["Reminder Options"],
	order = 1,
	childGroups = "tab",
	disabled = function()
		if RSA.db.profile.Modules.Reminders ~= true then
			return true
		end
	end,
	args = {
		Description = {
			type = "description",
			name = L.Reminder_Options,
			fontSize = "medium",
			hidden = function()
				return RSA.db.profile.Modules.Reminders ~= true
			end,
			order = 4,
		},
		Disabled_Description = {
			type = "description",
			name = L.Disabled_Reminder_Options,
			fontSize = "medium",
			hidden = function()
				return RSA.db.profile.Modules.Reminders == true
			end,
			order = 4,
		},
		--[[Title = {
		type = "header",
		name = L["Reminder Spell"],
		order = 5,
		},]]--
		Break = {
			type = "description",
			name = "",
			order = 5,
		},
		DeathKnight = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "DEATHKNIGHT"
			end,
			get = function(info)
				return RSA.db.profile.DeathKnight.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.DeathKnight.Reminders.SpellName = value
			end,
		},
		Druid = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "DRUID"
			end,
			get = function(info)
				return RSA.db.profile.Druid.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Druid.Reminders.SpellName = value
			end,
		},
		Hunter = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "HUNTER"
			end,
			get = function(info)
				return RSA.db.profile.Hunter.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Hunter.Reminders.SpellName = value
			end,
		},
		Mage = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "MAGE"
			end,
			get = function(info)
				return RSA.db.profile.Mage.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Mage.Reminders.SpellName = value
			end,
		},
		Monk = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "MONK"
			end,
			get = function(info)
				return RSA.db.profile.Monk.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Monk.Reminders.SpellName = value
			end,
		},
		Paladin = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "PALADIN"
			end,
			get = function(info)
				return RSA.db.profile.Paladin.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Paladin.Reminders.SpellName = value
			end,
		},
		Priest = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "PRIEST"
			end,
			get = function(info)
				return RSA.db.profile.Priest.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Priest.Reminders.SpellName = value
			end,
		},
		Rogue = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "ROGUE"
			end,
			get = function(info)
				return RSA.db.profile.Rogue.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Rogue.Reminders.SpellName = value
			end,
		},
		Shaman = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "SHAMAN"
			end,
			get = function(info)
				return RSA.db.profile.Shaman.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Shaman.Reminders.SpellName = value
			end,
		},
		Warlock = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "WARLOCK"
			end,
			get = function(info)
				return RSA.db.profile.Warlock.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Warlock.Reminders.SpellName = value
			end,
		},
		Warrior = {
			type = "input",
			width = "full",
			name = L.Spell_To_Check,
			desc = L.Spell_To_Check_Desc,
			order = 9,
			hidden = function()
				return RSA.db.profile.General.Class ~= "WARRIOR"
			end,
			get = function(info)
				return RSA.db.profile.Warrior.Reminders.SpellName
			end,
			set = function(info, value)
				RSA.db.profile.Warrior.Reminders.SpellName = value
			end,
		},
		--[[Title2 = {
		type = "header",
		name = L["Enabling Options"],
		order = 11,
		},]]--
		DisableInPvP = {
			type = "toggle",
			name = L["Disable in PvP"],
			desc = L["Turns off the spell reminders while you have PvP active."],
			order = 12,
			get = function(info)
				return RSA.db.profile.Reminders.DisableInPvP
			end,
			set = function(info, value)
				RSA.db.profile.Reminders.DisableInPvP = value
			end,
		},
		EnableInSpec1 = {
			type = "toggle",
			name = L.Enable_In_Spec1,
			desc = L.Enable_In_Spec1_Desc,
			width = "full",
			order = 13,
			get = function(info)
				return RSA.db.profile.Reminders.EnableInSpec1
			end,
			set = function(info, value)
				RSA.db.profile.Reminders.EnableInSpec1 = value
			end,
		},
		EnableInSpec2 = {
			type = "toggle",
			name = L.Enable_In_Spec2,
			desc = L.Enable_In_Spec2_Desc,
			width = "full",
			order = 14,
			get = function(info)
				return RSA.db.profile.Reminders.EnableInSpec2
			end,
			set = function(info, value)
				RSA.db.profile.Reminders.EnableInSpec2 = value
			end,
		},
		CheckInterval = {
			type = "range",
			name = "DELETE SOON",
			order = 16,
			width = "full",
			hidden = true,
			min = 1,
			max = 60,
			step = 0.5,
			get = function(info)
				return RSA.db.profile.Reminders.CheckInterval
			end,
			set = function(info, value)
				RSA.db.profile.Reminders.CheckInterval = value
			end,
		},
		RemindInterval = {
			type = "range",
			name = L["Remind Interval"],
			desc = L.Remind_Interval_Desc,
			order = 17,
			width = "full",
			min = 1,
			max = 60,
			step = 0.5,
			get = function(info)
				return RSA.db.profile.Reminders.RemindInterval
			end,
			set = function(info, value)
				RSA.db.profile.Reminders.RemindInterval = value
			end,
		},
		Title4 = {
			type = "header",
			name = L["Announce In"],
			order = 18,
		},
		Chat = {
			type = "toggle",
			name = L["Chat Window"],
			desc = L["Sends reminders to your default chat window."],
			order = 19,
			get = function(info)
				return RSA.db.profile.Reminders.RemindChannels.Chat
			end,
			set = function(info, value)
				RSA.db.profile.Reminders.RemindChannels.Chat = value
			end,
		},
		RaidWarn = {
			type = "toggle",
			name = L["Raid Warning Frame"],
			desc = L["Sends reminders to your Raid Warning frame at the center of the screen."],
			order = 20,
			get = function(info)
				return RSA.db.profile.Reminders.RemindChannels.RaidWarn
			end,
			set = function(info, value)
				RSA.db.profile.Reminders.RemindChannels.RaidWarn = value
			end,
		},
	},
}
------------------------------
---- Death Knight Options ----
------------------------------
local DeathKnight = {
	type = "group",
	name = "|cFFC41F3B" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		IceboundFortitude = {
			type = "group",
			name = GetSpellInfo(48792),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.IceboundFortitude.Messages.End = value
					end,
				},
			},
		},
		VampiricBlood = {
			type = "group",
			name = GetSpellInfo(55233),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.VampiricBlood.Messages.End = value
					end,
				},
			},
		},
		BoneShield = {
			type = "group",
			name = GetSpellInfo(49222),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.BoneShield.Messages.End = value
					end,
				},
			},
		},
		AMS = {
			type = "group",
			name = GetSpellInfo(48707),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.AMS.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.AMS.Messages.End = value
					end,
				},
			},
		},
		Army = {
			type = "group",
			name = GetSpellInfo(42650),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.Army.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Army.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Army.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Army.Messages.Start = value
					end,
				},
			},
		},
		DarkCommand = {
			type = "group",
			name = GetSpellInfo(56222),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DarkCommand.Messages.Immune = value
					end,
				},
			},
		},
		DeathGrip = {
			type = "group",
			name = GetSpellInfo(49576),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DeathGrip.Messages.Immune = value
					end,
				},
			},
		},
		Strangulate = {
			type = "group",
			name = GetSpellInfo(47476),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Strangulate.Messages.Immune = value
					end,
				},
			},
		},
		Asphyxiate = {
			type = "group",
			name = GetSpellInfo(108194),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Asphyxiate.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Asphyxiate.Messages.Immune = value
					end,
				},
			},
		},
		MindFreeze = {
			type = "group",
			name = GetSpellInfo(47528),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.MindFreeze.Messages.Immune = value
					end,
				},
			},
		},
		UnholyFrenzy = {
			type = "group",
			name = GetSpellInfo(49016),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.UnholyFrenzy.Messages.End = value
					end,
				},
			},
		},
		RuneTap = {
			type = "group",
			name = GetSpellInfo(48982),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.RuneTap.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RuneTap.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.RuneTap.Messages.Start = value
					end,
				},
			--[[End = {
			type = "input",
			width = "full",
			name = L["End"],
			desc = L.DescSpellEndCastingMessage,
			order = 32,
			get = function(info)
			return RSA.db.profile.DeathKnight.Spells.RuneTap.Messages.End
			end,
			set = function(info, value)
			RSA.db.profile.DeathKnight.Spells.RuneTap.Messages.End = value
			end,
			},]]--
			},
		},
		DancingRuneWeapon = {
			type = "group",
			name = GetSpellInfo(49028),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DancingRuneWeapon.Messages.End = value
					end,
				},
			},
		},
		WotN = {
			type = "group",
			name = GetSpellInfo(81164),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.WotN.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.WotN.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.WotN.Messages.End = value
					end,
				},
			},
		},
		Conversion = {
			type = "group",
			name = GetSpellInfo(119975),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.Conversion.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Conversion.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Conversion.Messages.End = value
					end,
				},
			},
		},
		DeathPact = {
			type = "group",
			name = GetSpellInfo(48743),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.DeathPact.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.DeathPact.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.DeathPact.Messages.Start = value
					end,
				},
			--[[End = {
			type = "input",
			width = "full",
			name = L["End"],
			desc = L.DescSpellEndCastingMessage,
			order = 32,
			get = function(info)
			return RSA.db.profile.DeathKnight.Spells.DeathPact.Messages.End
			end,
			set = function(info, value)
			RSA.db.profile.DeathKnight.Spells.DeathPact.Messages.End = value
			end,
			},]]--
			},
		},
		RaiseAlly = {
			type = "group",
			name = GetSpellInfo(61999),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.RaiseAlly.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.RaiseAlly.Messages.Start = value
					end,
				},
			},
		},
		Lichborne = {
			type = "group",
			name = GetSpellInfo(49039),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.Lichborne.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Lichborne.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Lichborne.Messages.End = value
					end,
				},
			},
		},
		PillarOfFrost = {
			type = "group",
			name = GetSpellInfo(51271),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.PillarOfFrost.Messages.End = value
					end,
				},
			},
		},
		Purgatory = {
			type = "group",
			name = GetSpellInfo(114556),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Local
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.DeathKnight.Spells.Purgatory.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Raid
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Party
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Yell
					end,
					set = function (info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.DeathKnight.Spells.Purgatory.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.DeathKnight.Spells.Purgatory.Messages.End = value
					end,
				},
			},
		},
	},
}
-----------------------
---- Druid Options ----
-----------------------
local Druid = {
	type = "group",
	name = "|cFFFF7D0A" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		SurvivalInstincts = {
			type = "group",
			name = GetSpellInfo(61336),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SurvivalInstincts.Messages.End = value
					end,
				},
			},
		},
		FrenziedRegeneration = {
			type = "group",
			name = GetSpellInfo(22842),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.FrenziedRegeneration.Messages.Start = value
					end,
				}
			},
		},
		Cyclone = {
			type = "group",
			name = GetSpellInfo(33786),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Cyclone.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Cyclone.Messages.End = value
					end,
				},
			},
		},
		Hibernate = {
			type = "group",
			name = GetSpellInfo(2637),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Hibernate.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Hibernate.Messages.End = value
					end,
				},
			},
		},
		Innervate = {
			type = "group",
			name = GetSpellInfo(29166),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Innervate.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Innervate.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Innervate.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Innervate.Messages.End = value
					end,
				},
			},
		},
		Ironbark = {
			type = "group",
			name = GetSpellInfo(102342),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Ironbark.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Ironbark.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Ironbark.Messages.End = value
					end,
				},
			},
		},
		SkullBash = {
			type = "group",
			name = GetSpellInfo(80965),
			order = 25,
			desc = "|cffFF0000Warning:|r Skull Bash currently doesn't work correctly due to a bug in WoW where it doesn't send the correct information to the combat log when used. RSA uses combat log data to make it's announcements, so when it is fixed, this will work.",
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.SkullBash.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SkullBash.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SkullBash.Messages.Immune = value
					end,
				},
			},
		},
		Growl = {
			type = "group",
			name = GetSpellInfo(6795),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Growl.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Growl.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Growl.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Growl.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Growl.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Growl.Messages.Immune = value
					end,
				},
			},
		},
		Revive = {
			type = "group",
			name = GetSpellInfo(50769),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Revive.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Revive.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Revive.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Revive.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Revive.Messages.End = value
					end,
				},
			},
		},
		Rebirth = {
			type = "group",
			name = GetSpellInfo(20484),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Rebirth.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Rebirth.Messages.End = value
					end,
				},
			},
		},
		TreeOfLife = {
			type = "group",
			name = GetSpellInfo(33891),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.TreeOfLife.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.TreeOfLife.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.TreeOfLife.Messages.End = value
					end,
				},
			},
		},
		Barkskin = {
			type = "group",
			name = GetSpellInfo(22812),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Barkskin.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Barkskin.Messages.End = value
					end,
				},
			},
		},
		HeartOfTheWild = {
			type = "group",
			name = GetSpellInfo(108294),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.HeartOfTheWild.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.HeartOfTheWild.Messages.End = value
					end,
				},
			},
		},
		SavageDefense = {
			type = "group",
			name = GetSpellInfo(132402),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.SavageDefense.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SavageDefense.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SavageDefense.Messages.End = value
					end,
				},
			},
		},
		MightOfUrsoc = {
			type = "group",
			name = GetSpellInfo(106922),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightOfUrsoc.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.MightOfUrsoc.Messages.End = value
					end,
				},
			},
		},
		Tranquility = {
			type = "group",
			name = GetSpellInfo(740),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Tranquility.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Tranquility.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Tranquility.Messages.End = value
					end,
				},
			},
		},
		Berserk = {
			type = "group",
			name = GetSpellInfo(50334),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Berserk.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Berserk.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Berserk.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Berserk.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Berserk.Messages.End = value
					end,
				},
			},
		},
		RemoveCorruption = {
			type = "group",
			name = GetSpellInfo(2782) .. "/" .. GetSpellInfo(88423),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.RemoveCorruption.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.RemoveCorruption.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.RemoveCorruption.Messages.Start = value
					end,
				},
			},
		},
		Roots = {
			type = "group",
			name = GetSpellInfo(339),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Roots.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Roots.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Roots.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Roots.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Roots.Messages.End = value
					end,
				},
			},
		},
		MightyBash = {
			type = "group",
			name = GetSpellInfo(5211),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.MightyBash.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.MightyBash.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.MightyBash.Messages.End = value
					end,
				},
			},
		},
		Soothe = {
			type = "group",
			name = GetSpellInfo(2908),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Soothe.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Soothe.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Soothe.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Soothe.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Soothe.Messages.End = value
					end,
				},
			},
		},
		StampedingRoar = {
			type = "group",
			name = GetSpellInfo(106898),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.StampedingRoar.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Druid.Spells.StampedingRoar.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.StampedingRoar.Messages.End = value
					end,
				},
			},
		},
		SolarBeam = {
			type = "group",
			name = GetSpellInfo(78675),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.SolarBeam.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.SolarBeam.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.SolarBeam.Messages.Start = value
					end,
				},
			},
		},
		Symbiosis = {
			type = "group",
			name = GetSpellInfo(110309),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Local
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Druid.Spells.Symbiosis.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Party
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Druid.Spells.Symbiosis.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Druid.Spells.Symbiosis.Messages.Start = value
					end,
				},
			},
		},
	},
}
------------------------
---- Hunter Options ----
------------------------
local Hunter = {
	type = "group",
	name = "|cFFABD473" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		WidowVenom = {
			type = "group",
			name = GetSpellInfo(82654),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.WidowVenom.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WidowVenom.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.WidowVenom.Messages.End = value
					end,
				},
			},
		},
		Misdirection = {
			type = "group",
			name = GetSpellInfo(34477),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.Misdirection.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA,
					order = 24,
				},
				Primer = {
					type = "input",
					width = "full",
					name = L["Aura Applied"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Messages.Primer
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Messages.Primer = value
					end,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellProcName,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 36,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Misdirection.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.Misdirection.Messages.End = value
					end,
				},
			},
		},
		ScatterShot = {
			type = "group",
			name = GetSpellInfo(19503),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.ScatterShot.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ScatterShot.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.ScatterShot.Messages.End = value
					end,
				},
			},
		},
		ConcussiveShot = {
			type = "group",
			name = GetSpellInfo(5116),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.ConcussiveShot.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.ConcussiveShot.Messages.End = value
					end,
				},
			},
		},
		SilencingShot = {
			type = "group",
			name = GetSpellInfo(147362) .. "/" .. GetSpellInfo(34490),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.SilencingShot.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.SilencingShot.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.SilencingShot.Messages.Immune = value
					end,
				},
			},
		},
		FreezingTrap = {
			type = "group",
			name = GetSpellInfo(3355),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.FreezingTrap.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Placement = {
					type = "input",
					width = "full",
					name = L["Upon Placement"],
					desc = L.DescTrapPlacement,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Messages.Placement
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Messages.Placement = value
					end,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["When Tripped"],
					desc = L.DescTrapTripped,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 36,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.FreezingTrap.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.FreezingTrap.Messages.End = value
					end,
				},
			},
		},
		Deterrence = {
			type = "group",
			name = GetSpellInfo(19263),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"],
					desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.Deterrence.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Deterrence.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.Deterrence.Messages.End = value
					end,
				},
			},
		},
		Camoflage = {
			type = "group",
			name = GetSpellInfo(51755),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"],
					desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.Camoflage.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.Camoflage.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.Camoflage.Messages.End = value
					end,
				},
			},
		},
		WyvernSting = {
			type = "group",
			name = GetSpellInfo(19386),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.WyvernSting.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.WyvernSting.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.WyvernSting.Messages.End = value
					end,
				},
			},
		},
		TranquilizingShot = {
			type = "group",
			name = GetSpellInfo(19801),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.TranquilizingShot.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.TranquilizingShot.Messages.End = value
					end,
				},
			},
		},
		DistractingShot = {
			type = "group",
			name = GetSpellInfo(20736),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.DistractingShot.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.DistractingShot.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.DistractingShot.Messages.Immune = value
					end,
				},
			},
		},
		MastersCall = {
			type = "group",
			name = GetSpellInfo(53271),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.MastersCall.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.MastersCall.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.MastersCall.Messages.Start = value
					end,
				},
			},
		},
		RoarOfSacrifice = {
			type = "group",
			name = GetSpellInfo(53480),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.RoarOfSacrifice.Messages.End = value
					end,
				},
			},
		},
		EternalGuardian = {
			type = "group",
			name = "Quilen: " .. GetSpellInfo(126393),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.EternalGuardian.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.EternalGuardian.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.EternalGuardian.Messages.Start = value
					end,
				},
			},
		},
		AncientHysteria = {
			type = "group",
			name = "Core Hound: " .. GetSpellInfo(90355),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Local
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Hunter.Spells.AncientHysteria.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Party
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Hunter.Spells.AncientHysteria.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Hunter.Spells.AncientHysteria.Messages.End = value
					end,
				},
			},
		},
	},
}
----------------------
---- Mage Options ----
----------------------
local Mage = {
	type = "group",
	name = "|cFF4AAAFF" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		RefreshmentTable = {
			type = "group",
			name = GetSpellInfo(43987),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.RefreshmentTable.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.RefreshmentTable.Messages.Start = value
					end,
				},
			},
		},
		Portals = {
			type = "group",
			name = "Portals",
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.Portals.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Portals.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Portals.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Portals.Messages.Start = value
					end,
				},
			},
		},
		Teleport = {
			type = "group",
			name = "Teleport",
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				TeleportDescription = {
					type = "description",
					name = "This will always only announce if you are in a group. The idea is to warn if you may be accidentally casting a Teleport instead of a Portal.",
					order = 1,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Teleport.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Teleport.Local = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Teleport.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Teleport.Messages.Start = value
					end,
				},
			},
		},
		Polymorph = {
			type = "group",
			name = GetSpellInfo(118),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Polymorph.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Polymorph.Messages.End = value
					end,
				},
			},
		},
		Counterspell = {
			type = "group",
			name = GetSpellInfo(2139) .. "/" .. GetSpellInfo(102051),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Counterspell.Messages.Immune = value
					end,
				},
			},
		},
		Spellsteal = {
			type = "group",
			name = GetSpellInfo(30449),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Spellsteal.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Spellsteal.Messages.End = value
					end,
				},
			},
		},
		RemoveCurse = {
			type = "group",
			name = GetSpellInfo(475),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.RemoveCurse.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RemoveCurse.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.RemoveCurse.Messages.Start = value
					end,
				}
			},
		},
		TimeWarp = {
			type = "group",
			name = GetSpellInfo(80353),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.TimeWarp.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Mage.Spells.TimeWarp.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.TimeWarp.Messages.End = value
					end,
				},
			},
		},
		RingOfFrost = {
			type = "group",
			name = GetSpellInfo(113724),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.RingOfFrost.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.RingOfFrost.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.RingOfFrost.Messages.Start = value
					end,
				},
			},
		},
		Cauterize = {
			type = "group",
			name = GetSpellInfo(86949),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.Cauterize.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Mage.Spells.Cauterize.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.Cauterize.Messages.End = value
					end,
				},
			},
		},
		IceBlock = {
			type = "group",
			name = GetSpellInfo(45438),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.IceBlock.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Mage.Spells.IceBlock.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.IceBlock.Messages.End = value
					end,
				},
			},
		},
		SlowFall = {
			type = "group",
			name = GetSpellInfo(130),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Local
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Mage.Spells.SlowFall.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Party
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Mage.Spells.SlowFall.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Mage.Spells.SlowFall.Messages.End = value
					end,
				},
			},
		},
	},
}
----------------------
---- Monk Options ----
----------------------
local Monk = {
	type = "group",
	name = "|c54558A84" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		FortifyingBrew = {
			type = "group",
			name = GetSpellInfo(115203),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.FortifyingBrew.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.FortifyingBrew.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.FortifyingBrew.Messages.End = value
					end,
				},
			},
		},
		AvertHarm = {
			type = "group",
			name = GetSpellInfo(115213),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.AvertHarm.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.AvertHarm.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.AvertHarm.Messages.End = value
					end,
				},
			},
		},
		Guard = {
			type = "group",
			name = GetSpellInfo(115295),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.Guard.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Guard.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Guard.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Guard.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Guard.Messages.End = value
					end,
				},
			},
		},
		ElusiveBrew = {
			type = "group",
			name = GetSpellInfo(115308),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.ElusiveBrew.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ElusiveBrew.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.ElusiveBrew.Messages.End = value
					end,
				},
			},
		},
		ZenMeditation = {
			type = "group",
			name = GetSpellInfo(115176),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.ZenMeditation.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.ZenMeditation.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.ZenMeditation.Messages.End = value
					end,
				},
			},
		},
		Provoke = {
			type = "group",
			name = GetSpellInfo(115546),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.Provoke.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Provoke.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Provoke.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Provoke.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Provoke.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Provoke.Messages.Immune = value
					end,
				},
			},
		},
		SpearHandStrike = {
			type = "group",
			name = GetSpellInfo(116709),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.SpearHandStrike.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Monk.Spells.SpearHandStrike.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.SpearHandStrike.Messages.Immune = value
					end,
				},
			},
		},
		Paralysis = {
			type = "group",
			name = GetSpellInfo(115078),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.Paralysis.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Paralysis.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Paralysis.Messages.End = value
					end,
				},
			},
		},
		PurifyingBrew = {
			type = "group",
			name = GetSpellInfo(119582),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.PurifyingBrew.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSS,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.PurifyingBrew.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.PurifyingBrew.Messages.Start = value
					end,
				},
			},
		},
		DampenHarm = {
			type = "group",
			name = GetSpellInfo(122278),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.DampenHarm.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSS,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DampenHarm.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.DampenHarm.Messages.End = value
					end,
				},
			},
		},
		LifeCocoon = {
			type = "group",
			name = GetSpellInfo(116849),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.LifeCocoon.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSS,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.LifeCocoon.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.LifeCocoon.Messages.End = value
					end,
				},
			},
		},
		DiffuseMagic = {
			type = "group",
			name = GetSpellInfo(122783),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.DiffuseMagic.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSS,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.DiffuseMagic.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.DiffuseMagic.Messages.End = value
					end,
				},
			},
		},
		Detox = {
			type = "group",
			name = GetSpellInfo(115450),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.Detox.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Detox.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Detox.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Detox.Messages.Start = value
					end,
				},
			},
		},
		Resuscitate = {
			type = "group",
			name = GetSpellInfo(115178),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Local
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Party
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Monk.Spells.Resuscitate.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Monk.Spells.Resuscitate.Messages.End = value
					end,
				},
			},
		},
	},
}
-------------------------
---- Paladin Options ----
-------------------------
local Paladin = {
	type = "group",
	name = "|cFFF58CBA" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		ArdentDefender = {
			type = "group",
			name = GetSpellInfo(31850),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.ArdentDefender.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.End = value
					end,
				},
				Heal = {
					type = "input",
					width = "full",
					name = L["Heal"],
					desc = L.DescSpellProcName,
					order = 36,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.ArdentDefender.Messages.Heal = value
					end,
				},
			},
		},
		DevotionAura = {
			type = "group",
			name = GetSpellInfo(31821),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.DevotionAura.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DevotionAura.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DevotionAura.Messages.End = value
					end,
				},
			},
		},
		DivineProtection = {
			type = "group",
			name = GetSpellInfo(498),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DivineProtection.Messages.End = value
					end,
				},
			},
		},
		Forbearance = {
			type = "group",
			name = GetSpellInfo(25771),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Forbearance.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Forbearance.Local = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Forbearance.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Forbearance.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Forbearance.Messages.End = value
					end,
				},
			},
		},
		HandOfFreedom = {
			type = "group",
			name = GetSpellInfo(1044),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfFreedom.Messages.End = value
					end,
				},
			},
		},
		HandOfProtection = {
			type = "group",
			name = GetSpellInfo(1022),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfProtection.Messages.End = value
					end,
				},
			},
		},
		HandOfSacrifice = {
			type = "group",
			name = GetSpellInfo(6940),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfSacrifice.Messages.End = value
					end,
				},
			},
		},
		HandOfSalvation = {
			type = "group",
			name = GetSpellInfo(1038),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfSalvation.Messages.End = value
					end,
				},
			},
		},
		LayOnHands = {
			type = "group",
			name = GetSpellInfo(633),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.LayOnHands.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.LayOnHands.Messages.Start = value
					end,
				},
			--[[End = {
			type = "input",
			width = "full",
			name = L["End"],
			desc = L.DescSpellEndCastingMessage,
			order = 32,
			get = function(info)
			return RSA.db.profile.Paladin.Spells.LayOnHands.Messages.End
			end,
			set = function(info, value)
			RSA.db.profile.Paladin.Spells.LayOnHands.Messages.End = value
			end,
			},]]--
			},
		},
		GoAK = {
			type = "group",
			name = GetSpellInfo(86698),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.GoAK.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.GoAK.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.GoAK.Messages.End = value
					end,
				},
			},
		},
		HolyAvenger = {
			type = "group",
			name = GetSpellInfo(105809),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HolyAvenger.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HolyAvenger.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HolyAvenger.Messages.End = value
					end,
				},
			},
		},
		Repentance = {
			type = "group",
			name = GetSpellInfo(20066),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Repentance.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Repentance.Messages.End = value
					end,
				},
			},
		},
		Rebuke = {
			type = "group",
			name = GetSpellInfo(96231),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.Rebuke.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Rebuke.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Rebuke.Messages.Immune = value
					end,
				},
			},
		},
		HandOfReckoning = {
			type = "group",
			name = GetSpellInfo(62124),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfReckoning.Messages.Immune = value
					end,
				},
			},
		},
		Beacon = {
			type = "group",
			name = GetSpellInfo(53563),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Beacon.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Beacon.Messages.End = value
					end,
				},
			},
		},
		Redemption = {
			type = "group",
			name = GetSpellInfo(7328),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Redemption.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Redemption.Messages.End = value
					end,
				},
			},
		},
		AvengersShield = {
			type = "group",
			name = GetSpellInfo(31935),
			desc = "Announcement |cffFF0000only|r for when Avenger's Shield Interrupts spell casts.",
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.AvengersShield.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengersShield.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.AvengersShield.Messages.Immune = value
					end,
				},
			},
		},
		TurnEvil = {
			type = "group",
			name = GetSpellInfo(10326),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.TurnEvil.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.TurnEvil.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.TurnEvil.Messages.End = value
					end,
				},
			},
		},
		DivinePlea = {
			type = "group",
			name = GetSpellInfo(54428),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.DivinePlea.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivinePlea.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DivinePlea.Messages.End = value
					end,
				},
			},
		},
		HammerOfJustice = {
			type = "group",
			name = GetSpellInfo(853) .. "/" .. GetSpellInfo(105593),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HammerOfJustice.Messages.End = value
					end,
				},
			},
		},
		Cleanse = {
			type = "group",
			name = GetSpellInfo(4987),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.Cleanse.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.Cleanse.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.Cleanse.Messages.Start = value
					end,
				},
			},
		},
		SacredShield = {
			type = "group",
			name = GetSpellInfo(20925),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.SacredShield.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.SacredShield.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.SacredShield.Messages.End = value
					end,
				},
			},
		},
		DivineShield = {
			type = "group",
			name = GetSpellInfo(642),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.DivineShield.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.DivineShield.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.DivineShield.Messages.End = value
					end,
				},
			},
		},
		AvengingWrath = {
			type = "group",
			name = GetSpellInfo(31884),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.AvengingWrath.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.AvengingWrath.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.AvengingWrath.Messages.End = value
					end,
				},
			},
		},
		WordOfGlory = {
			type = "group",
			name = GetSpellInfo(130551),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.WordOfGlory.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA,
					order = 24,
				},
				Minimum = {
					type = "range",
					width = "full",
					min = 0,
					max = 10000000,
					softMin = 0,
					softMax = 100000,
					bigStep = 250,
					name = L["Minimum"],
					desc = L.MinimumNeeded,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Minimum
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Minimum = value
					end,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.WordOfGlory.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.WordOfGlory.Messages.Start = value
					end,
				},
			},
		},
		HandOfPurity = {
			type = "group",
			name = GetSpellInfo(114039),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Local
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Paladin.Spells.HandOfPurity.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Party
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Paladin.Spells.HandOfPurity.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Paladin.Spells.HandOfPurity.Messages.End = value
					end,
				},
			},
		},
	},
}
------------------------
---- Priest Options ----
------------------------
local Priest = {
	type = "group",
	name = "|cFFFFFFFF" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		VampiricEmbrace = {
			type = "group",
			name = GetSpellInfo(15286),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VampiricEmbrace.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.VampiricEmbrace.Messages.End = value
					end,
				},
			},
		},
		LeapOfFaith = {
			type = "group",
			name = GetSpellInfo(73325),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.LeapOfFaith.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LeapOfFaith.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.LeapOfFaith.Messages.Start = value
					end,
				},
			},
		},
		DivineHymn = {
			type = "group",
			name = GetSpellInfo(64843),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DivineHymn.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.DivineHymn.Messages.End = value
					end,
				},
			},
		},
		HymnOfHope = {
			type = "group",
			name = GetSpellInfo(64901),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.HymnOfHope.Messages.End = value
					end,
				},
			},
		},
		FearWard = {
			type = "group",
			name = GetSpellInfo(6346),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.FearWard.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.FearWard.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.FearWard.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.FearWard.Messages.End = value
					end,
				},
			},
		},
		Levitate = {
			type = "group",
			name = GetSpellInfo(1706),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Levitate.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Levitate.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Levitate.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Levitate.Messages.End = value
					end,
				},
			},
		},
		ShackleUndead = {
			type = "group",
			name = GetSpellInfo(9484),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.ShackleUndead.Messages.End = value
					end,
				},
			},
		},
		DispelMagic = {
			type = "group",
			name = GetSpellInfo(528),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.DispelMagic.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 36,
					get = function(info)
						return RSA.db.profile.Priest.Spells.DispelMagic.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.DispelMagic.Messages.End = value
					end,
				},
			},
		},
		GuardianSpirit = {
			type = "group",
			name = GetSpellInfo(47788),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.End = value
					end,
				},
				Heal = {
					type = "input",
					width = "full",
					name = L["Heal"],
					desc = L.DescSpellProcName,
					order = 36,
					get = function(info)
						return RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Proc
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.GuardianSpirit.Messages.Proc = value
					end,
				},
			},
		},
		PainSuppression = {
			type = "group",
			name = GetSpellInfo(33206),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PainSuppression.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PainSuppression.Messages.End = value
					end,
				},
			},
		},
		Lightwell = {
			type = "group",
			name = GetSpellInfo(724),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.Lightwell.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Lightwell.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Lightwell.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Lightwell.Messages.Start = value
					end,
				},
			},
		},
		PowerInfusion = {
			type = "group",
			name = GetSpellInfo(10060),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PowerInfusion.Messages.End = value
					end,
				},
			},
		},
		PowerWordBarrier = {
			type = "group",
			name = GetSpellInfo(62618),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End = value
					end,
				},
			},
		},
		LightwellRenew = {
			type = "group",
			name = GetSpellInfo(7001),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.LightwellRenew.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Stolen Charges"],
					desc = L.DescLightwellRenewStolen,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.LightwellRenew.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.LightwellRenew.Messages.End = value
					end,
				},
			},
		},
		Purify = {
			type = "group",
			name = GetSpellInfo(527),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.Purify.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Purify.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Purify.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Purify.Messages.Start = value
					end,
				},
			},
		},
		Resurrection = {
			type = "group",
			name = GetSpellInfo(2006),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Resurrection.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Resurrection.Messages.End = value
					end,
				},
			},
		},
		Fade = {
			type = "group",
			name = GetSpellInfo(586),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.Fade.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Fade.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Fade.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Fade.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Fade.Messages.End = value
					end,
				},
			},
		},
		AngelicBulwark = {
			type = "group",
			name = GetSpellInfo(114214),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.AngelicBulwark.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.AngelicBulwark.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.AngelicBulwark.Messages.End = value
					end,
				},
			},
		},
		PsychicScream = {
			type = "group",
			name = GetSpellInfo(8122),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.PsychicScream.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicScream.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PsychicScream.Messages.End = value
					end,
				},
			},
		},
		MindControl = {
			type = "group",
			name = GetSpellInfo(605),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.MindControl.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MindControl.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				--[[Casting = {
				type = "input",
				width = "full",
				name = L["Start"],
				desc = L.DescSpellStartCastingMessage,
				order = 28,
				get = function(info)
				return RSA.db.profile.Priest.Spells.MindControl.Messages.Casting
				end,
				set = function(info, value)
				RSA.db.profile.Priest.Spells.MindControl.Messages.Casting = value
				end,
				},]]--
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.MindControl.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 36,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MindControl.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.MindControl.Messages.End = value
					end,
				},
			},
		},
		Silence = {
			type = "group",
			name = GetSpellInfo(15487),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.Silence.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Silence.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Interrupt"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Silence.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 36,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Silence.Messages.End = value
					end,
				},
				Debuff = {
					type = "input",
					width = "full",
					name = L["Aura Applied"],
					desc = L.DescSpellStartCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Silence.Messages.Debuff
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Silence.Messages.Debuff = value
					end,
				},
			},
		},
		SpiritShell = {
			type = "group",
			name = GetSpellInfo(109964),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.SpiritShell.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Interrupt"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 36,
					get = function(info)
						return RSA.db.profile.Priest.Spells.SpiritShell.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.SpiritShell.Messages.End = value
					end,
				},
			},
		},
		PsychicHorror = {
			type = "group",
			name = GetSpellInfo(64044),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.PsychicHorror.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Priest.Spells.PsychicHorror.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.PsychicHorror.Messages.End = value
					end,
				},
			},
		},
		BodyAndSoul = {
			type = "group",
			name = GetSpellInfo(65081),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.BodyAndSoul.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.BodyAndSoul.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.BodyAndSoul.Messages.Start = value
					end,
				},
			},
		},
		Shadowfiend = {
			type = "group",
			name = GetSpellInfo(34433),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.Shadowfiend.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.Shadowfiend.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.Shadowfiend.Messages.Start = value
					end,
				},
			},
		},
		MassDispel = {
			type = "group",
			name = GetSpellInfo(32375),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.MassDispel.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.MassDispel.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.MassDispel.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.MassDispel.Messages.Start = value
					end,
				},
			},
		},
		VoidShift = {
			type = "group",
			name = GetSpellInfo(108968),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Local
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Priest.Spells.VoidShift.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Party
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Priest.Spells.VoidShift.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Priest.Spells.VoidShift.Messages.Start = value
					end,
				},
			},
		},
	},
}
-----------------------
---- Rogue Options ----
-----------------------
local Rogue = {
	type = "group",
	name = "|cFFFFDD00" .. L["Spell Options"] .. "|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		Sap = {
			type = "group",
			name = GetSpellInfo(6770),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Sap.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Sap.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Sap.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Sap.Messages.End = value
					end,
				},
			},
		},
		Kick = {
			type = "group",
			name = GetSpellInfo(1766),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Kick.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Kick.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Kick.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Kick.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Kick.Messages.Immune = value
					end,
				},
			},
		},
		Dismantle = {
			type = "group",
			name = GetSpellInfo(51722),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Dismantle.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Dismantle.Messages.End = value
					end,
				},
			},
		},
		Blind = {
			type = "group",
			name = GetSpellInfo(2094),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Blind.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Blind.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Blind.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Blind.Messages.End = value
					end,
				},
			},
		},
		Tricks = {
			type = "group",
			name = GetSpellInfo(57934),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.Tricks.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Tricks.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Tricks.Messages.End = value
					end,
				},
			},
		},
		Concealment = {
			type = "group",
			name = GetSpellInfo(114018),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.Concealment.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Concealment.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Concealment.Messages.End = value
					end,
				},
			},
		},
		SmokeBomb = {
			type = "group",
			name = GetSpellInfo(76577),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.SmokeBomb.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.SmokeBomb.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.SmokeBomb.Messages.End = value
					end,
				},
			},
		},
		Shiv = {
			type = "group",
			name = GetSpellInfo(5938),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Local
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Rogue.Spells.Shiv.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Party
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Rogue.Spells.Shiv.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Rogue.Spells.Shiv.Messages.End = value
					end,
				},
			},
		},
	},
}
------------------------
---- Shaman Options ----
------------------------
local Shaman = {
	type = "group",
	name = "|cFF00DBBD" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "small",
			order = 0,
		},
		Heroism = {
			type = "group",
			name = GetSpellInfo(2825) .. "/" .. GetSpellInfo(32182),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.Heroism.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Heroism.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Heroism.Messages.End = value
					end,
				},
			},
		},
		ShamanisticRage = {
			type = "group",
			name = GetSpellInfo(30823),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ShamanisticRage.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.ShamanisticRage.Messages.End = value
					end,
				},
			},
		},
		ManaTide = {
			type = "group",
			name = GetSpellInfo(16190),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.ManaTide.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.ManaTide.Messages.End = value
					end,
				},
			},
		},
		HealingTide = {
			type = "group",
			name = GetSpellInfo(108280),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.HealingTide.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.HealingTide.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.HealingTide.Messages.End = value
					end,
				},
			},
		},
		EarthElementalTotem = {
			type = "group",
			name = GetSpellInfo(2062),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.EarthElementalTotem.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.EarthElementalTotem.Messages.End = value
					end,
				},
			},
		},
		FireElementalTotem = {
			type = "group",
			name = GetSpellInfo(2894),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End = value
					end,
				},
			},
		},
		BindElemental = {
			type = "group",
			name = GetSpellInfo(76780),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.BindElemental.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.BindElemental.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.BindElemental.Messages.End = value
					end,
				},
			},
		},
		Hex = {
			type = "group",
			name = GetSpellInfo(51514),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Hex.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Hex.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Hex.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Hex.Messages.End = value
					end,
				},
			},
		},
		WindShear = {
			type = "group",
			name = GetSpellInfo(57994),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.WindShear.Messages.Immune = value
					end,
				},
			},
		},
		Purge = {
			type = "group",
			name = GetSpellInfo(370),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Purge.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Purge.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Purge.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Purge.Messages.End = value
					end,
				},
			},
		},
		CleanseSpirit = {
			type = "group",
			name = GetSpellInfo(51886) .. "/" .. GetSpellInfo(77130),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.CleanseSpirit.Messages.Start = value
					end,
				},
			},
		},
		AncestralSpirit = {
			type = "group",
			name = GetSpellInfo(2008),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End = value
					end,
				},
			},
		},
		SpiritLink = {
			type = "group",
			name = GetSpellInfo(98008),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.SpiritLink.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End = value
					end,
				},
			},
		},
		TremorTotem = {
			type = "group",
			name = GetSpellInfo(8143),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.TremorTotem.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.TremorTotem.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.TremorTotem.Messages.End = value
					end,
				},
			},
		},
		Thunderstorm = {
			type = "group",
			name = GetSpellInfo(51490),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.Thunderstorm.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Thunderstorm.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Thunderstorm.Messages.Start = value
					end,
				},
			},
		},
		AncestralGuidance = {
			type = "group",
			name = GetSpellInfo(108281),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AncestralGuidance.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.AncestralGuidance.Messages.End = value
					end,
				},
			},
		},
		AstralShift = {
			type = "group",
			name = GetSpellInfo(108271),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.AstralShift.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.AstralShift.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.AstralShift.Messages.End = value
					end,
				},
			},
		},
		GroundingTotem = {
			type = "group",
			name = GetSpellInfo(8177),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.GroundingTotem.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Destroyed by damage"],
					desc = L.DestroyedByDamage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Destroyed by other effects"],
					desc = L.DestroyedByOther,
					order = 36,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.GroundingTotem.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.GroundingTotem.Messages.Immune = value
					end,
				},
			},
		},
		StormlashTotem = {
			type = "group",
			name = GetSpellInfo(120668),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.StormlashTotem.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Destroyed by damage"],
					desc = L.DestroyedByDamage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.StormlashTotem.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.StormlashTotem.Messages.End = value
					end,
				},
			},
		},
		WindwalkTotem = {
			type = "group",
			name = GetSpellInfo(108273),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Destroyed by damage"],
					desc = L.DestroyedByDamage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End = value
					end,
				},
			},
		},
		CapacitorTotem = {
			type = "group",
			name = GetSpellInfo(108269),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Destroyed by damage"],
					desc = L.DestroyedByDamage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.CapacitorTotem.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.CapacitorTotem.Messages.End = value
					end,
				},
			},
		},
		Ascendance = {
			type = "group",
			name = GetSpellInfo(114049),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Local
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Shaman.Spells.Ascendance.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Party
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSA .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Destroyed by damage"],
					desc = L.DestroyedByDamage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Shaman.Spells.Ascendance.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Shaman.Spells.Ascendance.Messages.End = value
					end,
				},
			},
		},
	},
}
-------------------------
---- Warlock Options ----
-------------------------
local Warlock = {
	type = "group",
	name = "|cFF8245ab" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		SoulWell = {
			type = "group",
			name = GetSpellInfo(29893),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.SoulWell.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.SoulWell.Messages.Start = value
					end,
				},
			},
		},
		SummonStone = {
			type = "group",
			name = GetSpellInfo(698),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.SummonStone.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.SummonStone.Messages.Start = value
					end,
				},
			},
		},
		SingeMagic = {
			type = "group",
			name = GetSpellInfo(89808) .. "/" .. GetSpellInfo(115276),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.SingeMagic.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SingeMagic.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.SingeMagic.Messages.Start = value
					end,
				},
			},
		},
		Banish = {
			type = "group",
			name = GetSpellInfo(710),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Banish.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Banish.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Banish.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Banish.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Banish.Messages.Immune = value
					end,
				},
			},
		},
		Fear = {
			type = "group",
			name = GetSpellInfo(5782),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Fear.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Fear.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Fear.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Fear.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Fear.Messages.Immune = value
					end,
				},
			},
		},
		GrimoireOfSacrifice = {
			type = "group",
			name = GetSpellInfo(108503),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.GrimoireOfSacrifice.Messages.Start = value
					end,
				},
			},
		},
		Seduce = {
			type = "group",
			name = GetSpellInfo(6358) .. "/" .. GetSpellInfo(115268),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Seduce.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Seduce.Messages.End = value
					end,
				},
			},
		},
		SpellLock = {
			type = "group",
			name = GetSpellInfo(19647) .. "/" .. GetSpellInfo(115781),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.SpellLock.Messages.Immune = value
					end,
				},
			},
		},
		Devour = {
			type = "group",
			name = GetSpellInfo(19505),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Devour.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Devour.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Devour.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Devour.Messages.End = value
					end,
				},
			},
		},
		CloneMagic = {
			type = "group",
			name = GetSpellInfo(115284),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.CloneMagic.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.CloneMagic.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.CloneMagic.Messages.End = value
					end,
				},
			},
		},
		Suffering = {
			type = "group",
			name = GetSpellInfo(17735),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Suffering.Messages.Immune = value
					end,
				},
			},
		},
		Soulstone = {
			type = "group",
			name = GetSpellInfo(20707),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Soulstone.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulstone.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Soulstone.Messages.End = value
					end,
				},
			},
		},
		DeathCoil = {
			type = "group",
			name = GetSpellInfo(6789),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.DeathCoil.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DeathCoil.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.DeathCoil.Messages.Start = value
					end,
				},
			},
		},
		Shadowfury = {
			type = "group",
			name = GetSpellInfo(30283),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Shadowfury.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Shadowfury.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Shadowfury.Messages.Start = value
					end,
				},
			},
		},
		HowlOfTerror = {
			type = "group",
			name = GetSpellInfo(5484),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.HowlOfTerror.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.HowlOfTerror.Messages.End = value
					end,
				},
			},
		},
		DarkBargain = {
			type = "group",
			name = GetSpellInfo(110913),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.DarkBargain.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.DarkBargain.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.DarkBargain.Messages.End = value
					end,
				},
			},
		},
		UnendingResolve = {
			type = "group",
			name = GetSpellInfo(104773),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.UnendingResolve.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.UnendingResolve.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.UnendingResolve.Messages.End = value
					end,
				},
			},
		},
		Soulshatter = {
			type = "group",
			name = GetSpellInfo(29858),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Soulshatter.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Soulshatter.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Soulshatter.Messages.Start = value
					end,
				},
			},
		},
		Gateway = {
			type = "group",
			name = GetSpellInfo(111771),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warlock.Spells.Gateway.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warlock.Spells.Gateway.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warlock.Spells.Gateway.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warlock.Spells.Gateway.Messages.Start = value
					end,
				},
			},
		},
	},
}
-------------------------
---- Warrior Options ----
-------------------------
local Warrior = {
	type = "group",
	name = "|cFFC98D57" .. L["Spell Options"] .."|r",
	order = 2,
	childGroups = "select",
	args = {
		Description = {
			type = "description",
			name = L.Spell_Options,
			fontSize = "medium",
			order = 0,
		},
		ShieldWall = {
			type = "group",
			name = GetSpellInfo(871),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldWall.Messages.End = value
					end,
				},
			},
		},
		Disarm = {
			type = "group",
			name = GetSpellInfo(676),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Disarm.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Disarm.Messages.End = value
					end,
				},
			},
		},
		Vigilance = {
			type = "group",
			name = GetSpellInfo(114030),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Vigilance.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Vigilance.Messages.End = value
					end,
				},
			},
		},
		LastStand = {
			type = "group",
			name = GetSpellInfo(12975),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.LastStand.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.LastStand.Messages.End = value
					end,
				},
			},
		},
		ShatteringThrow = {
			type = "group",
			name = GetSpellInfo(64382),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShatteringThrow.Messages.End = value
					end,
				},
			},
		},
		Pummel = {
			type = "group",
			name = GetSpellInfo(6552),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM .. L.MSI,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Messages.Immune = value
					end,
				},
				Gag = {
					type = "input",
					width = "full",
					name = GetSpellInfo(18498),
					desc = L.DescSpellStartCastingMessage,
					order = 40,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Pummel.Messages.Gag
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Pummel.Messages.Gag = value
					end,
				},
			},
		},
		Taunt = {
			type = "group",
			name = GetSpellInfo(355),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSM,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Successful"],
					desc = L.DescSpellStartSuccess,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndResist,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Messages.End = value
					end,
				},
				Immune = {
					type = "input",
					width = "full",
					name = L["Immune"],
					desc = L.DescSpellEndImmune,
					order = 36,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Taunt.Messages.Immune = value
					end,
				},
			},
		},
		EnragedRegeneration = {
			type = "group",
			name = GetSpellInfo(55694),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.EnragedRegeneration.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.EnragedRegeneration.Messages.End = value
					end,
				},
			},
		},
		ShieldBlock = {
			type = "group",
			name = GetSpellInfo(132404),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.ShieldBlock.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBlock.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldBlock.Messages.End = value
					end,
				},
			},
		},
		ShieldBarrier = {
			type = "group",
			name = GetSpellInfo(112048),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldBarrier.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldBarrier.Messages.End = value
					end,
				},
			},
		},
		DemoralizingShout = {
			type = "group",
			name = GetSpellInfo(1160),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End = value
					end,
				},
			},
		},
		SpellReflect = {
			type = "group",
			name = GetSpellInfo(23920),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.SpellReflect.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start = value
					end,
				},
			},
		},
		Recklessness = {
			type = "group",
			name = GetSpellInfo(1719),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.Recklessness.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Recklessness.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Recklessness.Messages.End = value
					end,
				},
			},
		},
		ShieldSlamDispel = {
			type = "group",
			name = GetSpellInfo(23922) .. " " .. L["Dispel"],
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST .. L.MSB,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.ShieldSlamDispel.Messages.End = value
					end,
				},
			},
		},
		RallyingCry = {
			type = "group",
			name = GetSpellInfo(97462),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.RallyingCry.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["End"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End = value
					end,
				},
			},
		},
		Intervene = { -- SAFEGUARD
			type = "group",
			name = GetSpellInfo(3411) .. "/" .. GetSpellInfo(114029),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Local = value
					end,
				},
				Whisper = {
					type = "toggle",
					name = L["Whisper"], desc = L.Whisper_Desc,
					order = 2,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Whisper
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Whisper = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.Intervene.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.Intervene.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.Intervene.Messages.Start = value
					end,
				},
			},
		},
		MockingBanner = {
			type = "group",
			name = GetSpellInfo(114192),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.MockingBanner.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.MockingBanner.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.MockingBanner.Messages.End = value
					end,
				},
			},
		},
		SkullBanner = {
			type = "group",
			name = GetSpellInfo(114207),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.SkullBanner.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.SkullBanner.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.SkullBanner.Messages.End = value
					end,
				},
			},
		},
		DemoralizingBanner = {
			type = "group",
			name = GetSpellInfo(114203),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DemoralizingBanner.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.DemoralizingBanner.Messages.End = value
					end,
				},
			},
		},
		DieByTheSword = {
			type = "group",
			name = GetSpellInfo(118038),
			order = 25,
			args = {
				Title = {
					type = "header",
					name = L["Announce In"],
					order = 0,
				},
				Local = {
					type = "toggle",
					name = L["Local"], desc = L.Local_Desc,
					order = 1,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Local
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Local = value
					end,
				},
				CustomChannelEnabled = {
					type = "toggle",
					name = L["Custom Channel"], desc = L.Custom_Channel_Desc,
					order = 3,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.CustomChannel.Enabled
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.CustomChannel.Enabled = value
					end,
				},
				CustomChannelName = {
					type = "input",
					width = "full",
					name = L["Channel Name"], desc = L.Channel_Name_Desc,
					order = 4,
					hidden = function()
						return RSA.db.profile.Warrior.Spells.DieByTheSword.CustomChannel.Enabled == false
					end,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.CustomChannel.Channel
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.CustomChannel.Channel = value
					end,
				},
				Raid = {
					type = "toggle",
					name = L["Raid"], desc = L.Raid_Desc,
					order = 5,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Raid
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Raid = value
					end,
				},
				Party = {
					type = "toggle",
					name = L["Party"], desc = L.Party_Desc,
					order = 6,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Party
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Party = value
					end,
				},
				RaidParty = {
					type = "toggle",
					name = L["Smart Group"],
					desc = L.Smart_Group_Desc,
					order = 7,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Smart.RaidParty
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Smart.RaidParty = value
					end,
				},
				Say = {
					type = "toggle",
					name = L["Say"],
					desc = L.Say_Desc,
					order = 8,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Smart.Say
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Smart.Say = value
					end,
				},
				Yell = {
					type = "toggle",
					name = L.Yell,
					desc = L.Yell_Desc,
					order = 9,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Yell
					end,
					set = function (info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Yell = value
					end,
				},
				---- Custom Message ----
				Title2 = {
					type = "header",
					name = L["Message Settings"],
					order = 20,
				},
				Description = {
					type = "description",
					name = L.Message_Settings_Desc .. L.MST,
					order = 24,
				},
				Start = {
					type = "input",
					width = "full",
					name = L["Start"],
					desc = L.DescSpellStartCastingMessage,
					order = 28,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Messages.Start
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Messages.Start = value
					end,
				},
				End = {
					type = "input",
					width = "full",
					name = L["Resisted"],
					desc = L.DescSpellEndCastingMessage,
					order = 32,
					get = function(info)
						return RSA.db.profile.Warrior.Spells.DieByTheSword.Messages.End
					end,
					set = function(info, value)
						RSA.db.profile.Warrior.Spells.DieByTheSword.Messages.End = value
					end,
				},
			},
		},
	},
}
-----------------------
---- Ace functions ----
-----------------------
function RSA_O:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("RSADB", defaults) -- Setup Saved Variables
	self:SetSinkStorage(self.db.profile) -- Setup Saved Variables for LibSink
	-- Check what class and race we are and save it. Used to determine what options to show.
	local pRace = select(2, UnitRace("player"))
	self.db.profile.General.Race = pRace
	local pClass = select(2, UnitClass("player"))
	self.db.profile.General.Class = pClass
	-- Profile Management --
	self.db.RegisterCallback(self, "OnProfileChanged", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileCopied", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileReset", "RefreshConfig")
	------------------------
	db = self.db
	-- Register Various Options
	LibStub("AceConfig-3.0"):RegisterOptionsTable("RSA", Options) -- Register Options
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("RSA", "RSA") -- Add options to Blizzard interface
	if pClass == "DEATHKNIGHT" and RSA.db.profile.Modules.DeathKnight == true then -- Load Class Options
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", DeathKnight) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "DRUID" and RSA.db.profile.Modules.Druid == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Druid) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "HUNTER" and RSA.db.profile.Modules.Hunter == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Hunter) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "MAGE" and RSA.db.profile.Modules.Mage == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Mage) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "MONK" and RSA.db.profile.Modules.Monk == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Monk) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "PALADIN" and RSA.db.profile.Modules.Paladin == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Paladin) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "PRIEST" and RSA.db.profile.Modules.Priest == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Priest) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "ROGUE" and RSA.db.profile.Modules.Rogue == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Rogue) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "SHAMAN" and RSA.db.profile.Modules.Shaman == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Shaman) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "WARLOCK" and RSA.db.profile.Modules.Warlock == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Warlock) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	elseif pClass == "WARRIOR" and RSA.db.profile.Modules.Warrior == true then
		LibStub("AceConfig-3.0"):RegisterOptionsTable("Spell Options", Warrior) -- Register Options
		self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Spell Options", "Spell Options", "RSA") -- Add options to Blizzard interface
	end
	LibStub("AceConfig-3.0"):RegisterOptionsTable("Reminders", Reminders) -- Register Options
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Reminders", "Buff Reminders", "RSA") -- Add options to Blizzard interface
	local Profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db) -- Add profile management to Blizzard interface
	LibStub("AceConfig-3.0"):RegisterOptionsTable("RSA_Profiles", Profiles) -- Register Options
	self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("RSA_Profiles", "Profiles", "RSA") -- Add options to Blizzard interface
	--LibStub("AceConfig-3.0"):RegisterOptionsTable("RSA_FAQ", FAQ) -- Register Options
	--self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("RSA_FAQ", "Help", "RSA") -- Add options to Blizzard interface
	-- Add dual-spec support
	local LibDualSpec = LibStub('LibDualSpec-1.0')
	LibDualSpec:EnhanceDatabase(self.db, "RSA")
	LibDualSpec:EnhanceOptions(Profiles, self.db)
	InterfaceAddOnsList_Update();
end
function RSA_O:RefreshConfig(event, database, newProfileKey) -- Seems to be working fine.
	RSA.db = database -- Setup Saved Variables
	if RSA.db.profile.Modules.Reminders == true then
		local loaded, reason = LoadAddOn("RSA_Reminders")
		if not loaded then
			if reason == "DISABLED" or reason == "INTERFACE_VERSION" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r Reminders " .. L.OptionsDisabled)
			elseif reason == "MISSING" or reason == "CORRUPT" then
				ChatFrame1:AddMessage("|cFFFF75B3RSA:|r Reminders " .. L.OptionsMissing)
			end
		else
			RSA:EnableModule("Reminders")
		end
	else
		if LoadAddOn("RSA_Reminders") == 1 then
			RSA:DisableModule("Reminders")
		end
	end
end
