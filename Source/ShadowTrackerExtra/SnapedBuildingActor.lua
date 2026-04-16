---@meta

---@class ASnapedBuildingActor: ASTBuildingActorBase
---@field LeftDetectionRange string
---@field RightDetectionRange string
---@field BuildingEffectTag FGameplayTag
---@field MaxBuildingCount number
---@field NeedCheckGround boolean
---@field GroundTraceDistance number
---@field GroundTraceUpDistance number
---@field GroundCheckCollisions ULuaArrayHelper<ECollisionChannel>
---@field GroundCheckIgnoredClass ULuaArrayHelper<UObject>
---@field BuildingInfo FSnapedBuildingInfo
---@field BuildIgnoredActor ULuaArrayHelper<AActor>
local ASnapedBuildingActor = {}

---@param World UWorld
---@param transform FTransform
---@return boolean
function ASnapedBuildingActor:CheckIsTraceGroud(World, transform) end

---@return boolean
function ASnapedBuildingActor:CheckIsMaxBuild() end
