---@meta

---@class EDelayRenderRequestState
---@field Incomplete number
---@field Completed number
EDelayRenderRequestState = {}


---@class EAvatarAsyncLoadRequestState
---@field Wait number
---@field Executing number
---@field Complete number
---@field Error number
EAvatarAsyncLoadRequestState = {}


---@class EAvatarAsyncLoadRequestType
---@field Puton number
---@field Putoff number
---@field Init number
---@field LuaFunc number
EAvatarAsyncLoadRequestType = {}


---@class EAvatarLobbySettingType
---@field Default number
---@field DSNoAvatar number
---@field DSAvatar number
---@field ClientNoAvatar number
---@field ClientAvatar number
EAvatarLobbySettingType = {}


---@class EResourceType
---@field Mesh number
---@field Material number
---@field Anim number
---@field Particle number
---@field Audio number
EResourceType = {}


---@class ECharacterAvatarVisibilityMaskType
---@field MaskType_Default number
---@field MaskType_Carrying number
---@field MaskType_Skill number
---@field MaskType_StaticFunction number
---@field MaskType_ADS number
---@field MaskType_Avatar number
---@field MaskType_SpringArm number
---@field MaskType_OnVehicle number
ECharacterAvatarVisibilityMaskType = {}


---@class FDelayRenderRequest
---@field RenderRequestId number
---@field CurRequestState EDelayRenderRequestState
FDelayRenderRequest = {}


---@class FDelayRenderRequestList
---@field RequestList ULuaArrayHelper<FDelayRenderRequest>
FDelayRenderRequestList = {}


---@class FOnItemHandleListInfo
---@field AsyncLoadID number
---@field OnItemHandleListLoaded_ResultCache ULuaArrayHelper<UBattleItemHandleBase>
FOnItemHandleListInfo = {}


---@class FOnItemResListInfo
---@field AsyncLoadID number
---@field AssetRefList ULuaArrayHelper<FSoftObjectPath>
FOnItemResListInfo = {}


---@class FAvatarAsyncLoadRequest
---@field FuncName string
---@field TableName string
---@field LuaCallBack FBigWorldLuaCallBack
---@field NeedPutonHandles ULuaArrayHelper<UBackpackAvatarHandle>
---@field RequestId number
---@field ResIdArray ULuaArrayHelper<number>
---@field AvatarSex number
---@field HairId number
---@field CurType EAvatarAsyncLoadRequestType
---@field CurState EAvatarAsyncLoadRequestState
FAvatarAsyncLoadRequest = {}


---@class FRenderResSet
---@field MeshRes FSoftObjectPath
---@field MatRes ULuaArrayHelper<FSoftObjectPath>
---@field ParticleRes ULuaArrayHelper<FSoftObjectPath>
FRenderResSet = {}


---@class FAsyncLoadRenderResReq
---@field RenderResList ULuaArrayHelper<FRenderResSet>
---@field AvatarHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@field ResListBySlot ULuaMapHelper<number, FAvatarAsyncLoadResReqBySlot>
---@field IsAutonomousAvatar number
---@field NeedReAsyncMeshList boolean
FAsyncLoadRenderResReq = {}


---@class FChildHandleInfo
---@field ParentSlot number
---@field bAssembleFallback boolean
FChildHandleInfo = {}


---@class FChildHandleList
---@field ChildHandles ULuaArrayHelper<FChildHandleInfo>
FChildHandleList = {}


---@class FPreChildHandleList
---@field ChildHandles ULuaArrayHelper<UBackpackAvatarHandle>
FPreChildHandleList = {}


---@class FDefaultAvatarConfig
---@field ItemID FItemDefineID
---@field ItemHandle UBattleItemHandleBase
FDefaultAvatarConfig = {}


---@class FResourceList
---@field ResourcesPath ULuaArrayHelper<FSoftObjectPath>
FResourceList = {}


---@class FAvatarMeshChangeLogicRecordData
---@field stepId number
---@field FrameCount number
---@field CallTime number
---@field ExtraData string
FAvatarMeshChangeLogicRecordData = {}


---@class FClothingUpgradeAbilities
---@field CharacterAvatarActionEffectAbility boolean
---@field CharacterAvatarKillShowoffAbility boolean
---@field CharacterAvatarMVPTimeAbility boolean
---@field CharacterAvatarEntryAnnouncementAbility boolean
---@field CharacterAvatarKillAnnouncementAbility boolean
---@field CharacterAvatarTwinsAbility boolean
---@field CharacterAvatarCustomSkyAbility boolean
---@field CharacterAvatarExclusiveFeaturesAbility boolean
FClothingUpgradeAbilities = {}


---@class FEScapeAvatarDisplayCondition
---@field BackpackDisplayCondition number
---@field ArmorDisplayCondition number
---@field HelmetDisplayCondition number
FEScapeAvatarDisplayCondition = {}


---@class FAvatarBodyTypeAdaptInfoCollection
---@field BodyTypeAdaptInfoMap ULuaMapHelper<EAvatarSlotType, FAvatarBodyTypeAdaptInfo>
FAvatarBodyTypeAdaptInfoCollection = {}


---@class FAvatarBodyTypeCombination
---@field MasterBodyType number
---@field SlaveBodyType number
FAvatarBodyTypeCombination = {}


---@class FOnAvatarHandleEquipStateChanged : ULuaMulticastDelegate
FOnAvatarHandleEquipStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemID: number, IsEquipped: boolean, IsAllowBakeOverride: boolean, bHeadHandle: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarHandleEquipStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemID number
---@param IsEquipped boolean
---@param IsAllowBakeOverride boolean
---@param bHeadHandle boolean
function FOnAvatarHandleEquipStateChanged:Broadcast(ItemID, IsEquipped, IsAllowBakeOverride, bHeadHandle) end


---@class FOnItemHandleListLoadFinished : ULuaSingleDelegate
FOnItemHandleListLoadFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemHandleListLoadFinished:Bind(Callback, Obj) end

---执行委托
function FOnItemHandleListLoadFinished:Execute() end


---@class FAvatarSkinWeightProfileChanged : ULuaMulticastDelegate
FAvatarSkinWeightProfileChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AvatarCmp: UCharacterAvatarComponent, SkelMesh: USkeletalMeshComponent, SWPData: FAvatarSkinWeightChangedData, bIsSet: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAvatarSkinWeightProfileChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param AvatarCmp UCharacterAvatarComponent
---@param SkelMesh USkeletalMeshComponent
---@param SWPData FAvatarSkinWeightChangedData
---@param bIsSet boolean
function FAvatarSkinWeightProfileChanged:Broadcast(AvatarCmp, SkelMesh, SWPData, bIsSet) end


---@class FAvatarMasterMeshIBLChanged : ULuaMulticastDelegate
FAvatarMasterMeshIBLChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bMasterMeshIBL: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAvatarMasterMeshIBLChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bMasterMeshIBL boolean
function FAvatarMasterMeshIBLChanged:Broadcast(bMasterMeshIBL) end


---@class FAvatarDownloadComplete : ULuaSingleDelegate
FAvatarDownloadComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAvatarDownloadComplete:Bind(Callback, Obj) end

---执行委托
function FAvatarDownloadComplete:Execute() end


---@class FBigWorldLuaCallBack : ULuaSingleDelegate
FBigWorldLuaCallBack = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBigWorldLuaCallBack:Bind(Callback, Obj) end

---执行委托
function FBigWorldLuaCallBack:Execute() end


---@class FPostUpdateAvatarMeshCastShadow : ULuaSingleDelegate
FPostUpdateAvatarMeshCastShadow = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPostUpdateAvatarMeshCastShadow:Bind(Callback, Obj) end

---执行委托
function FPostUpdateAvatarMeshCastShadow:Execute() end


---@class FAvatarCollectParticleOverride : ULuaMulticastDelegate
FAvatarCollectParticleOverride = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InCharacter: ASTExtraBaseCharacter, PSTemplateKey: UParticleSystem, OverrideTemplate: UParticleSystem) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAvatarCollectParticleOverride:Add(Callback, Obj) end

---触发 Lua 广播
---@param InCharacter ASTExtraBaseCharacter
---@param PSTemplateKey UParticleSystem
---@param OverrideTemplate UParticleSystem
function FAvatarCollectParticleOverride:Broadcast(InCharacter, PSTemplateKey, OverrideTemplate) end


---@class FAvatarCollectAudioOverride : ULuaMulticastDelegate
FAvatarCollectAudioOverride = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InCharacter: ASTExtraBaseCharacter, TemplateKey: UAkAudioEvent, OverrideTemplate: UAkAudioEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAvatarCollectAudioOverride:Add(Callback, Obj) end

---触发 Lua 广播
---@param InCharacter ASTExtraBaseCharacter
---@param TemplateKey UAkAudioEvent
---@param OverrideTemplate UAkAudioEvent
function FAvatarCollectAudioOverride:Broadcast(InCharacter, TemplateKey, OverrideTemplate) end


---@class UCharacterAvatarComponent: UAvatarComponent, IObjectPoolInterface
---@field bInitializingDefaultBodyItem boolean
---@field OnAvatarSkinWeightProfileChanged FAvatarSkinWeightProfileChanged
---@field OnItemHandleListLoadFinished FOnItemHandleListLoadFinished
---@field bOptIsMatHighDeviceQuality boolean
---@field bIsOptUpdateIBLCall boolean
---@field CheckRequestAsyncAnimInstance boolean
---@field LockedVisibilityAvatarMap ULuaMapHelper<EAvatarSlotType, boolean>
---@field LockVisibilityAvatarSlotList ULuaArrayHelper<EAvatarSlotType>
---@field bOverride_CheckScopeInAdapt boolean
---@field bOverride_CheckScopeOutAdapt boolean
---@field bOptClientRoleCheck boolean
---@field bOptClientTeamCheck boolean
---@field HeadBoneVisibilityState number
---@field bAllAvatarMeshCastShadow boolean
---@field OnPostUpdateAvatarMeshCastShadow FPostUpdateAvatarMeshCastShadow
---@field bOverride_RefreshInverseRetargetParam boolean
---@field LatestPlayerPlayAnimAsset UAnimSequenceBase
---@field InverseRetargetTriggerAnimAsset UAnimSequenceBase
---@field InverseRetargetTriggerEmoteID number
---@field bAnimNotifyTriggerInverseRetarget boolean
---@field ConcernCharMontagePlayBehaviorFeatureCounter number
---@field bOverride_NotifyBehaviorFeatureCharMontagePlayState boolean
---@field bOverride_IsEmotePlayCanBeIgnore boolean
---@field bOverride_IsClothNotVisibleForFeatureHideReason boolean
---@field WaitingChangeSuitSkillIndex number
---@field WaitingChangeSuitSkillSoftRef UObject
---@field CheckIsPreparedOnClientAvatarTimerHandle FTimerHandle
---@field CheckStateIsReadyTimerHandle FTimerHandle
---@field AvatarSyncData ULuaArrayHelper<FMeshSynData>
---@field ClientAvatarData ULuaArrayHelper<FMeshSynData>
---@field ClientAvatarDataReady boolean
---@field OverrideSyncData ULuaArrayHelper<FMeshSynData>
---@field bIsClothExtraWingVisible boolean
---@field bIsClothExtraWingVisible_OnlyTeam boolean
---@field PlayerBackPackCapacity number
---@field GlideGlobalVisible boolean
---@field LoadedHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@field bForeceDisableSKinweight boolean
---@field bDisableSKinweight_Wing boolean
---@field ShouldShowPawnDetailInfoOnHUD boolean
---@field LatestAsyncLoadRenderResList ULuaArrayHelper<FSoftObjectPath> @for sync load flush debug info use
---@field EnableClearCriticalCondition number
---@field bIsInClearCriticalCondition boolean
---@field PendingLoadRenderRequestList ULuaMapHelper<number, FAsyncLoadRenderResReq>
---@field itemHandleCache ULuaArrayHelper<UBattleItemHandleBase>
---@field ignoreSlots ULuaArrayHelper<number>
---@field WholeBodyModelID number
---@field ConsiderAnimHiddenByLODList ULuaArrayHelper<EAvatarSlotType>
---@field ForceUpdateHiddenBonesSlotList ULuaArrayHelper<EAvatarSlotType>
---@field ExtendHideBoneList ULuaArrayHelper<FHideSlotBonePair>
---@field LatestExtendHideBoneList ULuaArrayHelper<FHideSlotBonePair>
---@field WaitCondition boolean
---@field EnableEquipAvatarSkin number
---@field EnableEquipAvatarPendant number
---@field ClearPendingEntityCfg number
---@field PendingUpdateBoneList ULuaArrayHelper<UAvatarEntity>
---@field PendingDeleteEntityList ULuaArrayHelper<FPendingDeleteEntity>
---@field SimulateDefaultHandleID number
---@field IsAutonomousDetectInterval number
---@field MaxNonDefaultChildItemCountMap ULuaMapHelper<EAvatarSlotType, number>
---@field ChildItems ULuaMapHelper<number, FChildHandleList>
---@field IgnoreSkinWeightAnimSlotName string
---@field DefaultAvatarHandles ULuaMapHelper<EAvatarSlotType, FDefaultAvatarConfig>
---@field DefaultAvatarIDCorrectExcludes ULuaArrayHelper<EGameModeType>
---@field DefaultAvatar4ReadyPak ULuaMapHelper<EAvatarSlotType, FItemDefineID>
---@field PinchFaceIDs ULuaArrayHelper<number>
---@field PauseIMPhysicsCountWhenDetachFromVehicle number
---@field PauseIMPhysicsCountWhenLeaveParachute number
---@field AsyncLoadOnClientModeEnabled boolean
---@field bEnableLowDevice boolean
---@field bClearDirtyMeshComp boolean
---@field DynamicAvatarScaleCollectionMap ULuaMapHelper<EAvatarSlotType, FAvatarScaleConfigCollection>
---@field bIgnoreNotVisibleSlotScaleConfig boolean
---@field bEnableAvatarScaleFeature boolean
---@field bAlwaysClearDirtyAvatarScale boolean
---@field bVisibleChangeRefreshAvatarScale boolean
---@field AlwaysResetScaleSlotList ULuaArrayHelper<EAvatarSlotType>
---@field FinalWorkingAvatarScaleMap ULuaMapHelper<EAvatarSlotType, FAvatarScaleConfig>
---@field FinalAlternativeAvatarScaleMap ULuaMapHelper<EAvatarSlotType, FAvatarScaleConfig>
---@field bOverrideAdaptMasterPoseSlot boolean
---@field AvatarAdaptMasterSlot EAvatarSlotType
---@field MeshShiftFeatureGuardAnimClass UAnimInstance
---@field bOverride_GetAvatarAdaptMasterSlot boolean
---@field bOverride_GetRetargetAdaptMasterComp boolean
---@field bOverride_IsAvatarScaleAdaptNeedDelayInitAnimTickAndPose boolean
---@field bOverride_PerformDelayedInitAnimTickAndRefreshPose boolean
---@field bShouldDelayAvatarInitAnimTickAndRefreshPose boolean
---@field bBackAttachWeaponAdaptForBoneRetarget_AllWeaponSlotType boolean
---@field BackAdaptWeaponSlotList_DefaultOverride ULuaArrayHelper<ESurviveWeaponPropSlot>
---@field BackAdaptWeaponSlotList ULuaArrayHelper<ESurviveWeaponPropSlot>
---@field ForceIgnoreIKWeaponIDList ULuaArrayHelper<number>
---@field bLockStandaloneRepeatRender boolean
---@field bCanForceReApplyMatSlotListWhenHeadChange boolean
---@field ReApplyMatSlotListWhenHeadChange ULuaArrayHelper<EAvatarSlotType>
---@field bForbiddenStandaloneRepeatRender boolean
---@field bMarkEntityDirtyWhenVisibilityChange boolean
---@field bEnableAnimNotifyStateBoneRetargetAdaptFeature boolean
---@field bMeshShiftMasterUpdateEveryFrame boolean
---@field bTriggerMeshShiftFeature boolean
---@field AdjustSocketAttachedCompCollection ULuaMapHelper<FAdjustSocketAttachedCompInfo, FAdjustSocketAttachedComp_ExtendParam>
---@field bUseAdjustSocketAttachedCompFeature boolean
---@field bAdjustSocketAttachedCompFeature_IgnoreHiddenMesh boolean
---@field bAdjustSocketAttachedCompFeature_OverrideAdjustMaster boolean
---@field bOverrideAdjustSocketAttachedCompMasterSlot boolean
---@field AvatarAdjustSocketAttachedCompMasterSlot EAvatarSlotType
---@field OnAvatarDownloadComplete FAvatarDownloadComplete
---@field bEnableForceBoneRetargetClothIKTickDetectFeature boolean
---@field AvatarAnimAdaptParamMap ULuaMapHelper<EAvatarSlotType, FAvatarAnimAdaptParam>
---@field VisibilityIssueSlotList ULuaArrayHelper<EAvatarSlotType>
---@field VisibilityIssueIDList ULuaArrayHelper<number>
---@field VisibilityHackIssueIDMap ULuaMapHelper<number, number>
---@field VisibilityHackHandleMap ULuaMapHelper<number, UBattleItemHandleBase>
---@field bIsTriggerVisibilityIssue boolean
---@field CurHoldMeleeWeapon_BigWorld AActor
---@field bLockModeAvatarFeature boolean
---@field bModeAvatarFeatureEnabled boolean
---@field BodyTypeAdaptFeatureGuardAnimClass UAnimInstance
---@field BodyTypeAdaptFeatureSlotList ULuaArrayHelper<EAvatarSlotType>
---@field BodyTypeAdaptConfigInfoCollection ULuaMapHelper<FAvatarBodyTypeCombination, FAvatarBodyTypeAdaptInfoCollection>
---@field BodyTypeAdaptConfigInfoCollection_Lobby ULuaMapHelper<FAvatarBodyTypeCombination, FAvatarBodyTypeAdaptInfoCollection>
---@field SyncDataRepCounter number
---@field DelayDestroyRenderDataSlotList ULuaArrayHelper<EAvatarSlotType>
---@field bOverride_GetFPPAvatarFuncBranchPtr boolean
---@field FuncBranch_NewFPP_ClassRef UAvatarFuncBranch_NewFPP
---@field TempOverrideClothComp_NonAvatar UMeshComponent
---@field bOverride_GetAssembleAvatarFuncBranchPtr boolean
---@field FuncBranch_Assemble_ClassRef UAvatarFuncBranch_Assemble
---@field bAssemblingModeFeatureAvatar boolean
---@field bOverride_GetModeFeatureFuncBranchPtr boolean
---@field FuncBranch_ModeFeature_ClassRef UAvatarFuncBranch_ModeFeature
---@field DroppableChildSlotList ULuaArrayHelper<EAvatarSlotType>
---@field MeshSectionVisibilityCheckInterval number @************************************针对外网不可复现Avatar有Section不可见的检测 Start**************************************** 【【avatar系统】外网玩家穿上衣服没有身体】http://tapd.oa.com/CJGame/bugtrace/bugs/view?bug_id=1020386762091468623
---@field MeshSectionVisibilityCheckCounter number
---@field bMeshSectionVisibilityCheckReportDone boolean
---@field bUseSetFuncCorrectMeshSectionVisibility boolean
---@field bUseForceCorrectMeshSectionVisibility boolean
---@field bFirstAsyncLoadFinished boolean
---@field LatestMeshSectionOpInfo string
---@field GMMeshSectionOpInfo string
---@field EnableBatchList ULuaArrayHelper<number>
---@field FarDistance number
---@field MiddleDistance number
---@field FarTime number
---@field MiddleTime number
---@field bHasSendSickLOD boolean @Dynamic bug detect and report start
---@field bHasSendBoneNonCompatible boolean
---@field bHasSendAvatarMeshError boolean
---@field bHasSendNoAvatarMasterMesh boolean
---@field SickLODNum number
---@field BoneNonCompatibleErrorNum number
---@field AvatarMeshErrorNum number
---@field NoAvatarMasterMeshNum number
---@field SickLODDetectInterval number
---@field SickLODDetectCounter number
---@field BoneNonCompatibleCheckInterval number
---@field BoneNonCompatibleCheckCounter number
---@field AvatarMeshErrorCheckInterval number
---@field AvatarMeshErrorCheckCounter number
---@field NoAvatarMasterMeshCheckInterval number
---@field NoAvatarMasterMeshCheckCounter number
---@field EVACloths ULuaArrayHelper<number>
---@field HunterModeDefaultID ULuaMapHelper<EAvatarSlotType, number>
---@field bHasSendSickHeadLOD boolean
---@field SickHeadLODDistThreshold number
---@field SickHeadLODDetectInterval number
---@field SickHeadLODDetectElapsed number
---@field PlayerNotVisibleInterval number
---@field bHasReportPlayerNotVisible boolean
---@field DynamicCacheStrategyForbiddenMapPathKeyWorldList ULuaArrayHelper<string>
---@field DynamicCacheStrategyUseMapPathKeyWorldList ULuaArrayHelper<string>
---@field bEntityBPEnable boolean
---@field EntityBP ULuaMapHelper<EAvatarSlotType, UCharacterAvatarEntity>
---@field SubSlotEntityBP ULuaMapHelper<EAvatarSlotType, EAvatarSubSlot>
---@field bIsShowEffect boolean
---@field EffectColor FVector
---@field MeshClip_VehicleLeanOutDelayTime number
---@field VehicleMeshClipDelay number
---@field OpenRepHeadDetectTime number
---@field RepHeadDetectStr string
---@field TempEnableMeshClip boolean
---@field DefaultCharacterAvatarIDArray ULuaArrayHelper<number>
---@field bCharacterAvatarSlotFilterUseWhiteList boolean
---@field CharacterAvatarSlotFilterList ULuaArrayHelper<EAvatarSlotType>
---@field bReadAvatarSettingType boolean
---@field AvatarAsyncLoadCounter number
---@field AvatarAsyncLoadRequestList ULuaArrayHelper<FAvatarAsyncLoadRequest>
---@field bOptGetAdvancedParentMat boolean
---@field NeedCheckSlotPakIsDownload ULuaArrayHelper<EAvatarSlotType>
---@field ClothingUpgradeShowCondition number
---@field ClothingUpgradeShowConditionUGC number
---@field ClothingUpgradeShowConditionUGCMobile number
---@field ClothingUpgradeShowSubTypes ULuaArrayHelper<string>
---@field ClothingUpgradeAbilities FClothingUpgradeAbilities
---@field bChangeTwinsCloth boolean
---@field ClientAssociation ULuaMapHelper<UItemHandleBase, FAssociationItem>
---@field ClothingUpgradeShowConditionIniModeIDs ULuaArrayHelper<string>
---@field WeaponAbilityHandleMap ULuaMapHelper<number, UBackpackWeaponAbilityHandle>
---@field DynamicAvatarSlotVisibility ULuaArrayHelper<EAvatarSlotType>
---@field NeverHiddenAvatarIDs ULuaArrayHelper<number>
---@field NeverHiddenBackpackModeConfig ULuaArrayHelper<number>
---@field EScapeAvatarDisplayCondition FEScapeAvatarDisplayCondition
---@field bLTShowSkinToSelfAndTeammate boolean
---@field IDToNearClipPlaneForAircraft ULuaMapHelper<number, number>
---@field AvatarMasterMeshIBLChanged FAvatarMasterMeshIBLChanged
---@field AvatarCollectParticleOverrideEvent FAvatarCollectParticleOverride
---@field AvatarCollectAudioOverrideEvent FAvatarCollectAudioOverride
---@field DelayRenderRequestId number
---@field DelayRenderRequestList FDelayRenderRequestList
---@field CurrentGalaxyFaceInfoIndex string
---@field bForceUseGalaxyFace boolean
---@field NewFPPHideBoneWhiteList ULuaArrayHelper<string>
---@field DefaultCharacterGeneralEffectManagerClass UCharacterGeneralEffectManager
---@field AllAbilityHandles ULuaArrayHelper<UBackpackCharacterAvatarAbilityHandle>
---@field ShowOtherRingBodyEffects number
---@field bEnableBatchRequest boolean
---@field AvatarSuitGender number
---@field CachePlayerCharacter ASTExtraPlayerCharacter
---@field CacheLobbyCharacter ASTExtraLobbyCharacter
---@field LobbyAvatarLogic_AvatarAssembly_ClassRef ULobbyAvatarLogic_AvatarAssembly
---@field OnAvatarOnMatQualityLevelChanged FOnAvatarOnMatQualityLevelChanged
---@field bCustomAvatarSlotNotifyRestoreVar boolean
---@field LobbyAvatarLogic_AsyncModule_ClassRef ULobbyAvatarLogic_AsyncModule
---@field bWingClothFlag boolean
---@field PetInfo FPlayerPetInfo
---@field IOS_SSS_MemoryThresholdGB number
---@field bIsPawnStateForAircraft boolean
---@field NeedRenderHiddenAvatarSlotIDList ULuaArrayHelper<number>
---@field AvatarProcessTimeOutCountDown number
---@field LoopAkEventID number
---@field AllowUseBudget boolean
---@field OnItemHandleListLoaded_ResultCache FOnItemHandleListInfo
---@field OnItemResList_ResultCache FOnItemResListInfo
---@field MeshChangeRecord ULuaArrayHelper<FAvatarMeshChangeLogicRecordData>
local UCharacterAvatarComponent = {}

---@return string
function UCharacterAvatarComponent:GetLuaModule() end

---@param handle UBattleItemHandleBase
function UCharacterAvatarComponent:InitDefaultMesh(handle) end

---@param handle UBattleItemHandleBase
function UCharacterAvatarComponent:InitDefaultAvatar(handle) end

---@param avatarGender number
---@param head number
---@param hair number
function UCharacterAvatarComponent:InitDefaultAvatarByResID(avatarGender, head, hair) end

---@param AGender number
function UCharacterAvatarComponent:InitialAvatarParam(AGender) end

---@param AvatarHandle UBackpackAvatarHandle
---@return boolean
function UCharacterAvatarComponent:InitBodyMeshByHead(AvatarHandle) end

---@param HeadHandle UBackpackAvatarHandle
---@param BodyHandleList ULuaArrayHelper<UBackpackAvatarHandle>
function UCharacterAvatarComponent:GetDefaultBodyHandles(HeadHandle, BodyHandleList) end

---@param AGender number
function UCharacterAvatarComponent:SetAvatarGender(AGender) end

---@param slot number
---@return boolean
function UCharacterAvatarComponent:CheckShouldEquipDefaultItem(slot) end

---@param itemResID number
---@return boolean
function UCharacterAvatarComponent:CheckIsHiddenByOther(itemResID) end

---@param itemResId number
---@return boolean
function UCharacterAvatarComponent:IsAdditionalItemsHiddenBy(itemResId) end

---@return boolean
function UCharacterAvatarComponent:EnableEquipAvatarPendantFeature() end

function UCharacterAvatarComponent:GetDefaultBodyItemIDList() end

---@param bUseSkinWeightProfile boolean
---@param InSkinWeightProfileState EUseSWPState
function UCharacterAvatarComponent:RegisterSkinWeightProfileState(bUseSkinWeightProfile, InSkinWeightProfileState) end

---@param bUseSkinWeightProfile boolean
---@param TempStateName string
---@param bForceDisable boolean
function UCharacterAvatarComponent:RegisterSkinWeightProfileStateWithTempName(bUseSkinWeightProfile, TempStateName, bForceDisable) end

---@param ProfileName string
---@param bUseSkinWeightProfile boolean
---@param Reason ESetSkinWeightReason
function UCharacterAvatarComponent:SetAllSelfSkinWeightProfile(ProfileName, bUseSkinWeightProfile, Reason) end

---@param SkeletalMeshCmp USkeletalMeshComponent
---@param ProfileName string
---@param bUseSkinWeightProfile boolean
---@param SlotID number
---@param Reason ESetSkinWeightReason
function UCharacterAvatarComponent:SetSelfSkinWeightProfile(SkeletalMeshCmp, ProfileName, bUseSkinWeightProfile, SlotID, Reason) end

---@param SkeletalMeshCmp USkeletalMeshComponent
---@param ProfileName string
---@param bUseSkinWeightProfile boolean
---@param Reason ESetSkinWeightReason
function UCharacterAvatarComponent:SetSkinWeightProfileBySkelMeshCmp(SkeletalMeshCmp, ProfileName, bUseSkinWeightProfile, Reason) end

---@param slotID number
---@param profilestate EPawnState
---@return boolean
function UCharacterAvatarComponent:HasSkinWeightProfileBySlotID(slotID, profilestate) end

---@param slotID number
---@return boolean
function UCharacterAvatarComponent:LobbyHasSkinWeightProfileBySlotID(slotID) end

---@return boolean
function UCharacterAvatarComponent:IsBattle_ROLE_AutonomousProxy() end

---@param EmoteIndex number
function UCharacterAvatarComponent:OnLobbyEmoteMontageStartEvent(EmoteIndex) end

---@param EmoteIndex number
function UCharacterAvatarComponent:OnLobbyEmoteMontageFinishedEvent(EmoteIndex) end

---@param profilestate EPawnState
---@param ProfileName string
---@param bUseSkinWeightProfile boolean
---@param Reason ESetSkinWeightReason
function UCharacterAvatarComponent:SetAllSelfSkinWeightProfileByState(profilestate, ProfileName, bUseSkinWeightProfile, Reason) end

---@param ProfileName string
---@param bUseSkinWeightProfile boolean
---@param Reason ESetSkinWeightReason
function UCharacterAvatarComponent:LobbySetAllSelfSkinWeightProfile(ProfileName, bUseSkinWeightProfile, Reason) end

---@param slot number
---@param states FSkinWeightProfileStates
---@return boolean
function UCharacterAvatarComponent:ResetSkinWeightProfile(slot, states) end

---@param InSlotID number
---@return boolean
function UCharacterAvatarComponent:IsConsiderAnimHiddenByLOD(InSlotID) end

---@param InTargetEntity UCharacterAvatarEntity
---@param InTargetHandle UBackpackAvatarHandle
---@param InTargetMesh UMeshComponent
---@return number
function UCharacterAvatarComponent:ProtectSimulateMeshType(InTargetEntity, InTargetHandle, InTargetMesh) end

---@param InSlotID number
---@return boolean
function UCharacterAvatarComponent:IsForceUpdateHiddenBonesSlot(InSlotID) end

---@param InSkeletalMeshComp USkeletalMeshComponent
---@return boolean
function UCharacterAvatarComponent:IsForceUpdateHiddenBonesComp(InSkeletalMeshComp) end

---@param InTriggerSlot EAvatarSlotType
---@param InSlotBonePairList ULuaArrayHelper<FHideSlotBonePair>
function UCharacterAvatarComponent:AddHideSlotBonePair(InTriggerSlot, InSlotBonePairList) end

---@param InTriggerSlot EAvatarSlotType
---@param InSlotBonePairList ULuaArrayHelper<FHideSlotBonePair>
function UCharacterAvatarComponent:RemoveHideSlotBonePair(InTriggerSlot, InSlotBonePairList) end

function UCharacterAvatarComponent:RefreshHideSlotBoneState() end

---@param InHideSlotBoneInfo FHideSlotBonePair
function UCharacterAvatarComponent:CustomSpecialHideBone(InHideSlotBoneInfo) end

---@param ItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterAvatarComponent:PreprocessingEntity(ItemHandleList) end

---@param itemHandle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@param stMesh UStaticMesh
---@param InInstanceID number
---@return boolean
function UCharacterAvatarComponent:PutOnEquipmentByItemHandle(itemHandle, skMesh, stMesh, InInstanceID) end

---@param InClearAvatarHandle UBackpackAvatarHandle
function UCharacterAvatarComponent:ClearAvatarFromAdditionalItem(InClearAvatarHandle) end

---@param Slot number
---@param InTargetHandleBase UBattleItemHandleBase
---@return boolean
function UCharacterAvatarComponent:PutOffEquiment(Slot, InTargetHandleBase) end

---@param ItemHandle UBattleItemHandleBase
---@param CheckSlotID number
function UCharacterAvatarComponent:CheckAdditionalItemExistRing(ItemHandle, CheckSlotID) end

---@param itemHandle UBattleItemHandleBase
---@param ParentSlotID number
---@return boolean
function UCharacterAvatarComponent:PutOnChildEquipmentByItemHandle(itemHandle, ParentSlotID) end

---@param handle UBattleItemHandleBase
---@param skMesh USkeletalMesh
---@param stMesh UStaticMesh
---@param bClear boolean
---@return boolean
function UCharacterAvatarComponent:PutOnEquipmentByItemHandleInner(handle, skMesh, stMesh, bClear) end

---@param InNewPutonSlot number
function UCharacterAvatarComponent:CheckMultiReplaceInfoUpdate(InNewPutonSlot) end

---@param InFallbackSlot EAvatarSlotType
---@param InOldItemHandle UBattleItemHandleBase
---@return boolean
function UCharacterAvatarComponent:PutOnFallbackItem(InFallbackSlot, InOldItemHandle) end

---@param AvatarList ULuaMapHelper<number, number>
---@param OtherSynData ULuaArrayHelper<FMeshSynData>
---@return boolean
function UCharacterAvatarComponent:PutOnEquipmentsByResIDList(AvatarList, OtherSynData) end

function UCharacterAvatarComponent:CopyRepData() end

function UCharacterAvatarComponent:RetrieveAvatarFromRepDataOnClient() end

---@param InHandle URuntimeCoverAllAvatarHandle
function UCharacterAvatarComponent:PutOnCoverAllAvatarMeshHandle(InHandle) end

function UCharacterAvatarComponent:PutOffCoverAllAvatarMeshHandle() end

---@param Source UCharacterAvatarComponent
---@param UseOwnMasterComp USkeletalMeshComponent
---@param CopySlots ULuaArrayHelper<EAvatarSlotType>
---@param bUseDSData boolean
function UCharacterAvatarComponent:ClientCopyFromOthers(Source, UseOwnMasterComp, CopySlots, bUseDSData) end

---@param Other UCharacterAvatarComponent
---@param UseOwnMasterComp USkeletalMeshComponent
---@param CopySlots ULuaArrayHelper<EAvatarSlotType>
function UCharacterAvatarComponent:CopyFromOthers(Other, UseOwnMasterComp, CopySlots) end

---@param Other UCharacterAvatarComponent
---@param ExcludeSlots ULuaArrayHelper<EAvatarSlotType>
function UCharacterAvatarComponent:CopyFromOtherAvatarComp(Other, ExcludeSlots) end

---@param slot number
---@return boolean
function UCharacterAvatarComponent:IsSlotHasEquipped(slot) end

---@param slot number
---@param putDefault boolean
function UCharacterAvatarComponent:ClearMeshBySlot(slot, putDefault) end

function UCharacterAvatarComponent:ClearPendingDeleteEntity() end

function UCharacterAvatarComponent:RefreshAvatar() end

---@param NeedRefreshIdArray ULuaArrayHelper<number>
---@param bOnlyRefreshSlotsWithParticle boolean
function UCharacterAvatarComponent:RefreshAvatarBySlot(NeedRefreshIdArray, bOnlyRefreshSlotsWithParticle) end

function UCharacterAvatarComponent:RefreshAvatarParticle() end

---@param ForceAutonoumous boolean
function UCharacterAvatarComponent:ReloadAllEquippedAvatar(ForceAutonoumous) end

---@param bCheckInner boolean
---@param bCheckOuter boolean
function UCharacterAvatarComponent:GetVisibleAvatarSlots(bCheckInner, bCheckOuter) end

---@param InSlotList ULuaArrayHelper<EAvatarSlotType>
---@param NeedDirectLoad boolean
function UCharacterAvatarComponent:ReloadAvatarWithSlotList(InSlotList, NeedDirectLoad) end

---@param InHandle UBattleItemHandleBase
---@param InSlotID number
function UCharacterAvatarComponent:GetAvatarActionEffectsManagerClass(InHandle, InSlotID) end

---@param InHandle UBattleItemHandleBase
---@param InSlotID number
---@return boolean
function UCharacterAvatarComponent:IsAvatarActionEffectsValid(InHandle, InSlotID) end

---@return number
function UCharacterAvatarComponent:GetCharacterAvatarGenderWithSuitGender() end

---@param ItemHandle UBattleItemHandleBase
---@param meshComp UMeshComponent
function UCharacterAvatarComponent:ApplyMaterial(ItemHandle, meshComp) end

---@return boolean
function UCharacterAvatarComponent:IsUseSSSMaterial() end

---@param NormalSkinMat UMaterialInstance
---@param MeshComp UMeshComponent
---@param SlotName string
---@param InAvatarSlotID number
function UCharacterAvatarComponent:ApplySSSMatForWithHeadWholeBodyMesh(NormalSkinMat, MeshComp, SlotName, InAvatarSlotID) end

---@param meshPack FMeshPackage
---@param meshComp UMeshComponent
---@return boolean
function UCharacterAvatarComponent:SetBodySuitsMaterial(meshPack, meshComp) end

---@param meshPack FMeshPackage
---@param meshComp UMeshComponent
---@param slotID number
function UCharacterAvatarComponent:SetNormalMaterial(meshPack, meshComp, slotID) end

---@param SlotID number
---@param MeshComp UMeshComponent
---@param Material UMaterialInstance
---@param meshPack FMeshPackage
function UCharacterAvatarComponent:SetColorMaterial(SlotID, MeshComp, Material, meshPack) end

---@param slotID number
---@param MeshComp UMeshComponent
---@return boolean
function UCharacterAvatarComponent:SetSkinMaterial(slotID, MeshComp) end

---@param MeshComp UMeshComponent
---@param MatSkin UMaterialInterface
---@param SlotName string
---@param SlotId number
function UCharacterAvatarComponent:SetSkinMaterialInternel(MeshComp, MatSkin, SlotName, SlotId) end

function UCharacterAvatarComponent:RefreshMaterials() end

---@param ItemHandle UBattleItemHandleBase
---@param meshComp UMeshComponent
function UCharacterAvatarComponent:ApplyMaterialOnlySkinSlot(ItemHandle, meshComp) end

---@return boolean
function UCharacterAvatarComponent:IsPinceFace() end

---@param AvatarEntity UCharacterAvatarEntity
function UCharacterAvatarComponent:RenderEntityInStandAloneMode(AvatarEntity) end

---@param HandleList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterAvatarComponent:PushHandlesToPipeline(HandleList) end

---@param AvatarHandle UBackpackAvatarHandle
---@param SyncData FMeshSynData
---@return boolean
function UCharacterAvatarComponent:PreFiltHandles(AvatarHandle, SyncData) end

---@param SlotID number
---@return boolean
function UCharacterAvatarComponent:ShouldDisplayByQuality(SlotID) end

---@param RenderResReq FAsyncLoadRenderResReq
---@return boolean
function UCharacterAvatarComponent:ProcessAssetFilter(RenderResReq) end

---@param AssetList FSoftObjectPath
---@param itemHandles UBattleItemHandleBase
---@param isReplaced boolean
function UCharacterAvatarComponent:OnMeshLoaded(AssetList, itemHandles, isReplaced) end

---@param defineID FItemDefineID
---@param itemHandle UBattleItemHandleBase
function UCharacterAvatarComponent:OnItemHandleLoaded(defineID, itemHandle) end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UCharacterAvatarComponent:OnItemHandleListLoaded(ItemHandles, AsyncLoadID) end

---@param handleList UBattleItemHandleBase
---@param needDirectLoad boolean
---@return boolean
function UCharacterAvatarComponent:LoadMeshsAsync(handleList, needDirectLoad) end

---@param handleList ULuaArrayHelper<UBattleItemHandleBase>
---@param needDirectLoad boolean
---@return boolean
function UCharacterAvatarComponent:LoadMeshListAsync(handleList, needDirectLoad) end

function UCharacterAvatarComponent:ForceSyncUpdateAvatar() end

---@param InHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param InIsMale boolean
---@param InIsAutonomous boolean
function UCharacterAvatarComponent:GetRenderResList(InHandleList, InIsMale, InIsAutonomous) end

---@param AssetRef FSoftObjectPath
---@return number
function UCharacterAvatarComponent:GetSoftRefLatestAsyncLoadType(AssetRef) end

---@return boolean
function UCharacterAvatarComponent:IsNeedLoadMeshListSync() end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
function UCharacterAvatarComponent:OnAsyncLoadMeshList(AssetRef, AsyncLoadID) end

---@param AssetRefList ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
function UCharacterAvatarComponent:OnAsyncMeshResAndLogicObjReady(AssetRefList, AsyncLoadID) end

---@param InResListBySlot ULuaMapHelper<number, FAvatarAsyncLoadResReqBySlot>
---@param OutResList ULuaArrayHelper<FSoftObjectPath>
function UCharacterAvatarComponent:FilterCacheResListAssetRefStrategicManager(InResListBySlot, OutResList) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UCharacterAvatarComponent:LobbyCollectSSSMaterial(CollectRes) end

---@param handle UBattleItemHandleBase
---@param AssetRef FSoftObjectPath
---@param bUseLod00 boolean
---@param bExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@return boolean
function UCharacterAvatarComponent:GetMeshResRef(handle, AssetRef, bUseLod00, bExtraConfig, InIsIgnoreBodyTypeVariant) end

---@param SlotID number
---@return boolean
function UCharacterAvatarComponent:GetAvatarAssembleVisiblity(SlotID) end

---@param SlotID number
---@return boolean
function UCharacterAvatarComponent:GetAvatarOuterVisiblity(SlotID) end

---@param slotType EAvatarSlotType
---@param visible boolean
---@param isForce boolean
---@param MaskValue number
function UCharacterAvatarComponent:SetAvatarVisibility(slotType, visible, isForce, MaskValue) end

---@param visible boolean
---@param isForce boolean
---@param MaskValue number
function UCharacterAvatarComponent:SetAllAvatarVisibility(visible, isForce, MaskValue) end

---@param visible boolean
---@param ExcludingSlot ULuaArrayHelper<EAvatarSlotType>
---@param isForce boolean
---@param MaskValue number
function UCharacterAvatarComponent:SetAvatarVisibilityExcludingSome(visible, ExcludingSlot, isForce, MaskValue) end

---@param Visible boolean
---@param InCameraMode EPlayerCameraMode
function UCharacterAvatarComponent:SetAvatarSectionVisibility(Visible, InCameraMode) end

---@param InSlotID number
---@param InCusIsMale boolean
---@param InAvatarMesh UMeshComponent
---@param InIsEnableCheck boolean
---@param Visible boolean
---@param InCameraMode EPlayerCameraMode
---@return string
function UCharacterAvatarComponent:SetAvatarMeshSectionVisibility(InSlotID, InCusIsMale, InAvatarMesh, InIsEnableCheck, Visible, InCameraMode) end

---@param slotType EAvatarSlotType
---@param InTriggerObj UObject
function UCharacterAvatarComponent:LockAvatarVisibility(slotType, InTriggerObj) end

---@param slotType EAvatarSlotType
---@param InTriggerObj UObject
function UCharacterAvatarComponent:UnLockAvatarVisibility(slotType, InTriggerObj) end

---@param slotType EAvatarSlotType
---@return boolean
function UCharacterAvatarComponent:IsLockAvatarVisibility(slotType) end

---@param InMatSlotName string
---@param InAvatarSlotIndex number
---@param InCameraMode EPlayerCameraMode
---@return boolean
function UCharacterAvatarComponent:IsNamedSectionCutExclude(InMatSlotName, InAvatarSlotIndex, InCameraMode) end

---@param InMatSlotName string
---@param InAvatarSlotIndex number
---@param InCameraMode EPlayerCameraMode
---@param InOriginalVisible boolean
---@return boolean
function UCharacterAvatarComponent:GetNamedSectionOverrideCutVisible(InMatSlotName, InAvatarSlotIndex, InCameraMode, InOriginalVisible) end

---@param InActionStart boolean
function UCharacterAvatarComponent:CheckScopeInAdapt(InActionStart) end

---@param InActionStart boolean
function UCharacterAvatarComponent:CheckScopeOutAdapt(InActionStart) end

---@param InActionStart boolean
function UCharacterAvatarComponent:BP_CheckScopeInAdapt(InActionStart) end

---@param InActionStart boolean
function UCharacterAvatarComponent:BP_CheckScopeOutAdapt(InActionStart) end

---@param AvatarHandle UBackpackAvatarHandle
function UCharacterAvatarComponent:CheckAlreadyEquipped(AvatarHandle) end

---@param AVEntity UAvatarEntity
function UCharacterAvatarComponent:RemovePendingDeleteEntity(AVEntity) end

---@return boolean
function UCharacterAvatarComponent:IsAutonomousAvatar() end

---@param InChangedMatQualityValue number
function UCharacterAvatarComponent:BP_OnMatQualityLevelChanged(InChangedMatQualityValue) end

---@param meshPack FMeshPackage
---@return boolean
function UCharacterAvatarComponent:IsForceUseHighQualityMat_ByMeshPack(meshPack) end

---@param InSlotID number
---@param InHandleBase UBattleItemHandleBase
---@return boolean
function UCharacterAvatarComponent:IsForceUseHighQualityMat(InSlotID, InHandleBase) end

---@return boolean
function UCharacterAvatarComponent:IsTeammate() end

---@param avatar UBackpackAvatarHandle
function UCharacterAvatarComponent:SetIgnoreSlots(avatar) end

---@param IsHide boolean
---@param BoneName string
function UCharacterAvatarComponent:HideHeadBone(IsHide, BoneName) end

---@param InCameraMode EPlayerCameraMode
---@param CurControlPawn ASTExtraBaseCharacter
function UCharacterAvatarComponent:UpdateHeadBoneVisibility(InCameraMode, CurControlPawn) end

---@param TargetEntity UCharacterAvatarEntity
function UCharacterAvatarComponent:OnReplacedMeshNotLoaded(TargetEntity) end

---@param IsEnabled boolean
function UCharacterAvatarComponent:SetCastShadowEnabled(IsEnabled) end

function UCharacterAvatarComponent:UpdateAvatarMeshCastShadow() end

function UCharacterAvatarComponent:CheckOverrideRigidBodyAsset() end

---@param InPauseFrameCount number
function UCharacterAvatarComponent:PauseIMSimulation(InPauseFrameCount) end

---@param InLastVehicle ASTExtraVehicleBase
function UCharacterAvatarComponent:OnCharacterDetachedFromVehicle(InLastVehicle) end

---@param InLastVehicle ASTExtraVehicleBase
function UCharacterAvatarComponent:OnCharacterAttachedToVehicle(InLastVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UCharacterAvatarComponent:OnCharacterAttachedToVehicleBindDelegate(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UCharacterAvatarComponent:OnCharacterDetachedToVehicleUnBindDelegate(InVehicle) end

function UCharacterAvatarComponent:OnCharacterChangeSeatIndex() end

---@param ChangedState EPawnState
function UCharacterAvatarComponent:OnCharacterStateChanged(ChangedState) end

---@param InChangedStateID number
---@param InterruptedByStateID number
function UCharacterAvatarComponent:OnCharacterStateInterrupted(InChangedStateID, InterruptedByStateID) end

---@param MontageToPlay UAnimMontage
---@param bWantsPlay boolean
---@param PlayRate number
---@param StartSection string
---@param MontagePlayType EMainCharMontagePlayType
---@param StartPosition number
---@param PlayDirectly boolean
function UCharacterAvatarComponent:HandlePlayerAnimMontagePlayDelegate(MontageToPlay, bWantsPlay, PlayRate, StartSection, MontagePlayType, StartPosition, PlayDirectly) end

---@param AnimSequence UAnimSequenceBase
---@param bWantsPlay boolean
---@param SlotName string
---@param PlayRate number
---@param BlendTime number
function UCharacterAvatarComponent:HandleAnimPlaySlotAnimDelegate(AnimSequence, bWantsPlay, SlotName, PlayRate, BlendTime) end

---@param StartedMontage UAnimMontage
function UCharacterAvatarComponent:HandlePlayerMontageStarted(StartedMontage) end

---@param FinishedMontage UAnimMontage
---@param bInterrupted boolean
function UCharacterAvatarComponent:HandlePlayerMontageEnded(FinishedMontage, bInterrupted) end

---@param InTriggerAnim UAnimSequenceBase
---@param InIsPlay boolean
---@param InIsInterrupted boolean
function UCharacterAvatarComponent:RefreshInverseRetargetParam(InTriggerAnim, InIsPlay, InIsInterrupted) end

---@param InTriggerAnim UAnimSequenceBase
---@param InIsPlay boolean
---@param InIsInterrupted boolean
function UCharacterAvatarComponent:BP_RefreshInverseRetargetParam(InTriggerAnim, InIsPlay, InIsInterrupted) end

---@param InTriggerAnim UAnimSequenceBase
---@param InIsPlay boolean
---@param InIsInterrupted boolean
function UCharacterAvatarComponent:NotifyBehaviorFeatureCharMontagePlayState(InTriggerAnim, InIsPlay, InIsInterrupted) end

---@param InTriggerAnim UAnimSequenceBase
---@param InIsPlay boolean
---@param InIsInterrupted boolean
function UCharacterAvatarComponent:BP_NotifyBehaviorFeatureCharMontagePlayState(InTriggerAnim, InIsPlay, InIsInterrupted) end

---@param InPlayingEmoteID number
---@return boolean
function UCharacterAvatarComponent:IsEmotePlayCanBeIgnore(InPlayingEmoteID) end

---@param InPlayingEmoteID number
---@return boolean
function UCharacterAvatarComponent:BP_IsEmotePlayCanBeIgnore(InPlayingEmoteID) end

---@param InTestClothID number
---@return boolean
function UCharacterAvatarComponent:IsClothNotVisibleForFeatureHideReason(InTestClothID) end

---@param InTestClothID number
---@return boolean
function UCharacterAvatarComponent:BP_IsClothNotVisibleForFeatureHideReason(InTestClothID) end

---@param InRefreshTriggerObj UObject
function UCharacterAvatarComponent:RefreshAvatarMatCutState(InRefreshTriggerObj) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UCharacterAvatarComponent:OnParachuteStateChanged(PreState, CurState) end

---@param slot number
---@param type ESyncOperation
---@param handle UBattleItemHandleBase
function UCharacterAvatarComponent:NetSyncData(slot, type, handle) end

---@param ItemHandle UBattleItemHandleBase
function UCharacterAvatarComponent:GetHandleParentSlot(ItemHandle) end

function UCharacterAvatarComponent:PreOnRep_AvatarMeshChanged() end

---@param InAsyncID number
---@param InAsyncHandleList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterAvatarComponent:PreOnAsyncLoadMeshList(InAsyncID, InAsyncHandleList) end

---@param InAsyncID number
function UCharacterAvatarComponent:PostOnAsyncLoadMeshList(InAsyncID) end

function UCharacterAvatarComponent:OnRep_AvatarMeshChanged() end

function UCharacterAvatarComponent:AsyncCheckAvatarPakWhenAvatarDataChange() end

function UCharacterAvatarComponent:OnAllPakCheckCompleted() end

function UCharacterAvatarComponent:GetAsyncLoadHandleAdditionalResBunch() end

function UCharacterAvatarComponent:OnRep_BackPackCapacityChanged() end

---@param SlotID number
---@return boolean
function UCharacterAvatarComponent:IsSlotNeedReplaced(SlotID) end

---@param IsReadyState boolean
---@return boolean
function UCharacterAvatarComponent:IsReadyToNextStep(IsReadyState) end

---@return boolean
function UCharacterAvatarComponent:ShouldUseHairDynamicEffect() end

function UCharacterAvatarComponent:MarkAvatarSyncDataDirty() end

---@param Capacity number
function UCharacterAvatarComponent:SetPlayerBackPackCapacity(Capacity) end

---@param bInVisible boolean
function UCharacterAvatarComponent:SetGlideGlobalVisible(bInVisible) end

---@return boolean
function UCharacterAvatarComponent:IsPreparedOnClientAvatar() end

function UCharacterAvatarComponent:CheckIsPreparedOnClientAvatar() end

---@param InAvatarComponentType EAvatarComponentType
---@return boolean
function UCharacterAvatarComponent:ShouldClientOverrideAvatarMeshData(InAvatarComponentType) end

---@return boolean
function UCharacterAvatarComponent:CheckStateIsReady() end

---@param InGameStateName string
function UCharacterAvatarComponent:HandleGameStateClassChanged(InGameStateName) end

---@param ParentSlotID number
---@param OriginalParentID number
---@return number
function UCharacterAvatarComponent:GetParentIDForSpecialMode(ParentSlotID, OriginalParentID) end

---@param InDeltaTime number
function UCharacterAvatarComponent:TickAvatarDownload(InDeltaTime) end

---@return string
function UCharacterAvatarComponent:GetPlayerName() end

---@param InTargetAvatarHandle UBackpackAvatarHandle
---@param InIsCountTargetHandle boolean
function UCharacterAvatarComponent:TryExcludeThresholdNonDefaultChildItem(InTargetAvatarHandle, InIsCountTargetHandle) end

---@param AircraftHandle UBackpackAvatarHandle
function UCharacterAvatarComponent:SetMultiAirCraftHandle(AircraftHandle) end

---@param SlotID EAvatarSlotType
---@param DefaultAvatar FItemDefineID
---@return boolean
function UCharacterAvatarComponent:GetDefaultAvatar4ReadyPak(SlotID, DefaultAvatar) end

---@param AvatarHandle UBackpackAvatarHandle
---@return boolean
function UCharacterAvatarComponent:CheckEntityDisabled(AvatarHandle) end

---@param ParentSlotID number
---@param ChildHandle UBackpackAvatarHandle
---@param InIsAssembleFallback boolean
function UCharacterAvatarComponent:CacheChildEntity(ParentSlotID, ChildHandle, InIsAssembleFallback) end

function UCharacterAvatarComponent:GetAvatarHiddenSlotMap() end

---@param itemHandle UBattleItemHandleBase
---@return boolean
function UCharacterAvatarComponent:CheckIfAvatarPakDownloaded(itemHandle) end

---@param IsEnable boolean
function UCharacterAvatarComponent:SetAsyncLoadingOnClientModeEnabled(IsEnable) end

---@param AnimMontage UAnimMontage
---@param InPlayRate number
function UCharacterAvatarComponent:SetAnimMontagePlayRate(AnimMontage, InPlayRate) end

---@param InTargetAnimInstance UAnimInstance
---@param AnimMontage UAnimMontage
---@param InPlayRate number
function UCharacterAvatarComponent:SetAnimMontagePlayRateForAnimInstance(InTargetAnimInstance, AnimMontage, InPlayRate) end

---@param InTargetVisibility boolean
function UCharacterAvatarComponent:RefreshForAvatarVisibilityFreature(InTargetVisibility) end

---@return EAvatarSlotType
function UCharacterAvatarComponent:GetAvatarAdaptMasterSlot() end

---@return EAvatarSlotType
function UCharacterAvatarComponent:BP_GetAvatarAdaptMasterSlot() end

---【【Bug转需求】【avatar 背包系统】eva三套机甲套装使用梦幻火箭背包（2级与3级），火焰特效与背包分离】 http://tapd.woa.com/CJGame/prong/stories/view/1020386762872344417 【【avatar系统】【骨骼重定向】环太平洋三套衣服特种作战职业臂章装备穿插】https://tapd.woa.com/CJGame/bugtrace/bugs/view?bug_id=1020386762102617283
---@param InTargetSlot EAvatarSlotType
---@return boolean
function UCharacterAvatarComponent:IsAvatarScaleAdaptSlot(InTargetSlot) end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarScaleInfo FAvatarScaleConfig
---@return boolean
function UCharacterAvatarComponent:IsAvatarScaleAdaptSlotForConfig(InTargetSlot, InAvatarScaleInfo) end

---@param InTargetSlot EAvatarSlotType
---@return FTransform
function UCharacterAvatarComponent:GetAvatarScaleAdaptTransform(InTargetSlot) end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarScaleInfo FAvatarScaleConfig
---@return FTransform
function UCharacterAvatarComponent:ExtractAvatarScaleAdaptTransform(InTargetSlot, InAvatarScaleInfo) end

---@param InAvatarScaleInfo FAvatarScaleConfig
function UCharacterAvatarComponent:ApplyAvatarScale(InAvatarScaleInfo) end

---@param InAvatarScaleInfo FAvatarScaleConfig
function UCharacterAvatarComponent:CancelAvatarScale(InAvatarScaleInfo) end

---@param InTargetSlot number
function UCharacterAvatarComponent:PreAvatarMeshComDestroy_CancelAvatarScaleAdapt(InTargetSlot) end

---@param InTargetEntity UAvatarEntity
---@param InCallFuncName string
function UCharacterAvatarComponent:ApplyAvatarScale_Particle(InTargetEntity, InCallFuncName) end

---@param InTargetEntity UAvatarEntity
---@param InCallFuncName string
function UCharacterAvatarComponent:CancelAvatarScale_Particle(InTargetEntity, InCallFuncName) end

---@param InTriggerSlot EAvatarSlotType
---@param InAvatarScaleCollection FAvatarScaleConfigCollection
function UCharacterAvatarComponent:AddAvatarScale(InTriggerSlot, InAvatarScaleCollection) end

---@param InTriggerSlot EAvatarSlotType
function UCharacterAvatarComponent:RemoveAvatarScale(InTriggerSlot) end

function UCharacterAvatarComponent:UpdateFinalWorkingAvatarScaleMap() end

---@param InIsForceCancelDirtyScale boolean
function UCharacterAvatarComponent:RefreshAvatarScale(InIsForceCancelDirtyScale) end

---@param InScaledSlot EAvatarSlotType
function UCharacterAvatarComponent:CheckAvatarScaleForSlot(InScaledSlot) end

---@param InScaledSlot EAvatarSlotType
function UCharacterAvatarComponent:CheckAvatarScaleForSlotAssociation(InScaledSlot) end

---@param InScaledSlot EAvatarSlotType
function UCharacterAvatarComponent:CheckAvatarScaleCancelForSlotAssociation(InScaledSlot) end

---@param InScaledSlot EAvatarSlotType
---@param InAssociatedSlot EAvatarSlotType
function UCharacterAvatarComponent:RefreshAvatarScaleForAssociatedSlot(InScaledSlot, InAssociatedSlot) end

---@param InAvatarSlot EAvatarSlotType
---@param InIsUseEnable boolean
function UCharacterAvatarComponent:MarkAvatarBoneRetargetLODFeature(InAvatarSlot, InIsUseEnable) end

---@param InTestSlot EAvatarSlotType
---@return boolean
function UCharacterAvatarComponent:IsAvatarScaleAdaptNeedDelayInitAnimTickAndPose(InTestSlot) end

---@param InTestSlot EAvatarSlotType
---@return boolean
function UCharacterAvatarComponent:BP_IsAvatarScaleAdaptNeedDelayInitAnimTickAndPose(InTestSlot) end

function UCharacterAvatarComponent:PerformDelayedInitAnimTickAndRefreshPose() end

function UCharacterAvatarComponent:BP_PerformDelayedInitAnimTickAndRefreshPose() end

function UCharacterAvatarComponent:CheckHandWeaponAdaptForBoneRetarget() end

function UCharacterAvatarComponent:CancelHandWeaponAdaptForBoneRetarget() end

function UCharacterAvatarComponent:CheckBackWeaponAdaptForBoneRetarget() end

function UCharacterAvatarComponent:CancelBackWeaponAdaptForBoneRetarget() end

---@param InWeaponSlot ESurviveWeaponPropSlot
---@param InWeaponID number
---@param InLevel number
---@param InSideType number
---@param OutAdaptTransform FTransform
---@return boolean
function UCharacterAvatarComponent:TryGetBackWeaponAdaptRelativeTransform(InWeaponSlot, InWeaponID, InLevel, InSideType, OutAdaptTransform) end

---@param InWeaponID number
---@param InLevel number
---@param InSideType number
---@param OutAdaptTransform FTransform
---@return boolean
function UCharacterAvatarComponent:TryGetBackWeaponAdaptRelativeTransformLobby(InWeaponID, InLevel, InSideType, OutAdaptTransform) end

---@param InAttachSocket string
---@param AvatarSlotType EAvatarSlotType
---@param OutAdaptTransform FTransform
---@return boolean
function UCharacterAvatarComponent:TryGetBackWeaponAdaptUnifiedOffsetTransform(InAttachSocket, AvatarSlotType, OutAdaptTransform) end

---@param InAttachSocket string
---@param AvatarSlotType EAvatarSlotType
---@param OutAdaptTransform FTransform
---@return boolean
function UCharacterAvatarComponent:TryGetBackWeaponAdaptUnifiedOffsetTransformLobby(InAttachSocket, AvatarSlotType, OutAdaptTransform) end

---为骨骼重定向服装开发，不是最优解，但是目前时间节点下改动和影响比较小，风险可控;如果重构Avatar的显隐，考虑优化这里； Avatar显隐关系没有考虑某个Slot被隐藏时，Slot带有AdditionalItem的显隐处理；重构显隐关系改动较大，测试量极大极大！！！ 【【商业化服装功能优化】018版本--优化隐藏服装类飞行器，不显示部分avatar脸的问题】http://tapd.oa.com/CJGame/prong/stories/view/1020386762872021315
---@param InCharParachuteState EParachuteState
function UCharacterAvatarComponent:CheckBoneRetargetAdaptForWingCloth(InCharParachuteState) end

---@param InCharParachuteState EParachuteState
---@param WingId number
function UCharacterAvatarComponent:CheckBoneRetargetAdaptForWingClothWithId(InCharParachuteState, WingId) end

function UCharacterAvatarComponent:RefreshMeshShiftFeature() end

---@param InAdjustInfo FAdjustSocketAttachedCompInfo
---@return number
function UCharacterAvatarComponent:TryAdjustSocketAttachedComp(InAdjustInfo) end

---@param InAdjustInfo FAdjustSocketAttachedCompInfo
---@param InRealAdjustExtendParam FAdjustSocketAttachedComp_ExtendParam
---@return number
function UCharacterAvatarComponent:TryRevertSocketAttachedComp(InAdjustInfo, InRealAdjustExtendParam) end

---@param InAdjustInfo FAdjustSocketAttachedCompInfo
---@return number
function UCharacterAvatarComponent:AddAdjustSocketAttachedCompInfo(InAdjustInfo) end

---@param InAdjustInfo FAdjustSocketAttachedCompInfo
---@return number
function UCharacterAvatarComponent:RemoveAdjustSocketAttachedCompInfo(InAdjustInfo) end

---@param InTargetSlot EAvatarSlotType
function UCharacterAvatarComponent:TryApplyAdjustSocketAttachedCompForSlot(InTargetSlot) end

---@param InTargetSlot EAvatarSlotType
function UCharacterAvatarComponent:TryCancelAdjustSocketAttachedCompForSlot(InTargetSlot) end

---@param InTargetSlot EAvatarSlotType
function UCharacterAvatarComponent:TryRefreshAdjustSocketAttachedCompForSlot(InTargetSlot) end

---@return EAvatarSlotType
function UCharacterAvatarComponent:GetAdjustSocketAttachedCompMasterSlot() end

---@param InTriggerSlot EAvatarSlotType
function UCharacterAvatarComponent:TryMarkAdjustSocketAttachedCompMasterSlot(InTriggerSlot) end

---@param InTriggerSlot EAvatarSlotType
function UCharacterAvatarComponent:TryUnmarkAdjustSocketAttachedCompMasterSlot(InTriggerSlot) end

---@param InNewCameraMode EPlayerCameraMode
function UCharacterAvatarComponent:OnOwnerCharCameraModeChange(InNewCameraMode) end

---@return boolean
function UCharacterAvatarComponent:IsAnySocketAdaptApplied() end

---@return boolean
function UCharacterAvatarComponent:IsBeCarriedSocketAdaptApplied() end

---@param InAdaptSlot EAvatarSlotType
---@param InAnimAdaptParam FAvatarAnimAdaptParam
function UCharacterAvatarComponent:BeginAnimAdapt(InAdaptSlot, InAnimAdaptParam) end

---@param InAdaptSlot EAvatarSlotType
---@param InAnimAdaptParam FAvatarAnimAdaptParam
function UCharacterAvatarComponent:EndAnimAdapt(InAdaptSlot, InAnimAdaptParam) end

---@param InAdaptSlot EAvatarSlotType
function UCharacterAvatarComponent:TryApplyAnimAdapt(InAdaptSlot) end

function UCharacterAvatarComponent:ExtractVisibilityIssueIDList() end

function UCharacterAvatarComponent:FilterVisibilityHackItem() end

---@return boolean
function UCharacterAvatarComponent:HackVisibilityIssueItem() end

---@param InCharParachuteState EParachuteState
function UCharacterAvatarComponent:CheckVisiblityIssueForParachute(InCharParachuteState) end

---@param InIsTrigger boolean
function UCharacterAvatarComponent:MarkVisibilityIssue(InIsTrigger) end

---@param WeaponActor AActor
---@param WeaponOwner ASTExtraBaseCharacter
function UCharacterAvatarComponent:OnOwnerCharEquipWeapon_BigWorld(WeaponActor, WeaponOwner) end

---@param WeaponActor AActor
---@param WeaponOwner ASTExtraBaseCharacter
function UCharacterAvatarComponent:OnOwnerCharUnEquipWeapon_BigWorld(WeaponActor, WeaponOwner) end

---@param InModeAvatarFeaturePtr UModeAvatarFeature
function UCharacterAvatarComponent:SetModeAvatarFeaturePtr(InModeAvatarFeaturePtr) end

function UCharacterAvatarComponent:OnRep_ModeAvatarFeature() end

---@param InTargetHandle UBackpackAvatarHandle
---@return boolean
function UCharacterAvatarComponent:Server_TryActivateModeAvatarFeature(InTargetHandle) end

---@param InTargetHandle UBackpackAvatarHandle
---@return boolean
function UCharacterAvatarComponent:Server_TryRevertModeAvatarFeature(InTargetHandle) end

---@return boolean
function UCharacterAvatarComponent:Client_TryActivateFeature() end

---@return boolean
function UCharacterAvatarComponent:Client_TryRevertFeature() end

---@param InTargetHandle UBackpackAvatarHandle
---@return boolean
function UCharacterAvatarComponent:TryRefreshModeAvatar(InTargetHandle) end

---@param InLoadingItemDefineIDList ULuaArrayHelper<FItemDefineID>
---@return boolean
function UCharacterAvatarComponent:Client_ActivateFeature_LoadingItemList(InLoadingItemDefineIDList) end

---@return boolean
function UCharacterAvatarComponent:Client_ActivateFeature_EnableHighResFaceWithSkeletonInGame() end

---@param InLoadedHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@return boolean
function UCharacterAvatarComponent:Client_ActivateFeature_LoadedHandleList(InLoadedHandleList) end

---@return boolean
function UCharacterAvatarComponent:Client_ActivateFeature_PreAsyncRender() end

---@return boolean
function UCharacterAvatarComponent:Client_ActivateFeature_PostAsyncRender() end

---@param AvatarHandle UBackpackAvatarHandle
---@param SyncData FMeshSynData
---@return boolean
function UCharacterAvatarComponent:Client_ActivateFeature_PreFiltHandles(AvatarHandle, SyncData) end

---@return boolean
function UCharacterAvatarComponent:IsDisplayModeAvatarFeatureMesh() end

---@param InHandleBaseList ULuaArrayHelper<UBackpackAvatarHandle>
function UCharacterAvatarComponent:ExtractAvatarBodyTypeByAvatarHandleList(InHandleBaseList) end

---@param InTargetSlot number
function UCharacterAvatarComponent:TryAdaptMeshCompForBodyType(InTargetSlot) end

---@param InTargetSlot number
---@param InAdaptInfo FAvatarBodyTypeAdaptInfo
---@param InTargetMeshComp UMeshComponent
function UCharacterAvatarComponent:TryApplyBodyTypeAdaptInfo(InTargetSlot, InAdaptInfo, InTargetMeshComp) end

---@param InTargetSlot number
function UCharacterAvatarComponent:TryCancelAdaptMeshCompForBodyType(InTargetSlot) end

---@param InTargetSlot number
function UCharacterAvatarComponent:TryHackAnimUpdateRateOptimizations(InTargetSlot) end

---@param InTargetSlot number
function UCharacterAvatarComponent:TryCancelHackAnimUpdateRateOptimizations(InTargetSlot) end

function UCharacterAvatarComponent:RefreshBodyTypeAdapt() end

---@param InTestAvatarHandle UBackpackAvatarHandle
---@return boolean
function UCharacterAvatarComponent:IsAvatarHandleExcludedBySlotFeatureTag(InTestAvatarHandle) end

---@param InTestAvatarHandle UBackpackAvatarHandle
function UCharacterAvatarComponent:GetExcludeAvatarHandleListBySlotFeatureTag(InTestAvatarHandle) end

function UCharacterAvatarComponent:DelayDestroyAvatarRenderData() end

---@param InHandleList ULuaArrayHelper<UBackpackAvatarHandle>
function UCharacterAvatarComponent:ExtractAvatarAppearanceGenderByAvatarHandleList(InHandleList) end

---@param InWearIDList ULuaArrayHelper<number>
---@return boolean
function UCharacterAvatarComponent:CheckDefaultAvatarAppearanceDirty(InWearIDList) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
function UCharacterAvatarComponent:TrySwitchIntoNewFPPAvatar(InNewFPPMasterMesh) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
function UCharacterAvatarComponent:TrySwitchOutFPPAvatar(InNewFPPMasterMesh) end

---@param InTargetSkeletalMesh USkeletalMesh
---@param InTargetAnimClass UClass
---@param InOverrideMeshComp UMeshComponent
function UCharacterAvatarComponent:TempOverrideClothStart(InTargetSkeletalMesh, InTargetAnimClass, InOverrideMeshComp) end

function UCharacterAvatarComponent:TempOverrideClothEnd() end

---@param InJumpFallback boolean
function UCharacterAvatarComponent:SetAssembleJumpFallback(InJumpFallback) end

---@return boolean
function UCharacterAvatarComponent:GetAssembleJumpFallback() end

---@param InLockDisuseReason EBattleItemDisuseReason
---@return boolean
function UCharacterAvatarComponent:LockAssemblingDisuseReason(InLockDisuseReason) end

---@param InLockDisuseReason EBattleItemDisuseReason
function UCharacterAvatarComponent:UnLockAssemblingDisuseReason(InLockDisuseReason) end

---@return boolean
function UCharacterAvatarComponent:LockToAssemblingState() end

---@param InIsCheckDefaultFallback boolean
function UCharacterAvatarComponent:UnlockAssemblingState(InIsCheckDefaultFallback) end

---@return boolean
function UCharacterAvatarComponent:LockToDisassemblingState() end

function UCharacterAvatarComponent:UnlockDisassemblingState() end

---@param InAvatarIDList ULuaArrayHelper<number>
function UCharacterAvatarComponent:ExtractAssembleMetaInfoByIDList(InAvatarIDList) end

---@param InHandleBaseList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterAvatarComponent:ExtractAssembleMetaInfoByHandleBaseList(InHandleBaseList) end

---@param InHandleList ULuaArrayHelper<UBackpackAvatarHandle>
function UCharacterAvatarComponent:ExtractAssembleMetaInfoByHandleList(InHandleList) end

---@param InAvatarIDList ULuaArrayHelper<number>
function UCharacterAvatarComponent:SetAvatarAssembleInfo(InAvatarIDList) end

function UCharacterAvatarComponent:ResetAvatarAssembleInfo() end

---@param InTestSuitItemID number
---@return number
function UCharacterAvatarComponent:FetchSuitFallbackItemID(InTestSuitItemID) end

---@param InDropTriggerPC ASTExtraPlayerController
---@param InDropTriggerID number
function UCharacterAvatarComponent:DropAssembleRestrictedItems(InDropTriggerPC, InDropTriggerID) end

---@param bFromPersistentPool boolean
function UCharacterAvatarComponent:OnRespawned(bFromPersistentPool) end

---@param bFromPersistentPool boolean
function UCharacterAvatarComponent:BP_OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function UCharacterAvatarComponent:OnRecycled(bToPersistentPool) end

---@param DeltaTime number
function UCharacterAvatarComponent:TickMeshSectionVisibililtyCheck(DeltaTime) end

function UCharacterAvatarComponent:CorrectMeshSectionVisibility() end

---@param InIsShow boolean
---@param InLOD number
function UCharacterAvatarComponent:ForceShowAllMeshSection(InIsShow, InLOD) end

---@param InTargetMesh UMeshComponent
---@param InIsShow boolean
---@param InLOD number
function UCharacterAvatarComponent:ForceShowMeshSection(InTargetMesh, InIsShow, InLOD) end

---@param LastPlayerUID string
---@param NewPlayerUID string
function UCharacterAvatarComponent:OnReplayTargetChanged(LastPlayerUID, NewPlayerUID) end

---@return boolean
function UCharacterAvatarComponent:IsInLowDevice() end

---@param bNeedFaceInfo boolean
---@param InGalaxyFaceInfoIndex string
function UCharacterAvatarComponent:HandleHeadEntityFaceInfo(bNeedFaceInfo, InGalaxyFaceInfoIndex) end

---@param InTargetSlot number
function UCharacterAvatarComponent:TryRepairBoneNonCompatible(InTargetSlot) end

---@param InTargetSlot number
function UCharacterAvatarComponent:TryRepairSickLOD(InTargetSlot) end

---@param InTargetSlot number
function UCharacterAvatarComponent:TryRepairAvatarMeshError(InTargetSlot) end

---@param DeltaTime number
function UCharacterAvatarComponent:TickNoAvatarMasterMesh(DeltaTime) end

---Dynamic bug detect and report end
---@param DebugMeshComp USkeletalMeshComponent
function UCharacterAvatarComponent:OnDebugVisibleChanged(DebugMeshComp) end

---@param DeltaTime number
function UCharacterAvatarComponent:TickDetectHeadSickLOD(DeltaTime) end

function UCharacterAvatarComponent:TryRepairHeadSickLOD() end

---@param InOldTransform FTransform
---@param TriggerTag string
function UCharacterAvatarComponent:OnHeadComponentTransformChanged(InOldTransform, TriggerTag) end

---@param InOldRelativeScale3D FVector
---@param TriggerTag string
function UCharacterAvatarComponent:OnHeadComponentRelativeScale3DChanged(InOldRelativeScale3D, TriggerTag) end

---@param IncludeHiddenAvatar boolean
function UCharacterAvatarComponent:GetCurWearIDList(IncludeHiddenAvatar) end

---@param IncludeHiddenAvatar boolean
function UCharacterAvatarComponent:GetCurWearDefineIDList(IncludeHiddenAvatar) end

---@param SubSlotList ULuaArrayHelper<number>
function UCharacterAvatarComponent:GetEntityBP_Internal(SubSlotList) end

---@return boolean
function UCharacterAvatarComponent:GetEnableEntityBP() end

---@param Material UMaterialInterface
function UCharacterAvatarComponent:OverrideParentMaterial(Material) end

function UCharacterAvatarComponent:RefreshOverrideMaterial() end

---@param MeshComp UMeshComponent
---@param ItemHandle UBattleItemHandleBase
function UCharacterAvatarComponent:OnChangeParentMaterials(MeshComp, ItemHandle) end

function UCharacterAvatarComponent:RevertOriginMaterial() end

function UCharacterAvatarComponent:CheckOriginMaterial() end

---@param bIsShow boolean
---@param EffectColor FVector
function UCharacterAvatarComponent:ShowAvatarEffect(bIsShow, EffectColor) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UCharacterAvatarComponent:OnShowAvatarEffect(AsyncLoadID, LoadEventFrom) end

---@param deltaTime number
function UCharacterAvatarComponent:TickMeshClip(deltaTime) end

---@param clipDatas ULuaArrayHelper<FCharacterMeshClipData>
---@param enableIndex0 boolean
---@param data0 FCharacterMeshClipData
---@param enableIndex1 boolean
---@param data1 FCharacterMeshClipData
function UCharacterAvatarComponent:ParseMeshClipArray(clipDatas, enableIndex0, data0, enableIndex1, data1) end

---@param meshComponent UMeshComponent
---@param enableIndex0 boolean
---@param data0 FCharacterMeshClipData
---@param enableIndex1 boolean
---@param data1 FCharacterMeshClipData
function UCharacterAvatarComponent:ApplyClipToMesh(meshComponent, enableIndex0, data0, enableIndex1, data1) end

function UCharacterAvatarComponent:GetMatMapping() end

function UCharacterAvatarComponent:ClearDiffAvatarDataBetweenSwitchedDS() end

---@return boolean
function UCharacterAvatarComponent:GetLobbyLod00State() end

---@return ESelectorConditionLobbyRole
function UCharacterAvatarComponent:GetLobbyRole() end

---@return boolean
function UCharacterAvatarComponent:NativeGetLobbyLod00State() end

---@return ESelectorConditionLobbyRole
function UCharacterAvatarComponent:NativeGetLobbyRole() end

---@param InResIdArray ULuaArrayHelper<number>
---@param InType EAvatarAsyncLoadRequestType
function UCharacterAvatarComponent:PushAsyncLoadRequest(InResIdArray, InType) end

---@param InAvatarSex number
---@param HeadHandle UBackpackAvatarHandle
---@param AvatarHandles ULuaArrayHelper<UBackpackAvatarHandle>
function UCharacterAvatarComponent:PushAsyncLoadInitDefaultRequest(InAvatarSex, HeadHandle, AvatarHandles) end

---@param TableName string
---@param FuncName string
function UCharacterAvatarComponent:PushLuaFuncRequest(TableName, FuncName) end

---@param InCallBack FBigWorldLuaCallBack
function UCharacterAvatarComponent:PushLuaFuncRequestByDelegate(InCallBack) end

function UCharacterAvatarComponent:ExecuteFirstRequest() end

function UCharacterAvatarComponent:CompleteFirstRequest() end

---@param InRequest FAvatarAsyncLoadRequest
function UCharacterAvatarComponent:AsyncLoadAvatarHandleForRender(InRequest) end

---@param ResIdArray ULuaArrayHelper<number>
function UCharacterAvatarComponent:AsyncLoadAvatarHandleForPutOff(ResIdArray) end

---@param HandlePath ULuaArrayHelper<FSoftObjectPath>
function UCharacterAvatarComponent:PutOffEquimentsCallBack(HandlePath) end

---@param InRequest FAvatarAsyncLoadRequest
---@param InHandlePathes ULuaArrayHelper<FSoftObjectPath>
function UCharacterAvatarComponent:AsyncAllHandleLogicPuton(InRequest, InHandlePathes) end

---@param InRequest FAvatarAsyncLoadRequest
---@param InHandlePathes ULuaArrayHelper<FSoftObjectPath>
function UCharacterAvatarComponent:LogicPutonAndAsyncLoadAllRes(InRequest, InHandlePathes) end

---@param InRequest FAvatarAsyncLoadRequest
---@param InHandles ULuaArrayHelper<UBackpackAvatarHandle>
function UCharacterAvatarComponent:CallBackRenderAll(InRequest, InHandles) end

---@param TableName string
---@param FuncName string
---@param InCallBack FBigWorldLuaCallBack
function UCharacterAvatarComponent:ExecuteLuaFuncRequest(TableName, FuncName, InCallBack) end

---@param InRequest FAvatarAsyncLoadRequest
function UCharacterAvatarComponent:AsyncLoadInitResandInitCharacter(InRequest) end

function UCharacterAvatarComponent:GetCurrentLoadedHandles() end

function UCharacterAvatarComponent:OnSeatOccupiersUpdate() end

---@param InSlotID number
---@return FSyncAdditionDataArray
function UCharacterAvatarComponent:GetAdditionalDataBySlot(InSlotID) end

---@return number
function UCharacterAvatarComponent:GetAvatarAppearanceGender() end

---@return number
function UCharacterAvatarComponent:BP_GetAvatarAppearanceGender_Implementation() end

---@param InClothingUpgradeShowCondition number
function UCharacterAvatarComponent:SetClothingUpgradeShowCondition(InClothingUpgradeShowCondition) end

---@param InClothingUpgradeShowConditionUGC number
function UCharacterAvatarComponent:SetClothingUpgradeShowConditionUGC(InClothingUpgradeShowConditionUGC) end

---@param InClothingUpgradeShowConditionUGCMobile number
function UCharacterAvatarComponent:SetClothingUpgradeShowConditionUGCMobile(InClothingUpgradeShowConditionUGCMobile) end

---@return boolean
function UCharacterAvatarComponent:CheckClothingUpgradeShowConditionIni() end

---@param SubType number
---@return boolean
function UCharacterAvatarComponent:CheckClothingUpgradeShowSubType(SubType) end

---@param InBackpackAvatarHandle UBackpackAvatarHandle
function UCharacterAvatarComponent:AddCharacterAvatarAbilityItems(InBackpackAvatarHandle) end

---@param InBackpackAvatarHandle UBackpackAvatarHandle
function UCharacterAvatarComponent:RemoveCharacterAvatarAbilityItems(InBackpackAvatarHandle) end

---@param InTargetCharacter ASTExtraBaseCharacter
---@return boolean
function UCharacterAvatarComponent:IsEquippedWithAdvancedArmor(InTargetCharacter) end

---@param InBackpackAvatarHandle UBackpackAvatarHandle
function UCharacterAvatarComponent:SetCurrentTwinsIDInPC(InBackpackAvatarHandle) end

---@param InChangeTwinsCloth boolean
function UCharacterAvatarComponent:SetChangeTwinsCloth(InChangeTwinsCloth) end

---@param InLoadedHandleList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterAvatarComponent:HandleClothingUpgrade(InLoadedHandleList) end

function UCharacterAvatarComponent:GetAbilityIDsFromAdditionalData() end

---@param InLoadedHandleList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterAvatarComponent:ClientBuildAssociations(InLoadedHandleList) end

function UCharacterAvatarComponent:GenerateTwinsMap() end

---@param ItemID number
---@return boolean
function UCharacterAvatarComponent:IsItemIDHasEquipped(ItemID) end

---主端模拟端均生效
---@param InAvatarSlots ULuaArrayHelper<EAvatarSlotType>
---@param bHidden boolean
function UCharacterAvatarComponent:SetAvatarVisibilityDynamicForClient(InAvatarSlots, bHidden) end

---@param SlotID number
---@return boolean
function UCharacterAvatarComponent:CheckSlotIsNeedToHidden(SlotID) end

---@param ItemDefineID FItemDefineID
---@param SlotID number
---@param InBackpackAvatarHandle UBackpackAvatarHandle
---@return FItemDefineID
function UCharacterAvatarComponent:HandleEScapeItemByAvatarDisplay(ItemDefineID, SlotID, InBackpackAvatarHandle) end

---@param Condition number
---@param ItemDefineID FItemDefineID
---@param SlotID number
---@return FItemDefineID
function UCharacterAvatarComponent:HandleEScapeAvatarDisplayConditionInner(Condition, ItemDefineID, SlotID) end

---@param Condition number
---@param ItemDefineID FItemDefineID
---@param SlotID number
---@return FItemDefineID
function UCharacterAvatarComponent:HandleEScapeAvatarBackpackPendant(Condition, ItemDefineID, SlotID) end

function UCharacterAvatarComponent:CheckEScapeAvatarDisplayCondition() end

---@param ItemDefineID FItemDefineID
---@param SlotID number
---@return FItemDefineID
function UCharacterAvatarComponent:HandleEScapeAvatarAdditionalData(ItemDefineID, SlotID) end

---@param ItemDefineID FItemDefineID
---@return FItemDefineID
function UCharacterAvatarComponent:HandleEScapeClothAvatarData(ItemDefineID) end

---@param ItemDefineID FItemDefineID
---@param SlotID number
---@param InBackpackAvatarHandle UBackpackAvatarHandle
---@return FItemDefineID
function UCharacterAvatarComponent:HandleLTItemByAvatarDisplay(ItemDefineID, SlotID, InBackpackAvatarHandle) end

function UCharacterAvatarComponent:CheckLTAvatarDisplayCondition() end

---@param ItemDefineID FItemDefineID
---@param SlotID number
---@return FItemDefineID
function UCharacterAvatarComponent:HandleLTAvatarAdditionalData(ItemDefineID, SlotID) end

---@param ItemDefineID FItemDefineID
---@param SlotID number
---@param InOriginBackpackAvatarHandle UBattleItemHandleBase
---@return FItemDefineID
function UCharacterAvatarComponent:HandleEscapeAvatarSkinID(ItemDefineID, SlotID, InOriginBackpackAvatarHandle) end

---@param synData ULuaArrayHelper<FMeshSynData>
---@param ParentSlotID number
---@param SlotID number
---@return number
function UCharacterAvatarComponent:HandleEscapeAvatarParentSkinID(synData, ParentSlotID, SlotID) end

function UCharacterAvatarComponent:SendTlogForWingClothes() end

---@param Num number
---@return FVector
function UCharacterAvatarComponent:GetBattleResultPosition(Num) end

---@return EAvatarLobbySettingType
function UCharacterAvatarComponent:GetAvatarSettingType() end

function UCharacterAvatarComponent:OnConfigInitialized() end

---@param InAvatarDownloadType EAvatarDownloadSourceType
---@param bAutoDownload boolean
---@return boolean
function UCharacterAvatarComponent:TryDownloadNotExistAvatar(InAvatarDownloadType, bAutoDownload) end

function UCharacterAvatarComponent:TryStopDownloadNotExistAvatar() end

---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
---@return boolean
function UCharacterAvatarComponent:TryDownloadNotExistAvatarResponse(InAvatarDownloadParamForCallback) end

function UCharacterAvatarComponent:BindPlayerEnterFlyingFunc() end

function UCharacterAvatarComponent:OnPlayerEnterFlyingFunc() end

---@param InGameStateName string
function UCharacterAvatarComponent:HandleGameStateClassChangedForAvatarDownload(InGameStateName) end

---@param GameModeID string
function UCharacterAvatarComponent:OnGameModeIDChangedForAvatarDownload(GameModeID) end

---@param InNewGameState string
function UCharacterAvatarComponent:OnGameModeStateChangedForAvatarDownload(InNewGameState) end

---@param ClientModeID number
function UCharacterAvatarComponent:OnClientModeIDChangedForAvatarDownload(ClientModeID) end

---@param InPlayerState ASTExtraPlayerState
function UCharacterAvatarComponent:OnPlayerStateChangedForAvatarDownload(InPlayerState) end

---@param InAvatarComponent UAvatarComponent
---@param InAvatarDownloadParamForCallback FAvatarDownloadParamForCallback
function UCharacterAvatarComponent:AvatarSourceDownloadFinished(InAvatarComponent, InAvatarDownloadParamForCallback) end

function UCharacterAvatarComponent:OnTeammatePlayerStateHasChanged() end

---@param AvatarEntity UCharacterAvatarEntity
function UCharacterAvatarComponent:DelayedRenderEntityInStandAloneMode(AvatarEntity) end

---@param InHandle UBattleItemHandleBase
---@param InAvatarEntity UAvatarEntity
function UCharacterAvatarComponent:DelayedRenderEntityPrepareStage(InHandle, InAvatarEntity) end

---@param CurRequestId number
---@param InHandle UBattleItemHandleBase
---@param InAvatarEntity UAvatarEntity
function UCharacterAvatarComponent:DelayedRenderExecutionStage(CurRequestId, InHandle, InAvatarEntity) end

function UCharacterAvatarComponent:RefreshDirtyEntity() end

function UCharacterAvatarComponent:RefreshDirtyEntityInBatchMode() end

function UCharacterAvatarComponent:RefreshDirtyEntityInAsyncMode() end

function UCharacterAvatarComponent:ReceiveRefreshDirtyEntity() end

function UCharacterAvatarComponent:ReceiveRefreshDirtyEntityInBatchMode() end

function UCharacterAvatarComponent:ReceiveRefreshDirtyEntityInAsyncMode() end

---@return boolean
function UCharacterAvatarComponent:CheckIsInDelayRenderMode() end

---@return boolean
function UCharacterAvatarComponent:CheckIsInLobbyAsyncMode() end

---@return boolean
function UCharacterAvatarComponent:CheckIsInLobbyAsyncModeOverride() end

---@return boolean
function UCharacterAvatarComponent:CheckCVarDelayRenderIsOpen() end

---@return boolean
function UCharacterAvatarComponent:CheckEnableOnlyRenderDirtyEntityIsOpen() end

---@param InEventName string
---@param InAvatarSlotType EAvatarSlotType
function UCharacterAvatarComponent:TriggerFlowLightEvent(InEventName, InAvatarSlotType) end

---@param InbForceHiddenAvatarMesh boolean
function UCharacterAvatarComponent:SetForceHiddenAvatarMesh(InbForceHiddenAvatarMesh) end

---@return boolean
function UCharacterAvatarComponent:CheckIsFlowLightAvatar() end

---@param SkeletalMeshComponents ULuaArrayHelper<USkeletalMeshComponent>
---@param StaticMeshComponents ULuaArrayHelper<UStaticMeshComponent>
---@param MasterComponent UMeshComponent
---@param SlotIDArray ULuaArrayHelper<number>
---@param MasterSlotID number
---@param bIsHeadNeedConverted boolean
function UCharacterAvatarComponent:GetComponentsForRSS(SkeletalMeshComponents, StaticMeshComponents, MasterComponent, SlotIDArray, MasterSlotID, bIsHeadNeedConverted) end

---@return boolean
function UCharacterAvatarComponent:IsOptimizationOpen() end

---@param GEnableConvertStaticMeshComponent number
---@return boolean
function UCharacterAvatarComponent:CheckIfEnableConvertToStaticMesh(GEnableConvertStaticMeshComponent) end

---@param InSlotID number
---@return number
function UCharacterAvatarComponent:GetOriginalIDBySlotID(InSlotID) end

function UCharacterAvatarComponent:CreateGalaxyFaceUtilsAsync() end

---@param InSoftClass UGalaxyFaceUtils
---@param InCreateGalaxyFaceUtilsAsyncLoadID number
function UCharacterAvatarComponent:OnLoadGalaxyFaceUtils(InSoftClass, InCreateGalaxyFaceUtilsAsyncLoadID) end

---@param InSoftClass UGalaxyFaceUtils
---@param InCreateGalaxyFaceUtilsAsyncLoadID number
function UCharacterAvatarComponent:BP_OnLoadGalaxyFaceUtils(InSoftClass, InCreateGalaxyFaceUtilsAsyncLoadID) end

---@param InGalaxyFaceInfo string
---@param InCurrentGalaxyFaceInfoIndex string
function UCharacterAvatarComponent:RefreshGalaxyFace(InGalaxyFaceInfo, InCurrentGalaxyFaceInfoIndex) end

---@param InGalaxyFaceInfo string
function UCharacterAvatarComponent:RefreshGalaxyFaceUtilInfoMap(InGalaxyFaceInfo) end

---@param InGalaxyFaceInfoIndex string
---@param InPlayerKey number
---@param InConcernTag string
function UCharacterAvatarComponent:CallBackendGetGalaxyFaceInfo(InGalaxyFaceInfoIndex, InPlayerKey, InConcernTag) end

---@return string
function UCharacterAvatarComponent:GetGalaxyFaceInfoIndex() end

---@param GameModeID string
function UCharacterAvatarComponent:OnGameModeIDChangedForGalaxyFace(GameModeID) end

---@param ClientModeID number
function UCharacterAvatarComponent:OnClientModeIDChangedForGalaxyFace(ClientModeID) end

---@param InGameStateName string
function UCharacterAvatarComponent:HandleGameStateClassChangedForGalaxyFace(InGameStateName) end

---@param InGameStateName string
function UCharacterAvatarComponent:HandleGameStateClassChangedForAutonomousGalaxyFace(InGameStateName) end

function UCharacterAvatarComponent:TrySetGalaxyFaceInfo() end

---@param InCurrentGalaxyFaceInfoIndex string
function UCharacterAvatarComponent:SetCurrentGalaxyFaceInfoIndex(InCurrentGalaxyFaceInfoIndex) end

---@return boolean
function UCharacterAvatarComponent:CheckOpenNewGalaxyFaceUtilsByPlatform() end

---@param TargetFaceHeadID number
---@param GalaxyComp UGalaxyFaceUtils
---@return number
function UCharacterAvatarComponent:ReplaceGalaxyFaceID(TargetFaceHeadID, GalaxyComp) end

---@return boolean
function UCharacterAvatarComponent:CheckEscapeGalaxyFace() end

function UCharacterAvatarComponent:ClientSetOpenGalaxyFaceUtils() end

---@param NewMontageList ULuaArrayHelper<FPlayMontageAvatarInfo>
function UCharacterAvatarComponent:SetPendingSwitchAvatarMontageList(NewMontageList) end

function UCharacterAvatarComponent:ProcessAvatarUpdate() end

function UCharacterAvatarComponent:ClearSwitchAvatarPendingData() end

function UCharacterAvatarComponent:UpdateSwitchAvatarEquipments() end

function UCharacterAvatarComponent:PlaySwitchAvatarMontages() end

---@param bPlay boolean
---@param ID number
function UCharacterAvatarComponent:ServerPlayRingBodyEffects(bPlay, ID) end

---@param bPlay boolean
---@param ID number
function UCharacterAvatarComponent:ClientPlayRingBodyEffects(bPlay, ID) end

---@param InNewCameraMode EPlayerCameraMode
function UCharacterAvatarComponent:HandleCameraModeChange(InNewCameraMode) end

---@param InBool boolean
function UCharacterAvatarComponent:SetEnableBatchRequest(InBool) end

---@return boolean
function UCharacterAvatarComponent:GetEnableBatchRequest() end

---@return boolean
function UCharacterAvatarComponent:CheckIsInBatchRequestMode() end

---@param InHandleList ULuaArrayHelper<UBackpackAvatarHandle>
function UCharacterAvatarComponent:ExtractAvatarSuitGenderByHandleList(InHandleList) end

---@param InHandleIDList ULuaArrayHelper<number>
function UCharacterAvatarComponent:ExtractAvatarSuitGenderByIDList(InHandleIDList) end

---@param InHandleBaseList ULuaArrayHelper<UBattleItemHandleBase>
function UCharacterAvatarComponent:ExtractAvatarSuitGenderByHandleBaseList(InHandleBaseList) end

---@return ECharacterGender
function UCharacterAvatarComponent:InGetAvatarSuitGender() end

---@return boolean
function UCharacterAvatarComponent:InGetAvatarSuitGenderEnable() end

function UCharacterAvatarComponent:HandleRingBodyEffects() end

---@param InBackpackCharacterAvatarAbilityHandle UBackpackCharacterAvatarAbilityHandle
---@return boolean
function UCharacterAvatarComponent:ClientCanActiveAbilityWhenNotDownloadPak(InBackpackCharacterAvatarAbilityHandle) end

---@param InID number
---@return boolean
function UCharacterAvatarComponent:ClientCanActiveAbilityWhenNotDownloadPakByID(InID) end

---@param InAvatarSlotType EAvatarSlotType
---@return FMeshSynData
function UCharacterAvatarComponent:GetCharacterAvatarSyncDataBySlot(InAvatarSlotType) end

---@param InAvatarSlotType EAvatarSlotType
---@return number
function UCharacterAvatarComponent:GetCharacterAvatarSyncDataIDBySlot(InAvatarSlotType) end

---@param NewConfig ULuaMapHelper<number, FMeshPackGenderAnim>
function UCharacterAvatarComponent:SetExtraPartAnimConfig(NewConfig) end

function UCharacterAvatarComponent:ProcessExtraPartAnimation() end

---Handle OnTaskConditionActived delegate and return land loc type
---@param InTargetSkelMeshComp USkeletalMeshComponent
---@return boolean
function UCharacterAvatarComponent:HandleForceEnableAnimNotifyBoneRetargetAdapt(InTargetSkelMeshComp) end

---@param CurrentCharacterAvatarItemIDList ULuaArrayHelper<number>
function UCharacterAvatarComponent:ClientRefreshAvatarData(CurrentCharacterAvatarItemIDList) end

---@param CurrentItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param CurrentAsyncLoadMeshReqID number
function UCharacterAvatarComponent:ClientParseAvatarData(CurrentItemHandleList, CurrentAsyncLoadMeshReqID) end

---@param CurrentItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param CurrentAsyncLoadMeshReqID number
function UCharacterAvatarComponent:ParseCharacterAvatarAdditionalItems(CurrentItemHandleList, CurrentAsyncLoadMeshReqID) end

function UCharacterAvatarComponent:UpdateCurrentEntityDirtyFlagByNeedRefresh() end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UCharacterAvatarComponent:OnItemHandleListLoadedForAvatarInVisible(ItemHandles, AsyncLoadID) end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
---@param ItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param Req FAsyncLoadRenderResReq
function UCharacterAvatarComponent:OnAsyncLoadMeshListForAvatarInvisible(AssetRef, ItemHandleList, Req) end

function UCharacterAvatarComponent:PutOnDefaultAvatar() end

---@param CustomNotifyQueue ULuaMapHelper<EAvatarSlotType, FSlotEventArray>
function UCharacterAvatarComponent:AddSlotEvents(CustomNotifyQueue) end

---@param currentslotID EAvatarSlotType
function UCharacterAvatarComponent:CleanAvatarSlotNotifyQueue(currentslotID) end

---@param CustomNotifyVarChangeQueue ULuaMapHelper<EAvatarSlotType, FSlotVarArrayInfo>
---@param InAnimNotifyAvatarSlotVarChangeParam FAnimNotifyAvatarSlotVarChangeParam
function UCharacterAvatarComponent:AddSlotVarChange(CustomNotifyVarChangeQueue, InAnimNotifyAvatarSlotVarChangeParam) end

---@param currentslotID EAvatarSlotType
---@param bUseLastVarQueue boolean
function UCharacterAvatarComponent:CleanAvatarSlotNotifyVarQueue(currentslotID, bUseLastVarQueue) end

---@param SlotType EAvatarSlotType
---@param OutAnimInstance UAnimInstance
---@return boolean
function UCharacterAvatarComponent:GetSlotAnimInstance(SlotType, OutAnimInstance) end

---@param CustomNotifyVarChangeQueue ULuaMapHelper<EAvatarSlotType, FSlotVarArrayInfo>
---@param InAnimNotifyAvatarSlotVarChangeParam FAnimNotifyAvatarSlotVarChangeParam
function UCharacterAvatarComponent:RestoreSlotVar(CustomNotifyVarChangeQueue, InAnimNotifyAvatarSlotVarChangeParam) end

function UCharacterAvatarComponent:PutOnDefaultAvatarWhenInvisible() end

---@param InAvatarSlotType EAvatarSlotType
---@return boolean
function UCharacterAvatarComponent:RecursivelyCheckVisibility(InAvatarSlotType) end

---@return string
function UCharacterAvatarComponent:GetCharacterAvatarSyncDataIDStr() end

---@return string
function UCharacterAvatarComponent:GetCharacterAvatarEntityDataStr() end

---@param InAvatarSlotType EAvatarSlotType
---@param InMeshComponent UMeshComponent
---@return string
function UCharacterAvatarComponent:GetCharacterAvatarMeshDataStr(InAvatarSlotType, InMeshComponent) end

function UCharacterAvatarComponent:LobbyAvatarAsyncEarlyDestroyAvatar() end

function UCharacterAvatarComponent:RefreshParachuteFollowingTeamParticles() end

function UCharacterAvatarComponent:UpdateMeshByStateChange() end

function UCharacterAvatarComponent:UpdateAircraftPetForMultiAircraft() end

function UCharacterAvatarComponent:GetAllMeshComponentList() end

---@return boolean
function UCharacterAvatarComponent:IsCheckAvatarWhenInvisible() end

---@param avatarHandle UBackpackAvatarHandle
---@param OutAnimClassArray ULuaArrayHelper<FAnimClassReferenceInfo>
function UCharacterAvatarComponent:CollectAvatarBehaviorFeatureAnimInstanceAndPreCreateSKComp(avatarHandle, OutAnimClassArray) end

---@param avatarHandle UBackpackAvatarHandle
---@param OutAnimClassArray ULuaArrayHelper<FAnimClassReferenceInfo>
function UCharacterAvatarComponent:CollectAvatarBodyTypeVariantAnimInstanceAndPreCreateSKComp(avatarHandle, OutAnimClassArray) end

---@param InSlotType EAvatarSlotType
---@param InAbilityType EAvatarCustomAbilityType
---@param InAbilityID number
function UCharacterAvatarComponent:AddCustomAvatarAbilityData(InSlotType, InAbilityType, InAbilityID) end

---@param InSlotType EAvatarSlotType
---@param InAbilityType EAvatarCustomAbilityType
---@return boolean
function UCharacterAvatarComponent:IsValidCustomAvatarAbilityData(InSlotType, InAbilityType) end

---@param Entity UAvatarEntity
function UCharacterAvatarComponent:RenderHiddenEntityHotUpdate(Entity) end

---@param GameState AGameStateBase
function UCharacterAvatarComponent:OnGameStateReady(GameState) end

function UCharacterAvatarComponent:ContinueAvatarLogic() end

---@return boolean
function UCharacterAvatarComponent:CheckAvatarHeadDataIsValid() end

---@param OldItemID number
---@param InOperationType ESyncOperation
---@param InHandle UBattleItemHandleBase
---@param InSlot number
function UCharacterAvatarComponent:TryBroadcastOnServerAvatarDataChange(OldItemID, InOperationType, InHandle, InSlot) end

---@param InAvatarSlotType EAvatarSlotType
function UCharacterAvatarComponent:GetExtraPartMeshBySlot(InAvatarSlotType) end

---@param Enable boolean
function UCharacterAvatarComponent:SetEnableCompUseAvatarLogicBudget(Enable) end

---@param stepId number
---@param ExtraData string
function UCharacterAvatarComponent:AddMeshChangeRecord(stepId, ExtraData) end

function UCharacterAvatarComponent:ReportMeshChangeLogicRecord() end

function UCharacterAvatarComponent:CreateRepFinishMeshCheckTimer() end

function UCharacterAvatarComponent:CheckAndReportMeshChangeLogicRecord() end

---@param NewTarget AActor
---@param PrevTarget AActor
function UCharacterAvatarComponent:HandleViewTargetChange(NewTarget, PrevTarget) end
