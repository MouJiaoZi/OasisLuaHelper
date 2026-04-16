---@meta

---@class UActivitySpineActorMovement: UActorComponent
---@field fMoveTime number
local UActivitySpineActorMovement = {}

---@param spline USplineComponent
---@param IndexKey number
---@param EndIndexKey number
---@param obj USceneComponent
---@param fStateName string
---@param bIsA2B boolean
function UActivitySpineActorMovement:StarMove(spline, IndexKey, EndIndexKey, obj, fStateName, bIsA2B) end

function UActivitySpineActorMovement:EndMove() end
