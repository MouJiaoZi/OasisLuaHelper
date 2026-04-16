---@meta

---@class ERainbowSwingBuildType
---@field None number
---@field Left number
---@field LeftMiddle number
---@field RightMiddle number
---@field Right number
---@field LeftAndRight number
ERainbowSwingBuildType = {}


---@class IRainbowSwingInterface
IRainbowSwingInterface = {}

---@param BuildingState ERainbowSwingBuildType
---@return FTransform
function IRainbowSwingInterface:GetRainbowSwingBuildingTransform(BuildingState) end

function IRainbowSwingInterface:GetIgnoredActors() end

---@return ERainbowSwingBuildType
function IRainbowSwingInterface:GetCurrentBuildingType() end

---@param CurrentActor AActor
---@param OtherSideActor AActor
function IRainbowSwingInterface:GetRelationSwings(CurrentActor, OtherSideActor) end

---@param Type ERainbowSwingBuildType
---@return boolean
function IRainbowSwingInterface:CheckCanBuild(Type) end

---@return number
function IRainbowSwingInterface:GetCurrentRelationCount() end


---@class ARainbowSwingBuildingActor: ASTBuildingActorBase
---@field LeftDetectionRange string
---@field RightDetectionRange string
---@field LeftDetectionOffset FTransform
---@field RightDetectionOffset FTransform
---@field BuildingBoxExtent FVector
---@field BuildingBoxCenter FVector
---@field BuildingEffect UPersistEffectBase
---@field MaxBuildingCount number
---@field GroundTraceDistance number
---@field GroundTraceUpDistance number
---@field GroundCheckCollisions ULuaArrayHelper<ECollisionChannel>
---@field CurrentBuildingType ERainbowSwingBuildType
---@field CachedIgnoredActors ULuaArrayHelper<AActor>
local ARainbowSwingBuildingActor = {}

---@param World UWorld
---@param transform FTransform
---@return boolean
function ARainbowSwingBuildingActor:CheckCanTraceGroud(World, transform) end
