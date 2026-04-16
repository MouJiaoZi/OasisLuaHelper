---@meta

---@class FMeleeCombatPickedTarget
---@field Target AActor
---@field TargetComponent UPrimitiveComponent
---@field IsHeadShot boolean
---@field HitPos number
---@field BoneName string
---@field HitEnvLocation FVector
---@field HitPhysMatType EPhysicalSurface
---@field bIgnoreTakeDamage boolean
---@field DisToScreenCenter number
FMeleeCombatPickedTarget = {}


---@class FMeleeCombatHitInfo
---@field ToPawn ULuaArrayHelper<AActor>
---@field HitSurfaceType EPhysicalSurface
---@field HitEnvLocation FVector
---@field bFlag boolean
FMeleeCombatHitInfo = {}


---@class FMeleeCombatPhaseInfo
---@field PhaseIndex number
---@field bIsJumpingPhase boolean
---@field bFlag boolean
FMeleeCombatPhaseInfo = {}


---@class UMeleeCombatComponent: UActorComponent
---@field FistCombatData FMeleeCombatData
---@field WeaponCombatData FMeleeCombatData
---@field bUseWeaponCombatData boolean
---@field DamageTypeClass UDamageType
---@field AttackInterval number
---@field bPressedAttackButton boolean
---@field OnEquipMeleeWeapon FEquipMeleeWeaponDelegate
---@field OnUnEquipMeleeWeapon FEquipMeleeWeaponDelegate
---@field CurCombatPhaseData FMeleeCombatPhaseData
---@field PickedResultTargets ULuaArrayHelper<FMeleeCombatPickedTarget>
---@field Origin FVector
local UMeleeCombatComponent = {}

function UMeleeCombatComponent:BeginPlay() end

---@param bAttackOnce boolean
function UMeleeCombatComponent:ClientStartAttack(bAttackOnce) end

function UMeleeCombatComponent:ClientEndAttack() end

function UMeleeCombatComponent:ServerInterrputAttack() end

---@param _AttackKey number
---@param bAttackOnce boolean
function UMeleeCombatComponent:ServerStartAttack(_AttackKey, bAttackOnce) end

function UMeleeCombatComponent:ServerMeleeAttackRelease() end

---@param _AttackKey number
function UMeleeCombatComponent:ClientForceStopAttack(_AttackKey) end

---@return boolean
function UMeleeCombatComponent:CanAttack() end

---@param AttackPhase number
function UMeleeCombatComponent:AttackOnce(AttackPhase) end

function UMeleeCombatComponent:OnceAttackFinished() end

---@param Seed number
function UMeleeCombatComponent:ServerNotifyRandomSeed(Seed) end

---@param EndedAttackKey number
function UMeleeCombatComponent:OnRep_EndedAttackKey(EndedAttackKey) end

---@param MeleeCombatHitInfo FMeleeCombatHitInfo
function UMeleeCombatComponent:OnRep_MeleeCombatHitInfo(MeleeCombatHitInfo) end

---@param MeleeCombatPhaseInfo FMeleeCombatPhaseInfo
function UMeleeCombatComponent:OnRep_MeleeCombatPhaseInfo(MeleeCombatPhaseInfo) end

function UMeleeCombatComponent:ResetData() end

function UMeleeCombatComponent:OnClientSwitchToNewServerDelegate() end

---@param bIsJumpingPhase boolean
---@return number
function UMeleeCombatComponent:GetExecutePhaseIndex(bIsJumpingPhase) end

---@param StartIndex number
---@param EndIndex number
---@return number
function UMeleeCombatComponent:GetRandRangeSyn(StartIndex, EndIndex) end

function UMeleeCombatComponent:PlayAttackAppearance() end

function UMeleeCombatComponent:PlayMontage() end

function UMeleeCombatComponent:StopMontage() end

---@param CameraShakeClass UCameraShake
---@param CameraShakeScale number
function UMeleeCombatComponent:CameraShake(CameraShakeClass, CameraShakeScale) end

---@return boolean
function UMeleeCombatComponent:PickTarget() end

function UMeleeCombatComponent:TakeDamage() end

---@param Seed number
---@param Count number
function UMeleeCombatComponent:InitRandomStream(Seed, Count) end

---@param World UWorld
---@param Radius number
---@param OriginLoc FVector
---@param DamageCauser AActor
function UMeleeCombatComponent:GetSphereOverlappingActors(World, Radius, OriginLoc, DamageCauser) end

---@param TestActor AActor
---@param OwnerPawn AActor
---@return boolean
function UMeleeCombatComponent:IsBasicConditionOK(TestActor, OwnerPawn) end

---@param OwnerPawn AActor
---@param TestActor AActor
---@param TestExtraCharacter ASTExtraCharacter
---@param TestVehicle ASTExtraVehicleBase
---@param bPointIsInsideBox boolean
---@return boolean
function UMeleeCombatComponent:IsAngleCheckSuc(OwnerPawn, TestActor, TestExtraCharacter, TestVehicle, bPointIsInsideBox) end

---@param TestActor AActor
---@param TestActorLocation FVector
---@param bPointIsInsideBox boolean
function UMeleeCombatComponent:UseModifiedTargetLocIfNeeded(TestActor, TestActorLocation, bPointIsInsideBox) end

---@param TestExtraCharacter ASTExtraCharacter
---@param OwnerExtraCharacter ASTExtraCharacter
---@param bPointIsInsideBox boolean
function UMeleeCombatComponent:CheckAndPickOneChara(TestExtraCharacter, OwnerExtraCharacter, bPointIsInsideBox) end

---@param OwnerExtraCharacter ASTExtraCharacter
---@param TestVehicle ASTExtraVehicleBase
function UMeleeCombatComponent:PickOneVehicle(OwnerExtraCharacter, TestVehicle) end

---@param TestActor AActor
---@param OwnerPawn AActor
function UMeleeCombatComponent:PickOneDamageItem(TestActor, OwnerPawn) end

---@param TestExtraCharacter ASTExtraCharacter
---@param OwnerExtraCharacter ASTExtraCharacter
---@param TestSimpleCharacter ASTExtraSimpleCharacter
---@param TestBaseCharacter ASTExtraBaseCharacter
---@return boolean
function UMeleeCombatComponent:IsCharacterTraceOK(TestExtraCharacter, OwnerExtraCharacter, TestSimpleCharacter, TestBaseCharacter) end

---@param OwnerBaseCharacter ASTExtraBaseCharacter
---@param TestBaseCharacter ASTExtraBaseCharacter
---@param HitPos EAvatarDamagePosition
---@return boolean
function UMeleeCombatComponent:CheckIsHeadShot(OwnerBaseCharacter, TestBaseCharacter, HitPos) end

---@param OwnerExtraCharacter ASTExtraCharacter
---@param TestVehicle ASTExtraVehicleBase
---@return string
function UMeleeCombatComponent:CheckHitBoneName(OwnerExtraCharacter, TestVehicle) end

function UMeleeCombatComponent:SortTargetsByDistance() end

---@param Owner AActor
---@param Victim AActor
---@param SrcLocation FVector
---@param DstLocation FVector
function UMeleeCombatComponent:GetLocation(Owner, Victim, SrcLocation, DstLocation) end

function UMeleeCombatComponent:SetMeleeCombatHitInfo() end
