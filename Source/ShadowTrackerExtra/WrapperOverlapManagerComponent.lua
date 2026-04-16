---@meta

---@class UWrapperOverlapManagerComponent: UBoxComponent
---@field ManagerLevel number
---@field OverlapCheckInterval number
---@field bDrawSubLevelManageComp boolean
---@field DrawSubLevelManageCompTime number
---@field OverlappedSubLevelActorArray ULuaArrayHelper<AActor>
local UWrapperOverlapManagerComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UWrapperOverlapManagerComponent:HandleOnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UWrapperOverlapManagerComponent:HandleEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
