---@meta

---@class AInteractiveTreasureBox: ASimpleDeadBox
---@field bSyncHasBeenOpened boolean
local AInteractiveTreasureBox = {}

---@param OpenPlayer AUAEPlayerController
function AInteractiveTreasureBox:OpenBoxOnServer(OpenPlayer) end

---@param bOldVar boolean
function AInteractiveTreasureBox:OnRep_SyncHasBeenOpened(bOldVar) end

function AInteractiveTreasureBox:HandleOpenTreasureBox() end
