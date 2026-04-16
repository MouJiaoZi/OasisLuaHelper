---@meta

---@class AReelTaskTreasureBox: AActor
---@field PlayerKeyList ULuaArrayHelper<number>
local AReelTaskTreasureBox = {}

---@param PC APlayerController
function AReelTaskTreasureBox:SetPlayerController(PC) end

---@param PlayerKey number
---@return boolean
function AReelTaskTreasureBox:CheckIsSelf(PlayerKey) end
