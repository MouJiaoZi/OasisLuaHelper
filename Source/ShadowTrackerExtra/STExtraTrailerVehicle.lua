---@meta

---@class ETrailerMovementMode
---@field InAir number @在空中
---@field InWater number @在水里
---@field OnGround number @在地面
ETrailerMovementMode = {}


---@class ASTExtraTrailerVehicle: ASTExtraWheeledNWVehicle
---@field LFWheelModifyOffset FVector
---@field RFWheelModifyOffset FVector
---@field CanHookDistanceSqr number
---@field TickHookPointInterval number
---@field bUsePhysConstraint boolean
---@field HarnessTailSocketName string
---@field HarnessHeadSocketName string
---@field HardLinkLength number
---@field fFrontWheelAxleAngle number
---@field vFLeftWheelOffset FVector
---@field vFRightWheelOffset FVector
---@field fFrontWheelRaidus number
---@field bTickUpdateConnect boolean
---@field bConnectedWhenBorn boolean
---@field TickTryConnectBornInterval number
---@field BornCheckOverlapBox FVector
---@field fPlayLowSpeedEffect number
---@field fPlayHighSpeedEffect number
---@field VehicleHighSpeedEffect string
---@field VehicleLowSpeedEffect string
---@field VehicleJumpEffect string
---@field VehicleConnect1Effect string
---@field VehicleConnect2Effect string
---@field HorseAttachSocket string
---@field CheckSpaceCollisionIndex number
---@field ModifyCollisionIndexArray ULuaArrayHelper<number>
---@field fUnHookByHeadVelocityReduceRatio number
---@field TrailerMoveMode ETrailerMovementMode
---@field fJumpImpluseSize number
---@field JumpApplyImpluseSocket string
---@field CurwalkType EWalkType
---@field WalkMaxSpeed number
---@field fMaxAngleWithWorldUp number
---@field TrailerInWaterLoop FSTExtraVehicleSfxLoop
---@field LastLinearVelocity FVector
---@field fPlayStopAudioSpeed number
---@field fStopPlayAudioCD number
---@field fStopPlayAudioTime number
---@field fJumpVelocitySize number
---@field fJumpAngularSpeedSize number
---@field RunDragCoefficientScale number
---@field fTimeDeleteAfterDestroy number
---@field JumpDragCoefficientScale number
---@field fLastInAirTime number
---@field fCurTime number
---@field fInAirToGroundSwitchCD number
---@field bNeedClampXYVelocityInPostTcik boolean
---@field bDestroy boolean
---@field HeadAttachRelLocation FVector
---@field fModifyHeadZOffsetWheelSusOffset number
---@field fModifyHeadZOffsetToTargetDis number
---@field fModifyHeadZSpeed number
---@field fModifyHeadZOffsetMaxDis number
---@field bModifyHeadCollisionssPitchRollAttachTrailer boolean
---@field OldTrailerRot FRotator
---@field fMinModifyHeadCollisionRotChangeValue number
---@field bUpdateConnectEffect boolean
local ASTExtraTrailerVehicle = {}

---@param VehicleUserComp UVehicleUserComponent
---@return boolean
function ASTExtraTrailerVehicle:CehckCanConnectHeadVehicle(VehicleUserComp) end

---@return ETrailerMovementMode
function ASTExtraTrailerVehicle:GetTrailerMoveMode() end

---@param Head ASTExtraVehicleBase
function ASTExtraTrailerVehicle:OnHookedByHead(Head) end

---@param Head ASTExtraVehicleBase
function ASTExtraTrailerVehicle:OnUnHookedByHead(Head) end

---@param ShapeIndex number
---@param newQuat FQuat
function ASTExtraTrailerVehicle:SetShapeTransform(ShapeIndex, newQuat) end

---@param Connected boolean
function ASTExtraTrailerVehicle:ModifyTrailerCollision(Connected) end

---@param TrailerExtraParams FTrailerServerMoveDataInfo
function ASTExtraTrailerVehicle:UpdateHookAndTransform(TrailerExtraParams) end

---@return boolean
function ASTExtraTrailerVehicle:TrailerVehicleCheckObstacle() end

---@param bConnect boolean
function ASTExtraTrailerVehicle:ModifyTrailerWheelCollision(bConnect) end

function ASTExtraTrailerVehicle:DoJump() end

---@param walkType EWalkType
function ASTExtraTrailerVehicle:SetWalkType(walkType) end

---@return EWalkType
function ASTExtraTrailerVehicle:GetWalkType() end
