﻿local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("ElvuiConfig", "zhTW")
if not L then return end

--Copy the entire english file here and set values = to something
--[[
	Where it says:
	L["Auto Scale"] = true
	
	That just means thats default, you can still set it to say something else like this
	L["Auto Scale"] = "Blah blah, speaking another language, blah blah"
	
	You can post the file here for it to be added to default ElvUI files: http://www.tukui.org/forums/forum.php?id=88
	
	Credit: smithinspace
]]

--base on 2011-04-06 14:46:08 summit

local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("ElvuiConfig", "zhTW")
if not L then return end

--General
L["General Settings"] = "一般設定"
	L["ELVUI_DESC"] = "魔獸世界使用者介面-ElvUI"
	L["Auto Scale"] = "自動縮放介面"
		L["Automatically scale the User Interface based on your screen resolution"] = "根據螢幕解析度自動縮放介面比例"
	L["Scale"] = "介面縮放"
		L["Controls the scaling of the entire User Interface"] = "控制全部使用者介面縮放比例"
	L["Multisample Protection"] = "多重採樣保護"
		L["Force the Blizzard Multisample Option to be set to 1x. WARNING: Turning this off will lead to blurry borders"] = "將遊戲多重採樣預設值強制設定為1x。警告：取消此選項可能導致邊框模糊"
	L["Class Color Theme"] = "職業顏色佈景"
		L["Style all frame borders to be your class color, color unitframes to class color"] = "所有邊框及單位頭像血條使用職業顏色"
	L["Font Scale"] = "主文字大小"
		L["Set the font scale for everything in UI. Note: This doesn't effect somethings that have their own seperate options (UnitFrame Font, Datatext Font, ect..)"] = "設定所有文字大小，除了那些擁有自己的文字設定的選項，如單位頭像文字，訊息文字...等等"
	L["Resolution Override"] = "解析度設定"
		L["Set a resolution version to use. By default any screensize > 1440 is considered a High resolution. This effects actionbar/unitframe layouts. If set to None, then it will be automatically determined by your screen size"] = "設置一個解析度設定，這會影響動作列/單位頭像的初始配置，任何大於1440的螢幕解析度建議設為High，選擇None將會自動依螢幕解析度配置"
		L["Low"] = true
		L["High"] = true
		L["None"] = true
	L["Layout Override"] = "介面配置設定"
		L["Force a specific layout to show."] = "強制使用特定介面配置"
		L["DPS"] = true
		L["Heal"] = true
	L["Sharp Borders"] = "銳利化邊緣"
		L["Enhance the borders on all frames by making a dark outline around the edges. You will probably need to disable this if you do not play in your monitors max resolution."] = "藉由將外框畫上黑色底框強化邊緣效果, 如果你不是使用你螢幕的最佳解析度, 可能需要取消這個選項"
	L["Upper Frame"] = "上方框架"
		L["Enable a bar accross the top of the screen, doing this will move the location and coords texts to that bar, and also allow for spaces nine and ten of the datatexts to be used."] = "啟用螢幕上方框架,  啟用可以讓你使用位置9 和 10"
	L["Lower Frame"] = "下方框架"
		L["Enable a bar accross the bottom of the screen, mostly for decoration."] = "啟用下方框架, 目前幾乎只為了裝飾"
	L["Skin Blizzard Frames"] = true
		L["Enable Elvui style skins on Blizzard frames, such as Character Pane, Spellbook, etc. (WARNING! Still in BETA not all frames have skins yet."] = true

		
--Media
L["Media"] = "材質音效"
	L["MEDIA_DESC"] = "為ElvUI設置字型、材質、顏色、音效"
	L["Fonts"] = "字型"
		L["Font"] = "主要字型"
			L["The font that the core of the UI will use"] = "UI主要使用字型"
		L["UnitFrame Font"] = "單位頭像字型"
			L["The font that unitframes will use"] = "單位頭像使用字型"
		L["Combat Text Font"] = "戰鬥文字字型"
			L["The font that combat text will use. WARNING: This requires a game restart after changing this option."] = "戰鬥文字字型。注意：改變此選項需重新啟動遊戲"
	L["Textures"] = "材質"
		L["StatusBar Texture"] = "狀態列材質"
			L["Texture that gets used on all StatusBars"] = "所有狀態列使用的材質"
		L["Gloss Texture"] = "光亮材質"
			L["This gets used by some objects, unless gloss mode is on."] = "僅使用在一些物件上，如快捷鍵按鈕...等"
		L["Glow Border"] = "邊框光暈材質"
			L["Shadow Effect"] = "邊框陰影特效"
		L["Backdrop Texture"] = "背景材質"
			L["Used on almost all frames"] = "這將會使用在幾乎所有的框架背景"
		L["Glossy Texture Mode"] = "統一材質模式"
			L["Glossy texture gets used in all aspects of the UI instead of just on various portions."] = "所有材質將統一使用光亮材質"
	L["Colors"] = "顏色"
		L["Border Color"] = "邊框顏色"
			L["Main Frame's Border Color"] = "主要框架邊框顏色"
		L["Backdrop Color"] = "背景顏色"
			L["Main Frame's Backdrop Color"] = "主要框架背景顏色"
		L["Backdrop Fade Color"] = "背景透明度"
			L["Faded backdrop color of some frames"] = "為一些框架改變透明度"
		L["Value Color"] = "數值顏色"
			L["Value color of various text/frame objects"] = "文字/框架上的數值顏色"
	L["Sounds"] = "音效"
		L["Whisper Sound"] = "密語音效"
			L["Sound that is played when recieving a whisper"] = "收到密語時發出的音效"
		L["Warning Sound"] = "警告音效"
			L["Sound that is played when you don't have a buff active"] = "當缺少BUFF時提示警告的音效"

--Nameplates
L["Nameplates"] = "名條"
	L["NAMEPLATE_DESC"] = "為ElvUI的名條調整設定"
	L["Nameplate Options"] = "名條選項"
		L["Enable/Disable Nameplates"] = "啟用名條模組"
	L["Show Health"] = "顯示文字"
		L["Display health values on nameplates, this will also increase the size of the nameplate"] = "顯示生命文字在名條上，同時也會加高名條"
	L["Health Threat Coloring"] = "啟用仇恨上色模式"
		L["Color the nameplate's healthbar by your current threat, Example: good threat color is used if your a tank when you have threat, opposite for DPS."] = "改變名條顏色來顯示仇恨狀態。例如：如果你是坦克，獲得仇恨時將顯示安全仇恨值顏色，DPS角色則相反"
	L["Toggle Combat"] = "戰鬥切換"
		L["Toggles the nameplates off when not in combat."] = "只在戰鬥中顯示名條"
	L["Track Auras"] = "減益監視"
		L["Tracks your debuffs on nameplates."] = "在名條上顯示你施放的Debuff圖示"
	L["Track CC Debuffs"] = "控場監視"
		L["Tracks CC debuffs on nameplates from you or a friendly player"] = "在名條上顯示你或隊友施放的控場Debuff圖示"
	L["Good Color"] = "安全仇恨值顏色"
		L["This is displayed when you have threat as a tank, if you don't have threat it is displayed as a DPS/Healer"] = "安全仇恨值顏色，將根據你的角色定位決定"
	L["Bad Color"] = "危險仇恨值顏色"
		L["This is displayed when you don't have threat as a tank, if you do have threat it is displayed as a DPS/Healer"] = "危險仇恨值顏色，將根據你的角色定位決定"
	L["Transition Color"] = "流失/獲得仇恨值顏色"
		L["This color is displayed when gaining/losing threat"] = "即將獲得/失去仇恨時顯示的顏色"

--Unitframes
L["Unit Frames"] = "單位頭像"
	L["UF_DESC"] = "為單位頭像調整設定"
	L["Enable Unitframes"] = "啟用單位頭像模組"
		L["Controls the size of the unitframe font"] = "單位頭像文字大小"
	L["Low Mana Threshold"] = "過低法力警告界限"
		L["Point to warn about low mana"] = "設置過低法力警告界限點"
	L["Target Power on Player Only"] = "目標為玩家才顯示能量條"
		L["Only display power values on player units"] = "目標是玩家角色時才顯示能量值"
	L["Focus's Target"] = "專注目標的目標"
		L["Display the focus unit's target"] = "顯示專注目標的目標"
	L["Pet's Target"] = "寵物的目標"
		L["Display the pet unit's target"] = "顯示寵物的目標"
	L["Total HP/MP"] = "顯示總生命/能量值"
		L["Display the total HP/MP on all available units"] = "在所有單位上顯示總生命/能量值。不勾選將顯示當前數值及百分比"
	L["Smooth Bars"] = "平滑狀態列"
		L["Smoothly transition statusbars when values change"] = "狀態列將依數值平滑的變化"
	L["Character Portrait"] = "動態頭像"
		L["Display character portrait on available frames"] = "顯示動態頭像"
	L["Character Portrait on Health"] = "將頭像顯示在血條上"
		L["Overlay character portrait on the healthbar available frames"] = "將頭像顯示在血條上(必須開啟動態頭像選項)"
	L["Class Color"] = "依照職業上色"
		L["Color unitframes by class"] = "將單位頭像依職業上色"
	L["Health Color"] = "生命條顏色"
		L["Color of the healthbar"] = "自行定義生命條顏色"
	L["Color Health by Value"] = "生命條依數值上色"
		L["Color the health frame by current ammount of hp remaining"] = "生命條依當前生命值數值改變顏色"
	L["Custom Backdrop Color"] = "啟用生命條背景顏色"
		L["Enable using the custom backdrop color, otherwise 20% of the current health color gets used"] = "使用自行定義的生命條背景顏色，否則將依目前生命條顏色的20%濃度作為背景"
	L["Health Backdrop Color"] = "生命條背景顏色"
		L["Color of the healthbar's backdrop"] = "生命條背景顏色"
	L["Combat Feedback"] = "戰鬥文字"
		L["Enable displaying incoming damage/healing on player/target frame"] = "在玩家/目標頭像顯示戰鬥文字"
	L["Debuff Highlighting"] = "減益高亮邊框"
		L["Enable highlighting unitframes when there is a debuff you can dispel"] = "當可驅散減益效果時, 高亮度顯示框架邊框"
	L["ClassBar"] = "職業列"
		L["Display class specific bar (runebar/totembar/holypowerbar/soulshardbar/eclipsebar)"] = "啟用職業列（圖騰列、符文列、神聖能量列、靈魂裂片列、日/月蝕列）"
	L["Combat Fade"] = "非戰鬥中淡出單位頭像"
		L["Fade main unitframes out when not in combat, unless you cast or mouseover the frame"] = "非戰鬥中淡出單位頭像，除非你施法或是滑鼠移到單位頭像上"
	L["Powerbar Offset"] = "能量條位移"
		L["Detach and offset the power bar on the main unitframes"] = "將能量條由主單位頭像分離"
	L["Mini-Powerbar Theme"] = "使用小型能量條"
		L["Style the unitframes with a smaller powerbar"] = "將能量條以較小的配置顯示"
	L["Arena Frames"] = "啟用競技場框架"
	L["Boss Frames"] = "啟用首領頭像"
	L["Swing Bar"] = "自動攻擊計時條"
		L["Bar that displays time between melee attacks"] = "顯示自動攻擊的計時條"
	L["Display Aggro"] = "顯示仇恨"
		L["Enable red glow around the player frame when you have aggro"] = "啟用紅色光暈在你吸引到的單位頭像上"
		L["Change the frame's border to red when a unit has aggro"] = "當你吸引到仇恨時將頭像的邊框改成紅色的"

L["Frame Sizes"] = "單位頭像大小"
	L["Controls the size of the frame"] = "設置單位頭像大小"
	L["Player/Target Width"] = "玩家/目標頭像寬度"
	L["Player/Target Height"] = "玩家/目標頭像高度"
	L["TargetTarget, Focus, FocusTarget, Pet Width"] = "目標的目標、專注目標、專注目標的目標、寵物 頭像寬度"
	L["TargetTarget, Focus, FocusTarget, Pet Height"] = "目標的目標、專注目標、專注目標的目標、寵物 頭像高度"
	L["Arena/Boss Height"] = "競技場/首領頭像高度"
	L["Arena/Boss Width"] = "競技場/首領頭像寬度"
	L["Assist/Tank Width"] = "團隊主坦克/助攻頭像寬度"
	L["Assist/Tank Height"] = "團隊主坦克/助攻頭像高度"

L["Auras"] = "光環"
	L["Player Auras"] = "玩家光環"
		L["Display auras on frame"] = "在玩家頭像顯示光環圖示"
	L["Hide Player's Buffs"] = "隱藏玩家增益光環"
		L["Don't display player's buffs"] = "不顯示玩家增益光環在單位頭像上"
	L["Target Auras"] = "目標光環"
	L["Player's Debuffs Only"] = "只顯示由玩家施放的減益光環圖示"
		L["Only display debuffs on the targetframe that are from yourself"] = "只顯示由玩家施放的減益光環圖示在目標頭像上"
	L["Aura Timer"] = "光環時間"
		L["Display aura timer"] = "顯示光環剩餘時間"
	L["Aura Text Scale"] = "光環時間文字大小"
		L["Controls the size of the aura font"] = "設定光環時間文字大小"
	L["Arena Debuff Filter"] = "競技場框架減益光環過濾"
		L["Enable filter for arena debuffs"] = "啟用競技場框架減益光環過濾"
	L["TargetTarget Debuffs"] = "目標的目標減益光環"
	L["Focus Debuffs"] = "專注目標減益光環"
	L["Player/Target Auras in Row"] = "玩家/目標光環顯示數量"
		L["The ammount of auras displayed in a single row"] = "光環每排顯示數量，數量越少，圖示越大"
	L["Small Frames Auras in Row"] = "小型框架光環顯示數量"
	L["Raid Buff Display Size"] = "團隊框架光環圖示尺寸"

L["Castbar"] = "施法條"
	L["Enable/Disable Castbars"] = "啟用施法條模組"
	L["Castbar Latency"] = "施法條延遲"
		L["Show latency on player castbar"] = "顯示玩家施法條延遲時間"
	L["Castbar Icons"] = "施法條圖示"
		L["Show icons on castbars"] = "顯示施法條圖示"
	L["Width Player Castbar"] = "玩家施法條寬度"
	L["Width Target Castbar"] = "目標施法條寬度"
	L["Width Focus Castbar"] = "專注施法條寬度"
		L["The size of the castbar"] = "施法條尺寸"
	L["Castbar Color"] = "施法條顏色"
	L["Color of the castbar"] = "一般施法條顏色"
	L["Interrupt Color"] = "不可中斷施法條顏色"
	L["Color of the castbar when you can't interrupt the cast"] = "當施法無法中斷時，施法條顯示的顏色"

L["Power Colors"] = "能量顏色"
	L["Mana"] = "法力"
	L["Rage"] = "怒氣"
	L["Focus"] = "集中值"
	L["Energy"] = "能量"
	L["Runic Power"] = "符文能量"

--Raidframe
L["Raid Frames"] = "團隊框架"
	L["Enable Raidframes"] = "啟用團隊框架模組"
	L["RF_DESC"] = "調整團隊及小隊框架設定"
	L["Size of the buff icon on raidframes"] = "團隊框架光環圖示尺寸"
	L["Raid Buff Display"] = "團隊框架光環"
		L["Display special buffs on raidframes"] = "在團隊框架上顯示光環圖示"
	L["Fade with Range"] = "距離過遠淡出"
		L["Fade the unit out when they become out of range"] = "當距離過遠時淡出框架"
	L["Incoming Heals"] = "即將到來的治療"
		L["Show predicted incoming heals"] = "在團隊框架上顯示即將到來的治療"
	L["Out of Range Alpha"] = "距離過遠透明度"
	L["Incoming Heals"] = "即將到來的治療"
		L["Show predicted incoming heals"] = "在團隊框架上顯示即將到來的治療"
	L["Vertical Healthbar"] = "垂直顯示生命狀態列"
		L["Healthbar grows vertically instead of horizontally"] = "垂直顯示生命狀態列取代水平顯示"
	L["Player In Party"] = "小隊中顯示玩家"
		L["Show the player frame in the party layout"] = "在小隊中顯示玩家"
	L["Maintank"] = "主坦克"
	L["Mainassist"] = "主助攻"
		L["Display unit"] = "顯示此單位頭像"
	L["Party Pets"] = "小隊寵物"
	L["Disable Blizzard Frames"] = "關閉Blizzard預設框架"
	L["Health Deficit"] = "生命值缺少"
		L["Display health deficit on the frame"] = "在框架上顯示減少的生命值"
	L["DPS GridMode"] = "DPS配置格狀模式"
		L["Show the DPS layout in gridmode instead of vertical"] = "以格狀模式取代預設垂直排列的DPS模式配置"
	L["Role"] = "角色定位"
		L["Show the unit's role (DPS/Tank/healer) Note: Party frames always show this"] = "顯示角色的定位，小隊模式時將總是開啟"
	L["Party Target's"] = "小隊目標"
	L["Mouse Glow"] = "滑鼠高亮"
		L["Glow the unitframe to the unit's Reaction/Class when mouseover'd"] = "滑鼠移至目標時，高亮目標"
	L["25 Man Layout Party"] = "隊伍使用25人團隊配置"
		L["Use the 25 man layout inside a party group"] = "在隊伍中使用25人團隊配置"

--Classtimer
L["Class Timers"] = "職業計時條"
	L["CLASSTIMER_DESC"] = "調整職業計時條設定"
	L["Enable Class Timers"] = "啟用職業計時條模組"
	L["Bar Height"] = "計時條高度"
		L["Controls the height of the bar"] = "調整計時條高度"
	L["Bar Spacing"] = "計時條間距"
		L["Controls the spacing in between bars"] = "調整計時條間距"
	L["Icon Position"] = "計時條圖示位置"
		L["0 = Left\n1 = Right\n2 = Outside Left\n3 = Outside Right"] = "0 = 左邊\n1 = 右邊\n2 = 外面左邊\n3 = 外面右邊"
	L["Layout"]	 = "佈局"
		L["LAYOUT_DESC"] = "1 - 統一顯示在玩家框架上方。\n2 - 玩家、目標光環分隔成2個框架顯示在玩家框架上方。\n3 - 玩家、目標、飾品光環分隔成3個框架顯示在玩家框架上方。\n4 - 玩家、飾品光環顯示在玩家框架上方，目標光環顯示在目標框架上方。\n 5 - 統一顯示在玩家框架上方，但不顯示目標減益光環"
	L["Spark"] = "閃動"
		L["Display spark"] = "顯示閃動"
	L["Cast Seperator"] = "分隔計時條類型"
	L["Buff"] = "增益"
	L["Debuff"] = "減益"
	L["Proc"] = "觸發"

--Actionbar
L["Action Bars"] = "動作列"
	L["AB_DESC"] = "調整動作列及冷卻文字設定"
	L["Hotkey Text"] = "熱鍵文字"
		L["Display hotkey text on action buttons"] = "在動作列按鈕上顯示熱鍵文字"
	L["Right Bar on Mouseover"] = "滑鼠觸發右側動作列"
		L["Hide the right action bar unless mouseovered"] = "當滑鼠移過右側動作列時才顯示"
	L["Shape Shift Bar"] = "姿態列"
		L["Hide the shape shift action bar"] = "隱藏姿態列"
	L["Shape Shift on Mouseover"] = "滑鼠觸發姿態列"
		L["Hide the shape shift action bar unless mouseovered"] = "當滑鼠移過姿態列時才顯示"
	L["Vertical Shape Shift"] = "垂直顯示姿態列"
		L["Make the shape shift bar grow vertically instead of horizontally"] = "垂直顯示姿態列取代水平顯示"
	L["Display Grid"] = "顯示空按鈕"
		L["Display grid backdrop behind empty buttons"] = "空按鈕仍然顯示邊框"
	L["Pet Bar below main actionbar"] = "寵物動作列顯示在主要動作列下方"
		L["Positions the pet bar below the main actionbar instead of to the right side of the screen"] = "在主動作列下方顯示寵物動作列，否則顯示在右側動作列左方"
	L["Button Size"] = "動作列按鈕尺寸"
	L["Button Spacing"] = "動作列按鈕間距"
	L["Pet Button Size"] = "寵物動作列按鈕尺寸"
	L["Main actionbar on top"] = "主動作列位置"
		L["Positions the main actionbar above all other actionbars"] = "將主動作列位置顯示在所有動作列上方，否則顯示在最下方"
	L["Macro Text"] = "巨集文字"
	L["Micro Bar"] = "微型選單"
		L["Display blizzards default microbar, this will disable the right click menu on minimap"] = "顯示微型選單在螢幕最左上角，否則為在迷你地圖上點擊右鍵顯示"
	L["Micro Bar on Mouseover"] = "滑鼠顯示微型選單"
		L["Display blizzards default microbar when mouseovered"] = "當滑鼠移過微型選單時才顯示微型選單"
	L["Cooldown Text"] = "冷卻文字"
	L["Threshold"] = "界限"
		L["Threshold before turning text red and displaying decimal places"] = "於CD剩下X秒時轉變成倒數到期文字顏色"
	L["Expiring"] = "到期文字"
		L["This gets displayed when your below the threshold"] = "倒數到期文字顏色"
	L["Seconds"] = "秒"
	L["Minutes"] = "分"
	L["Hours"] = "時"
	L["Days"] = "天"

--Datatext
L["Data Texts"] = "訊息文字"
	L["DATATEXT_DESC"] = "編輯訊息文字位置"
	L["DATATEXT_POS"] = "\n\n0 - 關閉\n1 - 左邊面板的左邊\n2 - 左邊面板的中央\n3 - 左邊面板的右邊\n4 - 右邊面板的左邊\n5 - 右邊面板的中央\n6 - 右邊面板的右邊\n7 - 迷你地圖左邊\n8 - 迷你地圖右邊"
	L["DATATEXT_POS2"] = "\n\n0 - 關閉\n1 - 左邊面板的左邊\n2 - 左邊面板的中央\n3 - 左邊面板的右邊\n4 - 左邊面板的右邊\n5 - 右邊面板的中央\n6 - 右邊面板的右邊\n7 - 迷你地圖左邊\n8 - 迷你地圖右邊\n9 - 上方框架左邊\n10 - 上方框架右邊"
	L["Text Positions"] = "訊息文字位置"
	L["Mastery Spell"] = true
		L["Display the mastery spell on the mastery datatext"] = true
	L["BG Text"] = "戰場訊息文字"
		L["Display special datatexts when inside a battleground"] = "進入戰場時顯示戰場專用訊息文字"
		L["Font size for datatexts"] = "訊息文字文字大小"
	L["24-Hour Time"] = "使用24小時制"
		L["Display time datatext on a 24 hour time scale"] = "時間文字使用24小時制"
	L["Local Time"] = "使用當地時間"
		L["Display local time instead of server time"] = "時間文字使用當地時間"
		L["Color the datatext values based on your class"] = "根據職業上色"
	L["Stat #1"] = "角色主要能力"
		L["Display stat based on your role (Avoidance-Tank, AP-Melee, SP/HP-Caster)"] = "根據你的角色定位顯示主要能力，坦克-免傷、近戰-AP、法系-法能"
	L["Durability"] = "裝備耐久度"
		L["Display your current durability"] = "顯示你的裝備耐久度，點擊顯示角色視窗"
	L["Stat #2"] = "角色次要能力"
		L["Display stat based on your role (Armor-Tank, Crit-Melee, Crit-Caster)"] = "根據你的角色定位顯示次要能力，坦克-護甲、近戰-致命、法系-致命"
	L["System"] = "延遲及FPS"
		L["Display FPS and Latency"] = "顯示延遲及FPS，移過顯示記憶體使用量"
	L["Time"] = "時間"
		L["Display current time"] = "顯示目前時間，點擊開啟行事曆"
	L["Gold"] = "金錢"
		L["Display current gold"] = "顯示目前金錢，點擊顯示背包"
	L["Guild"] = "公會"
		L["Display current online people in guild"] = "顯示目前公會在線人員狀態"
	L["Friends"] = "好友"
		L["Display current online friends"] = "顯示目前在線好友狀態"
	L["Bags"] = "背包"
		L["Display ammount of bag space"] = "顯示背包剩餘/總共數量格數"
	L["DPS"] = "DPS"
		L["Display ammount of DPS"] = "顯示每秒傷害統計，點擊重置"
	L["HPS"] = "HPS"
		L["Display ammount of HPS"] = "顯示每秒治療統計，點擊重置"
	L["Currency"] = "兌換通貨"
		L["Display current watched items in backpack"] = "顯示你追蹤的兌換通貨數量"
	L["Talent Spec"] = "目前天賦"
		L["Display current spec"] = "顯示目前天賦，點即可切換天賦"
	L["Mastery"] = "精通"
		L["Display Mastery Rating"] = "顯示精通數值"
	L["Hit Rating"] = "命中"
		L["Display Hit Rating"] = "顯示命中數值"
	L["Haste Rating"] = "加速"
		L["Display Haste Rating"] = "顯示加速數值"
	L["Crit Rating"] = "致命一擊"
		L["Display Critical Strike Rating"] = "顯示致命一擊數值"
	L["Mana Regen"] = "法力回復"
		L["Display Mana Regen Rate"] = "顯示法力回復數值"

--chat
L["Chat"] = "聊天視窗"
	L["CHAT_DESC"] = "調整聊天視窗設定"
		L["Play a sound when receiving a whisper, this can be set in media section"] = "收到密語時發出音效，音效類型可在材質音效內設定"
	L["Chat Backdrop"] = "聊天視窗背景"
		L["Display backdrop panels behind chat window"] = "啟用聊天視窗背景"
	L["Chat Width"] = "聊天視窗寬度"
		L["Width of chatframe"] = "調整聊天視窗寬度"
	L["Chat Height"] = "聊天視窗高度"
		L["Height of chatframe"] = "調整聊天視窗高度"
	L["Fade Windows"] = "文字淡出"
		L["Fade chat windows after a long period of no activity"] = "不使用時使文字淡出"
	L["Sticky Editbox"] = "記憶頻道"
		L["When pressing enter to open the chat editbox, display the last known channel"] = "按下ENTER時，自動使用最後一個使用的頻道"
	L["Toggle Chat In Combat"] = "戰鬥中隱藏對話框"
		L["When you enter combat, the selected window will toggle out of view"] = "當你進入戰鬥時，所選擇的對話框將會隱藏"
	L["Chat Bubbles"] = "對話泡泡"
		L["Skin Blizzard's Chat Bubbles"] = "美化Blizzard的對話泡泡模組"
	L["Left"] = "左邊"
	L["Right"] = "右邊"
	L["Both"] = "兩邊"

--tooltip
L["Tooltip"] = "提示訊息"
	L["TT_DESC"] = "調整提示訊息設定"
	L["Hide Combat"] = "戰鬥中隱藏"
		L["Hide tooltip when entering combat"] = "進入戰鬥時隱藏提示訊息"
	L["Hide Combat in Raid"] = "團隊時戰鬥中隱藏"
		L["Hide tooltip when entering combat only inside a raid instance"] = "只在加入團隊時戰鬥中才隱藏提示訊息"
	L["Hide Buttons"] = "動作列按鈕提示訊息隱藏"
		L["Hide tooltip when mousing over action buttons"] = "動作列按鈕不顯示提示訊息"
	L["Hide Unit Frames"] = "單位頭像提示訊息隱藏"
		L["Hide tooltip when mousing over unit frames"] = "單位頭像不顯示提示訊息"
	L["Cursor"] = "滑鼠跟隨"
		L["Tooltip anchored to cursor"] = "提示訊息跟隨滑鼠移動"
	L["Color Reaction"] = "訊息上色"
		L["Always color border of tooltip by unit reaction"] = "提示訊息邊框及生命條依照敵對狀態上色"
	L["ItemID"] = "物品編號"
		L["Display itemid on item tooltips"] = "顯示物品及法術編號"
	L["Who's Targetting?"] = "誰的目標"
		L["Display if anyone in your party/raid is targetting the tooltip unit"] = "在提示訊息上顯示以提示訊息目標為目標的隊友"

--External Addons
L["Addon Skins"] = "插件外觀"
	L["ADDON_DESC"] = "調整插件外觀設定"
	L["Enable this skin"] = "啟用此插件外觀"
	L["Embed Right"] = "將插件綁定於右邊聊天視窗"
	L["EMBED_DESC"] = "選擇一個插件綁定於右邊聊天視窗時，提示訊息將不會掩蓋住此插件，假如你有啟用依附計時條選項，此依附計時條將會在聊天視窗隱藏時依附在此插件上"
	L["Hook KLE Bars"] = "依附KLE計時條"
	L["Attach KLE's Bars to the right window"] = "強制將KLE計時條依附於右邊對話框上方"
	L["Hook BigWigs Bars"] = "依附BigWigs計時條"
	L["Attach BigWigs's Bars to the right window"] = "強制將BigWigs依附於右邊對話框上方"

--Misc
L["Misc"] = "其他選項"
	L["MISC_DESC"] = "調整其他選項的設定"
	L["General"] = "一般設定"
	L["PVP Autorelease"] = "戰場自動放魂"
		L["Automatically release body when dead inside a bg"] = "戰場中死亡自動放魂"
	L["Hide Error Text"] = "隱藏錯誤訊息"
		L["Hide annoying red error text on center of screen"] = "隱藏螢幕中央錯誤訊息"
	L["Auto Accept Invite"] = "自動接受邀請"
		L["Automatically accept invite when invited by a friend/guildie"] = "啟用自動邀請及接受邀請 （限好友及公會會員）"
	L["Loot"] = "拾取設定"
	L["Loot Frame"] = "拾取視窗"
		L["Skin loot window"] = "美化拾取視窗"
	L["Loot Roll Frame"] = "擲骰視窗"
		L["Skin loot roll window"] = "美化擲骰視窗"
	L["Auto Greed/DE"] = "自動擲骰"
		L["Automatically roll greed or Disenchant on green quality items"] = "到達最大等級時，自動選擇貪婪或分解綠色品質裝備"
	L["Sell Grays"] = "自動販售"
		L["Automatically sell gray items when visiting a vendor"] = "拜訪商人時自動販售灰色物品"
	L["Auto Repair"] = "自動修理"
		L["Automatically repair when visiting a vendor"] = "拜訪商人時自動修理物品"
	L["Combat"] = "戰鬥設定"
	L["Buff Reminder"] = "光環提醒"
		L["Icon at center of screen when you are missing a buff, or you have a buff you shouldn't have"] = "當你缺少或獲得不應該有的光環時，在螢幕中央顯示該光環圖示"
	L["Buff Reminder Sound"] = "光環提醒音效"
		L["Play sound when icon is displayed"] = "當你缺少或獲得不應該有的光環時，發出警告音效，音效類型可在材質音效內設定"
	L["Raid Buffs Reminder"] = "團隊增益效果提醒"
		L["Icons below minimap, displayed inside instances"] = "啟用小地圖下方的團隊增益效果提醒條"
	L["Interrupt Announce"] = "斷法通知"
		L["Announce when you interrupt a spell"] = "成功斷法後廣播至預設頻道"
	L["Threat Display"] = "仇恨條顯示"
		L["Display threat in the bottomright panel"] = "在右邊聊天視窗下方顯示仇恨條"
	L["Minimap Auras"] = "小地圖旁狀態光環"
		L["Display blizzard skinned auras by the minimap"] = "美化並啟用小地圖旁狀態光環"
	L["All-In-One Bag"] = "整合背包"
		L["Enable/Disable the All-In-One Bag, you must disable this if you wish to run another bag addon"] = "啟用整合背包，如果你需要使用別種類的整合背包插件，請禁用此選項"
	L["Map Skin"] = "世界地圖"
		L["Enable/Disable the map skin"] = "啟用美化世界地圖模組"

L["Filters"] = "過濾器"
L["SPELL_FILTER_DESC"] = "過濾法術以避免出現在名條上"
	L["Aura Names"] = "光環名稱"
	L["Nameplate Names"] = "名條名稱"
	L["Choose Filter"] = "選擇過濾器"
		L["Choose the filter you want to modify."] = "選擇你想修改的過濾器"
		L["Raid Debuffs"] = "團隊減益光環"
		L["Debuff Blacklist"] = "減益光環黑名單"
		L["Debuff Whitelist"] = "減益光環白名單"
		L["Arena Buffs"] = "競技場增益光環"
		L["Target Debuffs (PvP Only)"] = "目標的減益光環(僅限PVP)"
		L["Nameplate Blacklist"] = "名條黑名單"

	L["Filter whether or not a nameplate is shown by the name of the nameplate"] = "過濾某些名稱的名條"
	L["Filter the buffs that get displayed on arena units."] = "過濾競技場的增益光環"
	L["Set buffs that will never get displayed."] = "設定增益光環永不顯示"
	L["These debuffs will always get displayed on the Target Frame, Arena Frames, and Nameplates."] = "這些減益光環將會永遠出現在目標頭像, 競技場頭像, 還有名條上"
	L["These debuffs only get displayed on the target unit when the unit happens to be an enemy player."] = "這些減益光環將只會出現在目標是敵對玩家時"
	L["These debuffs will be displayed on your raid frames in addition to any debuff that is dispellable."] = "只有可驅散的減益光環會出現在團隊頭像上"

	L["New name"] = "新增法術名稱"
		L["Add a new name to the list."] = "增加新的法術名稱到列表中"
	L["Remove name"] = "移除法術名稱"
		L["Remove a name from the list."] = "將列表中的某個法術名稱移除"
	L["You may only delete spells that you have added. Default spells can be disabled by unchecking the option"] = "你可能刪除了你增加的法術名稱, 預設的法術名稱可以藉由取消選取來禁用"
	L["Spell not found in list"] = "列表中找不到這個法術名稱"

--Profiles
L["Profiles"] = "配置檔"
L["CFG_RELOAD"] = "此設定更動需要重新讀取插件，請在所有設定完成後點選接受並自動重新讀取"