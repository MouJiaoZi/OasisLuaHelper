---@meta

---@class FSpacialItemThreashold
---@field GlobalCoolDownInterval number
---@field GlobalExecuteCountThreshold number
---@field SpacialItemGroupList ULuaArrayHelper<number>
FSpacialItemThreashold = {}


---@class UCheatCommand_AddItem: UCheatCommand
---@field SpacialItemThresholdList ULuaArrayHelper<FSpacialItemThreashold>
local UCheatCommand_AddItem = {}

---@param InController ASTExtraPlayerController
---@param InItemID number
---@param InItemCount number
---@return ECheatCommandResultType
function UCheatCommand_AddItem:AddItem(InController, InItemID, InItemCount) end

---@param InCommandInfo FCheatCommandInfo
---@param InItemID number
---@param InItemCount number
function UCheatCommand_AddItem:PackCommandParams(InCommandInfo, InItemID, InItemCount) end

---@param InCommandInfo FCheatCommandInfo
---@return FCheatCommandItemUnit
function UCheatCommand_AddItem:UnPackCommandParams(InCommandInfo) end
