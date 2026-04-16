---@meta

---@class UPhysicsConstraintComponent: USceneComponent
---@field ComponentName1 FConstrainComponentPropName
---@field ComponentName2 FConstrainComponentPropName
---@field ConstraintSetup_DEPRECATED 
---@field OnConstraintBroken FConstraintBrokenSignature
local UPhysicsConstraintComponent = {}

---@param Component1 UPrimitiveComponent
---@param BoneName1 string
---@param Component2 UPrimitiveComponent
---@param BoneName2 string
function UPhysicsConstraintComponent:SetConstrainedComponents(Component1, BoneName1, Component2, BoneName2) end

function UPhysicsConstraintComponent:BreakConstraint() end

---@param bEnableDriveX boolean
---@param bEnableDriveY boolean
---@param bEnableDriveZ boolean
function UPhysicsConstraintComponent:SetLinearPositionDrive(bEnableDriveX, bEnableDriveY, bEnableDriveZ) end

---@param bEnableDriveX boolean
---@param bEnableDriveY boolean
---@param bEnableDriveZ boolean
function UPhysicsConstraintComponent:SetLinearVelocityDrive(bEnableDriveX, bEnableDriveY, bEnableDriveZ) end

---@param bEnableTwistDrive boolean
---@param bEnableSwingDrive boolean
function UPhysicsConstraintComponent:SetOrientationDriveTwistAndSwing(bEnableTwistDrive, bEnableSwingDrive) end

---@param bEnableSLERP boolean
function UPhysicsConstraintComponent:SetOrientationDriveSLERP(bEnableSLERP) end

---@param bEnableTwistDrive boolean
---@param bEnableSwingDrive boolean
function UPhysicsConstraintComponent:SetAngularVelocityDriveTwistAndSwing(bEnableTwistDrive, bEnableSwingDrive) end

---@param bEnableSLERP boolean
function UPhysicsConstraintComponent:SetAngularVelocityDriveSLERP(bEnableSLERP) end

---@param DriveMode EAngularDriveMode
function UPhysicsConstraintComponent:SetAngularDriveMode(DriveMode) end

---@param InPosTarget FVector
function UPhysicsConstraintComponent:SetLinearPositionTarget(InPosTarget) end

---@param InVelTarget FVector
function UPhysicsConstraintComponent:SetLinearVelocityTarget(InVelTarget) end

---@param PositionStrength number
---@param VelocityStrength number
---@param InForceLimit number
function UPhysicsConstraintComponent:SetLinearDriveParams(PositionStrength, VelocityStrength, InForceLimit) end

---@param InPosTarget FRotator
function UPhysicsConstraintComponent:SetAngularOrientationTarget(InPosTarget) end

---@param InVelTarget FVector
function UPhysicsConstraintComponent:SetAngularVelocityTarget(InVelTarget) end

---@param PositionStrength number
---@param VelocityStrength number
---@param InForceLimit number
function UPhysicsConstraintComponent:SetAngularDriveParams(PositionStrength, VelocityStrength, InForceLimit) end

---@param ConstraintType ELinearConstraintMotion
---@param LimitSize number
function UPhysicsConstraintComponent:SetLinearXLimit(ConstraintType, LimitSize) end

---@param ConstraintType ELinearConstraintMotion
---@param LimitSize number
function UPhysicsConstraintComponent:SetLinearYLimit(ConstraintType, LimitSize) end

---@param ConstraintType ELinearConstraintMotion
---@param LimitSize number
function UPhysicsConstraintComponent:SetLinearZLimit(ConstraintType, LimitSize) end

---@param MotionType EAngularConstraintMotion
---@param Swing1LimitAngle number
function UPhysicsConstraintComponent:SetAngularSwing1Limit(MotionType, Swing1LimitAngle) end

---@param MotionType EAngularConstraintMotion
---@param Swing2LimitAngle number
function UPhysicsConstraintComponent:SetAngularSwing2Limit(MotionType, Swing2LimitAngle) end

---@param ConstraintType EAngularConstraintMotion
---@param TwistLimitAngle number
function UPhysicsConstraintComponent:SetAngularTwistLimit(ConstraintType, TwistLimitAngle) end

---@param bLinearBreakable boolean
---@param LinearBreakThreshold number
function UPhysicsConstraintComponent:SetLinearBreakable(bLinearBreakable, LinearBreakThreshold) end

---@param bAngularBreakable boolean
---@param AngularBreakThreshold number
function UPhysicsConstraintComponent:SetAngularBreakable(bAngularBreakable, AngularBreakThreshold) end

---@return number
function UPhysicsConstraintComponent:GetCurrentTwist() end

---@return number
function UPhysicsConstraintComponent:GetCurrentSwing1() end

---@return number
function UPhysicsConstraintComponent:GetCurrentSwing2() end

---@param Frame EConstraintFrame
---@param RefFrame FTransform
function UPhysicsConstraintComponent:SetConstraintReferenceFrame(Frame, RefFrame) end

---@param Frame EConstraintFrame
---@param RefPosition FVector
function UPhysicsConstraintComponent:SetConstraintReferencePosition(Frame, RefPosition) end

---@param Frame EConstraintFrame
---@param PriAxis FVector
---@param SecAxis FVector
function UPhysicsConstraintComponent:SetConstraintReferenceOrientation(Frame, PriAxis, SecAxis) end

---@param bDisableCollision boolean
function UPhysicsConstraintComponent:SetDisableCollision(bDisableCollision) end

---@param OutLinearForce FVector
---@param OutAngularForce FVector
function UPhysicsConstraintComponent:GetConstraintForce(OutLinearForce, OutAngularForce) end

---@return boolean
function UPhysicsConstraintComponent:IsBroken() end
