---@meta

---@class ASTExtraFlyZombieCharacter: ASTExtraZombieCharacter
---@field MinSimulateSyncSyncSpeed number
---@field bFallGroundWhenDead boolean
local ASTExtraFlyZombieCharacter = {}

function ASTExtraFlyZombieCharacter:OnRep_ReplicatedMovement() end
