---@meta

---@class FHeadItem
---@field PlayerName string
FHeadItem = {}


---@class FTeamData
---@field TeamHeadItems ULuaArrayHelper<FHeadItem>
FTeamData = {}


---@class UOBModePlayerHeadList: UPlayerListWidgetBase
---@field OBHeadList ULuaMapHelper<number, FTeamData>
---@field bEnableWidgetDynamicZOrder boolean
local UOBModePlayerHeadList = {}

---@param character ASTExtraBaseCharacter
---@param show boolean
function UOBModePlayerHeadList:RefreshOnePlayerHead(character, show) end

---@param PlayerName string
---@param HeadItem FHeadItem
function UOBModePlayerHeadList:CreateHeadItem(PlayerName, HeadItem) end

function UOBModePlayerHeadList:DynamicSortPlayerHeadWidget() end

---@param character ASTExtraBaseCharacter
function UOBModePlayerHeadList:OnPlayerPorpChanged(character) end
