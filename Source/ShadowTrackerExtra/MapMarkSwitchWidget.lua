---@meta

---@class FMarkSwitchModeDescription
---@field ModeUIStr string
---@field CheckBoxStr string
FMarkSwitchModeDescription = {}


---@class FMarkSwitchSingleVersion
---@field VersionID number
---@field ModeSwitchDescriptions ULuaArrayHelper<FMarkSwitchModeDescription>
FMarkSwitchSingleVersion = {}


---@class FMapMarkCompositeSwitchData
---@field CategoryID number
---@field ItemDescription string
---@field MarkConfigArray ULuaArrayHelper<FMapMarkSwitchConfig>
FMapMarkCompositeSwitchData = {}


---@class UMapMarkSwitchWidget: UUAEUserWidget
---@field MarkSwitchSettings ULuaArrayHelper<FMarkSwitchSingleVersion>
---@field iCurActivedVersion number
---@field ModeUIStrList ULuaArrayHelper<string>
---@field ModeUIArray ULuaArrayHelper<string>
---@field bShowWithCheckout boolean
---@field ExsitedSwitchIDs ULuaArrayHelper<number>
---@field ExistedCompositeID ULuaArrayHelper<number>
local UMapMarkSwitchWidget = {}

---@return boolean
function UMapMarkSwitchWidget:InitMapMarkData() end

---@param CheckBoxStr string
function UMapMarkSwitchWidget:ModifyModeCheckBoxText(CheckBoxStr) end

function UMapMarkSwitchWidget:HideModeCheckBoxText() end

---@param inSwitchConfig FMapMarkSwitchConfig
---@return boolean
function UMapMarkSwitchWidget:PreAddItemWithCheck(inSwitchConfig) end

---@param inSwitchConfig FMapMarkCompositeSwitchData
---@return boolean
function UMapMarkSwitchWidget:PreAddCompositeItemWithCheck(inSwitchConfig) end

---@param inSwitchConfig FMapMarkSwitchConfig
function UMapMarkSwitchWidget:AddItemToVerticalBox(inSwitchConfig) end

---@param inSwitchConfig FMapMarkCompositeSwitchData
function UMapMarkSwitchWidget:AddCompositeItemToVerticalBox(inSwitchConfig) end

---@param Category number
---@param inSwitchConfig FMapMarkSwitchConfig
function UMapMarkSwitchWidget:DynamicAddCompositeItemToVerticalBox(Category, inSwitchConfig) end

---@param bVisible boolean
function UMapMarkSwitchWidget:SetMarkListVisible(bVisible) end

function UMapMarkSwitchWidget:TryFindOldModeDescription() end
