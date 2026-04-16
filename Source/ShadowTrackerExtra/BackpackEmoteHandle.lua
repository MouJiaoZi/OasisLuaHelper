---@meta

---@class EEmoteType
---@field AnimationEmote number
---@field SkillEmote number
---@field PairEmote number
EEmoteType = {}


---For PlayerEmoteAnim MultipleDeviceGrade Feature Start *************************************************************
---@class FPlayerEmoteAnim_MultipleDeviceGrade
---@field DeviceGrade_Min number
---@field DeviceGrade_Max number
---@field AnimSoftRef UAnimationAsset @The animation this section plays
FPlayerEmoteAnim_MultipleDeviceGrade = {}


---For PlayerEmoteAnim MultipleDeviceGrade Feature End *************************************************************
---@class FLobbyGenderAnimData
---@field BoyAnim UAnimationAsset
---@field GirlAnim UAnimationAsset
FLobbyGenderAnimData = {}


---@class FMultiAnimData
---@field Character ACharacter
---@field Anim UAnimationAsset
---@field bCanControlOnAnimEnd boolean
---@field bAttachToCustomizeSocket boolean
---@field AttachToSocket string
---@field AttachRelativeTransform FTransform
FMultiAnimData = {}


---@class FParaglidingAnimData
---@field NameTag string
---@field Anim UAnimationAsset
---@field AttachToSocket string
---@field SkMesh USkeletalMesh
FParaglidingAnimData = {}


---@class FGenderMultiAnimData
---@field TypeTag string
---@field Character ACharacter
---@field Anim UAnimationAsset
---@field bCanControlOnAnimEnd boolean
FGenderMultiAnimData = {}


---@class FMVPAvatarDisplayParam
---@field AnimPlaySubLevel string
---@field SpecifyCameraAnim FCameraAnimParam
FMVPAvatarDisplayParam = {}


---@class FEmoteAnimConfig
---@field NameTag string
---@field AnimAsset UAnimationAsset
---@field NoSprayerAnimAsset UAnimationAsset
---@field EmoteCameraAnimation UCameraAnim
---@field EmoteCameraAnimationLongScreen UCameraAnim
FEmoteAnimConfig = {}


---@class FAvatarIdArray
---@field AvatarIdArray ULuaArrayHelper<number>
FAvatarIdArray = {}


---@class FEmoteSeqConfig
---@field NameTag string
---@field Seq ULevelSequence
---@field LowLevelSeq ULevelSequence
FEmoteSeqConfig = {}


---@class FEmoteSlotAnimConfig
---@field targetSlot EAvatarSlotType
---@field AnimAsset FLobbyGenderAnimData
---@field AvatarID number
---@field AdditionAvatarIdArray ULuaArrayHelper<number>
FEmoteSlotAnimConfig = {}


---@class UBackpackEmoteHandle: UBattleItemHandleBase, IAddNewSkillToOwnerInterface
---@field EmoteType EEmoteType
---@field bLobbyUseAnimIgnoreEffectAsset boolean
---@field AnimAsset UAnimationAsset
---@field MultipleDeviceGradeAnimList_Emote ULuaArrayHelper<FPlayerEmoteAnim_MultipleDeviceGrade>
---@field AnimIgnoreEffectAsset UAnimationAsset
---@field MultipleDeviceGradeAnimList_IgnoreEffectEmote ULuaArrayHelper<FPlayerEmoteAnim_MultipleDeviceGrade>
---@field BubbleAsset UParticleSystem
---@field HoloLobby UParticleSystem
---@field BubbleScale FVector
---@field BubbleShowTime number
---@field bLoopAnimation boolean
---@field bSyncLoad boolean
---@field isHaveContinuousEffect boolean
---@field bNotInterruptByMove boolean
---@field bNotInterruptBySprint boolean
---@field bIsScaleActorAtStart boolean
---@field ScaleActorTimeAtStart number
---@field bSetSlotAnimInvisibleAtStart boolean
---@field SlotAnimInvisibleTimeAtStart number
---@field bNeedResolveDragArtifact boolean
---@field ResolveDragArtifactTime number
---@field bOpenLobbyReset boolean
---@field BoundScale number
---@field bAvoidParticleEffectRepeat boolean
---@field bIsResetTransform boolean
---@field bShouldFaceFront boolean
---@field bStartWithCustomTransform boolean
---@field OriginTransform FTransform
---@field bOnLobbyRest boolean
---@field bLobbyResetForbidAvatarMontage boolean
---@field AnimAssetByTags ULuaArrayHelper<FEmoteAnimConfig>
---@field BlendTime number
---@field StopTransitionOutTime number
---@field bEnableTransitionAnimInSpecialLocomotion boolean
---@field AvatarIDMap ULuaMapHelper<EAvatarSlotType, number>
---@field NewMultiAvatarIDMap ULuaMapHelper<EAvatarSlotType, FAvatarIdArray>
---@field DelayUpdateAvatarAlphaTime number
---@field SeqConfig ULuaArrayHelper<FEmoteSeqConfig>
---@field LobbyEnterEmoteAnimAssetList ULuaArrayHelper<FLobbyGenderAnimData>
---@field LobbyLeaveEmoteAnimAssetList ULuaArrayHelper<FLobbyGenderAnimData>
---@field MultiAnimDatas ULuaArrayHelper<FMultiAnimData>
---@field GenderMultiAnimDatas ULuaArrayHelper<FGenderMultiAnimData>
---@field FollowerAnimHandleID number
---@field SlotAnimDatas ULuaArrayHelper<FEmoteSlotAnimConfig>
---@field ExtraPartAnimData ULuaMapHelper<EAvatarSlotType, FExtraPartGenderWithAnimAssetArray>
---@field HideAllSceneLight boolean
---@field MVPAvatarDisplayParam FMVPAvatarDisplayParam
---@field EmoteColBox FVector
---@field EmoteColOffset FVector
---@field bOpenHitInterruptColBox boolean
---@field HitInterruptColBox FVector
---@field HitInterruptColOffset FVector
---@field PairEmoteID number
---@field PairEmoteMoveColBoxSize FVector2D
---@field PairEmotePositionOffset FVector
---@field PairRange number
---@field PairAngleRange number
---@field AirCraftLocationOffset FTransform
---@field MainSocket string
---@field AirCraftAnim UAnimationAsset
---@field ParaglidingData ULuaArrayHelper<FParaglidingAnimData>
---@field IsUseNewFPPHand boolean
---@field WeaponAnimAsset UAnimationAsset
---@field WeaponParticle UParticleSystem
---@field SocketForParticle string
---@field OffsetTrans FTransform
---@field AttenchmentAnimList ULuaMapHelper<EWeaponAttachmentSocketType, UAnimationAsset>
---@field bEnableRedEmoteUpgrade boolean
---@field DuoActionPerformanceLobbyConfig FDuoActionPerformanceLobbyConfig
---@field DuoActionPerformanceCommonConfig FDuoActionPerformanceCommonConfig
---@field DuoActionPerformanceBattleConfig FDuoActionPerformanceBattleConfig
---@field bEnablePCCameraTransformInheritance boolean
---@field PCInheritanceBindingCameraName string
---@field PCCameraAnimBaseTransform FTransform
---@field PCOriginalCameraTransform FTransform
---@field BindingCameraName string
---@field LongScreenCameraName string
---@field ShortScreenCameraName string
---@field BindingActorName string
---@field PersistEffectList ULuaArrayHelper<UBasicPersistEffect>
---@field bInterruptWhenOutOfRange boolean
---@field InterruptDistance number
---@field bDifferentFollowAnim boolean
---@field FollowAnimAsset UAnimationAsset
---@field MultipleDeviceGradeAnimList_FollowEmote ULuaArrayHelper<FPlayerEmoteAnim_MultipleDeviceGrade>
---@field FollowIgnoreEffectAnimAsset UAnimationAsset
---@field MultipleDeviceGradeAnimList_IgnoreEffectFollowEmote ULuaArrayHelper<FPlayerEmoteAnim_MultipleDeviceGrade>
---@field SkillsConfigs ULuaArrayHelper<FItemSkillsConfig>
---@field SpecificSkillsConfig ULuaMapHelper<string, FItemSkillsConfig>
---@field BuildID number
---@field BlackBoardName string
---@field bSkipCloseWeapon boolean
local UBackpackEmoteHandle = {}

---@param InMultipleDeviceGradeAnimList ULuaArrayHelper<FPlayerEmoteAnim_MultipleDeviceGrade>
function UBackpackEmoteHandle:GetEmoteAnimSoftRefByDeviceGrade(InMultipleDeviceGradeAnimList) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackEmoteHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackEmoteHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackEmoteHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackEmoteHandle:HandleDisuse(Reason) end

---@param avatarComp UCharacterAvatarComponent
---@param nowCapcity number
---@return boolean
function UBackpackEmoteHandle:CheckCanPickUp(avatarComp, nowCapcity) end

---@return boolean
function UBackpackEmoteHandle:PlayEmoteParticle() end

---@return boolean
function UBackpackEmoteHandle:NotifyPlayEmoteCancel() end

---@param sex number
---@param islongscreen number
---@param devicelevel number
function UBackpackEmoteHandle:GetEmoteResource(sex, islongscreen, devicelevel) end
