﻿local E, C, L, DB = unpack(select(2, ...)) -- Import Functions/Constants, Config, Locales

DB["media"] = {
	-- fonts
	["font"] = "ElvUI Font",		 -- general font of Elvui
	["uffont"] = "ElvUI Font", 		 -- general font of unitframes
	["dmgfont"] = "ElvUI Combat", 	 -- general font of dmg / sct
		
	-- textures
	["normTex"] = "ElvUI Norm", 	 -- texture used for Elvui healthbar/powerbar/etc
	["glossTex"] = "ElvUI Gloss",
	["glowTex"] = "ElvUI GlowBorder",
	["blank"] = "ElvUI Blank",
	
	["raidicons"] = [[Interface\AddOns\ElvUI\media\textures\raidicons.blp]], -- new raid icon textures by hankthetank
	
	-- sound
	["whisper"] = "ElvUI Whisper",
	["warning"] = "ElvUI Warning",
	["glossyTexture"] = false,	-- Use a glossy texture for all frames
	
	--colors
	["bordercolor"] = { r = .23,g = .23,b = .23, a = 1 }, -- border color of Elvui panels
	["backdropcolor"] = { r = .07,g = .07,b = .07 }, -- background color of Elvui panels
	["backdropfadecolor"] = { r = .07,g = .07,b = .07, a = 0.9 }, --this is always the same as the backdrop color with an alpha of 0.8, see colors.lua
	["valuecolor"] = {r = 23/255,g = 132/255,b = 209/255}, -- color for values of datatexts
}


DB["general"] = {
	["autoscale"] = true,                    -- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 0.78,                  	 -- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["multisampleprotect"] = true,         	 -- i don't recommend this because of shitty border but, voila!
	["classcolortheme"] = false,		   	 -- class colored theme for panels
	["fontscale"] = 12,					     -- Master font
	["resolutionoverride"] = "Low",		     -- override lowversion (Low, High)
	["layoutoverride"] = "Healer",			 -- ovverride layout (DPS, Healer)
	["sharpborders"] = true,				 -- self explainatory?
	["upperpanel"] = false,					 -- add a panel to the top of the screen
	["lowerpanel"] = false,					 -- add a panel to the bottom of the screen
	["shadows"] = false,					
}

DB["skin"] = {
	["enable"] = true,						 -- Skin Blizzard Frames
		["reforge"] = true,
		["calendar"] = true,
		["achievement"] = true,
		["lfguild"] = true,
		["inspect"] = true,
		["binding"] = true,
		["gbank"] = true,
		["archaeology"] = true,
		["guildcontrol"] = true,
		["guild"] = true,
		["tradeskill"] = true,
		["raid"] = true,
		["talent"] = true,
		["glyph"] = true,
		["auctionhouse"] = true,
		["barber"] = true,
		["macro"] = true,
		["debug"] = true,
		["trainer"] = true,
		["socket"] = true,
		["achievement_popup"] = true,
		["bgscore"] = true,
		["merchant"] = true,
		["mail"] = true,
		["help"] = true,
		["trade"] = true,
		["gossip"] = true,
		["greeting"] = true,
		["worldmap"] = true,
		["taxi"] = true,
		["lfd"] = true,
		["quest"] = true,
		["petition"] = true,
		["dressingroom"] = true,
		["pvp"] = true,
		["nonraid"] = true,
		["friends"] = true,
		["spellbook"] = true,
		["character"] = true,
		["misc"] = true,
		["lfr"] = true,
		["tabard"] = true,
		["guildregistrar"] = true,
		["timemanager"] = true,
		["encounterjournal"] = true,
	["recount"] = true,						 -- Skin Recount to match Elvui
	["skada"] = true,						 -- Skin Skada to match Elvui
	["omen"] = true,						 -- Skin Omen to match Elvui
	["kle"] = true,							 -- Skin KLE to match Elvui
	["dbm"] = true,							 -- Skin DBM to match Elvui
	["bigwigs"] = true,						 -- Skin BigWigs to match Elvui
	["hookkleright"] = true,				 -- force KLE's top bar anchor to be hooked onto the right chat window
	["hookbwright"] = false,			         -- force BigWig's bar anchor to be hooked onto the right chat window
	["embedright"] = "Recount",				 -- Addon to embed to the right frame ("Omen", "Recount", "Skada")
}

DB["unitframes"] = {
	-- general options
	["enable"] = true,                       -- do i really need to explain this?
	["fontsize"] = 13,						 -- default font height for unitframes
	["lowThreshold"] = 20,                   -- global low threshold, for low mana warning.
	["targetpowerplayeronly"] = true,        -- enable power text on pvp target only
	["showfocustarget"] = false,             -- show focus's target
	["pettarget"] = true,				 	 -- show player's pet's target (DPS)
	["showtotalhpmp"] = true,                -- change the display of info text on player and target with XXXX/Total.
	["showsmooth"] = true,                   -- enable smooth bar
	["charportrait"] = false,                -- enable character portrait
	["charportraithealth"] = true,			 -- portrait overlay healthbar
	["classcolor"] = true,                   -- color unitframes by class
	["healthcolor"] = DB["media"].bordercolor, --color of the unitframe
	["healthcolorbyvalue"] = true,			 -- color health by current health remaining
	["healthbackdrop"] = false,				 -- enable using custom healthbackdrop color
	["healthbackdropcolor"] = DB["media"].backdropcolor,
	["combatfeedback"] = false,              -- enable combattext on player and target.
	["debuffhighlight"] = false,			 -- highlight frame with the debuff color if the frame is dispellable
	["classbar"] = true,                     -- enable runebar/totembar/holypowerbar/soulshardbar/eclipsebar
	["combat"] = false,						 -- only show main unitframes when in combat/havetarget/or mouseover
	["mini_powerbar"] = false,
	["mini_classbar"] = false,
	["powerbar_offset"] = 0,
	["showboss"] = true,                     -- enable boss unit frames for PVELOL encounters.
	["arena"] = true,                 		 -- enable elvui arena unitframes (requirement : Elvui unitframes enabled)	
	["swing"] = false,
	["displayaggro"] = true,
	
	--frame sizes
	["playtarwidth"] = 230,					 -- width of player/target frame
	["playtarheight"] = 50,					 -- height of player/target frame
	["smallwidth"] = 130,					 -- Width of TargetTarget, Focus, FocusTarget, Player's Pet frames
	["smallheight"] = 40,					 -- Height of TargetTarget, Focus, FocusTarget, Player's Pet frames
	["arenabosswidth"] = 200,				 -- Width of Arena/Boss Frames
	["arenabossheight"] = 43,			   	 -- Height of Arena/Boss Frames
	["assisttankwidth"] = 120,				 -- Width of MainTank/MainAssist frames
	["assisttankheight"] = 27,				 -- Height of MainTank/MainAssist frames
	
	--auras
	["auratimer"] = true,                 	 -- enable timers on buffs/debuffs
	["auratextscale"] = 11,                	 -- the font size of buffs/debuffs timers on unitframes
	["playerbuffs"] = false,
	["playerdebuffs"] = false,
	["targetbuffs"] = true,
	["targetdebuffs"] = true,
	["arenabuffs"] = true,
	["bossbuffs"] = true,
	["arenadebuffs"] = true,
	["bossdebuffs"] = false,
	["playershowonlydebuffs"] = false, 		 -- only show the players debuffs over the player frame, not buffs (playerauras must be true)
	["playerdebuffsonly"] = false,		     -- show the players debuffs on target, and any debuff in the whitelist (see debuffFilter.lua)
	["totdebuffs"] = true,                   -- enable tot debuffs (high reso only)
	["focusdebuffs"] = true,                 -- enable focus debuffs 
	["playtarbuffperrow"] = 8,				 -- buffs/debuffs per row on player/target frames
	["smallbuffperrow"] = 5,				 -- debuffs per row on targettarget/focus frames
	
	
	--castbar
	["unitcastbar"] = true,					 -- enable Elvui castbar
	["cblatency"] = false, 					 -- enable castbar latency
	["cbicons"] = true, 					 -- enable icons on castbar
	["cbticks"] = true,						 -- show ticks for certain spells such as Tranquility
	["castplayerwidth"] = 230,
	["castplayerheight"] = 20,
	["casttargetwidth"] = 230,
	["casttargetheight"] = 20,
	["castfocuswidth"] = 230,
	["castfocusheight"] = 20,
	["castbarcolor"] = DB["media"].bordercolor, 			-- Color of player castbar
	["nointerruptcolor"] = {r = 0.78, g = 0.25, b = 0.25},  -- Color of target castbar
	
	["POWER_MANA"] = {r = 0.31, g = 0.45, b = 0.63},
	["POWER_RAGE"] = {r = 0.78, g = 0.25, b = 0.25},
	["POWER_FOCUS"] = {r = 0.71, g = 0.43, b = 0.27},
	["POWER_ENERGY"] = {r = 0.65, g = 0.63, b = 0.35},
	["POWER_RUNICPOWER"] = {r = 0, g = 0.82, b = 1},	
}

DB["raidframes"] = {
	["enable"] = true,						-- enable raid frames
	["fontsize"] = 12,						-- default font height for raidframes
	["scale"] = 1,							-- for smaller use a number less than one (0.73), for higher use a number larger than one
	["showrange"] = true,                   -- show range opacity on raidframes
	["healcomm"] = true,                    -- enable healcomm4 support on healer layout.
	["raidalphaoor"] = 0.3,                 -- alpha of raidframes when unit is out of range
	["gridhealthvertical"] = false,         -- enable vertical grow on health bar for healer layout
	["showplayerinparty"] = true,           -- show my player frame in party
	["maintank"] = true,                    -- enable maintank
	["mainassist"] = true,                  -- enable mainassist
	["partypets"] = true,					-- enable party pets for the healer layout
	["disableblizz"] = true,				-- fuck fuck fuckin fuck
	["healthdeficit"] = true,				-- show the health deficit on the raidframes
	["griddps"] = true,						-- show dps layout in grid style
	["role"] = true,						-- display role on raidframe
	["partytarget"]	= false,				-- display party members targets (DPS ONLY)
	["mouseglow"] = true,					-- glow the class/reaction color of the unit that you mouseover
	["raidunitbuffwatch"] = true,      	    -- track important spell to watch in pve for grid mode.
	["buffindicatorsize"] = 6,				-- size of the buff indicator on raid/party frames
	["debuffs"] = true,						-- display debuffs on grid
	["displayaggro"] = true,				-- red boarder on those who have aggro
	["mini_powerbar"] = false,				-- 
	["gridonly"] = false,					-- use grid in party frames
	["gridpets"] = true, 					-- show pets in grid in the healer layout
}

DB["actionbar"] = {
	["enable"] = true,                      -- enable elvui action bars
	["hotkey"] = true,                      -- enable hotkey display because it was a lot requested
	["rightbarmouseover"] = false,          -- enable right bars on mouse over
	["shapeshiftmouseover"] = false,        -- enable shapeshift or totembar on mouseover
	["hideshapeshift"] = false,             -- hide shapeshift or totembar because it was a lot requested.
	["showgrid"] = true,                    -- show grid on empty button
	["bottompetbar"] = true,				-- position petbar below the actionbars instead of the right side
	["buttonsize"] = 26,					-- size of action buttons
	["buttonspacing"] = 2,					-- spacing of action buttons
	["petbuttonsize"] = 26,					-- size of pet/stance buttons
	["swaptopbottombar"] = false,			-- swap the main actionbar position with the bottom actionbar
	["macrotext"] = false,					-- show macro text on actionbuttons
	["verticalstance"] = false,				-- make stance bar vertical
	["microbar"] = false,					-- enable microbar display
	["mousemicro"] = false,					-- only show microbar on mouseover
	
	["enablecd"] = true,                    -- do i really need to explain this?
	["treshold"] = 3,                       -- show decimal under X seconds and text turn red
	["expiringcolor"] = { r = 1, g = 0, b = 0 },		-- color of expiring seconds turns to 
	["secondscolor"] = { r = 1, g = 1, b = 0 },			-- seconds color
	["minutescolor"] = { r = 1, g = 1, b = 1 },			-- minutes color
	["hourscolor"] = { r = 0.4, g = 1, b = 1 },			-- hours color
	["dayscolor"] = { r = 0.4, g = 0.4, b = 1 },		-- days color	
}

DB["nameplate"] = {
	["enable"] = true,                     -- enable nice skinned nameplates that fit into Elvui
	["showhealth"] = true,				   -- show health text on nameplate
	["enhancethreat"] = true,			   -- threat features based on if your a tank or not
	["combat"] = false,					   -- only show enemy nameplates in-combat.
	["goodcolor"] = {r = 75/255,  g = 175/255, b = 76/255},			--good threat color (tank shows this with threat, everyone else without)
	["badcolor"] = {r = 0.78, g = 0.25, b = 0.25},					--bad threat color (opposite of above)
	["transitioncolor"] = {r = 218/255, g = 197/255, b = 92/255},	--threat color when gaining threat
	["trackauras"] = false,				   -- track players debuffs only (debuff list derived from classtimer spell list)
	["trackccauras"] = true,			   -- track all CC debuffs
}

DB["datatext"] = {
	["stat1"] = 1,						   -- stat Based on your Role (Avoidance-Tank, AP-Melee, SP/HP-Caster)
	["stat2"] = 2, 						   -- stat Based on your Role (Armor-Tank, Crit-Melee, Crit-Caster)
	["dur"] = 3,                           -- show your equipment durability on panels.
	["guild"] = 4,                         -- show number on guildmate connected on panels
	["friends"] = 5,                       -- show number of friends connected.
	["gold"] = 6,                          -- show your current gold on panels
	["wowtime"] = 7,                       -- show time on panels
	["system"] = 8,                        -- show fps and ms on panels, and total addon memory in tooltip
	["bags"] = 0,						   -- show ammount of bag space available
	["dps_text"] = 0,					   -- show current dps
	["hps_text"] = 0,					   -- show current hps
	["currency"] = 0,					   -- show watched items in backpack
	["specswitch"] = 0,					   -- switch specs datatext
	["hit"] = 0,						   -- show hit rating
	["haste"] = 0,						   -- show haste rating
	["mastery"] = 0,					   -- show mastery rating
	["crit"] = 0,						   -- show crit rating
	["manaregen"] = 0,					   -- show mana regen values
	["masteryspell"] = false,			   -- rename mastery to it's spell name (i.e. "Divine Bulwark:" for prot paladins)
	["battleground"] = false,              -- enable 3 stats in battleground only that replace stat1,stat2,stat3.
	["time24"] = true,                     -- set time to 24h format.
	["localtime"] = true,                  -- set time to local time instead of server time.
	["fontsize"] = 12,                     -- font size for panels.
	["classcolor"] = false,
	
	["panelpos"] = "CENTER", 		   -- Center or Sides
}

DB["chat"] = {
	["enable"] = true,                     -- blah
	["whispersound"] = true,               -- play a sound when receiving whisper
	["showbackdrop"] = true,			   -- show a backdrop on the chat panels
	["chatwidth"] = 348,				   -- width of chat frame
	["chatheight"] = 111,				   -- height of chat frame
	["fadeoutofuse"] = true,			   -- fade chat text when out of use
	["sticky"] = true,					   -- when opening the chat edit box resort to previous channel
	["combathide"] = "NONE",			   -- Set to "Left", "Right", "Both", or "NONE"
	["bubbles"] = true,					   -- skin blizzard chat bubbles
}

DB["tooltip"] = {
	["enable"] = true,                     -- true to enable this mod, false to disable
	["hidecombat"] = false,                -- hide bottom-right tooltip when in combat
	["hidecombatraid"] = false,			   -- only hide in combat in a raid instance
	["hidebuttons"] = false,               -- always hide action bar buttons tooltip.
	["hideuf"] = false,                    -- hide tooltip on unitframes
	["cursor"] = false,                    -- show anchored to cursor
	["colorreaction"] = false,			   -- always color border of tooltip by unit reaction
	["itemid"] = true,					   -- display itemid on item tooltips 
	["whotargetting"] = true,			   -- show who is targetting the unit (in raid or party)
}

DB["others"] = {
	["pvpautorelease"] = false,            -- enable auto-release in bg or wintergrasp.
	["errorenable"] = true,                -- true to enable this mod, false to disable
	["autoacceptinv"] = true,              -- auto-accept invite from guildmate and friends.
	["enablebag"] = true,                  -- enable an all in one bag mod that fit Elvui perfectly
	

	["lootframe"] = true,                  -- reskin the loot frame to fit Elvui
	["rolllootframe"] = true,              -- reskin the roll frame to fit Elvui
	["autogreed"] = true,                  -- auto-dez or auto-greed item at max level.	
	["sellgrays"] = true,                  -- automaticly sell grays?
	["autorepair"] = false,                -- automaticly repair?
	
	["buffreminder"] = true,               -- this is now the new innerfire warning script for all armor/aspect class.
	["remindersound"] = true,              -- enable warning sound notification for reminder.
	["raidbuffreminder"] = false,		   -- buffbar below the minimap, important missing buffs	
	["announceinterrupt"] = "SAY",		   -- announce in party/raid/say when you interrupt
	["showthreat"] = true,                 -- enable the threat bar anchored to info right panel.
	["minimapauras"] = true,			   -- enable minimap auras		
}