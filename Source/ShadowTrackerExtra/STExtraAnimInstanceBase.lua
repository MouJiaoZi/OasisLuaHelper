---@meta

---@class EAnimBPType
---@field EAnimBP_None number
---@field EAnimBP_Vehicle number
---@field EAnimBP_TPP number
---@field EAnimBP_FPP number
---@field EAnimBP_NewFPP number
---@field EAnimBP_Max number
EAnimBPType = {}


---@class FSTExtraAnimMontageData
FSTExtraAnimMontageData = {}


---人物的第一、第三人称是MainCharAnim里的子蓝图
---@class USTExtraAnimInstanceBase: USubAnimInstance_Event
---@field bEnableUpdateMontageWhenNotUpdate boolean
---@field bClearedFMCachedUpdateWhenNotUpdate boolean
---@field AutonomousProxy boolean
---@field DeadAnimLongDist number
---@field AnimInstanceType EAnimBPType
---@field NewAnimInstanceType EAnimBPType
---@field LastPoseTypeCache ECharacterPoseType
---@field e_LastWeaponState EFreshWeaponStateType
---@field MontagePlayQueue ULuaArrayHelper<FSTExtraAnimMontageData>
---@field SubAnimReplacer_Weapon FSTExtraAnimFM_SubAnimMapReplacer_Weapon
---@field CharacterParam FSTExtraAnimFM_Character
---@field MoveParam FSTExtraAnimFM_Move
---@field MovementParam FSTExtraAnimFM_Character_Movement
---@field SwimParam FSTExtraAnimFM_Character_Swim
---@field WeaponParam FSTExtraAnimFM_Weapon
---@field AimParam FSTExtraAnimFM_Weapon_Aim
---@field GunOperationParam FSTExtraAnimFM_Weapon_GunOperation
---@field GrenadeParam FSTExtraAnimFM_Weapon_Grenade
---@field IKParam FSTExtraAnimFM_IK
---@field ForegripParam FSTExtraAnimFM_Foregrip
---@field ADSParam FSTExtraAnimFM_ADS
---@field ParachuteParam FSTExtraAnimFM_Parachute
---@field HurtParam FSTExtraAnimFM_Character_Hurt
---@field DeathParam FSTExtraAnimFM_Character_Death
---@field EyeWatchParam FSTExtraAnimFM_Character_EyeWatch
---@field HairParam FSTExtraAnimFM_Character_Hair
---@field MeleeUpBlendPelvisParam FSTExtraAnimFM_MeleeUpBlendPelvis
---@field ShovelingParam FSTExtraAnimFM_Shoveling
---@field WeaponDropParam FSTExtraAnimFM_WeaponDrop
---@field LODParam FSTExtraAnimFM_LOD
---@field StopDeathAnimSpeedThreshold number
---@field StopDeathAnimCheckDelay number
---@field bIsSetCustomPlayInfo boolean
local USTExtraAnimInstanceBase = {}

function USTExtraAnimInstanceBase:OnRecycled_BP() end

function USTExtraAnimInstanceBase:OnRespawned_BP() end

function USTExtraAnimInstanceBase:ClearFMCachedNeedUpdateWhenNotUpdate() end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function USTExtraAnimInstanceBase:HandlePlayerPoseChange(LastPose, NewPose) end

---@param SelfRef ASTExtraBaseCharacter
function USTExtraAnimInstanceBase:HandlePlayerPickUp(SelfRef) end

---@param NewState EFreshWeaponStateType
function USTExtraAnimInstanceBase:HandlePlayerWeaponStateChanged(NewState) end

---@param bIsRescuing boolean
---@param bIsRescuingSelf boolean
function USTExtraAnimInstanceBase:HandlePlayerEnterRescueState(bIsRescuing, bIsRescuingSelf) end

---@param bIsBeingRescued boolean
function USTExtraAnimInstanceBase:HandlePlayerEnterBeRescueingStatus(bIsBeingRescued) end

---@param bBeginCalling boolean
function USTExtraAnimInstanceBase:HandlePlayerEnterCallingForRevivalState(bBeginCalling) end

---@param MontageToPlay UAnimMontage
---@param bWantsPlay boolean
---@param PlayRate number
---@param StartSection string
---@param MontagePlayType EMainCharMontagePlayType
---@param StartPosition number
---@param PlayDirectly boolean
function USTExtraAnimInstanceBase:HandlePlayerAnimMontagePlayDelegate(MontageToPlay, bWantsPlay, PlayRate, StartSection, MontagePlayType, StartPosition, PlayDirectly) end

---@param StartSection string
---@param MontageToPlay UAnimMontage
function USTExtraAnimInstanceBase:HandlePlayerAnimMontageJumpSectionDelegate(StartSection, MontageToPlay) end

---@param AnimSequence UAnimSequenceBase
---@param bWantsPlay boolean
---@param SlotName string
---@param PlayRate number
---@param BlendTime number
function USTExtraAnimInstanceBase:HandleAnimPlaySlotAnimDelegate(AnimSequence, bWantsPlay, SlotName, PlayRate, BlendTime) end

---@return ENetRole
function USTExtraAnimInstanceBase:GetRole() end

---@param RemainBulletNumToReload number
function USTExtraAnimInstanceBase:PlayPostReloadWeaponAnimation(RemainBulletNumToReload) end

---@param DirNum number
---@param bLongDist boolean
function USTExtraAnimInstanceBase:PlayPlayerDeadAnimation(DirNum, bLongDist) end

function USTExtraAnimInstanceBase:PlayFireWeaponAnimation() end

function USTExtraAnimInstanceBase:PlayStopFireWeaponAnimation() end

function USTExtraAnimInstanceBase:PlayReloadWeaponAnimation() end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function USTExtraAnimInstanceBase:OnPawnDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param Montage UAnimMontage
---@param index number
---@return string
function USTExtraAnimInstanceBase:Util_GetAnimMontageSlotName(Montage, index) end
