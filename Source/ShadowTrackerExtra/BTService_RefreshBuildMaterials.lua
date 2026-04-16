---@meta

---@class FBuildActorRefreshData
---@field BuildActorID number
---@field BuildActorAmount number
FBuildActorRefreshData = {}


---@class FBuildActorRefreshTime
---@field RefrestTimePoint number
---@field BuildActorDatas ULuaArrayHelper<FBuildActorRefreshData>
FBuildActorRefreshTime = {}


---@class UBTService_RefreshBuildMaterials: UBTService
---@field BuildActorRefreshDatas ULuaArrayHelper<FBuildActorRefreshTime>
---@field IsNotSeeTargetTime number
local UBTService_RefreshBuildMaterials = {}
