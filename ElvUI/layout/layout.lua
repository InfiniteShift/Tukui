local E, C, L, DB = unpack(select(2, ...)) -- Import Functions/Constants, Config, Locales

-- BUTTON SIZES
E.buttonsize = E.Scale(C["actionbar"].buttonsize)
E.buttonspacing = E.Scale(C["actionbar"].buttonspacing)
E.petbuttonsize = E.Scale(C["actionbar"].petbuttonsize)
E.buttonspacing = E.Scale(C["actionbar"].buttonspacing)
E.minimapsize = E.Scale(168)

--BOTTOM PANEL

local f = CreateFrame("Frame", "ElvuiBottomPanel", UIParent)
f:SetHeight(23)
f:SetWidth(UIParent:GetWidth() + (E.mult * 2))
f:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", -E.mult, -E.mult)
f:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", E.mult, -E.mult)
f:SetFrameStrata("BACKGROUND")
f:SetFrameLevel(0)

if C["general"].lowerpanel == true then	
	f:SetTemplate("Transparent")
	f:CreateShadow("Default")
end

--TOP PANEL
if C["general"].upperpanel == true then
	local f = CreateFrame("Frame", "ElvuiTopPanel", UIParent)
	f:SetHeight(23)
	f:SetWidth(UIParent:GetWidth() + (E.mult * 2))
	f:SetPoint("TOPLEFT", UIParent, "TOPLEFT", -E.mult, E.mult)
	f:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", E.mult, E.mult)
	f:SetFrameStrata("BACKGROUND")
	f:SetFrameLevel(0)
	f:SetTemplate("Transparent")
	f:CreateShadow("Default")
	
	local f = CreateFrame("Frame", "ElvuiLoc", ElvuiTopPanel)
	f:SetHeight(23)
	f:SetWidth(E.minimapsize)
	f:SetFrameLevel(2)
	f:SetTemplate("Default", true)
	f:CreateShadow("Default")
	f:Point("CENTER", ElvuiTopPanel, "BOTTOM")
	
	local f = CreateFrame("Frame", "ElvuiLocX", ElvuiLoc)
	f:SetHeight(23)
	f:SetWidth(E.minimapsize / 6)
	f:SetFrameLevel(2)
	f:SetTemplate("Default", true)
	f:CreateShadow("Default")
	f:Point("RIGHT", ElvuiLoc, "LEFT", -2, 0)	
	
	local f = CreateFrame("Frame", "ElvuiLocY", ElvuiLoc)
	f:SetHeight(23)
	f:SetWidth(E.minimapsize / 6)
	f:SetFrameLevel(2)
	f:SetTemplate("Default", true)
	f:CreateShadow("Default")
	f:Point("LEFT", ElvuiLoc, "RIGHT", 2, 0)	

	local f = CreateFrame("Frame", "ElvuiStat9Block", ElvuiTopPanel)
	f:SetHeight(23)
	f:SetWidth(E.minimapsize / 1.3)
	f:SetFrameLevel(2)
	f:SetTemplate("Default", true)
	f:CreateShadow("Default")
	f:Point("RIGHT", ElvuiLocX, "LEFT", -6, 0)			
	
	local f = CreateFrame("Frame", "ElvuiStat10Block", ElvuiTopPanel)
	f:SetHeight(23)
	f:SetWidth(E.minimapsize / 1.3)
	f:SetFrameLevel(2)
	f:SetTemplate("Default", true)
	f:CreateShadow("Default")
	f:Point("LEFT", ElvuiLocY, "RIGHT", 6, 0)		
end

local mini = CreateFrame("Frame", "ElvuiMinimap", Minimap)
mini:CreatePanel("Default", E.minimapsize, E.minimapsize, "CENTER", Minimap, "CENTER", -0, 0)
mini:ClearAllPoints()
mini:SetPoint("TOPLEFT", E.Scale(-2), E.Scale(2))
mini:SetPoint("BOTTOMRIGHT", E.Scale(2), E.Scale(-2))
ElvuiMinimap:CreateShadow("Default")
TukuiMinimap = ElvuiMinimap -- conversion

-- MINIMAP STAT FRAMES
if ElvuiMinimap then
	local minimapstatsleft = CreateFrame("Frame", "ElvuiMinimapStatsLeft", ElvuiMinimap)
	minimapstatsleft:CreatePanel("Default", ((E.minimapsize / 3) + 5), 19, "BOTTOM", ElvuiMinimap, "BOTTOM", 0, E.Scale(4))
	minimapstatsleft:SetFrameLevel(ElvuiMinimap:GetFrameLevel() + 2)

	local minimapstatsright = CreateFrame("Frame", "ElvuiMinimapStatsRight", ElvuiMinimap)
	minimapstatsright:CreatePanel("Default", E.minimapsize, 19, "TOP", ElvuiMinimap, "BOTTOM", 0, E.Scale(-3))
	ElvuiMinimapStatsLeft:SetTemplate("Transparent", true)
	ElvuiMinimapStatsRight:SetTemplate("Default", true)
	ElvuiMinimapStatsLeft:CreateShadow("Default")
	ElvuiMinimapStatsRight:CreateShadow("Default")
	
	TukuiMinimapStatsLeft = ElvuiMinimapStatsLeft -- conversion
	TukuiMinimapStatsRight = ElvuiMinimapStatsRight -- conversion
end

-- MAIN ACTION BAR
local barbg = CreateFrame("Frame", "ElvuiActionBarBackground", UIParent)
barbg:CreatePanel("Default", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, E.Scale(4))
barbg:SetWidth(math.ceil((E.buttonsize * 12) + (E.buttonspacing * 13)))
barbg:SetFrameStrata("BACKGROUND")
barbg:SetHeight(E.buttonsize + (E.buttonspacing * 2))
barbg:CreateShadow("Default")
barbg:SetFrameLevel(2)

if C["actionbar"].enable ~= true then
	barbg:SetAlpha(0)
end

--SPLIT BAR PANELS
local splitleft = CreateFrame("Frame", "ElvuiSplitActionBarLeftBackground", ElvuiActionBarBackground)
splitleft:CreatePanel("Default", (E.buttonsize * 3) + (E.buttonspacing * 4), ElvuiActionBarBackground:GetHeight(), "RIGHT", ElvuiActionBarBackground, "LEFT", E.Scale(-4), 0)
splitleft:SetFrameLevel(ElvuiActionBarBackground:GetFrameLevel())
splitleft:SetFrameStrata(ElvuiActionBarBackground:GetFrameStrata())

local splitright = CreateFrame("Frame", "ElvuiSplitActionBarRightBackground", ElvuiActionBarBackground)
splitright:CreatePanel("Default", (E.buttonsize * 3) + (E.buttonspacing * 4), ElvuiActionBarBackground:GetHeight(), "LEFT", ElvuiActionBarBackground, "RIGHT", E.Scale(4), 0)
splitright:SetFrameLevel(ElvuiActionBarBackground:GetFrameLevel())
splitright:SetFrameStrata(ElvuiActionBarBackground:GetFrameStrata())

splitleft:CreateShadow("Default")
splitright:CreateShadow("Default")


-- RIGHT BAR
if C["actionbar"].enable == true then
	local barbgr = CreateFrame("Frame", "ElvuiActionBarBackgroundRight", ElvuiActionBarBackground)
	barbgr:CreatePanel("Default", 1, (E.buttonsize * 12) + (E.buttonspacing * 13), "RIGHT", UIParent, "RIGHT", E.Scale(-4), E.Scale(-8))
	barbgr:Hide()
	barbgr:SetFrameLevel(2)
	
	local petbg = CreateFrame("Frame", "ElvuiPetActionBarBackground", UIParent)
	if C["actionbar"].bottompetbar ~= true then
		petbg:CreatePanel("Default", E.petbuttonsize + (E.buttonspacing * 2), (E.petbuttonsize * 10) + (E.buttonspacing * 11), "RIGHT", UIParent, "RIGHT", E.Scale(-6), E.Scale(-13.5))
	else
		petbg:CreatePanel("Default", (E.petbuttonsize * 10) + (E.buttonspacing * 11), E.petbuttonsize + (E.buttonspacing * 2), "TOP", ElvuiActionBarBackground, "BOTTOM", 0, E.Scale(4))
	end
	
	local ltpetbg = CreateFrame("Frame", "ElvuiLineToPetActionBarBackground", petbg)
	if C["actionbar"].bottompetbar ~= true then
		ltpetbg:CreatePanel("Default", 30, 265, "LEFT", petbg, "RIGHT", 0, 0)
	else
		ltpetbg:CreatePanel("Default", 265, 30, "BOTTOM", petbg, "TOP", 0, 0)
	end
	
	ltpetbg:SetScript("OnShow", function(self)
		self:SetFrameStrata("BACKGROUND")
		self:SetFrameLevel(0)
	end)

	
end

-- VEHICLE BAR
if C["actionbar"].enable == true then
	local vbarbg = CreateFrame("Frame", "ElvuiVehicleBarBackground", UIParent)
	vbarbg:CreatePanel("Default", 1, 1, "BOTTOM", UIParent, "BOTTOM", 0, E.Scale(4))
	vbarbg:SetWidth((E.buttonsize * 12) + (E.buttonspacing * 13))
	vbarbg:SetHeight(E.buttonsize + (E.buttonspacing * 2))
end

-- CHAT BACKGROUND LEFT (MOVES)
local chatlbgdummy = CreateFrame("Frame", "ChatLBackground", UIParent)
chatlbgdummy:SetWidth(C["chat"].chatwidth)
chatlbgdummy:SetHeight(C["chat"].chatheight+6)
if C["datatext"].panelpos == "CENTER" and C["chat"].showbackdrop == true then
	chatlbgdummy:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", E.Scale(4),  E.Scale(4))
else
	chatlbgdummy:SetPoint("BOTTOMLEFT", ElvuiBottomPanel, "TOPLEFT", E.Scale(4),  E.Scale(7))
end

-- CHAT BACKGROUND LEFT (DOESN'T MOVE THIS IS WHAT WE ATTACH FRAMES TO)
local chatlbgdummy2 = CreateFrame("Frame", "ChatLBackground2", UIParent)
chatlbgdummy2:SetWidth(C["chat"].chatwidth)
chatlbgdummy2:SetHeight(C["chat"].chatheight+6)
chatlbgdummy2:SetPoint("BOTTOMLEFT", ElvuiBottomPanel, "TOPLEFT", E.Scale(4),  E.Scale(7))

-- CHAT BACKGROUND RIGHT (MOVES)
local chatrbgdummy = CreateFrame("Frame", "ChatRBackground", UIParent)
chatrbgdummy:SetWidth(C["chat"].chatwidth)
chatrbgdummy:SetHeight(C["chat"].chatheight+6)
chatrbgdummy:SetPoint("BOTTOMRIGHT", ElvuiBottomPanel, "TOPRIGHT", E.Scale(-4),  E.Scale(7))

-- CHAT BACKGROUND RIGHT (DOESN'T MOVE THIS IS WHAT WE ATTACH FRAMES TO)
local chatrbgdummy2 = CreateFrame("Frame", "ChatRBackground2", UIParent)
chatrbgdummy2:SetWidth(C["chat"].chatwidth)
chatrbgdummy2:SetHeight(C["chat"].chatheight+6)
chatrbgdummy2:SetPoint("BOTTOMRIGHT", ElvuiBottomPanel, "TOPRIGHT", E.Scale(-4),  E.Scale(7))

E.ChatRightShown = true
if C["chat"].showbackdrop == true then
	local chatlbg = CreateFrame("Frame", "ChatLBG", ChatLBackground)
	chatlbg:SetTemplate("Transparent")
	chatlbg:SetAllPoints(chatlbgdummy)
	chatlbg:SetFrameStrata("BACKGROUND")
	
	local chatltbg = CreateFrame("Frame", "ElvuiChatLTBG", chatlbg)
	chatltbg:SetTemplate("Default", true)
	chatltbg:SetPoint("BOTTOMLEFT", chatlbg, "TOPLEFT", 0, E.Scale(3))
	chatltbg:SetPoint("BOTTOMRIGHT", chatlbg, "TOPRIGHT", E.Scale(-24), E.Scale(3))
	chatltbg:SetHeight(E.Scale(22))
	chatltbg:SetFrameStrata("BACKGROUND")
end

if C["chat"].showbackdrop == true then
	local chatrbg = CreateFrame("Frame", "ChatRBG", ChatRBackground)
	chatrbg:SetAllPoints(chatrbgdummy)
	chatrbg:SetTemplate("Transparent")
	chatrbg:SetFrameStrata("BACKGROUND")
	chatrbg:SetAlpha(0)

	local chatrtbg = CreateFrame("Frame", nil, chatrbg)
	chatrtbg:SetTemplate("Default", true)
	chatrtbg:SetPoint("BOTTOMLEFT", chatrbg, "TOPLEFT", 0, E.Scale(3))
	chatrtbg:SetPoint("BOTTOMRIGHT", chatrbg, "TOPRIGHT", E.Scale(-24), E.Scale(3))
	chatrtbg:SetHeight(E.Scale(22))
	chatrtbg:SetFrameStrata("BACKGROUND")
	chatrbg:CreateShadow("Default")
	chatrtbg:CreateShadow("Default")
end

--INFO LEFT
local infoleft = CreateFrame("Frame", "ElvuiInfoLeft", UIParent)
infoleft:SetFrameLevel(2)
infoleft:CreateShadow("Default")
infoleft:SetTemplate("Default", true)
infoleft:SetPoint("TOPLEFT", chatlbgdummy2, "BOTTOMLEFT", 0, E.Scale(-4))
infoleft:SetPoint("BOTTOMRIGHT", chatlbgdummy2, "BOTTOMRIGHT", E.Scale(-17), E.Scale(-26))

	--INFOLEFT R BUTTON
	local infoleftRbutton = CreateFrame("Button", "ElvuiInfoLeftRButton", ElvuiInfoLeft)
	infoleftRbutton:SetTemplate("Default", true)
	infoleftRbutton:SetPoint("TOPLEFT", infoleft, "TOPRIGHT", E.Scale(2), 0)
	infoleftRbutton:SetPoint("BOTTOMRIGHT", chatlbgdummy2, "BOTTOMRIGHT", 0, E.Scale(-26))
	infoleftRbutton:CreateShadow("Default")

	infoleftRbutton:FontString(nil, C["media"].font, C["general"].fontscale, "THINOUTLINE")
	infoleftRbutton.text:SetText("L")
	infoleftRbutton.text:SetPoint("CENTER")

--INFO RIGHT
local inforight = CreateFrame("Frame", "ElvuiInfoRight", UIParent)
inforight:SetTemplate("Default", true)
inforight:SetFrameLevel(2)
inforight:CreateShadow("Default")
inforight:SetPoint("TOPLEFT", chatrbgdummy2, "BOTTOMLEFT", E.Scale(17), E.Scale(-4))
inforight:SetPoint("BOTTOMRIGHT", chatrbgdummy2, "BOTTOMRIGHT", 0, E.Scale(-26))

	--INFORIGHT L BUTTON
	local inforightLbutton = CreateFrame("Button", "ElvuiInfoRightLButton", ElvuiInfoRight)
	inforightLbutton:SetTemplate("Default", true)
	inforightLbutton:SetPoint("TOPRIGHT", inforight, "TOPLEFT", E.Scale(-2), 0)
	inforightLbutton:SetPoint("BOTTOMLEFT", chatrbgdummy2, "BOTTOMLEFT", 0, E.Scale(-26))
	inforightLbutton:CreateShadow("Default")

	inforightLbutton:FontString(nil, C["media"].font, C["general"].fontscale, "THINOUTLINE")
	inforightLbutton.text:SetText("R")
	inforightLbutton.text:SetPoint("CENTER")
	
TukuiInfoLeft = ElvuiInfoLeft -- conversion
TukuiInfoRight = ElvuiInfoRight -- conversion	

if C["datatext"].panelpos == "CENTER" then
	-- Reposition Action Bar
	barbg:ClearAllPoints()
	barbg:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, (E.Scale(8)*2 + infoleft:GetHeight()))
	
	local infoheight = infoleft:GetHeight()
	local infowidth = infoleft:GetWidth()
	local infobuttonheight = infoleftRbutton:GetHeight()
	local infobuttonwidth = infoleftRbutton:GetWidth()
	
	-- Reposition Panels
	infoleft:ClearAllPoints()
	infoleft:SetHeight(infoheight)
	infoleft:SetWidth(infowidth)
	infoleft:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOM", E.Scale(-1), E.Scale(4))
	
	inforight:ClearAllPoints()
	inforight:SetHeight(infoheight)
	inforight:SetWidth(infowidth)
	inforight:SetPoint("BOTTOMLEFT", UIParent, "BOTTOM", E.Scale(1), E.Scale(4))
	
	-- Reposition Buttons
	infoleftRbutton:ClearAllPoints()
	infoleftRbutton:SetHeight(infobuttonheight)
	infoleftRbutton:SetWidth(infobuttonwidth)
	infoleftRbutton:SetPoint("TOPRIGHT", infoleft, "TOPLEFT", E.Scale(-2), 0)
	
	inforightLbutton:ClearAllPoints()
	inforightLbutton:SetHeight(infobuttonheight)
	inforightLbutton:SetWidth(infobuttonwidth)
	inforightLbutton:SetPoint("TOPLEFT", inforight, "TOPRIGHT", E.Scale(2), 0)
	
	-- Reposition Vehicle Bar
	ElvuiVehicleBarBackground:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, (E.Scale(8) + ElvuiInfoLeft:GetHeight()))
end