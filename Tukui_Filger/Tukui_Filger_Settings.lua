local _, ns = ...

ns.Filger_Settings = {
	configmode = false,
}

--[[ CD-Example
		{
			Name = "COOLDOWN",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "CENTER", UIParent, "CENTER", 0, -100 },

			-- Wild Growth/Wildwuchs
			{ spellID = 48438, size = 32, filter = "CD" },
		},
]]

ns.Filger_Spells = {
	["DRUID"] = {
		{
			Name = "CDs and BUFFS",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = {"TOPLEFT", UIParent, "LEFT", 138, 186 },

			-- Wild Growth
			{ spellID = 48438, size = 32, filter = "CD" },
			-- Swiftmend
			{ spellID = 18562, size = 32, filter = "CD" },
			-- Tree of Life
			{ spellID = 33891, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },
			
			
			-- Eclipse (Lunar)/Mondfinsternis
			--{ spellID = 48518, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Eclipse (Solar)/Sonnenfinsternis
			--{ spellID = 48517, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lunar Shower
			{ spellID = 81192, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Savage Roar/Wildes Brüllen
			{ spellID = 52610, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Survival Instincts/Überlebensinstinkte
			{ spellID = 61336, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tree of Life/Baum des Lebens
			{ spellID = 33891, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Innervate/Anregen
			{ spellID = 29166, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Barkskin/Baumrinde
			{ spellID = 22812, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Power Torrent
			{ spellID = 74241, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lifebloom
			{ spellID = 33763, size = 47, unitId = "focus", caster = "player", filter = "BUFF" },
			-- Clearcasting/Freizaubern
			{ spellID = 16870, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Hibernate/Winterschlaf
			{ spellID = 2637, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots/Wucherwurzeln
			{ spellID = 339, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Cyclone/Wirbelsturm
			{ spellID = 33786, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Moonfire/Mondfeuer
			{ spellID = 8921, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunfire/Sonnenfeuer
			{ spellID = 93402, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Insect Swarm/Insektenschwarm
			{ spellID = 5570, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rake/Krallenhieb
			{ spellID = 1822, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Rip/Zerfetzen
			{ spellID = 1079, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Lacerate/Aufschlitzen
			{ spellID = 33745, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pounce Bleed/Anspringblutung
			{ spellID = 9007, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mangle/Zerfleischen
			{ spellID = 33876, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earth and Moon/Erde und Mond
			{ spellID = 48506, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Faerie Fire/Feenfeuer
			{ spellID = 770, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			-- Hibernate/Winterschlaf
			{ spellID = 2637, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Entangling Roots/Wucherwurzeln
			{ spellID = 339, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Cyclone/Wirbelsturm
			{ spellID = 33786, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
		{
			Name = "Starsurge",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "CENTER", UIParent, "CENTER", 0, -80 },
			
			-- Starsurge
			{ spellID = 78674, size = 32, filter = "CD" },
			-- Shooting Stars/Sternschnuppen
			{ spellID = 93400, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
	},
	["HUNTER"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Lock and Load
			{ spellID = 56342, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fury of the Five Flights
			{ spellID = 60314, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Quick Shots
			--{ spellID = 6150, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Master Tactician
			{ spellID = 34837, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Improved Steady Shot/Verbesserter zuverlässiger Schuss
			{ spellID = 53224, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Expose Weakness
			--{ spellID = 34503, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Rapid Fire
			{ spellID = 3045, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Call of the Wild
			{ spellID = 53434, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Mend Pet/Tier heilen
			{ spellID = 136, size = 47, unitId = "pet", caster = "player", filter = "BUFF" },
			-- Feed Pet/Tier füttern
			{ spellID = 6991, size = 47, unitId = "pet", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Wyvern Sting
			{ spellID = 19386, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot
			{ spellID = 34490, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Serpent Sting
			{ spellID = 1978, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Scorpid Sting
			--{ spellID = 3043, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Black Arrow
			{ spellID = 3674, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Explosive Shot
			{ spellID = 53301, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Hunter's Mark
			{ spellID = 1130, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },

		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			-- Wyvern Sting
			{ spellID = 19386, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Silencing Shot
			{ spellID = 34490, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["MAGE"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Frostbite
			--{ spellID = 11071, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Winter's Chill
			{ spellID = 28593, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Fingers of Frost
			{ spellID = 44544, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Fireball!
			{ spellID = 57761, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Hot Streak
			{ spellID = 44445, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Missile Barrage
			{ spellID = 54486, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 12536, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Impact
			{ spellID = 12358, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Polymorph
			{ spellID = 118, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Arcane Blast
			{ spellID = 36032, size = 47, unitId = "player", caster = "player", filter = "DEBUFF" },
			-- Improved Scorch
			{ spellID = 11367, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Scorch
			{ spellID = 2948, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Slow
			{ spellID = 31589, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Ignite
			{ spellID = 11119, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Living Bomb
			{ spellID = 44457, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Pyroblast!
			{ spellID = 92315, size = 47, unitId = "player", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			-- Polymorph
			{ spellID = 118, size = 32, barWidth = 191, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["WARRIOR"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Sudden Death
			{ spellID = 52437, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slam!
			{ spellID = 46916, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Sword and Board
			{ spellID = 50227, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Blood Reserve
			{ spellID = 64568, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Last Stand
			{ spellID = 12975, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shield Wall
			{ spellID = 871, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Hamstring
			{ spellID = 1715, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Rend
			{ spellID = 94009, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Sunder Armor
			{ spellID = 7386, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Expose Armor
			--{ spellID = 48669, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Thunder Clap
			{ spellID = 6343, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Infected Wounds
			{ spellID = 48484, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Frost Fever
			{ spellID = 55095, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Demoralizing Shout
			{ spellID = 1160, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demoralizing Roar
			{ spellID = 99, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness
			{ spellID = 702, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
		},
	},
	["SHAMAN"] = {
		{
			Name = "BUFFS",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = {"TOPLEFT", UIParent, "LEFT", 138, 186 },

			-- Water Shield
			{ spellID = 52127, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			
		},
		{
			Name = "CDs",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = {"TOPLEFT", UIParent, "LEFT", 174, 186 },

			-- Riptide
			{ spellID = 61295, size = 32, filter = "CD" },
			
		},
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, 24 },

			-- Earth Shield/Erdschild
			{ spellID = 974, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Riptide/Springflut
			{ spellID = 61295, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Lightning Shield/Blitzschlagschild
			{ spellID = 324, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Water Shield/Wasserschild
			{ spellID = 52127, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 24 },

			-- Earth Shield/Erdschild
			{ spellID = 974, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
			-- Riptide/Springflut
			{ spellID = 61295, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Maelstorm Weapon
			{ spellID = 53817, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Shamanistic Rage
			{ spellID = 30823, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Clearcasting
			{ spellID = 16246, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tidal Waves
			{ spellID = 51562, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Ancestral Fortitude
			{ spellID = 16236, size = 47, barWidth = 187, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Hex
			{ spellID = 51514, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Storm Strike
			{ spellID = 17364, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Earth Shock
			{ spellID = 8042, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frost Shock
			{ spellID = 8056, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Flame Shock
			{ spellID = 8050, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			-- Hex
			{ spellID = 51514, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["PALADIN"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, 24 },

			-- Beacon of Light/Flamme des Glaubens
			{ spellID = 53563, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_BUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 24 },

			-- Beacon of Light/Flamme des Glaubens
			{ spellID = 53563, size = 32, unitId = "target", caster = "player", filter = "BUFF" },
		},
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },
			
			-- Inquisition
			{ spellID = 84963, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Judgements of the Pure
			{ spellID = 53671, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Holy Shield
			{ spellID = 20925, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Infusion of Light
			{ spellID = 54149, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Plea
			{ spellID = 54428, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Essence of Life
			{ spellID = 60062, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Divine Illumination
			{ spellID = 31842, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },
			
			{ spellID = 88826, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Hammer of Justice/Hammer der Gerechtigkeit
			{ spellID = 853, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Judgement of Light
			{ spellID = 20271, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Judgement of Justice
			--{ spellID = 53407, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Judgement of Wisdom
			--{ spellID = 20186, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Heart of the Crusader
			--{ spellID = 54499, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Blood Corruption
			--{ spellID = 53742, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			-- Hammer of Justice/Hammer der Gerechtigkeit
			{ spellID = 853, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["PRIEST"] = {		
		{
			Name = "CDs and BUFFS",
			Direction = "RIGHT",
			Interval = 4,
			Opacity = 1,
			Mode = "ICON",
			setPoint = {"TOPLEFT", UIParent, "LEFT", 138, 186 },

			-- Inner Focus
			{ spellID = 89485, size = 32, filter = "CD" },
			-- Prayer of Mending
			{ spellID = 33076, size = 32, filter = "CD" },
			-- Penance
			{ spellID = 47540, size = 32, filter = "CD" },
			-- Circle of Healing
			{ spellID = 34861, size = 32, filter = "CD" },
			-- Holy Word: Chastise
			{ spellID = 88685, size = 32, filter = "CD" },
			-- Chakra: Heal
			{ spellID = 81208, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
			-- Chakra: PoH
			{ spellID = 81206, size = 32, unitId = "player", caster = "player", filter = "BUFF" },
		},	
		
			{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Innervate
			{ spellID = 29166, size = 47, unitId = "player", caster = "all", filter = "BUFF" },
			-- Evangelism
			{ spellID = 81661, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Archangel
			{ spellID = 81700, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Chakra: Heal
			{ spellID = 81208, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Chakra: PoH
			{ spellID = 81206, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			--Surge of Light
			{ spellID = 88688, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			--Serendipity
			{ spellID = 63735, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			
		},
	},
	["WARLOCK"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			--Devious Minds/Teuflische Absichten
			{ spellID = 70840, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Improved Soul Fire
			{ spellID = 85114, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Molten Core
			{ spellID = 47383, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Decimation
			{ spellID = 63158, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backdraft
			{ spellID = 54277, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Backlash
			{ spellID = 34939, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nether Protection
			{ spellID = 30301, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Nightfall
			{ spellID = 18095, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Burning Soul
			{ spellID = 74434, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Fear
			{ spellID = 5782, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Banish
			{ spellID = 710, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of the Elements
			{ spellID = 1490, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Tongues
			{ spellID = 1714, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Exhaustion
			{ spellID = 18223, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Curse of Weakness
			{ spellID = 702, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Shadow Embrace
			{ spellID = 32385, size = 47, unitId = "target", caster = "player", filter = "BUFF" },
			-- Corruption
			{ spellID = 172, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Immolate
			{ spellID = 348, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Curse of Agony
			{ spellID = 980, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Bane of Doom
			{ spellID = 603, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Unstable Affliction
			{ spellID = 30108, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Haunt
			{ spellID = 48181, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Seed of Corruption
			{ spellID = 27243, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Howl of Terror
			{ spellID = 5484, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Death Coil
			{ spellID = 6789, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Enslave Demon
			{ spellID = 1098, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Demon Charge
			{ spellID = 54785, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "RIGHT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			-- Fear
			{ spellID = 5782, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Banish
			{ spellID = 710, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["ROGUE"] = {
		{
			Name = "P_BUFF_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Sprint
			{ spellID = 2983, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Cloak of Shadows
			{ spellID = 31224, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Adrenaline Rush
			{ spellID = 13750, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Evasion
			{ spellID = 5277, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Envenom
			{ spellID = 32645, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Overkill
			{ spellID = 58426, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Slice and Dice
			{ spellID = 5171, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Tricks of the Trade
			{ spellID = 57934, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Turn the Tables
			{ spellID = 51627, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Cheap shot
			{ spellID = 1833, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Kidney shot
			{ spellID = 408, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Blind
			{ spellID = 2094, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Sap
			{ spellID = 6770, size = 47, unitId = "target", caster = "all", filter = "DEBUFF" },
			-- Rupture
			{ spellID = 1943, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Garrote
			{ spellID = 703, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Gouge
			{ spellID = 1776, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Expose Armor
			{ spellID = 8647, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Dismantle
			{ spellID = 51722, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Deadly Poison
			{ spellID = 2818, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Mind-numbing Poison
			{ spellID = 5760, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Crippling Poison
			{ spellID = 3409, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Wound Poison
			{ spellID = 13218, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
		{
			Name = "F/DEBUFF_BAR",
			Direction = "UP",
			IconSide = "LEFT",
			Interval = 4,
			Mode = "BAR",
			setPoint = { "LEFT", UIParent, "CENTER", 160, 100 },

			-- Blind
			{ spellID = 2094, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
			-- Sap
			{ spellID = 6770, size = 32, barWidth = 200, unitId = "focus", caster = "all", filter = "DEBUFF" },
		},
	},
	["DEATHKNIGHT"] = {
		{
			Name = "P_PROC_ICON",
			Direction = "LEFT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "RIGHT", UIParent, "CENTER", -160, -20 },

			-- Unholy Force/Unheilige Kraft
			{ spellID = 67383, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Desolation/Verwüstung
			--{ spellID = 66817, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Strength/Unheilige Stärke
			{ spellID = 53365, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Unholy Might/Unheilige Macht
			{ spellID = 67117, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Dancing Rune Weapon/Tanzende Runenwaffe
			{ spellID = 49028, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Killing machine
			{ spellID = 51124, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
			-- Freezing fog
			{ spellID = 59052, size = 47, unitId = "player", caster = "player", filter = "BUFF" },
		},
		{
			Name = "T_DEBUFF_ICON",
			Direction = "RIGHT",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "LEFT", UIParent, "CENTER", 160, -20 },

			-- Blood Plague/Blutseuche
			{ spellID = 59879, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Frost Fever/Frostfieber
			{ spellID = 59921, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Unholy Blight/Unheilige Verseuchung
			{ spellID = 49194, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
			-- Summon Gargoyle/Gargoyle beschwören
			{ spellID = 49206, size = 47, unitId = "target", caster = "player", filter = "DEBUFF" },
		},
	},
	["ALL"] = {
		{
			Name = "ICC/RS DEBUFFS",
			Direction = "DOWN",
			Interval = 4,
			Mode = "ICON",
			setPoint = { "TOPLEFT", "UIParent", "TOPLEFT", 445, -374 },
				
			----[[ Cataclysm ]]----
			--Acquiring Target (Omnotron Defense System)
			{ spellID = 79501, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Acquiring Target (Omnotron Defense System)
			{ spellID = 79505, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Lightning Conductor (Omnotron Defense System)
			{ spellID = 79888, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Fixate (Omnotron Defense System)
			{ spellID = 80093, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Shadow Conductor
			{ spellID = 92135, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Remedy (Maloriak)
			{ spellID = 92971, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Dark Sludge (Maloriak)
			{ spellID = 92987, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Tracking (Atramedes)
			{ spellID = 78092, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Dominion (Nefarian)
			{ spellID = 79318, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Explosive Cinders (Nefarian)
			{ spellID = 79339, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Blackout (Valiona & Theralion)
			{ spellID = 92878, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Twilight Meteorite (Valiona & Theralion)
			{ spellID = 88518, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Engulfing Magic (Valiona & Theralion)
			{ spellID = 86622, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Waterlogged (Twilight Ascendant Council)
			{ spellID = 82762, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Lightning Rod (Twilight Ascendant Council)
			{ spellID = 83099, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Wind Chill (Conclave of Wind)
			{ spellID = 84645, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Soothing Breeze (Conclave of Wind)
			{ spellID = 86206, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Lightning Rod (Al'Akir)
			{ spellID = 89666, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Wrack (Sinestra)
			{ spellID = 92956, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			----[[ Icecrown Citadel ]]----
			--Infest (Lich King)
			{ spellID = 73779, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Necrotic Plague (Lich King)
			{ spellID = 73785, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Frost Bomb (Sindragosa)
		    { spellID = 71053, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Instability (Sindragosa)
			{ spellID = 69766, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Unchained Magic (Sindragosa)
		    { spellID = 69762, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Mystic Buffet (Sindragosa)
		    { spellID = 70128, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Unbound Plague (Professor Putricide)
		    { spellID = 72856, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Inoculated (Festergut)
		    { spellID = 72103, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Mutated Infection (Rotface)
		    { spellID = 71224, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Pact of the Darkfallen (Bloodqueen Lana'thel)
		    { spellID = 71340, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Swarming Shadows (Bloodqueen Lana'thel)
		    { spellID = 71861, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Emerald Vigor (Valithria Dreamwalker)
			{ spellID = 70873, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Twisted Nightmares (Valithria Dreamwalker)
			{ spellID = 71941, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			
			----[[ Ruby Sanctum ]]----
			--Fiery Combustion (Halion)
			{ spellID = 74562, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Mark of (Fire) Combustion (Halion)
			{ spellID = 74567, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Soul Consumption (Halion)
			{ spellID = 74792, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },
			--Mark of (Soul) Comsumption (Halion)
			{ spellID = 74795, size = 72, unitId = "player", caster = "all", filter = "DEBUFF" },	
		},
	},
}