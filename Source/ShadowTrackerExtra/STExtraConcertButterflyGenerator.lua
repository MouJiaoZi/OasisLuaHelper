---@meta

---@class ASTExtraConcertButterflyGenerator: AUAERegionActor
---@field bCanSpawnButterfly boolean
---@field MaxButterflyNum number
---@field ButterflySpawnInterval number
---@field TimeElapsed number
---@field GenHalfLength number
---@field GenHalfWidth number
---@field GenHalfHeight number
---@field MaxFlyDistance number
---@field CurFreeButterflies ULuaArrayHelper<AActor>
---@field ButterflyActorClass ASTExtraConcertButterfly
local ASTExtraConcertButterflyGenerator = {}

function ASTExtraConcertButterflyGenerator:SpawnNewButterflies() end

---@return FVector
function ASTExtraConcertButterflyGenerator:RandButterflySpawnLocation() end
