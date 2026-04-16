---@meta

---@class ASTExtraLostMobileVehicle: ASTExtraVehicleBase
---@field SteeringWheelRate number
---@field SteeringRightInput number
---@field WaterDontHavePowerPercent number
---@field BackLightName string
---@field FrontLightNameConfig string
---@field bCanForceSyncRot boolean
---@field bForceSyncRotThreshold number
---@field LeaveFreeCameraCD number
---@field LeaveFreeCameraCounter number
---@field SimulateTargetViewRot FRotator
---@field bEnableSyncTargetViewRot boolean
---@field bHasInitDriver boolean
---@field SeqForceUpdateAnimation boolean
---@field AccelerateEffectName string
---@field AccelerateEffectIndex number
---@field AccelerateEffectVelocityRange FVector2D
---@field AccelerateEffectParamName string
---@field AccelerateEffectUpdateInterval number
---@field bIsAccelerateEffectShow boolean
---@field RTPC_Throttle_InterpSpeed_Up number
---@field RTPC_Throttle_InterpSpeed_Down number
---@field RTPC_VelocityToRPMScale number
---@field RTPC_MaxRPM number
---@field ServerForceUpdateWheelTransformTimer number
---@field ServerForceUpdateWheelTransformTime number
---@field ExtraSpecialCollisionDataList ULuaArrayHelper<FVehicleSpecialCollisionData>
---@field SpecialModifyCollisionList ULuaArrayHelper<ECollisionChannel>
local ASTExtraLostMobileVehicle = {}

---@return FRotator
function ASTExtraLostMobileVehicle:GetSimulateViewRot() end

---@return boolean
function ASTExtraLostMobileVehicle:CheckSimulateViewFreeCamera() end

---@return number
function ASTExtraLostMobileVehicle:GetForwardSpeedCustom() end

---@return boolean
function ASTExtraLostMobileVehicle:HasPower() end

---@param DeltaTime number
function ASTExtraLostMobileVehicle:UpdateViewRot(DeltaTime) end

---@param CurViewRot FRotator
function ASTExtraLostMobileVehicle:SyncTargetViewRot(CurViewRot) end

function ASTExtraLostMobileVehicle:OnRep_SimulateTargetViewRot() end

---@param LightValue number
function ASTExtraLostMobileVehicle:OnSetTailLightValue(LightValue) end

---@param MatDMI UMaterialInterface
function ASTExtraLostMobileVehicle:SetAvatarMID(MatDMI) end

function ASTExtraLostMobileVehicle:InitDriver() end

function ASTExtraLostMobileVehicle:UpdateAccelerateEffect() end

function ASTExtraLostMobileVehicle:ServerForceUpdateWheelTransform() end

function ASTExtraLostMobileVehicle:ModifyExtraSpecialBodyCollision() end
