---@meta

---@class FSimulateWeaponDataMgr
---@field WeaponSystemDataList ULuaArrayHelper<FWeaponSystemDataOnSimulateClient>
FSimulateWeaponDataMgr = {}


---@class FAutoTriggerWeaponEventTask
FAutoTriggerWeaponEventTask = {}


---@class FTakeOutWeaponWhiteIDConfig
---@field Key string
---@field WeaponIDList ULuaArrayHelper<number>
FTakeOutWeaponWhiteIDConfig = {}


---@class UWeaponManagerComponent: UActorComponent, IObjectPoolInterface
---@field LogicSocketToWeaponAttachSocketMap ULuaMapHelper<string, string>
---@field LeftLogicSocketName string
---@field RightLogicSocketName string
---@field LogicSocketToWeaponAttachSocketMapNoBag ULuaMapHelper<string, string>
---@field LogicSocketToPropSlotMap ULuaMapHelper<string, ESurviveWeaponPropSlot>
---@field SoftGrenadeLogicSocketToWeaponClassMap ULuaMapHelper<string, ASTExtraWeapon>
---@field BagLevel1IDList ULuaArrayHelper<number>
---@field BagLevel2IDList ULuaArrayHelper<number>
---@field BagLevel3IDList ULuaArrayHelper<number>
---@field CheckHasAnyGrenadeTimerSetting number
---@field bIgnoreCheckLockTakeOutWeapon boolean
---@field LockTakeOutWeaponMsgID number
---@field LockTakeOutWeaponMsgIDMap ULuaMapHelper<string, number>
---@field bInterruptDrawStyle boolean
---@field bEnableGlobalFastDraw boolean
---@field WeaponInspectStateTag FGameplayTag
---@field bUseCustomWeaponBackpackAttachSocket boolean
---@field WeaponMuzzleEffectConfigTablePath string
---@field WeaponReloadEffectConfigTablePath string
---@field SwitchWeaponReverseCD number
---@field SwitchWeaponSequenceTemplate_Equip USimpleSequence
---@field SwitchWeaponSequenceTemplate_UnEquip USimpleSequence
---@field SwitchWeaponSequenceTemplate_DelayAttach USimpleSequence
---@field Key_IsEquip FUAEBlackboardKeySelector
---@field Key_UnequipWeapon FUAEBlackboardKeySelector
---@field Key_EquipWeapon FUAEBlackboardKeySelector
---@field Key_SwitchWeaponProgress FUAEBlackboardKeySelector
---@field Key_SwitchTime FUAEBlackboardKeySelector
---@field FastDrawInterruptActionConfigMap ULuaMapHelper<EPawnState, FFastDrawInterruptAction>
---@field CustomFastDrawInterruptActionConfigMap ULuaMapHelper<ECustomFastDrawInterruptType, FFastDrawInterruptAction>
---@field Key_ExtraWeapon FUAEBlackboardKeySelector
---@field Key_ConsiderCooperate FUAEBlackboardKeySelector
---@field Key_FastDrawWeapon FUAEBlackboardKeySelector
---@field Key_FastDrawWeaponEquipState FUAEBlackboardKeySelector
---@field Key_FastDrawWeaponUnEquipState FUAEBlackboardKeySelector
---@field Key_DisableDelayAttach FUAEBlackboardKeySelector
---@field Key_NodeDuration1 FUAEBlackboardKeySelector
---@field Key_NodeDuration2 FUAEBlackboardKeySelector
---@field bIsLoadingWeaponEffectConfigTableAsync boolean
---@field CurUseWeaponLogicSocket string
---@field CurUseWeaponLogicSlot ESurviveWeaponPropSlot
---@field CurUseAdditionalWeaponSlot ESurviveWeaponPropSlot
---@field CurCreatingWeaponSlotIDDataList ULuaArrayHelper<FWeaponSlotIDData>
---@field CurCreatingWeaponSlotIDDataMap ULuaMapHelper<ESurviveWeaponPropSlot, FWeaponSlotIDData>
---@field bIsSwitching boolean
---@field LastUseDiffSlotLogicSlot string
---@field LastUseNoneGrenadeLogicSlot string
---@field LastUseLogicSlot string
---@field LastUseLogicSlotRep number
---@field bUIHasBoundDelegate boolean
---@field bClientHasFinishedHandleSpawnWeapon boolean
---@field bLockTakeOutWeapon boolean
---@field LockTakeOutWeapon_WhitePropSlotList ULuaArrayHelper<ESurviveWeaponPropSlot>
---@field LockTakeOutWeapon_WhiteWeaponIDList ULuaArrayHelper<FTakeOutWeaponWhiteIDConfig>
---@field LockTakeOutWeapon_WhiteWeaponTypeList ULuaArrayHelper<EWeaponTypeNew>
---@field bSavedCurUsingAdditionalWeapon boolean
---@field CachedPawnEnterStateList ULuaArrayHelper<EPawnState>
---@field LocalBackpackCurerrentWeaponFinishDelegate FLocalBackpackCurerrentWeaponFinishDelegate
---@field LocalForceFinishSwitchWeaponDelegate FLocalForceFinishSwitchWeaponDelegate
---@field ChangeCurrentUsingWeaponDelegate FChangeCurrentUsingWeaponDelegate
---@field ChangeCurrentUsingWeaponWithWrapperDelegate FWeaponChangeDelegate
---@field PostChangeCurTemporaryWeaponDelegate FPostChangeCurTemporaryWeaponDelegate
---@field ChangeCurrentUsingAdditionalWeaponDelegate FChangeCurrentUsingAdditionalWeaponDelegate
---@field EquipCurrentUsingWeaponDefineDelegate FEquipCurrentUsingWeaponDefineIDDelegate
---@field ChangeCurrentUsingFastDrawWeaponDelegate FChangeCurrentUsingFastDrawWeaponDelegate
---@field ChangeInventoryDataDelegate FChangeInventoryDataDelegate
---@field ChangeInventoryDataWithWrapperDelegate FWeaponChangeDelegate
---@field LocalEquipWeaponFromBackpackFinishedDelegate FLocalEquipWeaponFromBackpackFinishedDelegate
---@field SwapWeaponByPropSlotFinishedDelegate FSwapWeaponByPropSlotFinishedDelegate
---@field OnClientHasFinishedCreateWeaponDelegate FOnClientHasFinishedCreateWeaponDelegate
---@field SimulatedWeaponChangedDelegate FSimulatedWeaponChangedDelegate
---@field SimulatedAdditionalWeaponChangedDelegate FSimulatedAdditionalWeaponChangedDelegate
---@field OnPostEquipWeaponDelegate FOnPostWeaponChangedDelegate
---@field OnPostUnEquipWeaponDelegate FOnPostWeaponChangedDelegate
---@field OnPostGetWeaponDelegate FOnPostGetWeaponDelegate
---@field LoadWeaponEffectTableFinishDelegate FLoadWeaponEffectTableFinishDelegate
---@field OnServerStopFireDelegate FOnServerStopFireDelegate
---@field FastDrawInterruptDelegate FFastDrawInterruptDelegate
---@field OnStartEndCreatingWeaponOnServerDelegate FOnStartEndCreatingWeaponOnServerDelegate
---@field OnFinishedCreatingWeaponOnServerDelegate FOnStartEndCreatingWeaponOnServerDelegate
---@field WeaponCreateSeqLastTime number
---@field WeaponCreateSeqStuckPickUpCount number
---@field EnableInstantReloadOnPostUnEquipOnServer number
---@field TargetCreateGrenadeID FItemDefineID
---@field CurFastDrawInterruptActionType EFastDrawInterruptActionType
---@field LastSwitchWeaponReverseTime number
---@field TakeOutWeaponLockKeyList ULuaArrayHelper<string>
---@field AutoSwitchSameSlotWeaponTimerHandle FTimerHandle
---@field InventoryData ULuaMapHelper<string, ASTExtraWeapon>
---@field GrenadeLogicSlotAndDefineIDData ULuaMapHelper<string, FItemDefineID>
---@field BackpackPistolList ULuaArrayHelper<ASTExtraWeapon>
---@field bEnableAllBroadcast boolean
---@field TargetCreateArray ULuaArrayHelper<FItemDefineID>
---@field bCanUpdateCreateWeapon boolean
---@field WeaponCreatePool ULuaArrayHelper<FSpawnAndBackpackWeaponReplicatedData>
---@field SimulateWeaponDataMgr FSimulateWeaponDataMgr
---@field LocalCachedSimulateWeaponDataMgr FSimulateWeaponDataMgr
---@field BagLevel number
---@field LocalCachedBagLevel number
---@field SwitchTargetLogicSocket string
---@field BackpackingWeaponList ULuaArrayHelper<ASTExtraWeapon>
---@field AdditionalSwitchTargetWeaponTime number
---@field TargetEquipLogicSlot string
---@field SwitchHandle FTimerHandle
---@field AdditionalSwitchHandle FTimerHandle
---@field bNeedBroadcastWeaponData boolean
---@field WeaponSpawnDataCache ULuaArrayHelper<FItemDefineID>
---@field OldInventoryData ULuaMapHelper<string, ASTExtraWeapon>
---@field LocalCacheSwitchWeaponFlag number
---@field LoopCheckCurrentRepWeaponHandle FTimerHandle
---@field CurSwitchWeaponProgress number
---@field bSwitchWeaponConsiderCooperate boolean
---@field ClientHasFinishedCreateWeaponIDList ULuaArrayHelper<FItemDefineID>
---@field TickLogInc number
---@field DefWeaponSystemDataOnSimulateClient FWeaponSystemDataOnSimulateClient
---@field bNeedHideAllWeapon boolean
---@field bUseAnimWhenSwitchWeapon boolean
---@field CurSwitchingWeaponTime number
---@field LocalSimulateTakeOutHandle FTimerHandle
---@field BP_coil_size_ratio number
---@field BP_adsorb_speed_ratio number
---@field bAutoAimInit boolean
local UWeaponManagerComponent = {}

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:SetLastUseLogicSlotOnServer(Slot) end

---@param InWeapon ASTExtraWeapon
---@param IsServerCall boolean
function UWeaponManagerComponent:SetCurrentTemporaryWeapon(InWeapon, IsServerCall) end

function UWeaponManagerComponent:GetAllCurrentUsingWeapons() end

---@param bConsiderAdditionalWeapon boolean
---@return string
function UWeaponManagerComponent:GetCurrentUsingLogicSocket(bConsiderAdditionalWeapon) end

---@param Slot ESurviveWeaponPropSlot
---@return string
function UWeaponManagerComponent:GetLogicSocketBySlot(Slot) end

---@param LogicSocket string
---@return ESurviveWeaponPropSlot
function UWeaponManagerComponent:GetPropSlotByLogicSocket(LogicSocket) end

---@param bForceUseMapData boolean
function UWeaponManagerComponent:GetAllInventoryWeaponList(bForceUseMapData) end

---@param bForceUseMapData boolean
function UWeaponManagerComponent:GetAllInventoryWeaponIDList(bForceUseMapData) end

function UWeaponManagerComponent:GetShootWeaponList() end

---@param bConsiderAdditionalWeapon boolean
---@return string
function UWeaponManagerComponent:GetCurrentUsingLogicSocketOnServer(bConsiderAdditionalWeapon) end

---@param bConsiderAdditionalWeapon boolean
---@return ESurviveWeaponPropSlot
function UWeaponManagerComponent:GetCurrentUsingPropSlot(bConsiderAdditionalWeapon) end

---@param Weapon ASTExtraWeapon
---@return EGrenadeType
function UWeaponManagerComponent:GetGrenadeTypeOfWeapon(Weapon) end

---@param Weapon ASTExtraWeapon
---@return string
function UWeaponManagerComponent:GetGrenadeIconOfWeapon(Weapon) end

---@param Weapon ASTExtraWeapon
---@return string
function UWeaponManagerComponent:GetGrenadeTimerIconOfWeapon(Weapon) end

---@param LogicSlot string
---@param ID FItemDefineID
function UWeaponManagerComponent:AddOrSetGrenadeSlotAndDefindID(LogicSlot, ID) end

---@param LogicSlot string
function UWeaponManagerComponent:DeleteGrenadeSlotAndDefindID(LogicSlot) end

---@param LogicSlot string
---@return FItemDefineID
function UWeaponManagerComponent:GetGrenadeDefindIDBySlot(LogicSlot) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param SwitchWeaponFlag number
function UWeaponManagerComponent:SwitchWeaponBySlot(Slot, bUseAnimation, SwitchWeaponFlag) end

function UWeaponManagerComponent:ClearAllInventoryData() end

function UWeaponManagerComponent:ForceBroadcastChangeAllInventoryDataEvent() end

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:ForceBroadcastChangeInventoryDataEvent(Slot) end

function UWeaponManagerComponent:ForceBroadcastChangeCurrentDataEvent() end

function UWeaponManagerComponent:DebugDisconnetToServerOnClient() end

function UWeaponManagerComponent:DebugReconnectToClientOnServer() end

function UWeaponManagerComponent:LocalForceFinishSwitchWeapon() end

---@param Weapon ASTExtraWeapon
function UWeaponManagerComponent:TakeOutWeaponOnSimulatedClient(Weapon) end

---@param Weapon ASTExtraWeapon
function UWeaponManagerComponent:DetachWeaponOnSimulatedClient(Weapon) end

function UWeaponManagerComponent:LogInventoryDataInfo() end

---@param Slot1 ESurviveWeaponPropSlot
---@param Slot2 ESurviveWeaponPropSlot
---@param bForce boolean
---@return boolean
function UWeaponManagerComponent:LocalSwapWeaponByPropSlot(Slot1, Slot2, bForce) end

---@param Data FSpawnAndBackpackWeaponReplicatedData
function UWeaponManagerComponent:HandleCreateWeaponOnOwnerClient(Data) end

---@param bConsiderCreatingFrame boolean
---@return boolean
function UWeaponManagerComponent:IsCreatingWeaponOnServer(bConsiderCreatingFrame) end

---@param Weapon ASTExtraWeapon
---@param LogicSocket string
---@param NeedMeshUpdateFlag boolean
function UWeaponManagerComponent:DoWeapnAttachToBack(Weapon, LogicSocket, NeedMeshUpdateFlag) end

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:RefreshWeaponLogicSocketInSpawnDataCacheByPropSlotOnServer(Slot) end

---@param ID number
---@return number
function UWeaponManagerComponent:GetBagLevelBySpesificID(ID) end

---@param DefineID FItemDefineID
---@return number
function UWeaponManagerComponent:GetBagLevelByItemID(DefineID) end

---@return boolean
function UWeaponManagerComponent:IsRecoveringWeaponOnServer() end

---@return boolean
function UWeaponManagerComponent:ForceStopWeaponCreateSeqAndRecoverByWeaponReconnectOnServer() end

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:ChangeCurrentUsingWeaponAfterWeaponsSpawnedOnServer(Slot) end

---@param Param FAutoTriggerWeaponEventParam
---@param bClearAllOldAutoTriggerWeaponTasks boolean
function UWeaponManagerComponent:PushAutoTriggerWeaponEventTaskWhenEquipWeapon(Param, bClearAllOldAutoTriggerWeaponTasks) end

---@param Weapon ASTExtraWeapon
function UWeaponManagerComponent:OnPostEquipWeapon(Weapon) end

---@param Weapon ASTExtraWeapon
function UWeaponManagerComponent:OnPostUnEquipWeapon(Weapon) end

---@param Weapon ASTExtraWeapon
function UWeaponManagerComponent:OnPostGetWeapon(Weapon) end

---@return boolean
function UWeaponManagerComponent:CheckAndLoadWeaponEffectTableAsync() end

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:LocalHandleChangeCurrentUsingWeapon(Slot) end

function UWeaponManagerComponent:SoftReconnectFinished() end

---@param bCheckCD boolean
---@return boolean
function UWeaponManagerComponent:CheckCanSwitchWeaponReverse(bCheckCD) end

---@param TargetWeapon ASTExtraWeapon
---@return boolean
function UWeaponManagerComponent:CheckTargetWeaponCanSwitchWeaponReverse(TargetWeapon) end

---@param Weapon ASTExtraWeapon
---@param LastState EFreshWeaponStateType
---@param CurState EFreshWeaponStateType
function UWeaponManagerComponent:HandleWeaponChangeState(Weapon, LastState, CurState) end

---@param InterruptedState EPawnState
---@param InterrupteByState EPawnState
function UWeaponManagerComponent:ServerHandlePawnStateInterrupt(InterruptedState, InterrupteByState) end

---@param InterruptType ECustomFastDrawInterruptType
function UWeaponManagerComponent:ServerCustomInterruptFastDraw(InterruptType) end

---@param InterruptType ECustomFastDrawInterruptType
function UWeaponManagerComponent:LocalClientCustomInterruptFastDraw(InterruptType) end

---@param ActionType EFastDrawInterruptActionType
function UWeaponManagerComponent:NotifyFastDrawInterruptAnimDelegate(ActionType) end

function UWeaponManagerComponent:RefreshCurrentCreatingWeaponSlotIDDataListOnServer() end

---@param Slot ESurviveWeaponPropSlot
---@return FItemDefineID
function UWeaponManagerComponent:GetCreatingWeaponIDBySlot(Slot) end

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:ProccessChangeCurrentUsingWeaponDelegate(Slot) end

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:ProccessChangeInventoryDataDelegate(Slot) end

---@param InAction FFastDrawInterruptAction
function UWeaponManagerComponent:LocalHandleFastDrawInterruptAction(InAction) end

---@param InAction FFastDrawInterruptAction
function UWeaponManagerComponent:RPC_NotifyOwnerClientFastDrawInterruptAction(InAction) end

function UWeaponManagerComponent:AsyncLoadWeaponEffectTableFinished() end

function UWeaponManagerComponent:HandleBeginPlayOrRespawn() end

function UWeaponManagerComponent:HandleEndPlayOrRecycle() end

function UWeaponManagerComponent:HandleReplayFinishPlaying() end

---@param bBind boolean
function UWeaponManagerComponent:BindReplayDelegate(bBind) end

---@param bNextTick boolean
function UWeaponManagerComponent:ForceReconnectOnServer(bNextTick) end

function UWeaponManagerComponent:UpdateOwnerClientCreateWeapon() end

---@param SocketName string
function UWeaponManagerComponent:LocalUseTargetWeapon(SocketName) end

---@param Weapon ASTExtraWeapon
---@param bWillDestroy boolean
---@return boolean
function UWeaponManagerComponent:LocalDisUseTargetWeapon(Weapon, bWillDestroy) end

---@param TargetLogicSocket string
---@param bIgnoreSameSlot boolean
function UWeaponManagerComponent:SwitchWeaponByLogicSocket(TargetLogicSocket, bIgnoreSameSlot) end

function UWeaponManagerComponent:SwitchWeaponByLogicSocket_IdleToBackpackFinished() end

function UWeaponManagerComponent:LocalBackpackCurerrentWeapon_BySequence() end

---@param TargetWeapon ASTExtraWeapon
function UWeaponManagerComponent:LocalEquipWeaponFromBackpack_BySequence(TargetWeapon) end

---@param UnEquipWeaponList ULuaArrayHelper<ASTExtraWeapon>
---@param SwitchTime number
function UWeaponManagerComponent:LocalBackpackCurerrentWeaponConsiderCooperate_BySequence(UnEquipWeaponList, SwitchTime) end

---@param TargetSlot ESurviveWeaponPropSlot
function UWeaponManagerComponent:LocalEquipWeaponConsiderCooperate_BySequence(TargetSlot) end

function UWeaponManagerComponent:LocalSwitchWeaponConsiderFastDraw_BySequence() end

function UWeaponManagerComponent:LocalBackpackAllWeaponConsiderFastDraw_BySequence() end

---@param bWantsEquip boolean
---@return boolean
function UWeaponManagerComponent:CheckForceFlushPlayBack(bWantsEquip) end

---@param bWantsEquip boolean
function UWeaponManagerComponent:ChangeCurSwitchSequenceDirection(bWantsEquip) end

function UWeaponManagerComponent:LocalBackpackCurerrentWeapon() end

---@param TargetSlot ESurviveWeaponPropSlot
---@return ESurviveWeaponPropSlot
function UWeaponManagerComponent:OverrideUISwitchWeaponSlot(TargetSlot) end

function UWeaponManagerComponent:SwitchWeaponConsiderCooperate() end

function UWeaponManagerComponent:SwitchWeaponConsiderCooperateNext() end

function UWeaponManagerComponent:SwitchWeaponConsiderCooperateNextFinished() end

function UWeaponManagerComponent:AdditionalSwitchWeaponConsiderCooperateNext() end

function UWeaponManagerComponent:AdditionalSwitchWeaponConsiderCooperateNextFinished() end

function UWeaponManagerComponent:LocalBackpackCurerrentWeaponFinishedCallback() end

---@param LogicSlot string
function UWeaponManagerComponent:LocalEquipWeaponFromBackpack(LogicSlot) end

function UWeaponManagerComponent:LocalEquipWeaponFromBackpackFinishedCallback() end

---@param LastVehicleWeapon ASTExtraWeapon
function UWeaponManagerComponent:OnRep_TemporaryWeaponReplicated(LastVehicleWeapon) end

function UWeaponManagerComponent:OnRep_CurrentWeaponReplicated() end

---@param bSkipTakeOutWeaponOp boolean
function UWeaponManagerComponent:HandleCurrentWeaponReplicated(bSkipTakeOutWeaponOp) end

function UWeaponManagerComponent:OnRep_CurrentAdditionalWeaponReplicated() end

function UWeaponManagerComponent:HandleCurrentAdditionalWeaponReplicated() end

function UWeaponManagerComponent:OnRep_CurrentWeaponLogicSlot() end

function UWeaponManagerComponent:OnRep_CurUseAdditionalWeaponSlot() end

---@param OldData FSimulateWeaponDataMgr
function UWeaponManagerComponent:OnRep_SimulateWeaponDataMgr(OldData) end

function UWeaponManagerComponent:OnRep_LastUseLogicSlotRep() end

function UWeaponManagerComponent:OnRep_CurCreatingWeaponSlotIDDataList() end

function UWeaponManagerComponent:OnRep_InterruptDrawStyle() end

function UWeaponManagerComponent:OnRep_EnableGlobalFastDraw() end

---@param Data FWeaponSystemDataOnSimulateClient
function UWeaponManagerComponent:LocalHandleWeaponSystemDataOnSimulate(Data) end

function UWeaponManagerComponent:OnReconnectOnServer() end

function UWeaponManagerComponent:OnReconnectOnClient() end

---@param OutSlotDataList ULuaArrayHelper<FWeaponSlotData>
function UWeaponManagerComponent:GenerateWeaponSlotDataList(OutSlotDataList) end

---@return boolean
function UWeaponManagerComponent:CheckCanCreateNewWeapon() end

function UWeaponManagerComponent:LoopCheckCurrentRepWeapon() end

---@param bOldVal boolean
function UWeaponManagerComponent:OnRep_LockTakeOutWeapon(bOldVal) end

---@param Slot1 ESurviveWeaponPropSlot
---@param Slot2 ESurviveWeaponPropSlot
function UWeaponManagerComponent:LocalSwapWeaponByPropSlotFinished(Slot1, Slot2) end

---@param bOldVal boolean
function UWeaponManagerComponent:OnRep_SavedCurUsingAdditionalWeapon(bOldVal) end

---@param Id FItemDefineID
---@return number
function UWeaponManagerComponent:GetGrenadeSkillById(Id) end

function UWeaponManagerComponent:PreSwitchWeaponEnd() end

function UWeaponManagerComponent:SwitchWeaponEnd() end

---@param Weapon ASTExtraWeapon
---@param OldSlot ESurviveWeaponPropSlot
---@param NewSlot ESurviveWeaponPropSlot
---@param bIsCurWeapon boolean
---@param bIsCurAdditionalWeapon boolean
function UWeaponManagerComponent:DoLocalSwapWeaponByPropSlot(Weapon, OldSlot, NewSlot, bIsCurWeapon, bIsCurAdditionalWeapon) end

---@param Slot ESurviveWeaponPropSlot
function UWeaponManagerComponent:HandleGetWeaponFinished(Slot) end

---@param Weapon ASTExtraWeapon
---@param Slot ESurviveWeaponPropSlot
---@param SwitchWeaponFlag number
---@return boolean
function UWeaponManagerComponent:CheckCanUseWhenSpawn(Weapon, Slot, SwitchWeaponFlag) end

function UWeaponManagerComponent:LocalSimulateTakeOutEnd() end

---@param isShow boolean
function UWeaponManagerComponent:SetAllWeaponVisable(isShow) end

---@param inWeaponID number
---@return string
function UWeaponManagerComponent:GetWeaponNameByWeaponID(inWeaponID) end

function UWeaponManagerComponent:LocalStartSimulateTakeOut() end

---@param Sequence USimpleSequence
function UWeaponManagerComponent:HandleSwitchWeaponSequenceFinished(Sequence) end

---@param Sequence USimpleSequence
function UWeaponManagerComponent:HandleSwitchWeaponSequenceBreak(Sequence) end

function UWeaponManagerComponent:PrintWeaponPropertyDataOnShoot() end

function UWeaponManagerComponent:OnPostChange_SimulateWeaponDataMgr() end

function UWeaponManagerComponent:SaveCurUsingAdditionalWeaponStateOnServer() end

---@return boolean
function UWeaponManagerComponent:GetEnableSwitchWeaponBaseOnSequence() end

---@param bInInterruptDrawStyle boolean
function UWeaponManagerComponent:ModifyInterruptDrawStyleOnServer(bInInterruptDrawStyle) end

---@param bInEnableGlobalFastDraw boolean
function UWeaponManagerComponent:SetEnableGlobalFastDraw(bInEnableGlobalFastDraw) end

---@param OldType EFastDrawInterruptActionType
function UWeaponManagerComponent:OnRep_CurFastDrawInterruptActionType(OldType) end

---@param State FGameplayTag
function UWeaponManagerComponent:OnCharacterGameplayTagStateEnter(State) end

---@param State FGameplayTag
function UWeaponManagerComponent:OnCharacterGameplayTagStateLeave(State) end

function UWeaponManagerComponent:LocalUpdateFastDrawStatus() end
