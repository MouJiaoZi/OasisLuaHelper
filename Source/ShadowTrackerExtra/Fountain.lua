---@meta

---@class AFountain: AActor
---@field IgnoreHeightCheckTime number
---@field HeightOffset number
---@field JumpTarget FVector
---@field JumpTime number
---@field EnableTime number
---@field bEnable boolean
---@field EnableInterval number
local AFountain = {}

---@param NewChar ACharacter
function AFountain:LaunchPlayer(NewChar) end

---@param NewChar ACharacter
function AFountain:ChangeCharacterJumpLimitOnServer(NewChar) end

---@param bFountainEnable boolean
function AFountain:OnFountainStateChanged(bFountainEnable) end
