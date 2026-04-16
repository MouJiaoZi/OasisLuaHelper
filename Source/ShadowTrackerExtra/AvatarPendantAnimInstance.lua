---@meta

---@class FAngularLimitsPair
---@field Dynamic_AngularLimitsMin FVector
---@field Dynamic_AngularLimitsMax FVector
FAngularLimitsPair = {}


---@class UAvatarPendantAnimInstance: USkirtAnimInstanceBase
---@field bUseDynamicAngularLimits boolean
---@field bIgnoreRepeatSetDynamicAngularLimits boolean
---@field Dynamic_AngularLimitsMin FVector
---@field Dynamic_AngularLimitsMax FVector
---@field LocalJointOffset FVector
---@field HighSpeedLocalJointOffset FVector
---@field LowSpeedLocalJointOffset FVector
---@field SimulatedProxyHighSpeedLocalJointOffset FVector
---@field SimulatedProxyLowSpeedLocalJointOffset FVector
---@field VehicleDelayLocalJointOffset FVector
---@field HighSpeed number
---@field SimulatedProxyHighSpeed number
---@field CommonAngularLimits FAngularLimitsPair
---@field ProneAngularLimits FAngularLimitsPair
---@field CrouchAngularLimits FAngularLimitsPair
---@field VehicleDelayStageAngularLimits FAngularLimitsPair
---@field UpdateLocalJointOffsetTimerHandle FTimerHandle
---@field UpdateLobbyItemModelForceHandle FTimerHandle
---@field LocalJointOffsetUpdateInterval number
---@field CheckIsStandPlaneInterval number
---@field VechicleUpdateDelayTimerHandle FTimerHandle
---@field VechicleUpdateDelay number
---@field CharacterVehicle ASTExtraVehicleBase
---@field AvatarCharacter ASTExtraBaseCharacter
---@field MeshComp UMeshComponent
---@field MoveMomentumForce FVector @Chain Parms STart
---@field LobbyRotationForce FVector
---@field bUseAsChain boolean
---@field NonMoveRotateForce number
---@field bShowAloneInLobby boolean
---@field AlphaValue number
---@field PendantScale number
---@field DisableBoneSolverV2 boolean
---@field DisableBoneSolverFrameNum number
local UAvatarPendantAnimInstance = {}

---@param InAngularLimitsMin FVector
---@param InAngularLimitsMax FVector
---@param InTargetCharacter ASTExtraBaseCharacter
function UAvatarPendantAnimInstance:SetDynamicAngularLimits(InAngularLimitsMin, InAngularLimitsMax, InTargetCharacter) end

function UAvatarPendantAnimInstance:UpdateDynamicConstraintParms() end

function UAvatarPendantAnimInstance:UpdateChainParms() end

---@param TargetComponent UMeshComponent
---@param isShowAlone boolean
function UAvatarPendantAnimInstance:StartUpdateItemModelParms(TargetComponent, isShowAlone) end

function UAvatarPendantAnimInstance:StopUpdateItemModelParms() end

function UAvatarPendantAnimInstance:UpdateItemModelParms() end

function UAvatarPendantAnimInstance:UpdateAnimParms() end

function UAvatarPendantAnimInstance:StartUpdateAnimParms() end

function UAvatarPendantAnimInstance:StopUpdateAnimParms() end

---@param InTargetVehicle ASTExtraVehicleBase
function UAvatarPendantAnimInstance:OnCharacterAttachedToVehcicle(InTargetVehicle) end

---@param InTargetVehicle ASTExtraVehicleBase
function UAvatarPendantAnimInstance:OnCharacterDetachedFromVehicle(InTargetVehicle) end

---@return boolean
function UAvatarPendantAnimInstance:DelayVehicleLocalJointOffsetUpdate() end

function UAvatarPendantAnimInstance:OnVechicleUpdateDelayTimer() end

---@param scale number
function UAvatarPendantAnimInstance:SetPendantScale(scale) end
