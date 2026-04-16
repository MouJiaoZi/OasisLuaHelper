---@meta

---@class FDropItem_Param
FDropItem_Param = {}


---@class FDropItem_CheckFunctionName
---@field FunctionName_OneParam_BoolReturn string
FDropItem_CheckFunctionName = {}


---@class UDropItemWhenDynmiacPlatformDestroyComponent: UActorComponent
---@field CheckFunction FDropItem_CheckFunctionName
---@field RegionSizes ULuaArrayHelper<ERegionSizeIndex>
---@field Range number
---@field DownTraceDist number
---@field MaxPutDownNum number
---@field PutDownClassPathList ULuaArrayHelper<AActor>
---@field RelativeCenter FVector
---@field bHasDroped boolean
---@field bAutoDropWhenActorDestroy boolean
---@field bUseTriggerDeformEffect boolean
local UDropItemWhenDynmiacPlatformDestroyComponent = {}

---@param OutDropDownActors ULuaArrayHelper<AActor>
---@param TargetLocations ULuaArrayHelper<FVector>
---@param TargetRotations ULuaArrayHelper<FRotator>
function UDropItemWhenDynmiacPlatformDestroyComponent:DropItem_Multicast(OutDropDownActors, TargetLocations, TargetRotations) end

---@param IgnoreActors ULuaArrayHelper<AActor>
---@param OutDropDownActors ULuaArrayHelper<AActor>
function UDropItemWhenDynmiacPlatformDestroyComponent:DropItem(IgnoreActors, OutDropDownActors) end
