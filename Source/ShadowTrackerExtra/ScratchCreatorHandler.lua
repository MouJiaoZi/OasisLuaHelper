---@meta

---@class UScratchCreatorHandler: UObject
---@field ScratchRuntimeCaches ULuaMapHelper<AActor, FScratchRuntimeCache>
---@field ClearInvalidDecalTimeout number
---@field ClearInvalidDecalUpdateInterval number
local UScratchCreatorHandler = {}

---@param HitResults ULuaArrayHelper<FHitResult>
---@param HitterPosition FVector
---@param ScratchSetting FScratchSetting
function UScratchCreatorHandler:CreateScratch(HitResults, HitterPosition, ScratchSetting) end
