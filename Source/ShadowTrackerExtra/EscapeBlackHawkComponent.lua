---@meta

---@class FAIShooterConfig
---@field FakeCharacterClass APawn
---@field WeaponTemplate ASTExtraWeapon
---@field WeaponItemTableID number
---@field LogicSocket string
---@field FakeCharacterName string
---@field AIShooterAttachSocket string
---@field ShootWeaponAttachSocket string
---@field PitchLimit FVector2D
---@field YawLimit FVector2D
---@field GunRotateInterpSpeed number
---@field GunLockAngleTime number
---@field WeaponRotatePitchBoneName string
---@field WeaponRotateYawBoneName string
FAIShooterConfig = {}


---@class FAIShooterRuntimeInfo
---@field bIsShooterFiring boolean
---@field IsAIShooterActive boolean
---@field IsShooterWeaponBroken boolean
---@field MuzzleCurrentRot FRotator
---@field MuzzleAnimRelativeTargetRot FRotator
---@field MuzzleRelativeTargetRot FRotator
FAIShooterRuntimeInfo = {}


---@class UEscapeBlackHawkComponent: UVehicleComponent
---@field IsStoppedBlackboardName string
---@field IsForceStoppedBlackboardName string
---@field SpeedModifierBlackboardName string
---@field AIShooterConfigs ULuaArrayHelper<FAIShooterConfig>
---@field AIShooterRuntimeInfos ULuaArrayHelper<FAIShooterRuntimeInfo>
---@field AttackTargets ULuaArrayHelper<AActor>
---@field CachedShootWeapons ULuaArrayHelper<ASTExtraShootWeapon>
---@field MuzzleAnimCurrentRots ULuaArrayHelper<FRotator>
---@field IsAIShooterActiveBlackboardName string
---@field ShooterActiveHPPercent number
---@field ShooterStopHPPercent number
---@field bDrawDebug boolean
---@field FindPotentialTargetInterval number
---@field ActiveAIShooterRange number
---@field bHasPlayerNearby boolean
---@field bEnableTickUpdateVehicleEvent boolean
local UEscapeBlackHawkComponent = {}

---@param Damage number
function UEscapeBlackHawkComponent:HandleVehicleTakeDamage(Damage) end

---@param InVehicleHealthState ESTExtraVehicleHealthState
function UEscapeBlackHawkComponent:HandleVehicleHealthStateChanged(InVehicleHealthState) end

---@param InController AMobAIController
function UEscapeBlackHawkComponent:StopAIBehaviorTree(InController) end

---@param ShooterIndex number
---@param bActive boolean
function UEscapeBlackHawkComponent:UpdateAIShooterState(ShooterIndex, bActive) end

---@param bActive boolean
function UEscapeBlackHawkComponent:UpdateAIShooterStateAll(bActive) end

function UEscapeBlackHawkComponent:ResetAIShooterRotate() end

function UEscapeBlackHawkComponent:InitTurret() end

---@param Shooter APawn
---@param InAttackTarget AActor
function UEscapeBlackHawkComponent:SetAttackTarget(Shooter, InAttackTarget) end

---@param ControlledWeapon APawn
function UEscapeBlackHawkComponent:StopAttack(ControlledWeapon) end

---@param InWeapon ASTExtraShootWeapon
---@return number
function UEscapeBlackHawkComponent:GetShooterIndexByWeapon(InWeapon) end

---@param InPawn APawn
---@return number
function UEscapeBlackHawkComponent:GetShooterIndexByPawnServer(InPawn) end

function UEscapeBlackHawkComponent:OnRep_CachedShootWeapons() end

function UEscapeBlackHawkComponent:OnRep_AttackTargets() end
