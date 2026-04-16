---@meta

---@class EAnimKeepBoneRetargetFeatureConfigType
---@field E_AKBRFCT_ItemSubType number @物品的SubType
---@field E_AKBRFCT_ItemID number @物品ID
EAnimKeepBoneRetargetFeatureConfigType = {}


---@class FSkirtAnimDynamicData
---@field SimulationSpace AnimPhysSimSpaceType
---@field GravityScale number
---@field bOverrideLinearDamping boolean
---@field LinearDampingOverride number @Overridden linear damping value
---@field bOverrideAngularDamping boolean @If true, the override value will be used for angular damping
---@field AngularDampingOverride number @Overridden angular damping value
---@field AngularLimitsMin FVector
---@field AngularLimitsMax FVector
---@field PlanarLimits ULuaArrayHelper<FAnimPhysPlanarLimit>
---@field SphericalLimits ULuaArrayHelper<FAnimPhysSphericalLimit>
FSkirtAnimDynamicData = {}


---@class FSkirtChainData
---@field Chain_FR FSkirtAnimDynamicData
---@field Chain_FL FSkirtAnimDynamicData
---@field Chain_L FSkirtAnimDynamicData
---@field Chain_R FSkirtAnimDynamicData
FSkirtChainData = {}


---@class FSkirtBoneModifyData
---@field TranslationMode EBoneModificationMode
---@field RotationMode EBoneModificationMode
---@field Translation FVector
---@field Rotation FRotator
FSkirtBoneModifyData = {}


---@class FSkirtModifyListData
---@field Modify_L FSkirtBoneModifyData
---@field Modify_FL FSkirtBoneModifyData
---@field Modify_R FSkirtBoneModifyData
---@field Modify_FR FSkirtBoneModifyData
FSkirtModifyListData = {}


---@class FSkirtConfigData
---@field PawnStateList ULuaArrayHelper<EPawnState>
---@field DynamicChainData FSkirtChainData
---@field BoneModifyData FSkirtModifyListData
FSkirtConfigData = {}


---@class FAnimCurveValueFeature
---@field bEnableCurveValueCheck boolean
---@field bUseRawCurveValue boolean
---@field CurveName string
---@field ValidCurveValue number
FAnimCurveValueFeature = {}


---@class FAnimNotifyForceIKStateParam
---@field bLeftHandIK boolean
---@field bRightHandIK boolean
---@field bLeftFootIK boolean
---@field bRightFootIK boolean
---@field ExcludeAvatarIDList ULuaArrayHelper<number>
---@field bLobbyLeftHandIK boolean
---@field bLobbyRightHandIK boolean
---@field bLobbyLeftFootIK boolean
---@field bLobbyRightFootIK boolean
---@field LobbyExcludeAvatarIDList ULuaArrayHelper<number>
---@field bConsiderExtraPartMesh boolean
FAnimNotifyForceIKStateParam = {}


---@class FAlphaValueAndFrame
---@field AlphaValue number
---@field FrameNumber number
FAlphaValueAndFrame = {}


---@class FAlphaValueConfig
---@field bEnableAlpha boolean
---@field StatValueMap ULuaMapHelper<string, FAlphaValueAndFrame>
FAlphaValueConfig = {}


---@class FPawnStateAlphaKey
---@field AlphaConfigPriority number
---@field bAsDefaultParam boolean
---@field bContainsPawnState boolean
---@field bMatchMultiPawnState boolean
---@field bRepresentationOrOperation boolean
---@field MultiPawnStateMask number
---@field bContainsFromState boolean
---@field FromState EPawnState
---@field ToState EPawnState
---@field bContainsMovementMode boolean
---@field bContainsFromMovementMode boolean
---@field FromMovementMode EMovementMode
---@field FromCustomMovementMode ECustomMovmentMode
---@field ToMovementMode EMovementMode
---@field ToCustomMovementMode ECustomMovmentMode
---@field SpecialEmoteIDList ULuaArrayHelper<number>
---@field bLerpValid boolean
FPawnStateAlphaKey = {}


---@class FPawnStateAlphaValue
---@field bVectorParam boolean
---@field bUseCurveFloat boolean
---@field TargetAlphaValue number
---@field TargetAlphaVectorValue FVector
---@field bUniformSpeed boolean
---@field LerpSpeed number
---@field LerpDuration number
---@field CurveFloatLength number
---@field EventName string
---@field SlotID number
FPawnStateAlphaValue = {}


---@class FKawaiiAlphaRuntimeRecorder
---@field LastRecordPawnStateMask number
---@field LastRecordMovementMode EMovementMode
---@field LastRecordCustomMovementMode ECustomMovmentMode
---@field MatchedKawaiiAlphaKey FPawnStateAlphaKey
---@field KawaiiAlphaLerpStartTime number
---@field bRecalculateKawaiiAlphaMatchConfig boolean
FKawaiiAlphaRuntimeRecorder = {}


---@class FDynamicKawaiiAlphaConfigKey
---@field DynamicKawaiiPropertyName string
FDynamicKawaiiAlphaConfigKey = {}


---@class FDynamicKawaiiAlphaConfigValue
---@field KawaiiAlphaConfig ULuaMapHelper<FPawnStateAlphaKey, FPawnStateAlphaValue>
FDynamicKawaiiAlphaConfigValue = {}


---@class FOnPoseEnter : ULuaMulticastDelegate
FOnPoseEnter = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkirtPose: ESkirtPoseType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPoseEnter:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkirtPose ESkirtPoseType
function FOnPoseEnter:Broadcast(SkirtPose) end


---@class FOnPoseLeave : ULuaMulticastDelegate
FOnPoseLeave = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkirtPose: ESkirtPoseType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPoseLeave:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkirtPose ESkirtPoseType
function FOnPoseLeave:Broadcast(SkirtPose) end


---@class USkirtAnimInstanceBase: UAvatarDynamicAnimInstance
---@field bPoseTypeOverridedByAnimBP boolean
---@field bPoseTypeOverridedByAnimAdapt boolean
---@field CurrentPoseType ESkirtPoseType
---@field DefaultPoseType ESkirtPoseType
---@field WingAdaptType EAvatarAnimAdapt_WingType
---@field bIgnoreBodyTypeVariant boolean
---@field ScopeIgnoreBodyTypeVariantWeaponBPIDList ULuaArrayHelper<number>
---@field CurrentAvatarAnimVehicleType ESTExtraVehicleType
---@field SlotType EAvatarSlotType
---@field IsOnMotorbike boolean
---@field bIsRidingVechicle boolean
---@field RidingVechicleTypeList ULuaArrayHelper<ESTExtraVehicleType>
---@field IsMaleGender boolean
---@field IsBackHavingItem boolean
---@field checkFrameCount number
---@field checkBackItemFrameCount number
---@field bEquippedHelmet number @**************************************Avatar Equip Start**************************************
---@field OnSkirtPoseEnter FOnPoseEnter
---@field OnSkirtPoseLeave FOnPoseLeave
---@field bIsLobby boolean
---@field CurLobbyCom ULuaArrayHelper<FLobbyCom>
---@field LobbyAnimBlendAlpha number
---@field RotaionX number
---@field MontageIsPlaying boolean
---@field AnyMontageIsPlaying boolean
---@field ParachuteSubType number
---@field ParachuteSubTypeEnumName string
---@field ParachuteSubTypeEnumPtr UEnum
---@field bUseEmotePLayAdapt boolean
---@field EmotePLayAdaptPoseType ESkirtPoseType
---@field EmoteAdaptList ULuaArrayHelper<number>
---@field bUseLobbyEmotePLayAdapt boolean
---@field LobbyEmotePLayAdaptPoseType ESkirtPoseType
---@field LobbyEmoteAdaptList ULuaArrayHelper<number>
---@field OverrideAnimMap ULuaMapHelper<UAnimationAsset, UAnimMontage>
---@field IgnoreBoneRetargetCurveFeature_Lobby FAnimCurveValueFeature
---@field IgnoreBoneRetargetCurveFeature_Battle FAnimCurveValueFeature
---@field bForceIgnoreBoneRetarget boolean
---@field bUseOldLogic boolean
---@field bIsInSpecialIdle boolean
---@field bForceDisableSpecialIdle boolean
---@field bRedWeapon_Wing boolean
---@field bRed_Weapon boolean
---@field bUseMultipleForceIKNotifyFeature boolean
---@field ForceIKStateTriggerCollection ULuaSetHelper<UObject>
---@field bTriggerIKWhenHoldWeapon boolean
---@field TriggerIKIgnoreWeaponIDList ULuaArrayHelper<number>
---@field DynamicForceIgnoreIKWeaponIDList ULuaArrayHelper<number>
---@field TriggerIKStateList ULuaArrayHelper<EPawnState>
---@field bUseExtendIKParam boolean
---@field ExtendIKParamMap ULuaMapHelper<number, FAnimNotifyForceIKStateParam>
---@field TriggerIKEmoteIDParamMap ULuaMapHelper<number, FAnimNotifyForceIKStateParam>
---@field LobbyTriggerIKEmoteIDParamMap ULuaMapHelper<number, FAnimNotifyForceIKStateParam>
---@field bIsInIKState boolean @尽量不要在外部直接设置这个变量，通过SetNonAnimCurveTriggerIsInIKState设置，除非你对这个变量的作用非常了解
---@field bHandOrFootInIKState boolean @旧配置、旧资源、新配置、新资源兼容,手或脚有IK
---@field bLeftHandIK boolean
---@field bRightHandIK boolean
---@field bLeftFootIK boolean
---@field bRightFootIK boolean
---@field bLobbyLeftHandIK boolean
---@field bLobbyRightHandIK boolean
---@field bLobbyLeftFootIK boolean
---@field bLobbyRightFootIK boolean
---@field bAnimNotifyForceIKState boolean
---@field bAnimNotifyForceIgnoreIKState boolean
---@field bNonAnimCurveTriggerIKState boolean
---@field TriggerIKAnimCurveSet_Lobby ULuaArrayHelper<FAnimCurveValueFeature>
---@field TriggerIKAnimCurveSet_Battle ULuaArrayHelper<FAnimCurveValueFeature>
---@field EnableSkirtCollisionDetectRoles number @**************************************Skirt Collision Start**************************************
---@field bSkirtInCollision number
---@field SkirtCollisionDetectRadius number
---@field SkirtCollisionDetectRange FFloatRange
---@field bUseDynamicDisableBoneRetargetFeature boolean
---@field AnimKeepBoneRetargetFeatureConfigType EAnimKeepBoneRetargetFeatureConfigType
---@field AnimKeepBoneRetargetFeatureConfigList ULuaArrayHelper<number>
---@field bUseDynamicDisableBoneRetargetFeature_UGC boolean
---@field AnimKeepBoneRetargetFeatureConfigType_UGC EAnimKeepBoneRetargetFeatureConfigType
---@field AnimKeepBoneRetargetFeatureConfigList_UGC ULuaArrayHelper<number>
---@field BoneRetargetMeshShiftCompensation FBoneRetargetMeshShiftCompensation
---@field bNeedUpdateOnSimStateChange boolean
---@field bUpdateSimOnHighEndOnly boolean
---@field DisableBoneSolver boolean
---@field bEnableRotateInHighSpeed boolean
---@field DynAlphaConfig FAlphaValueConfig
---@field RigidAlphaConfig FAlphaValueConfig
---@field AlphaMapConfig ULuaMapHelper<string, FAlphaValueConfig>
---@field KawaiiAlphaConfig ULuaMapHelper<FPawnStateAlphaKey, FPawnStateAlphaValue>
---@field DynamicKawaiiAlphaConfig ULuaMapHelper<FDynamicKawaiiAlphaConfigKey, FDynamicKawaiiAlphaConfigValue>
---@field KawaiiAlphaRuntimeInfos ULuaArrayHelper<FKawaiiAlphaRuntimeRecorder>
---@field CurrentKawaiiAlphaValue number
---@field KawaiiAlphaCachedProperties ULuaArrayHelper<UProperty>
---@field SelectedMontageSlotNameArray ULuaArrayHelper<string>
---@field bIsPlayingSelectedMontageSlotNames boolean
---@field ConcernedBackSocketList ULuaArrayHelper<string>
---@field bUsePDKawaiiMethod_Static boolean
---@field bUsePDKawaiiMethod_Runtime boolean
---@field BagLevel number
---@field DynamicMontageCached ULuaSetHelper<UAnimMontage>
---@field bEnableAnimSeqNotifyIgnore boolean
---@field bAvatarAnimBP boolean
---@field CurrentWeaponID number
---@field CurrentGlideItemID number
---@field bHasGunADSState boolean
---@field bIsAutonomouseCharacter boolean
local USkirtAnimInstanceBase = {}

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function USkirtAnimInstanceBase:OnPoseStateChanged(LastPose, NewPose) end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function USkirtAnimInstanceBase:HandlePoseStateChanged(LastPose, NewPose) end

---@param EnteredState EPawnState
function USkirtAnimInstanceBase:HandleStateChanged(EnteredState) end

---@param stateID number
---@param interruptedBy number
function USkirtAnimInstanceBase:OnStateInterrupted(stateID, interruptedBy) end

---@param bForceRefresh boolean
function USkirtAnimInstanceBase:RefreshBackHavingItem(bForceRefresh) end

---@param bUseSkinWeightProfile boolean
function USkirtAnimInstanceBase:RegisterSkinWeightProfile(bUseSkinWeightProfile) end

---@param IsReallyChanged boolean
function USkirtAnimInstanceBase:OnRefreshBackHavingItem(IsReallyChanged) end

---@param TargetType ESkirtPoseType
function USkirtAnimInstanceBase:StartOverridePoseType(TargetType) end

function USkirtAnimInstanceBase:StopOverridePoseType() end

---@param ProfileName string
---@param bUseSkinWeightProfile boolean
---@param bSetAll boolean
function USkirtAnimInstanceBase:SetAllSelfSkinWeightProfile(ProfileName, bUseSkinWeightProfile, bSetAll) end

function USkirtAnimInstanceBase:HandleOnAnimInitialized() end

function USkirtAnimInstanceBase:HandleOnMasterAnimInstChanged() end

function USkirtAnimInstanceBase:SetSlotIdleAnim() end

---@param InVehicleType ESTExtraVehicleType
function USkirtAnimInstanceBase:SetCurVehicleType(InVehicleType) end

---@param InLastVehicle ASTExtraVehicleBase
function USkirtAnimInstanceBase:OnCharacterDetachedFromVehicle(InLastVehicle) end

---@param InLastVehicle ASTExtraVehicleBase
function USkirtAnimInstanceBase:OnCharacterAttachedToVehicle(InLastVehicle) end

---@param InAdaptParam FAvatarAnimAdaptParam
function USkirtAnimInstanceBase:BeginAnimAdapt(InAdaptParam) end

---@param InAdaptParam FAvatarAnimAdaptParam
function USkirtAnimInstanceBase:EndAnimAdapt(InAdaptParam) end

---@param InActionStart boolean
function USkirtAnimInstanceBase:CheckScopeInAdapt(InActionStart) end

---@param InActionStart boolean
function USkirtAnimInstanceBase:CheckScopeOutAdapt(InActionStart) end

---@param InPoseType ESkirtPoseType
---@return boolean
function USkirtAnimInstanceBase:IsLobbyPoseType(InPoseType) end

---@return boolean
function USkirtAnimInstanceBase:IsMale() end

---@param SlotNodeName string
---@return boolean
function USkirtAnimInstanceBase:IsPlayingSlotAnim(SlotNodeName) end

---@return boolean
function USkirtAnimInstanceBase:IsAnyMontagePlayingOnOwner() end

function USkirtAnimInstanceBase:HandleParachuteSubTypeEnumLoaded() end

---@param InSlotType number
---@param IsEquipped boolean
function USkirtAnimInstanceBase:OnAvatarEquipped(InSlotType, IsEquipped) end

---@return boolean
function USkirtAnimInstanceBase:IsEnableEmotePlayAdapt() end

---@param ChangedState EPawnState
function USkirtAnimInstanceBase:TrySwitchEmotePlayAdaptOn(ChangedState) end

---@param ChangedState EPawnState
function USkirtAnimInstanceBase:TrySwitchEmotePlayAdaptOff(ChangedState) end

---@param InPlayEmoteID number
function USkirtAnimInstanceBase:OnLobbyCharPlayEmote(InPlayEmoteID) end

---@param InPlayEmoteID number
function USkirtAnimInstanceBase:OnLobbyCharStopEmote(InPlayEmoteID) end

---@param CurMontage UAnimMontage
function USkirtAnimInstanceBase:OnOwnerMontageChanged(CurMontage) end

---@return boolean
function USkirtAnimInstanceBase:IsEnableLobbyEmotePlayAdapt() end

---@param InPlayEmoteID number
function USkirtAnimInstanceBase:TrySwitchLobbyEmotePlayAdaptOn(InPlayEmoteID) end

---@return boolean
function USkirtAnimInstanceBase:CheckCurMontageIsEmoteTemp() end

---@param InPlayEmoteID number
function USkirtAnimInstanceBase:TrySwitchLobbyEmotePlayAdaptOff(InPlayEmoteID) end

function USkirtAnimInstanceBase:CheckForceIgnoreBoneRetargetCurveValue() end

---@return boolean
function USkirtAnimInstanceBase:HasOpenEnterSpecialIdleDelegate() end

function USkirtAnimInstanceBase:GripWeaponIdleStateUpdate() end

function USkirtAnimInstanceBase:UpdateWingRedWeaponState() end

---@param InSlotType number
---@param bIsClear boolean
function USkirtAnimInstanceBase:UpdateSpecialIdleAnim(InSlotType, bIsClear) end

---@param InSeq UAnimSequence
function USkirtAnimInstanceBase:UpdateRandomIdleAnim(InSeq) end

---@param InSeq UAnimSequence
function USkirtAnimInstanceBase:UpdateRandomExtraPartIdleAnim(InSeq) end

---@param bOpenGripWeaponIdle boolean
---@param Idle_Girl UAnimSequence
---@param Idle_Boy UAnimSequence
function USkirtAnimInstanceBase:SetGripWeaponIdleState(bOpenGripWeaponIdle, Idle_Girl, Idle_Boy) end

---@param bOpenExtraPartRedWeaponIdle boolean
---@param Idle_Girl UAnimSequence
---@param Idle_Boy UAnimSequence
function USkirtAnimInstanceBase:SetExtraPartRedWeaponIdleState(bOpenExtraPartRedWeaponIdle, Idle_Girl, Idle_Boy) end

---@param InCurrentStates number
---@param InPrevStates number
function USkirtAnimInstanceBase:OnSimulateCharStateChanged(InCurrentStates, InPrevStates) end

---@param WeaponActor AActor
---@param WeaponOwner ASTExtraBaseCharacter
---@return boolean
function USkirtAnimInstanceBase:IsBPInterceptOnOwnerCharEquipWeapon_BigWorld(WeaponActor, WeaponOwner) end

---@param WeaponActor AActor
---@param WeaponOwner ASTExtraBaseCharacter
function USkirtAnimInstanceBase:OnOwnerCharEquipWeapon_BigWorld(WeaponActor, WeaponOwner) end

---@param WeaponActor AActor
---@param WeaponOwner ASTExtraBaseCharacter
---@return boolean
function USkirtAnimInstanceBase:IsBPInterceptOnOwnerCharUnEquipWeapon_BigWorld(WeaponActor, WeaponOwner) end

---@param WeaponActor AActor
---@param WeaponOwner ASTExtraBaseCharacter
function USkirtAnimInstanceBase:OnOwnerCharUnEquipWeapon_BigWorld(WeaponActor, WeaponOwner) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function USkirtAnimInstanceBase:OnOwnerCharChangeWeapon(TargetChangeSlot) end

function USkirtAnimInstanceBase:OnOwnerLobbyCharChangeWeapon() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function USkirtAnimInstanceBase:OnWeaponAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param InTargetState EPawnState
---@param InInterruptState EPawnState
function USkirtAnimInstanceBase:RefreshIKVariableState(InTargetState, InInterruptState) end

---@return boolean
function USkirtAnimInstanceBase:IsEnableCustomIK() end

---@param InIsForce boolean
---@param InTargetSlot EAvatarSlotType
---@param InTriggerAsset UObject
---@param InForceIKParam FAnimNotifyForceIKStateParam
function USkirtAnimInstanceBase:AnimNotifyForceIKState(InIsForce, InTargetSlot, InTriggerAsset, InForceIKParam) end

---@param InIsForce boolean
---@param InForceResetAllIKVariable_Battle boolean
---@param InForceResetAllIKVariable_Lobby boolean
function USkirtAnimInstanceBase:AnimNotifyForceIgnoreIKState(InIsForce, InForceResetAllIKVariable_Battle, InForceResetAllIKVariable_Lobby) end

---@param InIsInIKState boolean
function USkirtAnimInstanceBase:SetNonAnimCurveTriggerIsInIKState(InIsInIKState) end

function USkirtAnimInstanceBase:CheckTriggerIKAnimCurveValue() end

---**************************************Bone Retarget Feature Start**************************************
---@param InTargetState EPawnState
---@param InInterruptState EPawnState
function USkirtAnimInstanceBase:RefreshBoneRetargetState(InTargetState, InInterruptState) end

---UGC的策划需求是可以配置和主干不一样(可能是UGC特有)的东西，这里单独拆分配置和方法处理
---@param InTargetState EPawnState
---@param InInterruptState EPawnState
function USkirtAnimInstanceBase:RefreshBoneRetargetState_UGC(InTargetState, InInterruptState) end

---@param InTargetState EPawnState
function USkirtAnimInstanceBase:RefreshBoneRetargetMeshShiftCompensation(InTargetState) end

---@param MontageToPlay UAnimMontage
---@param bWantsPlay boolean
---@param PlayRate number
---@param StartSection string
---@param MontagePlayType EMainCharMontagePlayType
---@param StartPosition number
---@param PlayDirectly boolean
function USkirtAnimInstanceBase:HandlePlayerAnimMontagePlayDelegate(MontageToPlay, bWantsPlay, PlayRate, StartSection, MontagePlayType, StartPosition, PlayDirectly) end

---@param MontageToPlay UAnimMontage
---@param bWantsPlay boolean
---@param PlayRate number
---@param StartSection string
function USkirtAnimInstanceBase:HandleLobbyPlayerAnimMontagePlayDelegate(MontageToPlay, bWantsPlay, PlayRate, StartSection) end

---@param StartSection string
---@param MontageToPlay UAnimMontage
function USkirtAnimInstanceBase:HandlePlayerAnimMontageJumpSectionDelegate(StartSection, MontageToPlay) end

---@param AnimSequence UAnimSequenceBase
---@param bWantsPlay boolean
---@param SlotName string
---@param PlayRate number
---@param BlendTime number
function USkirtAnimInstanceBase:HandleAnimPlaySlotAnimDelegate(AnimSequence, bWantsPlay, SlotName, PlayRate, BlendTime) end

---@param AnimAsset UAnimationAsset
---@param bWantsPlay boolean
function USkirtAnimInstanceBase:HandleAnimSinglePlayDelegate(AnimAsset, bWantsPlay) end

---@param DeltaSeconds number
function USkirtAnimInstanceBase:TickUpdateKawaiiAlpha(DeltaSeconds) end

---@param DeltaSeconds number
---@param InKawaiiAlphaConfig ULuaMapHelper<FPawnStateAlphaKey, FPawnStateAlphaValue>
---@param InKawaiiAlphaRuntimeInfo FKawaiiAlphaRuntimeRecorder
---@param InCurrentKawaiiAlphaValue number
---@param InCurrentKawaiiAlphaVectorValue FVector
---@param bVectorParam boolean
---@return number
function USkirtAnimInstanceBase:TickUpdateKawaiiAlphaInternal(DeltaSeconds, InKawaiiAlphaConfig, InKawaiiAlphaRuntimeInfo, InCurrentKawaiiAlphaValue, InCurrentKawaiiAlphaVectorValue, bVectorParam) end

---@param InMontageSlotNameArray ULuaArrayHelper<string>
---@return boolean
function USkirtAnimInstanceBase:CheckIsAnySelectedSlotMontageIsPlaying(InMontageSlotNameArray) end

---@param CurMontage UAnimMontage
---@param InMontageSlotNameArray ULuaArrayHelper<string>
---@return boolean
function USkirtAnimInstanceBase:CheckMontageSlotIsMatch(CurMontage, InMontageSlotNameArray) end

---@param bClear boolean
---@param BoyAnim UAnimSequence
---@param GirlAnim UAnimSequence
function USkirtAnimInstanceBase:UpdateExtraPartIdleAnim(bClear, BoyAnim, GirlAnim) end

---@param StartedMontage UAnimMontage
function USkirtAnimInstanceBase:HandleMontageStarted(StartedMontage) end

---@param FinishedMontage UAnimMontage
---@param bInterrupted boolean
function USkirtAnimInstanceBase:HandleMontageEnded(FinishedMontage, bInterrupted) end

function USkirtAnimInstanceBase:UpdateBagLevel() end

function USkirtAnimInstanceBase:UpdateCurrentWeaponID() end

function USkirtAnimInstanceBase:UpdateCurrentGlideItemID() end

---@param Actor AActor
function USkirtAnimInstanceBase:OnReplaceSuitSkin(Actor) end

function USkirtAnimInstanceBase:UpdateHasGunADSState() end

function USkirtAnimInstanceBase:UpdateIsAutonomousCharacter() end

---@param InFollowedAnimIns UAnimInstance
function USkirtAnimInstanceBase:SetFollowedAnimIns(InFollowedAnimIns) end

---@param InFollowedAnimIns UAnimInstance
function USkirtAnimInstanceBase:ReceiveSetFollowedAnimIns(InFollowedAnimIns) end
