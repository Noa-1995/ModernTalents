------------------------------------------------------          
-- ModernTalents v3.3.0 - Con Sistema de Glifos, Assets y Pet Talents        
-- Funcional en WotLK 3.3.5a (AzerothCore)
-- Autores: Clancy - Noa
------------------------------------------------------ 
if not IsAddOnLoaded("Blizzard_TalentUI") then          
    LoadAddOn("Blizzard_TalentUI")          
end          
if not IsAddOnLoaded("Blizzard_GlyphUI") then          
    LoadAddOn("Blizzard_GlyphUI")          
end          
print("[ModernTalents] Addon loaded successfully")          
      
PLAYER_TALENTS_PER_TIER = 5      
PET_TALENTS_PER_TIER = 3      
          
------------------------------------------------------          
          
if PlayerTalentFrame then          
    PlayerTalentFrame:UnregisterAllEvents()          
    PlayerTalentFrame:Hide()          
    PlayerTalentFrame:SetScript("OnShow", function(self)          
        self:Hide()          
    end)          
end          
          
if TalentFrame then          
    TalentFrame:UnregisterAllEvents()          
    TalentFrame:Hide()          
    TalentFrame:SetScript("OnShow", function(self)          
        self:Hide()          
    end)          
end          
          
local ModernTalentsFrame = CreateFrame("Frame", "ModernTalentsFrame", UIParent)          
ModernTalentsFrame:SetSize(1100, 650)          
ModernTalentsFrame:SetPoint("CENTER", 0, 50)          
ModernTalentsFrame:SetMovable(true)          
ModernTalentsFrame:EnableMouse(true)          
ModernTalentsFrame:RegisterForDrag("LeftButton")          
ModernTalentsFrame:SetScript("OnDragStart", ModernTalentsFrame.StartMoving)          
ModernTalentsFrame:SetScript("OnDragStop", ModernTalentsFrame.StopMovingOrSizing)          
ModernTalentsFrame:SetFrameStrata("DIALOG")          
ModernTalentsFrame:Hide()     
        
local currentMode = "talents"          
local currentTab = 1          
local currentPetTab = 1        
local className = select(2, UnitClass("player")) or "Unknown"          
local showPetTalents = false        
          
local metalBorder = CreateFrame("Frame", "ModernTalentsMetalBorder", ModernTalentsFrame)          
metalBorder:SetPoint("TOPLEFT", -15, 30)          
metalBorder:SetPoint("BOTTOMRIGHT", 5, -5)          
metalBorder:SetFrameLevel(10)          
          
local cornerTL = metalBorder:CreateTexture(nil, "ARTWORK")          
cornerTL:SetSize(75, 75)          
cornerTL:SetPoint("TOPLEFT", 0, 0)          
cornerTL:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\UIFrameMetal2xD")          
cornerTL:SetTexCoord(0.00195312, 0.294922, 0.298828, 0.591797)          
          
local cornerTR = metalBorder:CreateTexture(nil, "ARTWORK")          
cornerTR:SetSize(75, 75)          
cornerTR:SetPoint("TOPRIGHT", 0, 0)          
cornerTR:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\UIFrameMetal2xD")          
cornerTR:SetTexCoord(0.298828, 0.591797, 0.00195312, 0.294922)          
          
local cornerBL = metalBorder:CreateTexture(nil, "ARTWORK")          
cornerBL:SetSize(32, 32)          
cornerBL:SetPoint("BOTTOMLEFT", 0, 0)          
cornerBL:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\UIFrameMetal2xD")          
cornerBL:SetTexCoord(0.298828, 0.423828, 0.298828, 0.423828)          
          
local cornerBR = metalBorder:CreateTexture(nil, "ARTWORK")          
cornerBR:SetSize(32, 32)          
cornerBR:SetPoint("BOTTOMRIGHT", 0, 0)          
cornerBR:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\UIFrameMetal2xD")          
cornerBR:SetTexCoord(0.427734, 0.552734, 0.298828, 0.423828)          
          
local borderTop = metalBorder:CreateTexture(nil, "ARTWORK")          
borderTop:SetHeight(75)          
borderTop:SetPoint("TOPLEFT", cornerTL, "TOPRIGHT", 0, 0)          
borderTop:SetPoint("TOPRIGHT", cornerTR, "TOPLEFT", 0, 0)          
borderTop:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\uiframemetalhorizontal2xD")          
borderTop:SetTexCoord(0, 0.5, 0.00390625, 0.589844)          
borderTop:SetHorizTile(true)          
          
local borderLeft = metalBorder:CreateTexture(nil, "ARTWORK")          
borderLeft:SetWidth(75)          
borderLeft:SetPoint("TOPLEFT", cornerTL, "BOTTOMLEFT", 0, 0)          
borderLeft:SetPoint("BOTTOMLEFT", cornerBL, "TOPLEFT", 0, 0)          
borderLeft:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\uiframemetalvertical2xD")          
borderLeft:SetTexCoord(0.00195312, 0.294922, 0, 1)          
borderLeft:SetVertTile(true)          
          
local borderRight = metalBorder:CreateTexture(nil, "ARTWORK")          
borderRight:SetWidth(75)          
borderRight:SetPoint("TOPRIGHT", cornerTR, "BOTTOMRIGHT", 0, 0)          
borderRight:SetPoint("BOTTOMRIGHT", cornerBR, "TOPRIGHT", 0, 0)          
borderRight:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\uiframemetalvertical2xD")          
borderRight:SetTexCoord(0.298828, 0.591797, 0, 1)          
borderRight:SetVertTile(true)          
          
local borderBottom = metalBorder:CreateTexture(nil, "ARTWORK")          
borderBottom:SetHeight(32)          
borderBottom:SetPoint("BOTTOMLEFT", cornerBL, "BOTTOMRIGHT", 0, 0)          
borderBottom:SetPoint("BOTTOMRIGHT", cornerBR, "BOTTOMLEFT", 0, 0)          
borderBottom:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\uiframemetalhorizontal2xD")          
borderBottom:SetTexCoord(0, 1, 0.597656, 0.847656)          
borderBottom:SetHorizTile(true)    
    
local background = ModernTalentsFrame:CreateTexture(nil, "BACKGROUND")          
background:SetAllPoints()    
    
local decorativeTexture = ModernTalentsFrame:CreateTexture(nil, "BORDER")    
decorativeTexture:SetSize(1100, 150)    
decorativeTexture:SetPoint("BOTTOM", ModernTalentsFrame, "BOTTOM", 0, -35)    
decorativeTexture:SetTexture("Interface\\FrameGeneral\\UIFrameMetalHorizontal2xD.blp")    
decorativeTexture:SetTexCoord(0, 0.5, 0.589844, 0.00390625)    
          
local background = ModernTalentsFrame:CreateTexture(nil, "BACKGROUND")          
background:SetAllPoints()          

local function UpdateClassBackground()        
    if currentMode == "glyphs" then        
        local bgFile, bgCoords = ModernTalentsAssets:GetGlyphBackground()        
        if bgFile then        
            background:SetTexture(bgFile)        
            if bgCoords then        
                background:SetTexCoord(unpack(bgCoords))        
            end        
        else        
            background:SetTexture("Interface\\Spellbook\\UI-GlyphFrame")        
            background:SetVertexColor(0.1, 0.1, 0.3, 0.8)        
        end        
        background:SetAlpha(1.0)        
        return        
    end        
            
    local classNameBg = select(2, UnitClass("player"))        
    if not classNameBg then return end        
        
    local bgFile, bgCoords = ModernTalentsAssets:GetSpecBackground(classNameBg, currentTab)        
            
    if bgFile then        
        background:SetTexture(bgFile)        
        if bgCoords then        
            background:SetTexCoord(unpack(bgCoords))        
        end        
    else        
        background:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background-Dark")        
        background:SetVertexColor(0.1, 0.1, 0.1, 0.8)        
    end        
    background:SetAlpha(1.0)        
end          
          
local originalPoint = {"CENTER", UIParent, "CENTER", 0, 50}          
          
local function ResetFramePosition()          
    ModernTalentsFrame:ClearAllPoints()          
    ModernTalentsFrame:SetPoint(unpack(originalPoint))          
end          
          
local closeButton = CreateFrame("Button", nil, ModernTalentsFrame, "UIPanelCloseButton")          
closeButton:SetPoint("TOPRIGHT", ModernTalentsFrame, "TOPRIGHT", 6, 17)          
closeButton:SetFrameLevel(20)          
closeButton:SetScript("OnClick", function()          
    PlaySound(830)          
    HideUIPanel(ModernTalentsFrame)          
    ResetFramePosition()          
end)          
          
tinsert(UISpecialFrames, "ModernTalentsFrame")          
ModernTalentsFrame:HookScript("OnHide", function()              
    PlaySound(830)              
    ResetFramePosition()        
            
    if showPetTalents then  
        showPetTalents = false  
        petContainer:Hide()  
        for _, btn in ipairs(petTabButtons) do  
            btn:Hide()  
        end  
        petBtn:SetText("Pet Talents")  
    end  
      
    for _, slot in ipairs(glyphButtons) do        
        if slot and slot.loadingBar then        
            slot.loadingBar:Hide()        
            slot.loadingBar:SetScript("OnUpdate", nil)        
        end        
    end        
end)       
          
local header = ModernTalentsFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")          
header:SetPoint("TOP", 0, -15)          
local classKey = select(2, UnitClass("player"))    
local localizedClass = ModernTalentsLocales:GetLocalizedClassName(classKey)    
header:SetText(localizedClass .. " - Talent Points")         
header:SetTextColor(1, 0.82, 0)          
          
local pointsText = ModernTalentsFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")          
pointsText:SetPoint("TOP", header, "BOTTOM", 0, -5)          
pointsText:SetText("0 Available Points")          
pointsText:SetTextColor(1, 0.82, 0)          
          
local descPanel = CreateFrame("Frame", nil, ModernTalentsFrame)          
descPanel:SetSize(220, 350)          
descPanel:SetPoint("TOPLEFT", 20, -70)          
descPanel:SetBackdrop({          
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",          
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",          
    tile = true, tileSize = 16, edgeSize = 12,          
    insets = { left = 3, right = 3, top = 3, bottom = 3 }          
})          
    
local classIcon = descPanel:CreateTexture(nil, "ARTWORK")    
classIcon:SetSize(60, 60)    
classIcon:SetPoint("TOPLEFT", descPanel, "TOPLEFT", -28, 92)    
    
local branchIconFrame = CreateFrame("Frame", nil, descPanel)
branchIconFrame:SetSize(48, 48)
branchIconFrame:SetPoint("TOPLEFT", 10, -10)

local branchIcon = branchIconFrame:CreateTexture(nil, "ARTWORK")          
branchIcon:SetSize(44, 44)
branchIcon:SetPoint("CENTER")
branchIcon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

local branchBorder = branchIconFrame:CreateTexture(nil, "OVERLAY")          
branchBorder:SetSize(48, 48)          
branchBorder:SetPoint("CENTER")          
branchBorder:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")          
branchBorder:SetTexCoord(0.306640625, 0.370656250, 0.297851563, 0.422976563)          
          
local descTitle = descPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")          
descTitle:SetPoint("LEFT", branchIcon, "RIGHT", 10, 0)          
descTitle:SetTextColor(1, 0.82, 0)          
          
local descText = descPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")          
descText:SetPoint("TOPLEFT", branchIcon, "BOTTOMLEFT", 0, -10)          
descText:SetJustifyH("LEFT")          
descText:SetWidth(200)          
          
local treeIcons = {}          
local treeIconFrames = {}
local treeTexts = {}          
local ICON_SPACING = 30          
for i = 1, 4 do          
    local iconFrame = CreateFrame("Frame", nil, descPanel)
    iconFrame:SetSize(24, 24)
    iconFrame:SetPoint("TOPLEFT", descText, "BOTTOMLEFT", 0, -i * ICON_SPACING - 10)
    table.insert(treeIconFrames, iconFrame)
    
    local icon = iconFrame:CreateTexture(nil, "ARTWORK")          
    icon:SetSize(20, 20)
    icon:SetPoint("CENTER")
    icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")          
    table.insert(treeIcons, icon)          

    local iconBorder = iconFrame:CreateTexture(nil, "OVERLAY")          
    iconBorder:SetSize(34, 34)          
    iconBorder:SetPoint("CENTER")          
    iconBorder:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")          
    iconBorder:SetTexCoord(0.370605469, 0.427734375, 0.829101563, 0.944335938)    
    
    local txt = descPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")          
    txt:SetPoint("LEFT", iconFrame, "RIGHT", 5, 0)          
    txt:SetText("Tree " .. i)          
    txt:SetTextColor(1, 0.82, 0)          
    table.insert(treeTexts, txt)          
end

local legendPanel = CreateFrame("Frame", nil, ModernTalentsFrame)    
legendPanel:SetSize(310, 90)    
legendPanel:SetPoint("TOPLEFT", descPanel, "BOTTOMLEFT", 0, -10)    
legendPanel:SetBackdrop({    
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",    
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",    
    tile = true, tileSize = 16, edgeSize = 12,    
    insets = { left = 3, right = 3, top = 3, bottom = 3 }    
})    
    
local legendIcons = {}    
local legendTexts = {}    
local LEGEND_SPACING = 135    
    
local icon1 = legendPanel:CreateTexture(nil, "ARTWORK")    
icon1:SetSize(20, 20)    
icon1:SetPoint("LEFT", 10, -20)    
icon1:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")    
table.insert(legendIcons, icon1)    
    
local txt1 = legendPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
txt1:SetPoint("LEFT", icon1, "RIGHT", 5, 0)    
txt1:SetText("Learning talent")    
txt1:SetTextColor(1, 1, 1)    
table.insert(legendTexts, txt1)    
    
local icon2 = legendPanel:CreateTexture(nil, "ARTWORK")    
icon2:SetSize(20, 20)    
icon2:SetPoint("LEFT", 20 + LEGEND_SPACING, -20)    
icon2:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")    
table.insert(legendIcons, icon2)    
    
local txt2 = legendPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
txt2:SetPoint("LEFT", icon2, "RIGHT", 5, 0)    
txt2:SetText("Required talent")    
txt2:SetTextColor(1, 1, 1)    
table.insert(legendTexts, txt2)    
    
local icon3 = legendPanel:CreateTexture(nil, "ARTWORK")    
icon3:SetSize(20, 20)    
icon3:SetPoint("LEFT", 10, 0)    
icon3:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")    
table.insert(legendIcons, icon3)    
    
local txt3 = legendPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
txt3:SetPoint("LEFT", icon3, "RIGHT", 5, 0)    
txt3:SetText("Completed talent")    
txt3:SetTextColor(1, 1, 1)    
table.insert(legendTexts, txt3)    
    
local icon4 = legendPanel:CreateTexture(nil, "ARTWORK")    
icon4:SetSize(20, 20)    
icon4:SetPoint("LEFT", 20 + LEGEND_SPACING, 0)    
icon4:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")    
table.insert(legendIcons, icon4)    
    
local txt4 = legendPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
txt4:SetPoint("LEFT", icon4, "RIGHT", 5, 0)    
txt4:SetText("Unlocks others")    
txt4:SetTextColor(1, 1, 1)    
table.insert(legendTexts, txt4)    
    
local icon5 = legendPanel:CreateTexture(nil, "ARTWORK")    
icon5:SetSize(20, 20)    
icon5:SetPoint("LEFT", 10, 20)    
icon5:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")    
table.insert(legendIcons, icon5)    
    
local txt5 = legendPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
txt5:SetPoint("LEFT", icon5, "RIGHT", 5, 0)    
txt5:SetText("No points")    
txt5:SetTextColor(1, 1, 1)    
table.insert(legendTexts, txt5)    
    
local icon6 = legendPanel:CreateTexture(nil, "ARTWORK")    
icon6:SetSize(20, 20)    
icon6:SetPoint("LEFT", 20 + LEGEND_SPACING, 20)    
icon6:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")    
table.insert(legendIcons, icon6)    
    
local txt6 = legendPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
txt6:SetPoint("LEFT", icon6, "RIGHT", 5, 0)    
txt6:SetText("Unlocked talent")    
txt6:SetTextColor(1, 1, 1)    
table.insert(legendTexts, txt6)    
    
local function UpdateLegend()    
    legendIcons[1]:SetVertexColor(0.2, 0.5, 1.0)
    legendIcons[2]:SetVertexColor(1.0, 0.5, 0)
    legendIcons[3]:SetVertexColor(1.0, 0.2, 0.2)
    legendIcons[4]:SetVertexColor(0.8, 0.2, 1.0)
    legendIcons[5]:SetVertexColor(0.5, 0.5, 0.5)
    legendIcons[6]:SetVertexColor(0.2, 1.0, 0.2)
end    
    
local container = CreateFrame("Frame", nil, ModernTalentsFrame)          
container:SetSize(400, 450)          
container:SetPoint("TOPLEFT", descPanel, "TOPRIGHT", 220, 0)          
          
local glyphContainer = CreateFrame("Frame", nil, ModernTalentsFrame)          
glyphContainer:SetSize(600, 450)          
glyphContainer:SetPoint("TOPLEFT", descPanel, "TOPRIGHT", 50, 0)          
glyphContainer:Hide()     

local glyphInfoPanel = CreateFrame("Frame", "ModernGlyphInfoPanel", glyphContainer)    
glyphInfoPanel:SetSize(250, 450)    
glyphContainer:SetPoint("TOPLEFT", descPanel, "TOPRIGHT", 50, 0)  
glyphInfoPanel:SetFrameStrata("DIALOG")  
glyphInfoPanel:SetFrameLevel(100)  
glyphInfoPanel:SetBackdrop({    
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",    
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",    
    tile = true, tileSize = 16, edgeSize = 12,    
    insets = { left = 3, right = 3, top = 3, bottom = 3 }    
})  
  
glyphInfoPanel:SetBackdropColor(0, 0, 0, 0.5)
glyphInfoPanel:SetBackdropBorderColor(1, 1, 1, 0.8)
  
glyphInfoPanel:Hide() 
  
local infoPanelTitle = glyphInfoPanel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")  
infoPanelTitle:SetPoint("TOP", 0, -10)  
infoPanelTitle:SetText("Available Glyphs")  
infoPanelTitle:SetTextColor(1, 0.82, 0)  
  
local currentGlyphFilter = "MAJOR"  
  
local glyphFilterBtn = CreateFrame("Button", nil, glyphInfoPanel, "UIPanelButtonTemplate")    
glyphFilterBtn:SetSize(200, 25)    
glyphFilterBtn:SetPoint("TOP", 0, -40)
glyphFilterBtn:SetText("View Minor Glyphs")    
  
glyphFilterBtn:SetScript("OnClick", function(self)    
    if currentGlyphFilter == "MAJOR" then    
        currentGlyphFilter = "MINOR"    
    else    
        currentGlyphFilter = "MAJOR"    
    end    
    UpdateGlyphInfoPanel()    
end) 
  
local infoScrollFrame = CreateFrame("ScrollFrame", "ModernGlyphInfoScrollFrame", glyphInfoPanel, "UIPanelScrollFrameTemplate")
 
infoScrollFrame:SetPoint("TOPLEFT", 10, -75)  
infoScrollFrame:SetPoint("BOTTOMRIGHT", -30, 10)  
  
local infoScrollChild = CreateFrame("Frame", nil, infoScrollFrame)  
infoScrollChild:SetSize(300, 1)  
infoScrollFrame:SetScrollChild(infoScrollChild)  
  
local glyphInfoButtons = {}     
        
local petContainer = CreateFrame("Frame", nil, ModernTalentsFrame)        
petContainer:SetSize(400, 450)        
petContainer:SetPoint("LEFT", container, "RIGHT", 20, 0)        
petContainer:Hide()        
        
local petHeader = petContainer:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")        
petHeader:SetPoint("TOP", petContainer, "TOP", -250, -30)        
petHeader:SetText("Pet Talents")        
petHeader:SetTextColor(1, 0.82, 0)       
        
local petPointsText = petContainer:CreateFontString(nil, "OVERLAY", "GameFontNormal")        
petPointsText:SetPoint("TOP", petHeader, "BOTTOM", 0, -5)        
petPointsText:SetText("0 Available Points")        
petPointsText:SetTextColor(1, 0.82, 0)          
          
local talentButtons = {}          
local petTalentButtons = {}        
local glyphButtons = {}          
local ICON_SIZE = 32          
local COL_SPACING = 45          
local ROW_SPACING = 45          

ModernTalentsFrame:SetScript("OnHide", function(self)      
    for _, slot in ipairs(glyphButtons) do      
        if slot and slot.loadingBar then      
            slot.loadingBar:Hide()      
            slot.loadingBar:SetScript("OnUpdate", nil)      
        end      
    end      
end)    

ModernTalentsFrame:SetScript("OnUpdate", function(self, elapsed)      
    if not self:IsShown() then return end      
          
    for _, slot in ipairs(glyphButtons) do      
        if slot and slot.loadingBar and slot.loadingBar:IsShown() then      
            local speed = GetUnitSpeed("player")      
            if speed > 0 then      
                slot.loadingBar:Hide()      
                slot.loadingBar:SetScript("OnUpdate", nil)      
                UIErrorsFrame:AddMessage("Action cancelled by movement.", 1.0, 0.5, 0.0, 1.0)      
            end      
        end      
    end      
end)    

local glyphBtn = CreateFrame("Button", nil, ModernTalentsFrame, "UIPanelButtonTemplate")          
glyphBtn:SetSize(100, 24)          
glyphBtn:SetPoint("BOTTOMRIGHT", -40, 10)       
glyphBtn:SetText("Glyphs")          
glyphBtn:GetFontString():SetTextColor(1, 1, 1)          
        
local petBtn = CreateFrame("Button", nil, ModernTalentsFrame, "UIPanelButtonTemplate")        
petBtn:SetSize(140, 24)        
petBtn:SetPoint("RIGHT", glyphBtn, "LEFT", -15, 0)    
petBtn:SetText("Pet Talents")        
petBtn:GetFontString():SetTextColor(1, 1, 1)        
petBtn:Hide()       
          
local resetBtn = CreateFrame("Button", nil, ModernTalentsFrame, "UIPanelButtonTemplate")          
resetBtn:SetSize(120, 24)          
resetBtn:SetPoint("BOTTOMLEFT", 10, 10)         
resetBtn:SetText("Reset")          
resetBtn:GetFontString():SetTextColor(1, 1, 1)  
resetBtn:Hide()
        
local applyBtn = CreateFrame("Button", nil, ModernTalentsFrame, "UIPanelButtonTemplate")          
applyBtn:SetSize(120, 24)          
applyBtn:SetPoint("RIGHT", resetBtn, "RIGHT", 130, 0)      
applyBtn:SetText("Apply Changes")          
applyBtn:GetFontString():SetTextColor(1, 1, 1)  
applyBtn:Hide()
          
local tabButtons = {}          
local petTabButtons = {}        

local function UpdateHeader()    
    local localizedClass = ModernTalentsLocales:GetLocalizedClassName(className)    
        
    if currentMode == "talents" and not showPetTalents then    
        header:SetText(localizedClass .. " - Talent Points")    
            
        local talentPoints = GetUnspentTalentPoints(false, false, GetActiveTalentGroup())    
        local previewPointsSpent = GetGroupPreviewTalentPointsSpent(false, GetActiveTalentGroup())    
        local unspentPoints = talentPoints - previewPointsSpent    
            
        pointsText:SetText(unspentPoints .. " Available Points")    
            
    elseif showPetTalents and UnitExists("pet") then    
        header:SetText(localizedClass .. " - Talents")    
          
        local playerTalentPoints = GetUnspentTalentPoints(false, false, GetActiveTalentGroup())    
        local playerPreviewSpent = GetGroupPreviewTalentPointsSpent(false, GetActiveTalentGroup())    
        local unspentPlayerPoints = playerTalentPoints - playerPreviewSpent    
        pointsText:SetText(unspentPlayerPoints .. " Available Points")  
          
        local petTalentPoints = GetUnspentTalentPoints(false, true, 1)    
        local petPreviewPointsSpent = GetGroupPreviewTalentPointsSpent(true, 1)    
        local unspentPetPoints = petTalentPoints - petPreviewPointsSpent    
        petPointsText:SetText(unspentPetPoints .. " Available Points")    
            
    elseif currentMode == "glyphs" then    
        header:SetText(localizedClass .. " - GLYPHS")    
        pointsText:SetText("Glyph management")    
    end    
end 
  
local function UpdatePreviewButtons()    
    local preview = GetCVarBool("previewTalents")    
        
    if not preview or currentMode ~= "talents" then  
        resetBtn:Hide()    
        applyBtn:Hide()  
        return  
    end  
      
    local playerTalentGroup = GetActiveTalentGroup()  
    local playerTalentPoints = GetUnspentTalentPoints(false, false, playerTalentGroup)    
    local playerPreviewSpent = GetGroupPreviewTalentPointsSpent(false, playerTalentGroup)  
      
    local petTalentPoints = 0  
    local petPreviewSpent = 0  
    if UnitExists("pet") then  
        petTalentPoints = GetUnspentTalentPoints(false, true, 1)    
        petPreviewSpent = GetGroupPreviewTalentPointsSpent(true, 1)  
    end  
      
    local hasPlayerPoints = playerTalentPoints > 0  
    local hasPetPoints = petTalentPoints > 0  
    local hasPlayerPreview = playerPreviewSpent > 0  
    local hasPetPreview = petPreviewSpent > 0  
      
    if (hasPlayerPoints or hasPetPoints) then    
        resetBtn:Show()    
        applyBtn:Show()    
            
        if hasPlayerPreview or hasPetPreview then    
            resetBtn:Enable()    
            applyBtn:Enable()    
        else    
            resetBtn:Disable()    
            applyBtn:Disable()    
        end    
    else    
        resetBtn:Hide()    
        applyBtn:Hide()    
    end    
end
  
StaticPopupDialogs["CONFIRM_LEARN_PREVIEW_TALENTS"] = {    
    text = "Are you sure you want to apply these talent changes?",    
    button1 = "Accept",    
    button2 = "Cancel",    
    OnAccept = function()    
        local playerTalentGroup = GetActiveTalentGroup()  
          
        if GetGroupPreviewTalentPointsSpent(false, playerTalentGroup) > 0 then  
            LearnPreviewTalents(false, playerTalentGroup)    
        end  
          
        if UnitExists("pet") and GetGroupPreviewTalentPointsSpent(true, 1) > 0 then  
            LearnPreviewTalents(true, 1)  
        end  
            
        UpdateTalentsUI()  
        if showPetTalents then  
            UpdatePetTalentsUI()  
        end  
        UpdatePreviewButtons()    
        UpdateHeader()    
    end,    
    timeout = 0,    
    whileDead = true,    
    hideOnEscape = true,    
}
  
local function SwitchToTab(tabIndex)    
    currentTab = tabIndex    
        
    local name, iconTexture, pointsSpent = GetTalentTabInfo(currentTab)    
    descTitle:SetText(name)    
        
    local classKey = string.upper(className)      
    local branchData = ModernTalentsAssets:GetClassDescriptions(classKey, name)    
    
    local classIconTexture, classIconCoords = ModernTalentsAssets:GetClassIcon(classKey)    
    classIcon:SetTexture(classIconTexture)    
    if classIconCoords then    
        classIcon:SetTexCoord(unpack(classIconCoords))    
    end    
        
    if branchData then    
        descText:SetText(branchData.desc)    
        for i, treeName in ipairs(branchData.trees) do    
            if treeTexts[i] then    
                treeTexts[i]:SetText(treeName)    
            end    
            if treeIcons[i] and branchData.treeIcons and branchData.treeIcons[i] then    
                treeIcons[i]:SetTexture(branchData.treeIcons[i])    
                treeIcons[i]:Show()    
                treeIconFrames[i]:Show()
            else    
                treeIcons[i]:Hide()    
                treeIconFrames[i]:Hide()
            end    
        end    
        branchIcon:SetTexture(branchData.icon)    
        branchIconFrame:Show()
    else    
        descText:SetText("Description not available.")    
        for i = 1, #treeTexts do    
            if treeTexts[i] then    
                treeTexts[i]:SetText("Tree " .. i)    
            end    
            treeIcons[i]:Hide()    
            treeIconFrames[i]:Hide()
        end    
        branchIcon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")    
        branchIconFrame:Show()
    end    
        
    for i, btn in ipairs(tabButtons) do    
        if i == tabIndex then    
            btn:SetButtonState("PUSHED")    
            btn:GetFontString():SetTextColor(1, 1, 1)    
        else    
            btn:SetButtonState("NORMAL")    
            btn:GetFontString():SetTextColor(0.8, 0.8, 0.8)    
        end    
    end    
        
    UpdateClassBackground()    
    UpdateTalentsUI()    
end 
        
local function SwitchToPetTab(tabIndex)        
    currentPetTab = tabIndex        
            
    local name, iconTexture, pointsSpent = GetTalentTabInfo(currentPetTab, false, true)        
            
    for i, btn in ipairs(petTabButtons) do        
        if i == tabIndex then        
            btn:SetButtonState("PUSHED")        
            btn:GetFontString():SetTextColor(1, 1, 1)        
        else        
            btn:SetButtonState("NORMAL")        
            btn:GetFontString():SetTextColor(0.8, 0.8, 0.8)        
        end        
    end        
            
    UpdatePetTalentsUI()        
end    

local currentSpec = GetActiveTalentGroup() or 1    

local specToggleBtn = CreateFrame("Button", "ModernTalentsSpecToggleButton", ModernTalentsFrame)
specToggleBtn:SetSize(152, 28)
specToggleBtn:SetPoint("LEFT", ModernTalentsFrame, "LEFT", 55, -82)

specToggleBtn:SetBackdrop({
	bgFile = "Interface\\Tooltips\\ChatBubble-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true,
    tileSize = 18,
    edgeSize = 18,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
})
specToggleBtn:SetBackdropColor(0, 0, 0, 0.8)
specToggleBtn:SetBackdropBorderColor(1, 1, 1, 0.8)

specToggleBtn:SetScript("OnEnter", function(self)
    self:SetBackdropColor(0.1, 0.1, 0.2, 0.9)
    self:SetBackdropBorderColor(1, 0.82, 0, 1)

    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText("Switch Specialization")
    GameTooltip:AddLine("Click to switch between dual specializations", 1, 1, 1, true)
    GameTooltip:Show()
end)

specToggleBtn:SetScript("OnLeave", function(self)
    self:SetBackdropColor(0, 0, 0, 0.8)
    self:SetBackdropBorderColor(1, 1, 1, 0.8)
    GameTooltip:Hide()
end)

specToggleBtn:SetScript("OnMouseDown", function(self)
    if self:IsEnabled() then
        self.text:SetPoint("CENTER", 1, -1)
        self:SetBackdropColor(0.05, 0.05, 0.1, 0.9)
        self:SetBackdropBorderColor(1, 0.7, 0, 0.9)
    end
end)

specToggleBtn:SetScript("OnMouseUp", function(self)
    if self:IsEnabled() then
        self.text:SetPoint("CENTER", 0, 0)
        self:SetBackdropColor(0, 0, 0, 0.8)
        self:SetBackdropBorderColor(1, 1, 1, 0.8)
    end
end)

specToggleBtn:SetScript("OnDisable", function(self)
    self.text:SetPoint("CENTER", 0, 0)
    self:SetBackdropColor(0, 0, 0, 0.8)
    self:SetBackdropBorderColor(1, 1, 1, 0.8)
end)

specToggleBtn.text = specToggleBtn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
specToggleBtn.text:SetPoint("CENTER", 0, 0)
specToggleBtn.text:SetTextColor(1, 0.82, 0)
specToggleBtn.text:SetShadowOffset(1, -1)
specToggleBtn.text:SetShadowColor(0, 0, 0, 0.8)

local function UpdateSpecToggleButton()    
    currentSpec = GetActiveTalentGroup() or 1    

    if currentSpec == 1 then
        specToggleBtn.text:SetText("Secondary specialization")
    else
        specToggleBtn.text:SetText("Primary specialization")
    end
    
    local inactiveSpec = (currentSpec == 1) and 2 or 1    
    
    local hasTalents = false    
    for tab = 1, GetNumTalentTabs() do    
        local _, _, pointsSpent = GetTalentTabInfo(tab, false, false, inactiveSpec)    
        if pointsSpent and pointsSpent > 0 then    
            hasTalents = true    
            break    
        end    
    end    

    specToggleBtn:SetScript("OnEnter", function(self)
        self:SetBackdropColor(0.1, 0.1, 0.2, 0.9)
        self:SetBackdropBorderColor(1, 0.82, 0, 1)
        
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")

        GameTooltip:AddLine("Switch to Specialization " .. inactiveSpec, 1, 0.82, 0)

        if hasTalents then
            GameTooltip:AddLine("Specialization with talents assigned", 0, 1, 0, true)
        else
            GameTooltip:AddLine("Empty specialization", 1, 1, 1, true)
        end

        GameTooltip:AddLine("Click to switch", 1, 0.82, 0, true)
        
        GameTooltip:Show()
    end)
end    

specToggleBtn:SetScript("OnClick", function(self)    
    local targetSpec = (currentSpec == 1) and 2 or 1    
    SetActiveTalentGroup(targetSpec)    
    currentSpec = targetSpec    
    UpdateSpecToggleButton()    
    UpdateHeader()    
    
    if currentMode == "talents" then    
        UpdateTalentsUI()    
    elseif currentMode == "glyphs" then    
        UpdateGlyphsUI()    
    elseif currentMode == "pet" then    
        UpdatePetTalentsUI()    
    end    
end)    

local function HasDualSpec()    
    return GetNumTalentGroups() > 1    
end    

local function UpdateSpecButtonVisibility()    
    if HasDualSpec() then    
        specToggleBtn:Show()    
        UpdateSpecToggleButton()    
    else    
        specToggleBtn:Hide()    
    end    
end    

------------------------------------------------------          
          
local glyphSlotsCreated = false        
local selectedGlyphSlot = nil    
 
function UpdateGlyphInfoPanel()  
    for _, btn in ipairs(glyphInfoButtons) do  
        btn:Hide()  
    end  
    wipe(glyphInfoButtons)  
      
    local classGlyphs = GLYPH_DATABASE[className]  
    if not classGlyphs then return end  
      
    local glyphList = classGlyphs[currentGlyphFilter] or {}  
      
    if currentGlyphFilter == "MAJOR" then    
        infoPanelTitle:SetText("Major Glyphs - " .. UnitClass("player"))    
        glyphFilterBtn:SetText("View Minor Glyphs")
    else    
        infoPanelTitle:SetText("Minor Glyphs - " .. UnitClass("player"))    
        glyphFilterBtn:SetText("View Major Glyphs")    
    end  
      
    local talentGroup = GetActiveTalentGroup()  
    local activeGlyphs = {}  
    for i = 1, 6 do  
        local enabled, socketType, glyphSpell = GetGlyphSocketInfo(i, talentGroup)  
        if enabled and glyphSpell then  
            activeGlyphs[glyphSpell] = true  
        end  
    end 
      
    local yOffset = -10  
    for i, glyphData in ipairs(glyphList) do  
        local btn = CreateFrame("Frame", nil, infoScrollChild)  
        btn:SetSize(290, 40)  
        btn:SetPoint("TOPLEFT", 5, yOffset)  

        local bg = btn:CreateTexture(nil, "BACKGROUND")  
        bg:SetAllPoints()  
        bg:SetTexture("Interface\\Buttons\\UI-Listbox-Highlight")  
        bg:SetAlpha(0.3)  

        local iconFrame = CreateFrame("Frame", nil, btn)
        iconFrame:SetSize(ICON_SIZE, ICON_SIZE)
        iconFrame:SetPoint("LEFT", 5, 0)

        local border = iconFrame:CreateTexture(nil, "OVERLAY")  
        border:SetSize(ICON_SIZE + 1, ICON_SIZE + 1)  
        border:SetPoint("CENTER")  
        border:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")  
        border:SetTexCoord(0.589843750, 0.630859375, 0.083007813, 0.162367188)  
        border:SetBlendMode("ADD")  

        local icon = iconFrame:CreateTexture(nil, "BACKGROUND")  
        icon:SetSize(ICON_SIZE - 4, ICON_SIZE - 4)  
        icon:SetPoint("CENTER")  
        icon:SetTexture(glyphData.icon)  
        icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)  

        local slotBg = iconFrame:CreateTexture(nil, "BORDER")  
        slotBg:SetAllPoints(iconFrame)  

        if currentGlyphFilter == "MAJOR" then
            slotBg:SetVertexColor(1, 0.25, 0)
        else
            slotBg:SetVertexColor(0, 0.25, 1)
        end
        
        local nameText = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")  
        nameText:SetPoint("LEFT", iconFrame, "RIGHT", 10, 5)  
        nameText:SetText(glyphData.name)  
        nameText:SetWidth(150)  
        nameText:SetJustifyH("LEFT")  

        local statusText = btn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")  
        statusText:SetPoint("LEFT", iconFrame, "RIGHT", 10, -8)  
  
        local isActive = activeGlyphs[glyphData.spellID]  
  
        local hasInBag = false  
        if glyphData.itemID then  
            for bag = 0, 4 do  
                for slot = 1, GetContainerNumSlots(bag) do  
                    local itemID = GetContainerItemID(bag, slot)  
                    if itemID == glyphData.itemID then  
                        hasInBag = true  
                        break  
                    end  
                end  
                if hasInBag then break end  
            end  
        end  
 
        if isActive then  
            statusText:SetText("|cFF00FF00Active|r")  
            slotBg:SetVertexColor(0.2, 1.0, 0.2)
        elseif hasInBag then  
            statusText:SetText("|cFFFFFF00In bag|r")  
            slotBg:SetVertexColor(1.0, 1.0, 0.2)
        else  
            statusText:SetText("|cFF808080Inactive|r")  
        end  
          
        btn:EnableMouse(true)  
        btn:SetScript("OnEnter", function(self)  
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")  

            if glyphData.itemID then  
                local itemName, itemLink = GetItemInfo(glyphData.itemID)  
                if itemLink then  
                    GameTooltip:SetHyperlink(itemLink)  
                else    
                    GameTooltip:SetText(glyphData.name, 1, 1, 1)  
                    GameTooltip:AddLine("Item ID: " .. glyphData.itemID, 0.8, 0.8, 0.8)  
                    if isActive then  
                        GameTooltip:AddLine("|cFF00FF00This glyph is active|r", 0, 1, 0)  
                    elseif hasInBag then  
                        GameTooltip:AddLine("|cFFFFFF00You have this glyph in your bag|r", 1, 1, 0)  
                    end  
                end  
            else  
                GameTooltip:SetText(glyphData.name, 1, 1, 1)  
            end  
              
            GameTooltip:Show()  
        end)  
          
        btn:SetScript("OnLeave", function()  
            GameTooltip:Hide()  
        end)  
          
        table.insert(glyphInfoButtons, btn)  
        yOffset = yOffset - 45  
    end  
      
    infoScrollChild:SetHeight(math.max(1, #glyphList * 45))  
end
 
local function CreateGlyphSlot(id)            
    local slot = CreateFrame("Button", "ModernGlyphSlot"..id, glyphContainer)            
    slot:SetSize(80, 80)            
    slot:EnableMouse(true)            
          
    if not slot.background then            
        slot.background = slot:CreateTexture(nil, "BACKGROUND")            
        slot.background:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")            
                    
        slot.icon = slot:CreateTexture(nil, "ARTWORK")            
        slot.icon:SetSize(60, 60)            
        slot.icon:SetPoint("CENTER")            
        slot.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)            
                    
        slot.ring = slot:CreateTexture(nil, "OVERLAY")            
        slot.ring:SetPoint("CENTER")            
        slot.ring:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")            
            
        slot.typeText = slot:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")            
        slot.typeText:SetPoint("BOTTOM", slot, "TOP", 0, 5)            
        slot.typeText:SetTextColor(1, 1, 1)            
            
        slot.emptyText = slot:CreateFontString(nil, "OVERLAY", "GameFontNormal")            
        slot.emptyText:SetPoint("CENTER", slot, "CENTER")            
        slot.emptyText:SetText("Empty")            
        slot.emptyText:SetTextColor(0.8, 0.8, 0.8)      
              
        slot.loadingBar = CreateFrame("StatusBar", nil, slot)      
        slot.loadingBar:SetSize(60, 8)      
        slot.loadingBar:SetPoint("BOTTOM", slot, "BOTTOM", 0, -10)      
        slot.loadingBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")      
        slot.loadingBar:SetMinMaxValues(0, 1)      
        slot.loadingBar:SetValue(0)      
        slot.loadingBar:Hide()      
    end            
                    
    slot:SetScript("OnEnter", function(self)            
        if self.glyphSpell then            
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")            
            GameTooltip:SetGlyph(self:GetID(), GetActiveTalentGroup())                 
            GameTooltip:Show()            
        else            
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")            
            if self.glyphType == 1 then            
                GameTooltip:SetText("Major Glyph Slot")            
                GameTooltip:AddLine("|cFFFF8000Major Glyph|r - Modifies main abilities", 1, 1, 1, true)            
            else            
                GameTooltip:SetText("Minor Glyph Slot")            
                GameTooltip:AddLine("|cFF00A0FFMinor Glyph|r - Utility and cosmetic effects", 1, 1, 1, true)              
            end    
            GameTooltip:Show()            
        end            
    end)           
                    
    slot:SetScript("OnLeave", function(self)            
        GameTooltip:Hide()            
    end)            
                    
    slot:SetScript("OnClick", function(self, button)      
        if button == "LeftButton" then      
            if InCombatLockdown() then      
                UIErrorsFrame:AddMessage("You cannot modify glyphs in combat.", 1.0, 0.1, 0.1, 1.0)      
                return      
            end      
     
            local shouldProceed = true      
            local cursorType, glyphID = GetCursorInfo()      
                  
            if cursorType == "glyph" and glyphID then      
                local glyphName, glyphType = GetGlyphInfo(glyphID)      
                      
                if not self.glyphType then      
                    UIErrorsFrame:AddMessage("Error: slot type not defined.", 1.0, 0.1, 0.1, 1.0)      
                    return      
                end      
                      
                if glyphType ~= self.glyphType then      
                    if glyphType == 1 and self.glyphType == 2 then      
                        UIErrorsFrame:AddMessage("You cannot place a Major Glyph in a Minor slot.", 1.0, 0.1, 0.1, 1.0)      
                    elseif glyphType == 2 and self.glyphType == 1 then      
                        UIErrorsFrame:AddMessage("You cannot place a Minor Glyph in a Major slot.", 1.0, 0.1, 0.1, 1.0)      
                    end      
                    shouldProceed = false      
                end      
            end      
                  
            if not shouldProceed then      
                return      
            end      
   
            self.loadingBar:Show()      
            self.loadingBar:SetValue(0)      
            local elapsed = 0      
            local duration = 5      
            self.loadingBar:SetScript("OnUpdate", function(bar, delta)      
                elapsed = elapsed + delta      
                if elapsed < duration then      
                    bar:SetValue(elapsed / duration)      
                else      
                    bar:Hide()      
                    bar:SetScript("OnUpdate", nil)      
                end      
            end)      
                  
            PlaceGlyphInSocket(self:GetID())      
                  
            if not (cursorType == "glyph") and GlyphFrame and not GlyphFrame:IsShown() then      
                GlyphFrame:Show()      
            end      
      
        elseif button == "RightButton" then      
            if self.glyphSpell then      
                RemoveGlyph(self:GetID())      
            end      
        end      
    end)            
                    
    return slot            
end       
                
local function UpdateGlyphSlot(slot)                
    local id = slot:GetID()                
    local talentGroup = GetActiveTalentGroup()                
    local enabled, glyphType, glyphSpell, iconFilename = GetGlyphSocketInfo(id, talentGroup)                
                    
    if not enabled then                
        slot:Hide()                
        return                
    end                
                    
    slot:Show()                
    slot.glyphType = glyphType          
                    
    if glyphType == 1 then                
        slot.icon:SetVertexColor(1, 0.25, 0)
        slot.background:SetSize(70, 70)          
        slot.background:SetPoint("CENTER", slot, "CENTER")          
        slot.background:SetTexCoord(0.547363281, 0.584472656, 0.083007813, 0.152343750)                
        slot.ring:SetSize(82, 82)                
        slot.ring:SetTexCoord(0.625000000, 0.722656250, 0.798828125, 0.994140625)               
        slot.typeText:SetText("Major")          
        slot.typeText:SetTextColor(1, 0.5, 0)
    else
        slot.icon:SetVertexColor(0, 0.25, 1)
        slot.background:SetSize(70, 70)          
        slot.background:SetPoint("CENTER", slot, "CENTER")          
        slot.background:SetTexCoord(0.547363281, 0.584472656, 0.083007813, 0.152343750)                
        slot.ring:SetSize(82, 82)                
        slot.ring:SetTexCoord(0.520507813, 0.618164063, 0.798828125, 0.994140625)                
        slot.typeText:SetText("Minor")          
        slot.typeText:SetTextColor(0, 0.5, 1)
    end        
                    
    if glyphSpell then                
        slot.glyphSpell = glyphSpell                

        slot.icon:Hide()

        if not slot.customGlyph then
            slot.customGlyph = slot:CreateTexture(nil, "ARTWORK")
            slot.customGlyph:SetSize(ICON_SIZE + 15, ICON_SIZE + 15)
            slot.customGlyph:SetPoint("CENTER")
        end

        slot.customGlyph:Show()

        if glyphType == 1 then
            slot.customGlyph:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")
            slot.customGlyph:SetTexCoord(0.617675781, 0.658691406, 0.183593750, 0.262695313)
        else
            slot.customGlyph:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")
            slot.customGlyph:SetTexCoord(0.667968750, 0.708984375, 0.183593750, 0.262695313)
        end
        
        slot.ring:Show()          
        slot.emptyText:Hide()          
        slot.typeText:Show()          
        
    else                
        slot.glyphSpell = nil                
        slot.icon:Hide()
        if slot.customGlyph then
            slot.customGlyph:Hide()
        end
        slot.ring:Show()          
        slot.emptyText:Show()          
        slot.typeText:Show()          
    end                
end     
          
local function UpdateGlyphsUI()                
    for _, slot in ipairs(glyphButtons) do                
        UpdateGlyphSlot(slot)                
    end                
end                
                
local function CreateGlyphUI()          
    if glyphSlotsCreated then          
        UpdateGlyphsUI()          
        return          
    end          
              
    local positions = {          
        {x = -100, y = 40, type = "Minor"},          
        {x = 0, y = 60, type = "Major"},          
        {x = 150, y = 120, type = "Major"},          
        {x = 100, y = 40, type = "Minor"},          
        {x = -150, y = 120, type = "Major"},          
        {x = 0, y = -40, type = "Minor"},          
    }          
                  
    for i = 1, 6 do          
        local slot = CreateGlyphSlot(i)          
        slot:SetID(i)          
        slot:SetPoint("CENTER", glyphContainer, "CENTER", positions[i].x, positions[i].y)          
        table.insert(glyphButtons, slot)          
    end          
          
    glyphSlotsCreated = true          
end          
          
local function ClearGlyphButtons()          
    for i, btn in ipairs(glyphButtons) do          
        btn:Hide()          
    end          
    wipe(glyphButtons)          
    glyphSlotsCreated = false          
end             
                
local function SwitchToGlyphs()      
    currentMode = "glyphs"      
    legendPanel:Hide()      
    container:Hide()      
    glyphContainer:Show()      
      
    specToggleBtn:Hide()    
      
    glyphBtn:SetText("Talents")      
 
    if showPetTalents then  
        showPetTalents = false  
        petContainer:Hide()  
        for _, btn in ipairs(petTabButtons) do  
            btn:Hide()  
        end  
        petBtn:SetText("Pet Talents")  
    end  
      
    petBtn:Hide()      
      
    for _, btn in ipairs(tabButtons) do      
        btn:Hide()      
    end      
      
    for _, btn in ipairs(petTabButtons) do      
        btn:Hide()      
    end      
      
    resetBtn:Hide()  
    applyBtn:Hide()  
      
    descTitle:SetText("Glyph System")      
    descText:SetText("Glyphs are magical inscriptions that modify your abilities. |cFFFF8000Major Glyphs|r significantly alter main abilities, while |cFF00A0FFMinor Glyphs|r provide useful secondary effects or cosmetic changes.")      
    branchIcon:SetTexture("Interface\\Icons\\INV_Inscription_Tradeskill01")     
    branchIconFrame:Show()

    glyphInfoPanel:ClearAllPoints()
    glyphInfoPanel:SetPoint("LEFT", ModernTalentsFrame, "RIGHT", -250, -60)
    
    local color1 = ModernTalentsAssets.TreeColors[1]    
    local color2 = ModernTalentsAssets.TreeColors[2]    
    local color3 = ModernTalentsAssets.TreeColors[3]    
    local color4 = ModernTalentsAssets.TreeColors[4]    
    
    if treeTexts[1] and color1 then    
        treeTexts[1]:SetText(color1.hex .. "Major Glyphs|r")    
        treeTexts[1]:SetTextColor(unpack(color1.rgb))    
    end    
    
    if treeTexts[2] and color2 then    
        treeTexts[2]:SetText(color2.hex .. "Minor Glyphs|r")    
        treeTexts[2]:SetTextColor(unpack(color2.rgb))    
    end    
    
    if treeTexts[3] and color3 then    
        treeTexts[3]:SetText("")    
        treeTexts[3]:SetTextColor(unpack(color3.rgb))    
    end    
    
    if treeTexts[4] and color4 then    
        treeTexts[4]:SetText("")    
        treeTexts[4]:SetTextColor(unpack(color4.rgb))    
    end    

    if treeIcons[1] then    
        treeIcons[1]:SetTexture("Interface\\Icons\\inv_inscription_majorglyph01")    
        treeIcons[1]:Show()    
        treeIconFrames[1]:Show()
    end    
    if treeIcons[2] then    
        treeIcons[2]:SetTexture("Interface\\Icons\\inv_inscription_minorglyph17")    
        treeIcons[2]:Show()    
        treeIconFrames[2]:Show()
    end    
    if treeIcons[3] then 
        treeIcons[3]:Hide() 
        treeIconFrames[3]:Hide()
    end    
    if treeIcons[4] then 
        treeIcons[4]:Hide() 
        treeIconFrames[4]:Hide()
    end    
    
    UpdateClassBackground()    
    UpdateHeader()    
    UpdateGlyphsUI()  
    glyphInfoPanel:Show()  
    UpdateGlyphInfoPanel()	
end  
  
local function OpenModernGlyphsFrame()  
    if not ModernTalentsFrame:IsShown() then  
        PlaySound(830)  
          
        if TalentFrame and TalentFrame:IsShown() then              
            TalentFrame:Hide()              
        end              
        if PlayerTalentFrame and PlayerTalentFrame:IsShown() then              
            PlayerTalentFrame:Hide()              
        end  
          
        ShowUIPanel(ModernTalentsFrame)  
        CreateTabButtons()  
        CreateGlyphUI()  
        UpdateHeader()  
        UpdateLegend()  
        UpdateClassBackground()  
          
        if className == "HUNTER" and UnitExists("pet") then              
            petBtn:Show()              
        else              
            petBtn:Hide()              
        end  
          
        UpdateSpecButtonVisibility()  
        UpdatePreviewButtons()  
    end  
      
    if currentMode ~= "glyphs" then  
        SwitchToGlyphs()  
    end  
end
          
local function SwitchToTalents()              
    currentMode = "talents"    
    legendPanel:Show()	    
    glyphContainer:Hide() 
    glyphInfoPanel:Hide()	
    container:Show()              
                  
    glyphBtn:SetText("Glyphs")              
                  
    if className == "HUNTER" and UnitExists("pet") then              
        petBtn:Show()              
    else              
        petBtn:Hide()              
    end              
    
    UpdateSpecButtonVisibility()  
    
    for _, btn in ipairs(tabButtons) do              
        btn:Show()              
    end              
                  
    if not showPetTalents then              
        petContainer:Hide()              
        for _, btn in ipairs(petTabButtons) do              
            btn:Hide()              
        end              
    end              
                  
    if currentTab > 0 then              
        SwitchToTab(currentTab)              
    end              
                  
    UpdateClassBackground()              
    UpdateHeader()    
    
    if treeTexts and ModernTalentsAssets and ModernTalentsAssets.ClassDescriptions and className then    
        local classData = ModernTalentsAssets.ClassDescriptions[className]    
        if classData then    
            for _, specData in pairs(classData) do    
                if specData.trees then    
                    for i = 1, #specData.trees do    
                        if treeTexts[i] then    
                            local color = ModernTalentsAssets.TreeColors[i]    
                            if color then    
                                treeTexts[i]:SetText(color.hex .. specData.trees[i] .. "|r")    
                                treeTexts[i]:SetTextColor(unpack(color.rgb))    
                            else    
                                treeTexts[i]:SetText(specData.trees[i])    
                                treeTexts[i]:SetTextColor(1, 1, 1)    
                            end    
                        end    
                    end    
                    break    
                end    
            end    
        end    
    end    
end    

------------------------------------------------------          
        
local function CreatePetTalentButton(id)    
    local b = CreateFrame("Button", "ModernPetTalentButton"..id, petContainer)    
    b:SetSize(ICON_SIZE, ICON_SIZE)    
    
    b.border = b:CreateTexture(nil, "OVERLAY")    
    b.border:SetSize(ICON_SIZE + 15, ICON_SIZE + 15)    
    b.border:SetPoint("CENTER")    
    b.border:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")    
    b.border:SetTexCoord(0.553222656, 0.600097656, 0.171875000, 0.277343750)        
        
    b.icon = b:CreateTexture(nil, "BACKGROUND")    
    b.icon:SetSize(ICON_SIZE - 4, ICON_SIZE - 4)    
    b.icon:SetPoint("CENTER")    
    b.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)    
        
    b.slot = b:CreateTexture(nil, "BORDER")    
    b.slot:SetAllPoints(b)    
        
    b.rankText = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
    b.rankText:SetPoint("BOTTOM", b, "BOTTOM", 0, 2)    
    b.rankText:SetTextColor(1, 1, 1)    
        
    b.rankBorder = b:CreateTexture(nil, "OVERLAY")    
    b.rankBorder:SetPoint("CENTER", b, "CENTER")    
        
    b.talentID = id    
    b:SetFrameLevel(10)    
    b:EnableMouse(true)    
    
    b:SetScript("OnEnter", function(self)        
        if self.talentInfo then        
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")        
            local preview = GetCVarBool("previewTalents")
            local activeGroup = GetActiveTalentGroup()
            local name, icon, tier, column, currentRank, maxRank, isExceptional, meetsPrereq, previewRank = 
                GetTalentInfo(self.talentInfo.tab, self.talentInfo.index, false, false, activeGroup)
            local displayRank = preview and previewRank or currentRank
            GameTooltip:SetTalent(self.talentInfo.tab, self.talentInfo.index, false, false, activeGroup, preview)
            GameTooltip:Show()        
        end        
    end)   
    
    b:SetScript("OnLeave", function(self)    
        GameTooltip:Hide()    
    end)    
    
    b:SetScript("OnClick", function(self, button)    
    if button == "LeftButton" then    
        if not self.talentInfo then return end    
    
        local tab = self.talentInfo.tab    
        local index = self.talentInfo.index    
            
        local activePetTalentGroup = 1  
            
        local name, icon, tier, column, rank, maxRank, isExceptional, meetsPrereq =     
            GetTalentInfo(tab, index, false, true, activePetTalentGroup)    
            
        if not meetsPrereq then    
            UIErrorsFrame:AddMessage("You do not meet the prerequisites for this talent.", 1.0, 0.1, 0.1, 1.0)    
            return    
        end    
    
        if rank >= maxRank then    
            UIErrorsFrame:AddMessage("This talent is already at maximum rank.", 1.0, 0.1, 0.1, 1.0)    
            return    
        end    
    
        if GetUnspentTalentPoints(false, true, activePetTalentGroup) <= 0 then    
            UIErrorsFrame:AddMessage("You have no pet talent points available.", 1.0, 0.1, 0.1, 1.0)    
            return    
        end    
    
        if GetCVarBool("previewTalents") then    
            AddPreviewTalentPoints(tab, index, 1, true, activePetTalentGroup)    
        else    
            LearnTalent(tab, index, true, activePetTalentGroup)    
        end    
            
        UpdatePetTalentsUI()    
        UpdatePreviewButtons()    
        UpdateHeader()    
    elseif button == "RightButton" then    
        if GetCVarBool("previewTalents") then    
            AddPreviewTalentPoints(self.talentInfo.tab, self.talentInfo.index, -1, true, 1)
            UpdatePetTalentsUI()    
            UpdatePreviewButtons()    
            UpdateHeader()    
        end    
    end    
end)  
    
    return b    
end      
        
function UpdatePetTalentsUI()              
    for _, btn in pairs(petTalentButtons) do              
        btn:Hide()              
    end              
              
    if not UnitExists("pet") then    
        if showPetTalents then    
            showPetTalents = false    
            petContainer:Hide()    
            for _, btn in ipairs(petTabButtons) do    
                btn:Hide()    
            end    
            petBtn:SetText("Pet Talents")    
        end    
        return              
    end              
              
    local activePetTalentGroup = 1
    local preview = GetCVarBool("previewTalents")    
              
    local petTalentPoints = GetUnspentTalentPoints(false, true, activePetTalentGroup)
    local previewPointsSpent = GetGroupPreviewTalentPointsSpent(true, activePetTalentGroup)    
    local unspentPetPoints = petTalentPoints - previewPointsSpent    
    petPointsText:SetText(unspentPetPoints .. " Available Points")              
              
    local numTabs = GetNumTalentTabs(false, true)              
    if currentPetTab > numTabs then currentPetTab = 1 end              
              
    local name, iconTexture, pointsSpent = GetTalentTabInfo(currentPetTab, false, true, activePetTalentGroup)              
    local numTalents = GetNumTalents(currentPetTab, false, true)            
            
    local availablePointsY = -90            
    local bx, by            
            
    for talentIndex = 1, numTalents do            
        local nameT, icon, tier, col, currentRank, maxRank, isExceptional, meetsPrereq, previewRank, meetsPreviewPrereq =           
            GetTalentInfo(currentPetTab, talentIndex, false, true, activePetTalentGroup)            
                    
        if nameT and tier and col then            
            bx = (col - 2) * COL_SPACING - 270      
            by = availablePointsY - (tier - 1) * ROW_SPACING            
            
            local key = string.format("pet_%d_%d_%d", currentPetTab, tier, col)            
            local btn = petTalentButtons[key]            
            if not btn then            
                btn = CreatePetTalentButton(key)            
                petTalentButtons[key] = btn            
            end            
            
            btn:SetPoint("CENTER", petContainer, "TOP", bx, by)            
            
            if icon and icon ~= "" then            
                btn.icon:SetTexture(icon)            
                btn.icon:Show()            
            else            
                btn.icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")            
            end            
            
            local displayRank = preview and previewRank or currentRank  
            local displayPrereq = preview and meetsPreviewPrereq or meetsPrereq  
            
            if displayRank and maxRank then            
                btn.rankText:SetText(displayRank .. "/" .. maxRank)  
                btn.rankText:Show()            
                btn.rankBorder:Show()            
            else            
                btn.rankText:Hide()            
                btn.rankBorder:Hide()            
            end            
       
            local unlocksOthers = false        
            for checkIndex = 1, numTalents do        
                local tier1, tier2, tier3, tier4 = GetTalentPrereqs(currentPetTab, checkIndex, false, true)        
                if tier1 == talentIndex or tier2 == talentIndex or tier3 == talentIndex or tier4 == talentIndex then        
                    unlocksOthers = true        
                    break        
                end        
            end        
        
            if displayRank and displayRank > 0 then  
                if displayRank < maxRank then        
                    btn.slot:SetVertexColor(0.2, 0.5, 1.0)        
                    btn.rankText:SetTextColor(0.4, 0.7, 1.0)        
                else        
                    if unlocksOthers then        
                        btn.slot:SetVertexColor(0.8, 0.2, 1.0)        
                        btn.rankText:SetTextColor(0.9, 0.5, 1.0)        
                    else        
                        btn.slot:SetVertexColor(1.0, 0.2, 0.2)        
                        btn.rankText:SetTextColor(1.0, 0.4, 0.4)        
                    end        
                end        
                btn.icon:SetDesaturated(false)        
            else        
                local tierRequirement = (tier - 1) * PET_TALENTS_PER_TIER        
                        
                if displayPrereq and tierRequirement > 0 and pointsSpent >= tierRequirement then  
                    btn.slot:SetVertexColor(0.2, 1.0, 0.2)        
                    btn.rankText:SetTextColor(0.4, 1.0, 0.4)        
                else        
                    btn.slot:SetVertexColor(0.5, 0.5, 0.5)        
                    btn.rankText:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b)        
                end        
                btn.icon:SetDesaturated(not displayPrereq)  
            end        
        
            btn.talentInfo = {        
                name = nameT,        
                tab = currentPetTab,        
                index = talentIndex,        
                currentRank = displayRank,  
                maxRank = maxRank        
            }        
        
            btn:Show()        
        end        
    end        
end   
      
local function CreatePetTabButtons()        
    for _, btn in ipairs(petTabButtons) do        
        btn:Hide()        
    end        
    wipe(petTabButtons)        
        
    if not UnitExists("pet") then        
        return        
    end        
        
    local numTabs = GetNumTalentTabs(false, true)        
    local tabWidth = 120        
    local spacing = 105        
    local totalWidth = numTabs * tabWidth + (numTabs - 1) * spacing        
    local startX = (ModernTalentsFrame:GetWidth() - totalWidth) / 2        
        
    for i = 1, numTabs do        
        local name = select(1, GetTalentTabInfo(i, false, true))        
        local btn = CreateFrame("Button", nil, ModernTalentsFrame, "UIPanelButtonTemplate")        
        btn:SetSize(tabWidth, 24)        
        btn:SetPoint("RIGHT", ModernTalentsFrame, "RIGHT", -210, -120)
        btn:SetText(name)        
        
        btn:GetFontString():SetTextColor(1, 0.82, 0)        
        btn:GetFontString():SetFont("Fonts\\FRIZQT__.TTF", 12)        
          
        btn:SetScript("OnEnter", function(self)  
            GameTooltip:SetOwner(self, "ANCHOR_TOP")  
              
            local tabName, icon, pointsSpent = GetTalentTabInfo(i, false, true, 1)  
              
            GameTooltip:AddLine(tabName, 1, 0.82, 0)  
            GameTooltip:AddLine(pointsSpent .. " points spent", HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b)  
            GameTooltip:Show()  
        end)  
          
        btn:SetScript("OnLeave", function(self)  
            GameTooltip:Hide()  
        end)  
                
        btn:SetScript("OnClick", function()        
            SwitchToPetTab(i)        
        end)        
        table.insert(petTabButtons, btn)        
    end        
        
    if numTabs > 0 then        
        SwitchToPetTab(1)        
    end        
end      
      
local function TogglePetTalents()      
    if not UnitExists("pet") then      
        UIErrorsFrame:AddMessage("You have no active pet.", 1.0, 0.1, 0.1, 1.0)      
        return      
    end      
          
    showPetTalents = not showPetTalents      
          
    if showPetTalents then      
        petContainer:Show()      
        petBtn:SetText("Hide Pet")      
        CreatePetTabButtons()      
        UpdatePetTalentsUI()      
    else      
        petContainer:Hide()      
        petBtn:SetText("Pet Talents")      
        for _, btn in ipairs(petTabButtons) do      
            btn:Hide()      
        end      
    end      
end      

------------------------------------------------------      
      
local function CreateTalentButton(id)    
    local b = CreateFrame("Button", "ModernTalentButton"..id, container)    
    b:SetSize(ICON_SIZE, ICON_SIZE)    
    
    b.border = b:CreateTexture(nil, "OVERLAY")    
    b.border:SetSize(ICON_SIZE + 15, ICON_SIZE + 15)    
    b.border:SetPoint("CENTER")    
    b.border:SetTexture("Interface\\AddOns\\ModernTalents\\FrameGeneral\\talents")    
    b.border:SetTexCoord(0.553222656, 0.600097656, 0.171875000, 0.277343750)  
        
    b.icon = b:CreateTexture(nil, "BACKGROUND")    
    b.icon:SetSize(ICON_SIZE - 4, ICON_SIZE - 4)    
    b.icon:SetPoint("CENTER")    
    b.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)    
        
    b.slot = b:CreateTexture(nil, "BORDER")    
    b.slot:SetAllPoints(b)    
        
    b.rankText = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")    
    b.rankText:SetPoint("BOTTOM", b, "BOTTOM", 0, 2)    
    b.rankText:SetTextColor(1, 1, 1)    
        
    b.rankBorder = b:CreateTexture(nil, "OVERLAY")    
    b.rankBorder:SetPoint("CENTER", b, "CENTER")    
        
    b.talentID = id    
    b:SetFrameLevel(10)    
    b:EnableMouse(true)    
    
    b:SetScript("OnEnter", function(self)      
        if self.talentInfo then      
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")      
            local activePetTalentGroup = GetActiveTalentGroup(false, true)
            local preview = GetCVarBool("previewTalents")

            GameTooltip:SetTalent(self.talentInfo.tab, self.talentInfo.index, false, true, activePetTalentGroup, preview)
           GameTooltip:Show()      
        end      
    end) 
    
    b:SetScript("OnLeave", function(self)    
        GameTooltip:Hide()    
    end)    
    
    b:SetScript("OnClick", function(self, button)    
        if button == "LeftButton" then    
            if not self.talentInfo then return end    
    
            local tab = self.talentInfo.tab    
            local index = self.talentInfo.index    
            local currentRank = self.talentInfo.currentRank    
            local maxRank = self.talentInfo.maxRank    
    
            if currentRank >= maxRank then    
                UIErrorsFrame:AddMessage("This talent is already at maximum rank.", 1.0, 0.1, 0.1, 1.0)    
                return    
            end    
    
            if GetUnspentTalentPoints() <= 0 then    
                UIErrorsFrame:AddMessage("You have no talent points available.", 1.0, 0.1, 0.1, 1.0)    
                return    
            end    
    
            if GetCVarBool("previewTalents") then  
                AddPreviewTalentPoints(tab, index, 1, false, GetActiveTalentGroup())  
            else  
                LearnTalent(tab, index)  
            end  
              
            UpdateTalentsUI()  
            UpdatePreviewButtons()  
        elseif button == "RightButton" then  
            if GetCVarBool("previewTalents") then  
                AddPreviewTalentPoints(self.talentInfo.tab, self.talentInfo.index, -1, false, GetActiveTalentGroup())  
                UpdateTalentsUI()  
                UpdatePreviewButtons()  
            end  
        end    
    end)    
    
    return b    
end      

------------------------------------------------------      
      
function UpdateTalentsUI()          
    for _, btn in pairs(talentButtons) do          
        btn:Hide()          
    end          
          
    local preview = GetCVarBool("previewTalents")      
    local numTabs = GetNumTalentTabs()          
    if currentTab > numTabs then currentTab = 1 end          
          
    local name, iconTexture, pointsSpent, background, previewPointsSpent = GetTalentTabInfo(currentTab, false, false, GetActiveTalentGroup())  
      
    local tabPointsSpent = pointsSpent + (previewPointsSpent or 0)  
      
    local numTalents = GetNumTalents(currentTab)          
          
    local availablePointsY = -5          
    local bx, by          
          
    for talentIndex = 1, numTalents do          
        local nameT, icon, tier, col, currentRank, maxRank, isExceptional, meetsPrereq, previewRank, meetsPreviewPrereq =       
            GetTalentInfo(currentTab, talentIndex, false, false, GetActiveTalentGroup())          
              
        local displayRank = preview and previewRank or currentRank      
        local displayPrereq = preview and meetsPreviewPrereq or meetsPrereq      
                  
        if nameT and tier and col then          
            bx = (col - 2) * COL_SPACING - 120          
            by = availablePointsY - (tier - 1) * ROW_SPACING          
          
            local key = string.format("%d_%d_%d", currentTab, tier, col)          
            local btn = talentButtons[key]          
            if not btn then          
                btn = CreateTalentButton(key)          
                talentButtons[key] = btn          
            end          
          
            btn:SetPoint("CENTER", container, "TOP", bx, by)          
          
            if icon and icon ~= "" then          
                btn.icon:SetTexture(icon)          
                btn.icon:Show()          
            else          
                btn.icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")          
            end          
          
            if displayRank and maxRank then          
                btn.rankText:SetText(displayRank .. "/" .. maxRank)          
                btn.rankText:Show()          
                btn.rankBorder:Show()          
            else          
                btn.rankText:Hide()          
                btn.rankBorder:Hide()          
            end          
          
            local unlocksOthers = false          
            for checkIndex = 1, numTalents do          
                local tier1, tier2, tier3, tier4 = GetTalentPrereqs(currentTab, checkIndex)          
                if tier1 == talentIndex or tier2 == talentIndex or tier3 == talentIndex or tier4 == talentIndex then          
                    unlocksOthers = true          
                    break          
                end          
            end          
  
            local tierRequirement = (tier - 1) * PLAYER_TALENTS_PER_TIER  
            local tierUnlocked = (tierRequirement <= tabPointsSpent)  
              
            local isAvailable = tierUnlocked and displayPrereq  
              
            if isAvailable then  
                btn.icon:SetDesaturated(false)  
                  
                if displayRank and displayRank > 0 then          
                    if displayRank < maxRank then          
                        btn.slot:SetVertexColor(0.2, 0.5, 1.0)          
                        btn.rankText:SetTextColor(0.4, 0.7, 1.0)          
                    else          
                        if unlocksOthers then          
                            btn.slot:SetVertexColor(0.8, 0.2, 1.0)          
                            btn.rankText:SetTextColor(0.9, 0.5, 1.0)          
                        else          
                            btn.slot:SetVertexColor(1.0, 0.2, 0.2)          
                            btn.rankText:SetTextColor(1.0, 0.4, 0.4)          
                        end          
                    end          
                else    
                    btn.slot:SetVertexColor(0.2, 1.0, 0.2)          
                    btn.rankText:SetTextColor(0.4, 1.0, 0.4)  
                end  
            else  
                btn.icon:SetDesaturated(true)  
                btn.slot:SetVertexColor(0.5, 0.5, 0.5)          
                btn.rankText:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b)          
            end  
          
            btn.talentInfo = {          
                name = nameT,          
                tab = currentTab,          
                index = talentIndex,          
                currentRank = displayRank,          
                maxRank = maxRank          
            }          
          
            btn:Show()          
        end          
    end    
        
    UpdatePreviewButtons()    
end        

------------------------------------------------------          
        
local function CreateTabButtons()          
    for _, btn in ipairs(tabButtons) do          
        btn:Hide()          
    end          
    wipe(tabButtons)          
          
    local numTabs = GetNumTalentTabs()          
    local tabWidth = 100
    local spacing = 105
    local totalWidth = numTabs * tabWidth + (numTabs - 1) * spacing          
    local startX = (ModernTalentsFrame:GetWidth() - totalWidth) / 2          
          
    for i = 1, numTabs do          
        local name, _, pointsSpent = GetTalentTabInfo(i)          
        local btn = CreateFrame("Button", nil, ModernTalentsFrame, "UIPanelButtonTemplate")          
        btn:SetSize(tabWidth, 24)          
        btn:SetPoint("BOTTOM", 0, 40)          
        btn:SetPoint("LEFT", startX + (i - 1) * (tabWidth + spacing), 0)          
        btn:SetText(name)          
          
        btn:GetFontString():SetTextColor(1, 0.82, 0)          
        btn:GetFontString():SetFont("Fonts\\FRIZQT__.TTF", 12)          

        btn.originalText = btn:GetFontString()

        btn:SetScript("OnEnter", function(self)
            self:SetBackdropColor(0.1, 0.1, 0.2, 0.9)
            self:SetBackdropBorderColor(1, 0.82, 0, 1)
            
            GameTooltip:SetOwner(self, "ANCHOR_TOP")
            GameTooltip:SetText(name)
            GameTooltip:AddLine(pointsSpent .. " points spent in this specialization", 1, 1, 1, true)
            GameTooltip:Show()
        end)
        
        btn:SetScript("OnLeave", function(self)
            self:SetBackdropColor(0, 0, 0, 0.8)
            self:SetBackdropBorderColor(1, 1, 1, 0.8)
            GameTooltip:Hide()
        end)

        btn:SetScript("OnMouseDown", function(self)
            if self:IsEnabled() then
                self.originalText:SetPoint("CENTER", 1, -1)
                self:SetBackdropColor(0.05, 0.05, 0.1, 0.9)
                self:SetBackdropBorderColor(1, 0.7, 0, 0.9)
            end
        end)
        
        btn:SetScript("OnMouseUp", function(self)
            if self:IsEnabled() then
                self.originalText:SetPoint("CENTER", 0, 0)
                self:SetBackdropColor(0, 0, 0, 0.8)
                self:SetBackdropBorderColor(1, 1, 1, 0.8)
            end
        end)

        btn:SetScript("OnDisable", function(self)
            self.originalText:SetPoint("CENTER", 0, 0)
            self:SetBackdropColor(0, 0, 0, 0.8)
            self:SetBackdropBorderColor(1, 1, 1, 0.8)
        end)
                  
        btn:SetScript("OnClick", function()          
            SwitchToTab(i)          
        end)          
        table.insert(tabButtons, btn)          
    end          
          
    if numTabs > 0 then          
        SwitchToTab(1)          
    end          
end         

------------------------------------------------------          
          
glyphBtn:SetScript("OnClick", function()          
    if currentMode == "talents" then          
        SwitchToGlyphs()          
    else          
        SwitchToTalents()          
    end          
end)      
          
------------------------------------------------------          
          
petBtn:SetScript("OnClick", function()          
    TogglePetTalents()          
end)          
  
resetBtn:SetScript("OnClick", function()    
    local playerTalentGroup = GetActiveTalentGroup()  
      
    if GetGroupPreviewTalentPointsSpent(false, playerTalentGroup) > 0 then  
        ResetGroupPreviewTalentPoints(false, playerTalentGroup)    
    end  
      
    if UnitExists("pet") and GetGroupPreviewTalentPointsSpent(true, 1) > 0 then  
        ResetGroupPreviewTalentPoints(true, 1)  
    end  
        
    UpdateTalentsUI()  
    if showPetTalents then  
        UpdatePetTalentsUI()  
    end  
    UpdatePreviewButtons()    
    UpdateHeader()    
end)    
    
applyBtn:SetScript("OnClick", function()    
    StaticPopup_Show("CONFIRM_LEARN_PREVIEW_TALENTS")    
end)
          
------------------------------------------------------          
          
local function OpenModernTalents()            
    local playerLevel = UnitLevel("player")            
    if playerLevel < 10 then            
        UIErrorsFrame:AddMessage("You must be level 10 to access talents.", 1.0, 0.1, 0.1, 1.0)            
        return            
    end            
            
    if ModernTalentsFrame:IsShown() then            
        PlaySound(830)            
        HideUIPanel(ModernTalentsFrame)            
    else            
        PlaySound(830)            
        if TalentFrame and TalentFrame:IsShown() then            
            TalentFrame:Hide()            
        end            
        if PlayerTalentFrame and PlayerTalentFrame:IsShown() then            
            PlayerTalentFrame:Hide()            
        end            
          
        if showPetTalents and not UnitExists("pet") then  
            showPetTalents = false  
            petContainer:Hide()  
            for _, btn in ipairs(petTabButtons) do  
                btn:Hide()  
            end  
            petBtn:SetText("Pet Talents")  
        end  
          
        ShowUIPanel(ModernTalentsFrame)            
        CreateTabButtons()            
        CreateGlyphUI()            
        UpdateHeader()            
        UpdateLegend()            
        UpdateClassBackground()            
        SwitchToTalents()            
           
        if className == "HUNTER" and UnitExists("pet") then            
            petBtn:Show()            
        else            
            petBtn:Hide()            
        end        
                
        UpdateSpecButtonVisibility()    
        UpdatePreviewButtons()    
    end            
end        
          
------------------------------------------------------          
          
SetOverrideBindingClick(ModernTalentsFrame, false, "N", "ModernTalentsMicroButton")          
          
local hiddenButton = CreateFrame("Button", "ModernTalentsMicroButton", UIParent)          
hiddenButton:RegisterForClicks("AnyUp")          
hiddenButton:SetScript("OnClick", function()          
    OpenModernTalents()          
end)          
          
if TalentMicroButton then          
    TalentMicroButton:SetScript("OnClick", function()          
        OpenModernTalents()          
    end)          
end          
          
hooksecurefunc("ToggleTalentFrame", function()          
    if TalentFrame and TalentFrame:IsShown() then          
        TalentFrame:Hide()          
    end          
    if PlayerTalentFrame and PlayerTalentFrame:IsShown() then          
        PlayerTalentFrame:Hide()          
    end          
    OpenModernTalents()          
end)          
          
local originalShowUIPanel = ShowUIPanel            
ShowUIPanel = function(frame, ...)            
    if frame == TalentFrame or frame == PlayerTalentFrame then  
        if not ModernTalentsFrame:IsShown() then  
            OpenModernTalents()  
        end  
        return            
    end            
    return originalShowUIPanel(frame, ...)            
end        
          
------------------------------------------------------          
          
ModernTalentsFrame:RegisterEvent("PLAYER_TALENT_UPDATE")          
ModernTalentsFrame:RegisterEvent("PLAYER_ENTERING_WORLD")          
ModernTalentsFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")          
ModernTalentsFrame:RegisterEvent("CHARACTER_POINTS_CHANGED")          
ModernTalentsFrame:RegisterEvent("GLYPH_ADDED")          
ModernTalentsFrame:RegisterEvent("GLYPH_REMOVED")          
ModernTalentsFrame:RegisterEvent("GLYPH_UPDATED")          
ModernTalentsFrame:RegisterEvent("USE_GLYPH")          
ModernTalentsFrame:RegisterEvent("PET_TALENT_UPDATE")          
ModernTalentsFrame:RegisterEvent("UNIT_PET")  
ModernTalentsFrame:RegisterEvent("PET_UI_CLOSE")
ModernTalentsFrame:RegisterEvent("PREVIEW_TALENT_POINTS_CHANGED")
ModernTalentsFrame:RegisterEvent("PREVIEW_PET_TALENT_POINTS_CHANGED")  
  
ModernTalentsFrame:SetScript("OnEvent", function(self, event, ...)              
    if self:IsShown() then              
        if event == "PLAYER_ENTERING_WORLD" or event == "ACTIVE_TALENT_GROUP_CHANGED" then              
            className = select(2, UnitClass("player")) or "Unknown"              
              
            local hadPetTalents = showPetTalents  
            if showPetTalents and not UnitExists("pet") then  
                showPetTalents = false  
                petContainer:Hide()  
                for _, btn in ipairs(petTabButtons) do  
                    btn:Hide()  
                end  
                petBtn:SetText("Pet Talents")  
            end  
              
            UpdateHeader()              
            CreateTabButtons()              
            UpdateLegend()              
            UpdateClassBackground()              
              
            if currentMode == "glyphs" then              
                UpdateGlyphsUI()              
            elseif currentMode == "talents" then  
                UpdateTalentsUI()  
            elseif hadPetTalents and UnitExists("pet") then  
                UpdatePetTalentsUI()  
            end  
              
            if className == "HUNTER" and UnitExists("pet") then              
                petBtn:Show()              
            else              
                petBtn:Hide()              
                showPetTalents = false              
                petContainer:Hide()  
                for _, btn in ipairs(petTabButtons) do  
                    btn:Hide()  
                end  
            end        
              
            UpdateSpecButtonVisibility()    
            UpdatePreviewButtons()  
			elseif event == "PET_UI_CLOSE" then  
    if showPetTalents then  
        showPetTalents = false  
        petContainer:Hide()  
        for _, btn in ipairs(petTabButtons) do  
            btn:Hide()  
        end  
        petBtn:SetText("Pet Talents")
        UpdateHeader()  
    end
              
        elseif event == "CHARACTER_POINTS_CHANGED" then              
            UpdateHeader()  
            UpdatePreviewButtons()  
              
        elseif event == "PREVIEW_TALENT_POINTS_CHANGED" then    
    if currentMode == "talents" then      
        UpdateTalentsUI()      
        UpdatePreviewButtons()    
        UpdateHeader()
    end    
              elseif event == "PLAYER_TALENT_UPDATE" then  
            UpdateSpecButtonVisibility()
              
            if currentMode == "talents" and not showPetTalents then  
                UpdateTalentsUI()  
            end
        elseif event == "PREVIEW_PET_TALENT_POINTS_CHANGED" then  
            if showPetTalents and UnitExists("pet") then  
                UpdatePetTalentsUI()  
                UpdatePreviewButtons()  
                UpdateHeader()  
            end  
               elseif event == "USE_GLYPH" then  
    OpenModernGlyphsFrame()
			  
        elseif event == "GLYPH_ADDED" or event == "GLYPH_REMOVED" or event == "GLYPH_UPDATED" or event == "USE_GLYPH" then              
            if currentMode == "glyphs" then              
                UpdateGlyphsUI()              
            end              
              
			  
        elseif event == "PLAYER_STARTED_MOVING" then          
            for _, slot in ipairs(glyphButtons) do          
                if slot and slot.loadingBar and slot.loadingBar:IsShown() then          
                    slot.loadingBar:Hide()          
                    slot.loadingBar:SetScript("OnUpdate", nil)          
                    UIErrorsFrame:AddMessage("Action cancelled by movement.", 1.0, 0.5, 0.0, 1.0)          
                end          
            end          
              
        elseif event == "PET_TALENT_UPDATE" then              
            if showPetTalents and UnitExists("pet") then              
                UpdatePetTalentsUI()  
                UpdateHeader()  
            end              
              
        elseif event == "UNIT_PET" then                
				local unit = ...                
				if unit == "player" then    
					if UnitExists("pet") then    
						if className == "HUNTER" then    
							petBtn:Show()    
						end    
						if showPetTalents then    
							CreatePetTabButtons()    
							UpdatePetTalentsUI()    
							UpdateHeader()    
						end    
					else    
						petBtn:Hide()    
						if showPetTalents then    
							showPetTalents = false    
							petContainer:Hide()    
							for _, btn in ipairs(petTabButtons) do    
								btn:Hide()    
							end    
							petBtn:SetText("Pet Talents")
						end    
						UpdateHeader()    
					end    
				end             
              
        else              
            if currentMode == "talents" and not showPetTalents then              
                UpdateTalentsUI()              
            elseif showPetTalents and UnitExists("pet") then  
                UpdatePetTalentsUI()  
            end              
        end              
    end              
end)                  
------------------------------------------------------          