---@meta

---@class ASTExtraArcadeVehicle: ASTExtraVehicleBase
---@field bOpenTrailMark boolean
---@field TrailMarkClass ATrailMarkActor
---@field WeakTrailMarkActor ATrailMarkActor
---@field TrailOffsetArray ULuaArrayHelper<FVector>
---@field OverrideTrailOffsetArray ULuaArrayHelper<FVector>
---@field TrailPointOffset number
---@field bEnablePostPhysXTickClient boolean
---@field MaxDriftScoreToNitroAccelerate number
---@field CurDriftScore number
---@field NitroAccelerateNum number
---@field MaxNitroAccelerateNum number
---@field DriftFinishTimeStamp ULuaArrayHelper<number>
---@field MaxDriftFinishAccelerateNum number
---@field DriftFinishAccelerateValidTime number
---@field bEnableUseDefaultPhysicState boolean
---@field ArcadeSfxLoop FSTExtraVehicleSfxLoop
---@field RTPC_Throttle_InterpSpeed_Up number
---@field RTPC_Throttle_InterpSpeed_Down number
local ASTExtraArcadeVehicle = {}

---@return boolean
function ASTExtraArcadeVehicle:ShouldShowTrailMark() end

---@param NewValue number
function ASTExtraArcadeVehicle:SetDriftScorce(NewValue) end

---@param NewNitroAccelerateNum number
function ASTExtraArcadeVehicle:SetNitroAccelerateNum(NewNitroAccelerateNum) end

---@param DeltaTime number
function ASTExtraArcadeVehicle:CaculateDriftScore(DeltaTime) end

---@param AccType EArcadeVehicleAdditionAccelerateType
function ASTExtraArcadeVehicle:OnAdditionAccelerate(AccType) end

---@param AccType EArcadeVehicleAdditionAccelerateType
function ASTExtraArcadeVehicle:AddAdditionAccelerate(AccType) end

---@param AccType EArcadeVehicleAdditionAccelerateType
function ASTExtraArcadeVehicle:UseAdditionAccelerate(AccType) end

---@param AccType EArcadeVehicleAdditionAccelerateType
---@param AccTime number
---@param AccFactor number
---@param AccMaxSpeed number
function ASTExtraArcadeVehicle:ReqArcadeVehicleAccelerate(AccType, AccTime, AccFactor, AccMaxSpeed) end

---@param AccType EArcadeVehicleAdditionAccelerateType
---@param AccTime number
---@param AccFactor number
---@param AccMaxSpeed number
function ASTExtraArcadeVehicle:BroadCastArcadeVehicleAccelerate(AccType, AccTime, AccFactor, AccMaxSpeed) end

---@param SpeedKMH number
---@return number
function ASTExtraArcadeVehicle:GetSpeedToRPM(SpeedKMH) end

---@param SpeedKMH number
---@return number
function ASTExtraArcadeVehicle:GetSpeedToGear(SpeedKMH) end
