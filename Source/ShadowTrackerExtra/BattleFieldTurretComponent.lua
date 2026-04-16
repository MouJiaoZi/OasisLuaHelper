---@meta

---@class UBattleFieldTurretComponent: UActorComponent
---@field OnAttackTargetChanged FOnAttackTargetChanged
---@field FakeCharacterClass APawn
---@field FakeCharacterLocationOffset FVector
---@field FakeCharacterRotationOffset FRotator
---@field WeaponTemplate ASTExtraWeapon
---@field LogicSocket string
---@field WeaponItemTableID number
---@field TurretMuzzleOffset FVector
---@field PitchLimit FVector2D
---@field YawLimit FVector2D
---@field PingPongYawLimit FVector2D
---@field PingPoingYawSpeed number
local UBattleFieldTurretComponent = {}

---@param InAttackTarget AActor
function UBattleFieldTurretComponent:SetAttakTarget(InAttackTarget) end

function UBattleFieldTurretComponent:StopAttack() end

---@param InSkillOwnerCharacter ACharacter
---@param InTurretMesh UMeshComponent
function UBattleFieldTurretComponent:InitTurret(InSkillOwnerCharacter, InTurretMesh) end

---@param InTarget AActor
---@param InTurretMesh UMeshComponent
---@return FRotator
function UBattleFieldTurretComponent:CalcuTurretAnimationRotation(InTarget, InTurretMesh) end

---@param CurrentRotation FRotator
---@param DeltaTime number
---@return FRotator
function UBattleFieldTurretComponent:CalcPingPongRotator(CurrentRotation, DeltaTime) end

function UBattleFieldTurretComponent:DestroyFakePlayer() end
