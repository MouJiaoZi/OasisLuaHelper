---@meta

---@class AFlowerLantern: AUAERegionActor
---@field bIsInCDTime boolean
---@field MoveSpeed number
---@field MovePath ULuaArrayHelper<FVector>
---@field MoveInterval number
---@field SourceLoc FVector
---@field MoveTime number
---@field CurMoveIndex number
---@field RotatingSpeed number
---@field bIsRotating boolean
---@field CheckOverlapInterval number
local AFlowerLantern = {}

function AFlowerLantern:OnActorOverlap() end

function AFlowerLantern:OnRep_IsInCDTime() end

---@param PlayerKey string
function AFlowerLantern:OnImpactFlowerLantern(PlayerKey) end

function AFlowerLantern:K2_OnBulletHit() end
