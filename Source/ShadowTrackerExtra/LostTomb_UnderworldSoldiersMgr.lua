---@meta

---@class ALostTomb_UnderworldSoldiersMgr: AActor, IRegionObjectInterface
---@field RegionSizeIndex number
---@field IgnoreTag string
local ALostTomb_UnderworldSoldiersMgr = {}

---@param bEnter boolean
function ALostTomb_UnderworldSoldiersMgr:BPOnPlayerActiveRegionsChanged(bEnter) end

---@param OutHit FHitResult
---@param Start FVector
---@param End FVector
---@param Rot FQuat
---@param Radius number
---@param HalfHeight number
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannel ECollisionChannel
---@return boolean
function ALostTomb_UnderworldSoldiersMgr:CapsuleTraceByChannel(OutHit, Start, End, Rot, Radius, HalfHeight, IgnoreActors, TraceChannel) end
