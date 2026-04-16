---@meta

---@class ESTExtraZiplineDirection
---@field A2B number
---@field B2A number
---@field Both number
ESTExtraZiplineDirection = {}


---@class FSTExtraZiplineInitNetData
---@field StartPointLocation FVector
---@field EndPointLocation FVector
---@field StartPointRotation FRotator
---@field EndPointRotation FRotator
---@field CableEndLocationA FVector
---@field CableEndLocationB FVector
FSTExtraZiplineInitNetData = {}


---@class ASTExtraZiplineActor: AActivityBaseActor
---@field InitNetData FSTExtraZiplineInitNetData
---@field Direction ESTExtraZiplineDirection
---@field UseSpeedReplaceGlideTime boolean
---@field GlideTime number
---@field MoveSpeed number
---@field CooldownTime number
---@field ArrivalAheadTime number
---@field FixedDistance number
---@field bCanCableBeDamaged boolean
---@field bCanUseWeaponDuringGlide boolean
---@field MaxHealth number
---@field ZiplineSkillClass USTExtraZiplineSkill
---@field MoveActorClass ASTExtraMoveAlongZiplineActor
---@field GlideUIStyles ULuaArrayHelper<UUserWidgetStyle>
---@field SubAnimInstanceClass UAnimInstance
---@field SubAnimInstanceSlotName string
---@field RegistPossessValue FRegistPossessValue
---@field SpawnCableCheckObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field CreateCableAmmoIDs ULuaArrayHelper<number>
---@field CableDestroyedTlogID number
---@field CableCreateTlogID number
---@field UseZiplineDynamicStates ULuaArrayHelper<FGameplayTag>
---@field MoveStartLocationA FVector
---@field MoveStartLocationB FVector
---@field MoveStartRotationA FRotator
---@field MoveStartRotationB FRotator
---@field MoveEndLocationA FVector
---@field MoveEndLocationB FVector
---@field LastInteractTimeA number
---@field LastInteractTimeB number
---@field CurrentHealth number
---@field InShootRangeCharactersA ULuaArrayHelper<ASTExtraBaseCharacter>
---@field InShootRangeCharactersB ULuaArrayHelper<ASTExtraBaseCharacter>
local ASTExtraZiplineActor = {}

function ASTExtraZiplineActor:OnRep_InitNetData() end

function ASTExtraZiplineActor:InitMoveOffsetData() end

---@param bStartFromPointA boolean
---@param PlayerPawn ASTExtraBaseCharacter
---@return FTransform
function ASTExtraZiplineActor:GetZipMoveStartTransform(bStartFromPointA, PlayerPawn) end

---@param bStartFromPointA boolean
---@param PlayerPawn ASTExtraBaseCharacter
---@return FTransform
function ASTExtraZiplineActor:GetZipMoveStopTransform(bStartFromPointA, PlayerPawn) end

---@param bStartFromPointA boolean
---@return boolean
function ASTExtraZiplineActor:CheckCooldownTime(bStartFromPointA) end

---@param bStartFromPointA boolean
function ASTExtraZiplineActor:UpdateCooldownTime(bStartFromPointA) end

---@param bStartFromPointA boolean
---@return boolean
function ASTExtraZiplineActor:CheckDirection(bStartFromPointA) end

---@param Damage number
---@param HitComponent UPrimitiveComponent
---@param InstigatedBy AController
function ASTExtraZiplineActor:CableDamaged(Damage, HitComponent, InstigatedBy) end

---@param Weapon ASTExtraWeapon
---@param HitValleyPlace UPrimitiveComponent
---@param ShootPlayer ASTExtraBaseCharacter
function ASTExtraZiplineActor:ValleyPlaceDamaged(Weapon, HitValleyPlace, ShootPlayer) end


---@class USTExtraZiplineSkill: UPersistEffectWithState
---@field bStartFromPointA boolean
---@field bDestroyMoveActorOnUnApply boolean
---@field WeakZipline ASTExtraZiplineActor
---@field WeakMoveActor ASTExtraMoveAlongZiplineActor
local USTExtraZiplineSkill = {}

---@param ZiplineActor ASTExtraZiplineActor
function USTExtraZiplineSkill:SetZiplineActor(ZiplineActor) end

---@param MoveActor ASTExtraMoveAlongZiplineActor
function USTExtraZiplineSkill:SetCustomMoveActor(MoveActor) end
