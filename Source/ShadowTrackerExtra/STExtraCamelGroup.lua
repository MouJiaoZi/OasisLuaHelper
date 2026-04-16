---@meta

---@class ASTExtraCamelGroup: AActor
---@field CamelQueueDist number
---@field StationStopRemainTime number
---@field StationStopTime number
---@field SeparationWeight number
---@field CohesionWeight number
---@field AlignmentWeight number
---@field bAtDestination boolean
---@field VisitedStations ULuaSetHelper<AActor>
---@field BrainTickInterval number
---@field CamelsArray ULuaArrayHelper<ASTExtraCamelVehicle>
---@field CamelCount number
---@field SpawnTableIdx number
---@field DelayCreateTime number
---@field IsStoppedBlackboardName string
---@field IsForceStoppedBlackboardName string
---@field StopPointLocationBlackboardName string
---@field StopPointRotationBlackboardName string
---@field IsNeedOnlyRotationInStation string
---@field DrivingPlayersCount number
---@field CamelGroupForceOffsetBlackboardName string
---@field CamelGroupTargetSpeedModifierName string
---@field FrontCamelBBKeyName string
---@field BackCamelBBKeyName string
---@field SelfActorBBKeyName string
---@field CamelGroupSpeedupModifier number
---@field CamelGroupSpeedupTime number
---@field CamelGroupSpeedupCoolDown number
---@field CamelGroupSpeedupTimeStamp number
---@field CamelGroupScanCoolDown number
---@field CamelGroupScanTimeStamp number
---@field MarkTypeID number
---@field CorrespondingStations ULuaArrayHelper<AActor>
---@field CorrespondingStationsLocation ULuaArrayHelper<FVector>
---@field EntireMapRouteUIListName string
---@field MiniMapRouteUIListName string
local ASTExtraCamelGroup = {}

function ASTExtraCamelGroup:CreateCamels() end

---@param bStop boolean
---@param StopPos ULuaArrayHelper<FVector>
---@param StopRot ULuaArrayHelper<FVector>
---@param Station AActor
---@param bForceStop boolean
---@param bDestination boolean
---@param TargetSpeedModifier number
---@return boolean
function ASTExtraCamelGroup:SetGroupStop(bStop, StopPos, StopRot, Station, bForceStop, bDestination, TargetSpeedModifier) end

function ASTExtraCamelGroup:CamelCaravanSpeedup() end

function ASTExtraCamelGroup:CamelCaravanSpeedupFinish() end

function ASTExtraCamelGroup:CamelAddIgnoreActorEachOther() end

function ASTExtraCamelGroup:OnRep_CamelsArray() end
