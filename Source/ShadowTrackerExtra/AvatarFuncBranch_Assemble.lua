---@meta

---@class FAFB_Assemble_RestrictedSlotInfo
---@field RestrictedItemIDList ULuaArrayHelper<number>
FAFB_Assemble_RestrictedSlotInfo = {}


---@class FAFB_Assemble_Info
---@field bAssembleRestricted boolean
---@field bClearingMaster boolean
---@field bReplacingMaster boolean
---@field bRefreshingAll boolean
---@field bModeFeatureReservedMaster boolean
---@field bModeFeatureOn boolean
---@field bSoloSlotPureClear boolean
---@field MasterID number
---@field AssembleRestrictedAvatarIDList ULuaArrayHelper<number>
---@field DynamicEquipedRestrictedSlotInfoMap ULuaMapHelper<EAvatarSlotType, FAFB_Assemble_RestrictedSlotInfo>
---@field AssembleRestrictedSlotList ULuaArrayHelper<EAvatarSlotType>
---@field DefaultRestrictedSlotItemMap ULuaMapHelper<EAvatarSlotType, number>
---@field ModeFeatureModifyItemIDMap ULuaMapHelper<number, number>
FAFB_Assemble_Info = {}


---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarFuncBranch_Assemble: UObject
---@field bOverride_InitFuncBranch boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseFuncBranch boolean
---@field bOverride_IsCreateAdditionalItemForCollapsedItemPermitted boolean
---@field bOverride_IsSyncLoadResPermitted boolean
---@field bOverride_NextMaster boolean
---@field bOverride_MarkSoloSlotPureClear boolean
---@field bOverride_LockToRefreshingAllState boolean
---@field bOverride_UnlockRefreshingAllState boolean
---@field bOverride_IsAvatarHandleCanBeAssembled boolean
---@field bOverride_RefreshAvatarAssembleInfoByAvatarOp boolean
---@field bOverride_RefreshModeFeatureByClientFinalUseID boolean
---@field bOverride_TryModifyClientShowItemsByModeFeature boolean
---@field bOverride_CheckAssembleDataConsitency_Server boolean
---@field bOverride_CheckAssembleDataConsitency_Client boolean
---@field bOverride_CheckAssembleDataConsitency_ModeFeature boolean
---@field bOverride_CheckRestrictedAvatarConsitency_StandAloneDisplay_FakeNetData boolean
---@field bOverride_OnItemHandleListLoaded boolean
---@field bOverride_CheckDefaultNoneRestrictedSlot_Clear boolean
---@field bOverride_CheckDefaultRestrictedSlot_Clear boolean
---@field bOverride_CheckDefaultRestrictedSlot_AutoComplete boolean
---@field bOverride_CheckDefaultNecessarySlot_AutoComplete boolean
---@field bOverride_IsDefaultNecessarySlotAutoCompletePermitted boolean
---@field bOverride_ExtractAssembleStaticInfoByAvatarIDList boolean
---@field bOverride_ExtractAssembleDynamicMetaInfo boolean
---@field bOverride_ExtractParentIDByNet boolean
---@field bOverride_ExtractOverrideIDByNet boolean
---@field bOverride_ExtractAssembleDynamicMetaInfoByNet boolean
---@field bOverride_GetRestrictedFallbackAvatarID boolean
---@field bOverride_PreFiltHandles boolean
---@field bOverride_PutonFallbackItem boolean
---@field bOverride_CacheFallbackItemAsChildItem boolean
---@field bOverride_ClearFallbackChildItem boolean
---@field bOverride_RefreshSlotHideStateForAssembleRestrictFeature boolean
---@field bOverride_PropagateHideStateToRestrictedSlot boolean
---@field bOverride_PropagateUnhideStateToRestrictedSlot boolean
---@field bOverride_UpdateCurrentMasterID boolean
---@field bOverride_GetAvatarAssembleVisiblity boolean
---@field bOverride_PostAvatarRender_AssembleAction boolean
---@field bOverride_OnEntitySkeletalMeshCompVisibilityChange boolean
---@field bBlockIfChildItemIsRestricted boolean @HOT_UPDATE_PROTECT *****************************************
---@field DefaultAssembleRestrictedSlotList ULuaArrayHelper<EAvatarSlotType>
---@field OwnerCAC UCharacterAvatarComponent
---@field AssembledAvatarToMasterIDMap ULuaMapHelper<number, number>
---@field AssembledDefaultAvatarToMasterIDMap ULuaMapHelper<number, number>
---@field CurEquipingAssembleInfo FAFB_Assemble_Info
---@field LastAssembleInfo FAFB_Assemble_Info
---@field PuttingOnFallbackItemMap ULuaMapHelper<EAvatarSlotType, FItemDefineID>
---@field bAssembling boolean
---@field bDisassembling boolean
---@field bExcludingPrimaryMaster boolean
---@field ExcludingMasterID number
---@field bLockDisuseReason boolean
---@field LockedDisuseReason EBattleItemDisuseReason
---@field bFallBackUseLoalPlayerNetRepFirst_FakeNetData boolean
---@field bFixFakeNetDataBugAndUseLoalPlayerNetRepFirst boolean
---@field MustFallBackSlotIDMap_FakeNetData ULuaMapHelper<EAvatarSlotType, number>
---@field OnPreAvatarLogicFlowLoadItemListLoaded FCreateBattleItemHandleAsyncListDelegate
---@field RefreshSlotHideStateStackMaxRepeatNum number
---@field bRestrictedSlotFollowMasterVisibility boolean
---@field VirtualCharType number
---@field RefreshSlotHideStateStackCounterMap ULuaMapHelper<EAvatarSlotType, number>
---@field bJumpFallback boolean
local UAvatarFuncBranch_Assemble = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_Assemble:InitFuncBranch(InOwnerCAC) end

---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_Assemble:ReleaseFuncBranch(InOwnerCAC) end

---@param InCollapsedSlot EAvatarSlotType
---@return boolean
function UAvatarFuncBranch_Assemble:IsCreateAdditionalItemForCollapsedItemPermitted(InCollapsedSlot) end

---@return boolean
function UAvatarFuncBranch_Assemble:IsSyncLoadResPermitted() end

---@param InLockDisuseReason EBattleItemDisuseReason
---@return boolean
function UAvatarFuncBranch_Assemble:LockDisuseReason(InLockDisuseReason) end

---@param InLockDisuseReason EBattleItemDisuseReason
function UAvatarFuncBranch_Assemble:UnlockDisuseReason(InLockDisuseReason) end

---@return boolean
function UAvatarFuncBranch_Assemble:LockToAssemblingState() end

---@param InIsCheckDefaultFallback boolean
function UAvatarFuncBranch_Assemble:UnlockAssemblingState(InIsCheckDefaultFallback) end

---@return boolean
function UAvatarFuncBranch_Assemble:IsLockToAssemblingState() end

---@return boolean
function UAvatarFuncBranch_Assemble:LockToDisassemblingState() end

function UAvatarFuncBranch_Assemble:UnlockDisassemblingState() end

---@return boolean
function UAvatarFuncBranch_Assemble:IsLockToDisassemblingState() end

---@return boolean
function UAvatarFuncBranch_Assemble:IsMasterCollapseToChildItem() end

---@param InNextMasterID number
function UAvatarFuncBranch_Assemble:NextMaster(InNextMasterID) end

function UAvatarFuncBranch_Assemble:ReplaceMaster_Start() end

function UAvatarFuncBranch_Assemble:ReplaceMaster_End() end

---@param InExcludingMasterID number
function UAvatarFuncBranch_Assemble:ExcludeMaster_Start(InExcludingMasterID) end

---@param InExcludingMasterID number
function UAvatarFuncBranch_Assemble:ExcludeMaster_End(InExcludingMasterID) end

---@param InIsSoloSlotPureClear boolean
function UAvatarFuncBranch_Assemble:MarkSoloSlotPureClear(InIsSoloSlotPureClear) end

function UAvatarFuncBranch_Assemble:LockToRefreshingAllState() end

function UAvatarFuncBranch_Assemble:UnlockRefreshingAllState() end

---@param InAvatarIDList ULuaArrayHelper<number>
---@return boolean
function UAvatarFuncBranch_Assemble:SetAssembleStaticMetaInfoByAvatarIDList(InAvatarIDList) end

---@param InTestAvatarID number
---@return boolean
function UAvatarFuncBranch_Assemble:IsAvatarMatchRestrictedMaster(InTestAvatarID) end

---@param InTestAvatarHandle UBackpackAvatarHandle
---@return boolean
function UAvatarFuncBranch_Assemble:IsAvatarHandleCanBeAssembled(InTestAvatarHandle) end

---@param InTestAvatarID number
---@return boolean
function UAvatarFuncBranch_Assemble:IsAssembleRestrictedAvatar(InTestAvatarID) end

---@param InTestAvatarID number
---@return boolean
function UAvatarFuncBranch_Assemble:IsAssembleRestrictedPrimaryAvatar(InTestAvatarID) end

---@param InEntitySlotType EAvatarSlotType
---@return boolean
function UAvatarFuncBranch_Assemble:IsAssembleRestricteDefaultEntity(InEntitySlotType) end

---@param InTargetAvatarHandle UBackpackAvatarHandle
---@param InOp number
function UAvatarFuncBranch_Assemble:RefreshAvatarAssembleInfoByAvatarOp(InTargetAvatarHandle, InOp) end

---@param InTargetSlot EAvatarSlotType
---@param InFinalUseID number
function UAvatarFuncBranch_Assemble:RefreshModeFeatureByClientFinalUseID(InTargetSlot, InFinalUseID) end

function UAvatarFuncBranch_Assemble:TryModifyClientShowItemsByModeFeature() end

function UAvatarFuncBranch_Assemble:ResetAvatarAssembleInfo() end

---@param InTestSuitItemID number
---@return number
function UAvatarFuncBranch_Assemble:FetchSuitFallbackItemID(InTestSuitItemID) end

---@param InAvatarID number
---@return number
function UAvatarFuncBranch_Assemble:FetchAvatarAssembleMasterID(InAvatarID) end

---@param InAvatarID number
---@return number
function UAvatarFuncBranch_Assemble:Static_FetchAvatarAssembleMasterID(InAvatarID) end

---@param InIsCheckDefaultFallback boolean
---@return boolean
function UAvatarFuncBranch_Assemble:CheckAssembleDataConsitency_Server(InIsCheckDefaultFallback) end

---@param InIsCheckDefaultFallback boolean
---@return boolean
function UAvatarFuncBranch_Assemble:CheckAssembleDataConsitency_Client(InIsCheckDefaultFallback) end

function UAvatarFuncBranch_Assemble:CheckAssembleDataConsitency_Dynamic() end

---@param InAvatarHandle UBackpackAvatarHandle
---@param InIsPuton boolean
---@param InIsClear boolean
---@param InIsPutonDefault boolean
function UAvatarFuncBranch_Assemble:CheckAssembleDataConsitency_ModeFeature(InAvatarHandle, InIsPuton, InIsClear, InIsPutonDefault) end

---@param InCurEquipedAvatarHandle UBackpackAvatarHandle
---@param InLastestUnequipedAvatarHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:CheckAssembleDynamicMetaInfo_ModeFeature(InCurEquipedAvatarHandle, InLastestUnequipedAvatarHandle) end

function UAvatarFuncBranch_Assemble:CheckRestrictedAvatarConsitency_ModeFeature() end

---@return boolean
function UAvatarFuncBranch_Assemble:CheckRestrictedAvatarConsitency_StandAloneDisplay_FakeNetData() end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UAvatarFuncBranch_Assemble:OnItemHandleListLoaded(ItemHandles, AsyncLoadID) end

---@param InCurAssembleMasterHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:CheckDefaultNoneRestrictedSlot_Clear(InCurAssembleMasterHandle) end

---@param InTestSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:CheckDefaultRestrictedSlot_Clear(InTestSlot) end

---@param InTestSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:CheckDefaultRestrictedSlot_AutoComplete(InTestSlot) end

function UAvatarFuncBranch_Assemble:CheckDefaultNecessarySlot_AutoComplete() end

---@return boolean
function UAvatarFuncBranch_Assemble:IsDefaultNecessarySlotAutoCompletePermitted() end

---@param InAvatarIDList ULuaArrayHelper<number>
---@return FAFB_Assemble_Info
function UAvatarFuncBranch_Assemble:ExtractAssembleStaticInfoByAvatarIDList(InAvatarIDList) end

---@param InMasterAvatarHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:ExtractAssembleDynamicMetaInfo(InMasterAvatarHandle) end

---@param InHandleList ULuaArrayHelper<UBackpackAvatarHandle>
function UAvatarFuncBranch_Assemble:ExtractAssembleDynamicMetaInfoByHandleList(InHandleList) end

---@param InSlotID number
---@return number
function UAvatarFuncBranch_Assemble:ExtractParentIDByNet(InSlotID) end

---@param InSlotID number
---@param InNetRepID FItemDefineID
---@param InCurOverrideID FItemDefineID
---@return number
function UAvatarFuncBranch_Assemble:ExtractOverrideIDByNet(InSlotID, InNetRepID, InCurOverrideID) end

function UAvatarFuncBranch_Assemble:ExtractAssembleDynamicMetaInfoByNet() end

---@param InMasterID number
function UAvatarFuncBranch_Assemble:SetRestrictedMaster(InMasterID) end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarID number
---@param InParentID number
---@return number
function UAvatarFuncBranch_Assemble:GetRestrictedFallbackAvatarID(InTargetSlot, InAvatarID, InParentID) end

---@param InAvatarHandle UBackpackAvatarHandle
---@param OutSyncData FMeshSynData
---@return boolean
function UAvatarFuncBranch_Assemble:PreFiltHandles(InAvatarHandle, OutSyncData) end

---@param InItemHandleBase UBattleItemHandleBase
---@return boolean
function UAvatarFuncBranch_Assemble:IsFallbackItemBePuttingOn(InItemHandleBase) end

---@param InFallbackSlot EAvatarSlotType
---@param InOldItemHandle UBattleItemHandleBase
---@return boolean
function UAvatarFuncBranch_Assemble:PutonFallbackItem(InFallbackSlot, InOldItemHandle) end

---@param InFallbackSlot EAvatarSlotType
---@param InFallbackItemHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:CacheFallbackItemAsChildItem(InFallbackSlot, InFallbackItemHandle) end

---@param InFallbackItemHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:ClearFallbackChildItem(InFallbackItemHandle) end

---@return string
function UAvatarFuncBranch_Assemble:GetNetRestrictedInfo() end

---@param InNetInfoStr string
function UAvatarFuncBranch_Assemble:ExtractNetRestrictedInfo(InNetInfoStr) end

---@param InNetAdditionalDataArray FSyncAdditionDataArray
---@return boolean
function UAvatarFuncBranch_Assemble:TryInjectNetRestrictedInfo(InNetAdditionalDataArray) end

---@param InTargetSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:RefreshSlotHideStateForAssembleRestrictFeature(InTargetSlot) end

---@param InTriggerSlot EAvatarSlotType
---@param InRestrictedSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:PropagateHideStateToRestrictedSlot(InTriggerSlot, InRestrictedSlot) end

---@param InRestrictedSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:PropagateUnhideStateToRestrictedSlot(InRestrictedSlot) end

---@param InTestSlot EAvatarSlotType
---@return boolean
function UAvatarFuncBranch_Assemble:GetAvatarAssembleVisiblity(InTestSlot) end

---@param InTargetSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:PostAvatarRender_AssembleAction(InTargetSlot) end

---@param InTargetSlot EAvatarSlotType
---@param InTargetEntity UCharacterAvatarEntity
---@param InChangedSkelComp USkeletalMeshComponent
function UAvatarFuncBranch_Assemble:OnEntitySkeletalMeshCompVisibilityChange(InTargetSlot, InTargetEntity, InChangedSkelComp) end

---@param InTargetSlot EAvatarSlotType
---@param ClothHandle UBattleItemHandleBase
function UAvatarFuncBranch_Assemble:UpdateCurrentMasterID(InTargetSlot, ClothHandle) end

---@return boolean
function UAvatarFuncBranch_Assemble:CheckIsInLobby() end

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_Assemble:BP_InitFuncBranch(InOwnerCAC) end

---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_Assemble:BP_ReleaseFuncBranch(InOwnerCAC) end

---@param InCollapsedSlot EAvatarSlotType
---@return boolean
function UAvatarFuncBranch_Assemble:BP_IsCreateAdditionalItemForCollapsedItemPermitted(InCollapsedSlot) end

---@return boolean
function UAvatarFuncBranch_Assemble:BP_IsSyncLoadResPermitted() end

---@param InNextMasterID number
function UAvatarFuncBranch_Assemble:BP_NextMaster(InNextMasterID) end

---@param InIsSoloSlotPureClear boolean
function UAvatarFuncBranch_Assemble:BP_MarkSoloSlotPureClear(InIsSoloSlotPureClear) end

function UAvatarFuncBranch_Assemble:BP_LockToRefreshingAllState() end

function UAvatarFuncBranch_Assemble:BP_UnlockRefreshingAllState() end

---@param InTestAvatarHandle UBackpackAvatarHandle
---@return boolean
function UAvatarFuncBranch_Assemble:BP_IsAvatarHandleCanBeAssembled(InTestAvatarHandle) end

---@param InTargetAvatarHandle UBackpackAvatarHandle
---@param InOp number
function UAvatarFuncBranch_Assemble:BP_RefreshAvatarAssembleInfoByAvatarOp(InTargetAvatarHandle, InOp) end

---@param InTargetSlot EAvatarSlotType
---@param InFinalUseID number
function UAvatarFuncBranch_Assemble:BP_RefreshModeFeatureByClientFinalUseID(InTargetSlot, InFinalUseID) end

function UAvatarFuncBranch_Assemble:BP_TryModifyClientShowItemsByModeFeature() end

---@param InIsCheckDefaultFallback boolean
---@return boolean
function UAvatarFuncBranch_Assemble:BP_CheckAssembleDataConsitency_Server(InIsCheckDefaultFallback) end

---@param InIsCheckDefaultFallback boolean
---@return boolean
function UAvatarFuncBranch_Assemble:BP_CheckAssembleDataConsitency_Client(InIsCheckDefaultFallback) end

---@param InAvatarHandle UBackpackAvatarHandle
---@param InIsPuton boolean
---@param InIsClear boolean
---@param InIsPutonDefault boolean
function UAvatarFuncBranch_Assemble:BP_CheckAssembleDataConsitency_ModeFeature(InAvatarHandle, InIsPuton, InIsClear, InIsPutonDefault) end

---@return boolean
function UAvatarFuncBranch_Assemble:BP_CheckRestrictedAvatarConsitency_StandAloneDisplay_FakeNetData() end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UAvatarFuncBranch_Assemble:BP_OnItemHandleListLoaded(ItemHandles, AsyncLoadID) end

---@param InCurAssembleMasterHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:BP_CheckDefaultNoneRestrictedSlot_Clear(InCurAssembleMasterHandle) end

---@param InTestSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:BP_CheckDefaultRestrictedSlot_Clear(InTestSlot) end

---@param InTestSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:BP_CheckDefaultRestrictedSlot_AutoComplete(InTestSlot) end

function UAvatarFuncBranch_Assemble:BP_CheckDefaultNecessarySlot_AutoComplete() end

---@return boolean
function UAvatarFuncBranch_Assemble:BP_IsDefaultNecessarySlotAutoCompletePermitted() end

---@param InAvatarIDList ULuaArrayHelper<number>
---@return FAFB_Assemble_Info
function UAvatarFuncBranch_Assemble:BP_ExtractAssembleStaticInfoByAvatarIDList(InAvatarIDList) end

---@param InMasterAvatarHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:BP_ExtractAssembleDynamicMetaInfo(InMasterAvatarHandle) end

---@param InSlotID number
---@return number
function UAvatarFuncBranch_Assemble:BP_ExtractParentIDByNet(InSlotID) end

---@param InSlotID number
---@param InNetRepID FItemDefineID
---@param InCurOverrideID FItemDefineID
---@return number
function UAvatarFuncBranch_Assemble:BP_ExtractOverrideIDByNet(InSlotID, InNetRepID, InCurOverrideID) end

function UAvatarFuncBranch_Assemble:BP_ExtractAssembleDynamicMetaInfoByNet() end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarID number
---@param InParentID number
---@return number
function UAvatarFuncBranch_Assemble:BP_GetRestrictedFallbackAvatarID(InTargetSlot, InAvatarID, InParentID) end

---@param InAvatarHandle UBackpackAvatarHandle
---@param OutSyncData FMeshSynData
---@return boolean
function UAvatarFuncBranch_Assemble:BP_PreFiltHandles(InAvatarHandle, OutSyncData) end

---@param InFallbackSlot EAvatarSlotType
---@param InOldItemHandle UBattleItemHandleBase
---@return boolean
function UAvatarFuncBranch_Assemble:BP_PutonFallbackItem(InFallbackSlot, InOldItemHandle) end

---@param InFallbackSlot EAvatarSlotType
---@param InFallbackItemHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:BP_CacheFallbackItemAsChildItem(InFallbackSlot, InFallbackItemHandle) end

---@param InFallbackItemHandle UBackpackAvatarHandle
function UAvatarFuncBranch_Assemble:BP_ClearFallbackChildItem(InFallbackItemHandle) end

---@param InTargetSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:BP_RefreshSlotHideStateForAssembleRestrictFeature(InTargetSlot) end

---@param InTriggerSlot EAvatarSlotType
---@param InRestrictedSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:BP_PropagateHideStateToRestrictedSlot(InTriggerSlot, InRestrictedSlot) end

---@param InRestrictedSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:BP_PropagateUnhideStateToRestrictedSlot(InRestrictedSlot) end

---@param InTargetSlot EAvatarSlotType
---@param ClothHandle UBattleItemHandleBase
function UAvatarFuncBranch_Assemble:BP_UpdateCurrentMasterID(InTargetSlot, ClothHandle) end

---@param InTestSlot EAvatarSlotType
---@return boolean
function UAvatarFuncBranch_Assemble:BP_GetAvatarAssembleVisiblity(InTestSlot) end

---@param InTargetSlot EAvatarSlotType
function UAvatarFuncBranch_Assemble:BP_PostAvatarRender_AssembleAction(InTargetSlot) end

---@param InTargetSlot EAvatarSlotType
---@param InTargetEntity UCharacterAvatarEntity
---@param InChangedSkelComp USkeletalMeshComponent
function UAvatarFuncBranch_Assemble:BP_OnEntitySkeletalMeshCompVisibilityChange(InTargetSlot, InTargetEntity, InChangedSkelComp) end
