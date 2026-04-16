---@meta

---@class EWaterRangeType
---@field Box number
---@field Cylinder number
---@field Mesh number
---@field PhysicsVolume number
EWaterRangeType = {}


---@class AWaterSwimActor: AActor
---@field WaterSufaceOffset number
---@field bIsWaterEnabled boolean
---@field UnWaterBoxCompList ULuaArrayHelper<UBoxComponent>
---@field Priority number
---@field WaterRangeType EWaterRangeType
---@field CylinderRadius number
---@field VolumeActorTagName string
---@field VolumeActorList ULuaArrayHelper<APhysicsVolume>
---@field WaterVolumeVertex ULuaArrayHelper<FVector>
---@field WaterVolumeTriangle ULuaArrayHelper<number>
---@field WaterVolumeMesh UStaticMesh
local AWaterSwimActor = {}

---@param location FVector
---@param ZAxisTolerance number
---@return boolean
function AWaterSwimActor:IsLocationInWater(location, ZAxisTolerance) end

---@param MinHeight number
---@param MaxHeight number
---@param TargetPos FVector
---@return boolean
function AWaterSwimActor:GetWaterZHeight(MinHeight, MaxHeight, TargetPos) end

---@param Location FVector
---@param ZAxisTolerance number
---@return boolean
function AWaterSwimActor:IsLocationInWaterRoughly(Location, ZAxisTolerance) end

---@param ForceInit boolean
function AWaterSwimActor:InitCustomData(ForceInit) end

function AWaterSwimActor:CameraEnterWater() end

function AWaterSwimActor:CameraLeaveWater() end

---@param InQualityLevel number
function AWaterSwimActor:UpdateWaterMaterial(InQualityLevel) end

---@param InQualityLevel number
---@return boolean
function AWaterSwimActor:IsQualityLevelValid(InQualityLevel) end

function AWaterSwimActor:GetWaterMaterialList() end

---@param InQualityLevel number
function AWaterSwimActor:SetWaterMaterialByQualityLevel(InQualityLevel) end

function AWaterSwimActor:SetWaterMaterialDeferred() end

function AWaterSwimActor:SetUnderWaterMaterialAndVisibility() end

---@param IsAdd boolean
---@param InActor AActor
function AWaterSwimActor:UGCMobileAddScreenEffect(IsAdd, InActor) end
