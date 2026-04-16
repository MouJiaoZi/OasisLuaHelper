---@meta

---@class FPitchConfig
---@field PitchMin number
---@field PitchMax number
---@field ProjectileSpeedFactorMin number
---@field ProjectileSpeedFactorMax number
---@field InputDistMin number
---@field InputDistMax number
FPitchConfig = {}


---@class UUGCCustomInputComponent: UActorComponent
---@field Dist number
---@field WeaponType EExtraWeaponUIType
---@field PitchConfigMap ULuaMapHelper<EExtraWeaponUIType, FPitchConfig>
---@field DefaultConfig FPitchConfig
---@field CurConfig FPitchConfig
---@field AttrItems ULuaArrayHelper<FPESkillAttributeItem>
---@field ProjectileSpeedFactorUpdateFrequency number
---@field ProjectileSpeedFactor number
---@field LastProjectileSpeedFactor number
---@field ProjectileSpeedFactorLastUpdateTime number
---@field HighThrowTPPOffset FVector
---@field IgnoreDist number
---@field bEnableDebugDraw boolean
---@field bOverrideTouchMove boolean
---@field bOverrideTurn boolean
---@field bOverrideLookUp boolean
---@field bMoveOverrideLook boolean
---@field bOverrideTouchInterface boolean
---@field InputTurnActionTag FGameplayTag
---@field InputLookUpActionTag FGameplayTag
---@field InputMouseXActionTag FGameplayTag
---@field InputMouseYActionTag FGameplayTag
---@field InputMoveXActionTag FGameplayTag
---@field InputMoveYActionTag FGameplayTag
---@field CurControlRotationInputReason EUGCCustomModeInputReason
---@field ControlRotationInputReasonMap ULuaMapHelper<EUGCCustomModeInputReason, FRotator>
---@field bIsAllowADS boolean
---@field LookUpRate number
---@field LastLookUpRate number
---@field TurnRate number
---@field LastTurnRate number
---@field LowerThreshold number
---@field UpperThreshold number
---@field CurRot FVector
---@field InputActionSlots ULuaArrayHelper<FGameplayTag>
---@field InputTurnDelegate FInputMappingHandlerDynamicSignature
---@field InputLookUpDelegate FInputMappingHandlerDynamicSignature
---@field OriginalInput FVector
local UUGCCustomInputComponent = {}

---@param rate number
---@return boolean
function UUGCCustomInputComponent:MoveForward(rate) end

---@param rate number
---@return boolean
function UUGCCustomInputComponent:MoveRight(rate) end

---@param rate number
---@return boolean
function UUGCCustomInputComponent:Turn(rate) end

---@param rate number
---@return boolean
function UUGCCustomInputComponent:LookUp(rate) end

---@param Axis FVector2D
---@return boolean
function UUGCCustomInputComponent:UGCMoveEvent(Axis) end

---@param Rot FVector2D
---@return boolean
function UUGCCustomInputComponent:UGCLookEvent(Rot) end

---@return boolean
function UUGCCustomInputComponent:OverrideTouchMove() end

---@return boolean
function UUGCCustomInputComponent:OverrideTurn() end

---@return boolean
function UUGCCustomInputComponent:OverrideLookUp() end

---@return boolean
function UUGCCustomInputComponent:OverrideTouchInterface() end

---@param Weapon ASTExtraWeapon
function UUGCCustomInputComponent:OnEquipWeapon(Weapon) end

---@param Weapon ASTExtraWeapon
function UUGCCustomInputComponent:OnUnequipWeapon(Weapon) end

---@param PossessedPawn APawn
function UUGCCustomInputComponent:OnPlayerControllerPossess(PossessedPawn) end

---@param NewRotation FRotator
---@param Reason EUGCCustomModeInputReason
function UUGCCustomInputComponent:SetControlRotationByInputReason(NewRotation, Reason) end

---@param Reason EUGCCustomModeInputReason
function UUGCCustomInputComponent:ResetControlRotationInputReason(Reason) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputTurnActionPressed(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputLookUpActionPressed(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputTurnActionCompleted(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputMoveYActionCompleted(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputMoveXActionCompleted(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputLookUpActionCompleted(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputMouseXActionPressed(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputMouseYActionPressed(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputMoveXActionPressed(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end

---@param InputValue number
---@param ElapsedTime number
---@param TriggeredTime number
---@param SourceInputTag FGameplayTag
function UUGCCustomInputComponent:OnInputMoveYActionPressed(InputValue, ElapsedTime, TriggeredTime, SourceInputTag) end
