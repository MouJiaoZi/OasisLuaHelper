---@meta

---水上飞机
---@class ASTExtraSeaPlaneVehicle: ASTExtraMotorgliderVehicle
---@field FlyStateHeight_Low number
---@field FlyStateHeight_High number
---@field bManualLiftLogic boolean
---@field bNeedManualLiftFromGround boolean
---@field bNeedManualLiftFromWater boolean
---@field bGroundEffectNeedManualLift boolean
---@field bEnableMultiMovementCheckInServerCpp boolean
---@field MultiMovementCheckInterval number
---@field MultiMovementGroundType EVehicleMoveCompType
---@field MultiMovementWaterType EVehicleMoveCompType
---@field SmoothCurSpeedCount number
---@field SmoothedSpeed number
---@field bFlyState boolean
---@field Client_DontDamageEffectTime number
---@field InWaterSfxLoop FSTExtraVehicleSfxLoop
---@field WaterEffectVelocityRange FVector2D
---@field WaterEffectScaleRange FVector2D
---@field WaterEffectScalingSpeed number
---@field CurWaterEffectScaleValue number
---@field CurWaterEffectEnabled boolean
---@field bHasPlayedWaterSlideSound boolean
---@field VehicleWaterEffect string
---@field VehicleWaterEffectScaleParam string
---@field bCurFoldState boolean
---@field LastMultiMoveCheckTime number
local ASTExtraSeaPlaneVehicle = {}

---@param MatDMI UMaterialInterface
function ASTExtraSeaPlaneVehicle:SetAvatarMID(MatDMI) end

---@param NewState boolean
function ASTExtraSeaPlaneVehicle:SetFlyState(NewState) end
