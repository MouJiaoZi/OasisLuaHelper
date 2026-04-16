---@meta

---@class EPatrolCarEventState
---@field FirstStage number @第一阶段
---@field SecondStage number @第二阶段
---@field ThirdStage number @第三阶段
---@field LastStage number @最后阶段
EPatrolCarEventState = {}


---@class EPatrolCarBackDoorState
---@field Closed number @门关闭
---@field Opening number @门打开中
---@field Opened number @门完全打开
EPatrolCarBackDoorState = {}


---巡逻车组件，巡逻车内部有空间给AI，角色可以进入后车厢
---@class USTExtraEscapePatrolCarComp: UVehicleComponent
---@field PatrolCarStopHPPercent number
---@field PatrolCarEffectSwitchPercent number
---@field CurrentEventState EPatrolCarEventState
---@field IsStoppedBlackboardName string
---@field IsForceStoppedBlackboardName string
---@field SpeedModifierBlackboardName string
---@field VehicleSlowDownPercent number
---@field VehiclePlayWarnSoundTime number
---@field VehicleWarnSoundList ULuaArrayHelper<UAkAudioEvent>
---@field bCanPlayWarnSound boolean
---@field bUseDelayOpenBackDoor boolean
---@field DelayOpenBackDoorTime number
---@field DoorSocketName string
---@field DoorBoneName string
---@field DoorBlockBoxExtent FVector
---@field bDrawBackDoorInfo boolean
---@field DoorPushVelSize number
---@field DoorBoxExtent FVector
---@field DoorShapeCenterOffset FVector
---@field BackDoorRotationSpeed number
---@field BackDoorMaxRotationPitch number
---@field CurrentDorRotationPitch number
---@field CurrentDoorWorldOrigin FVector
---@field SpawnEventID number
---@field KillMonsterDamage number
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
---@field IsAIShooterActiveBlackboardName string
---@field ShooterActiveHPPercent number
---@field ShooterStopHPPercent number
---@field WeaponRotatePitchBoneName string
---@field WeaponRotateYawBoneName string
---@field MuzzleAnimCurrentRot FRotator
---@field MuzzleCurrentRot FRotator
---@field MuzzleAnimRelativeTargetRot FRotator
---@field MuzzleRelativeTargetRot FRotator
---@field bIsShooterFiring boolean
---@field IsAIShooterActive boolean
---@field bEnableTickUpdateVehicleEvent boolean
---@field SpawnedAISolders ULuaArrayHelper<ASTExtraBaseCharacter>
---@field PatrolCarBackDoorState EPatrolCarBackDoorState
local USTExtraEscapePatrolCarComp = {}

---@param InAICharacter ASTExtraBaseCharacter
function USTExtraEscapePatrolCarComp:RegisterSpawnedAI(InAICharacter) end

function USTExtraEscapePatrolCarComp:KillAllSpawnedAI() end

---@param InState EPatrolCarBackDoorState
function USTExtraEscapePatrolCarComp:SetPatrolCarBackDoorState(InState) end

function USTExtraEscapePatrolCarComp:PlayEffectAndAudio() end

function USTExtraEscapePatrolCarComp:HandleVehicleExplosionOnServer() end

---@param Damage number
function USTExtraEscapePatrolCarComp:HandleVehicleTakeDamage(Damage) end

---@param bActive boolean
function USTExtraEscapePatrolCarComp:UpdateAIShooterState(bActive) end

function USTExtraEscapePatrolCarComp:ResetAIShooterRotate() end

function USTExtraEscapePatrolCarComp:InitTurret() end

---@param InAttackTarget AActor
function USTExtraEscapePatrolCarComp:SetAttakTarget(InAttackTarget) end

function USTExtraEscapePatrolCarComp:StopAttack() end

function USTExtraEscapePatrolCarComp:OnRep_AIShooterWeapon() end

function USTExtraEscapePatrolCarComp:OnRep_AttackTarget() end

function USTExtraEscapePatrolCarComp:OnRep_PatrolCarBackDoorState() end

function USTExtraEscapePatrolCarComp:TickUpdateVehicleEvent() end

---@param DeltaTime number
function USTExtraEscapePatrolCarComp:TickOpenBackDoor(DeltaTime) end

function USTExtraEscapePatrolCarComp:ServerForceUpdateBackDoorTransform() end

---@param DeltaTime number
function USTExtraEscapePatrolCarComp:TickPlayVehicleWarnSound(DeltaTime) end

function USTExtraEscapePatrolCarComp:OnRep_CurrentEventState() end

---@param InState EPatrolCarEventState
function USTExtraEscapePatrolCarComp:SetCurrentEventState(InState) end
