---@meta

---@class USTExtraAnimFMObj_GenericCharacterBase: UAnimFunctionModule_ObjInstance
---@field IGenericCharacter IGenericCharacterInterface
---@field IStateAccess IStateAbilityInterface
---@field IAnimAccess IAnimationAccessInterface
local USTExtraAnimFMObj_GenericCharacterBase = {}


---@class USTExtraAnimFMObj_GenericCharacterState: USTExtraAnimFMObj_GenericCharacterBase
---@field bIsInBattle boolean
---@field bIsInIdle boolean
local USTExtraAnimFMObj_GenericCharacterState = {}

---@param StateTag FGameplayTag
---@return boolean
function USTExtraAnimFMObj_GenericCharacterState:HasState(StateTag) end


---@class USTExtraAnimFMObj_GenericCharacterLocomotion: USTExtraAnimFMObj_GenericCharacterBase
---@field MoveVelocity FVector
---@field IsMoving boolean
local USTExtraAnimFMObj_GenericCharacterLocomotion = {}


---@class USTExtraAnimFMObj_GenericCharacterJumpFall: USTExtraAnimFMObj_GenericCharacterBase
---@field bIsJumping boolean
---@field bIsFalling boolean
---@field bIsHitFlying boolean
local USTExtraAnimFMObj_GenericCharacterJumpFall = {}


---@class USTExtraAnimFMObj_GenericCharacterHurt: USTExtraAnimFMObj_GenericCharacterBase
---@field bPlayingHurtAnim boolean
---@field CurHurtAnimTime number
---@field CurHurtDir FVector
---@field CurHurtIsHeadShot boolean
local USTExtraAnimFMObj_GenericCharacterHurt = {}

---@param DamageCauser AActor
---@param HurtDir FVector
---@param bIsHeadshot boolean
function USTExtraAnimFMObj_GenericCharacterHurt:OnHurt(DamageCauser, HurtDir, bIsHeadshot) end


---@class USTExtraAnimFMObj_GenericCharacterDead: USTExtraAnimFMObj_GenericCharacterBase
local USTExtraAnimFMObj_GenericCharacterDead = {}

---@param DeadCharacter ACharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageTypeID number
---@param DamageTypeClass UDamageType
---@param bIsHeadShotDamage boolean
function USTExtraAnimFMObj_GenericCharacterDead:OnDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageTypeID, DamageTypeClass, bIsHeadShotDamage) end


---@class USTExtraAnimFMObj_GenericCharacterSimpleTurn: USTExtraAnimFMObj_GenericCharacterBase
---@field bIsTurning boolean
local USTExtraAnimFMObj_GenericCharacterSimpleTurn = {}


---@class USTExtraAnimFMObj_GenericCharacterAimOffset: USTExtraAnimFMObj_GenericCharacterBase
---@field AORotOrig FRotator
---@field AORotLerped FRotator
local USTExtraAnimFMObj_GenericCharacterAimOffset = {}
