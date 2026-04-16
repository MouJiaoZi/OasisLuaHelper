---@meta

---@class UExplosionUtils: UBlueprintFunctionLibrary
local UExplosionUtils = {}

---对搜索到的目标，进行数量限制，裁剪掉多余的目标，优化性能
---@param BaseLocation FVector
---@param Params FCountLimitActorFilterParams
---@param InOutOverlaps ULuaArrayHelper<FOverlapResult>
---@return boolean
function UExplosionUtils:CullingOverlapsByCountLimit(BaseLocation, Params, InOutOverlaps) end
