---@meta

---@class FOnNewFPPControllerStateChange : ULuaMulticastDelegate
FOnNewFPPControllerStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TargetCharacter: ASTExtraBaseCharacter, IsEnableNewFPP: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewFPPControllerStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param TargetCharacter ASTExtraBaseCharacter
---@param IsEnableNewFPP boolean
function FOnNewFPPControllerStateChange:Broadcast(TargetCharacter, IsEnableNewFPP) end


---@class FOnNewFPPMeshTickStateChange : ULuaMulticastDelegate
FOnNewFPPMeshTickStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsTickEnable: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewFPPMeshTickStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsTickEnable boolean
function FOnNewFPPMeshTickStateChange:Broadcast(bIsTickEnable) end


---@class FOnSwitchNewFPPModeDelegate : ULuaMulticastDelegate
FOnSwitchNewFPPModeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsOpen: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSwitchNewFPPModeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsOpen boolean
function FOnSwitchNewFPPModeDelegate:Broadcast(bIsOpen) end


---@class UNewFPPControllerComponent: UActorComponent
---@field SpringArmTag string
---@field FPPLayerFov number
---@field FPPLayerFovCurrent number
---@field AdditiveSightMap ULuaMapHelper<string, FVector>
---@field EnableScopeLeaveOffset boolean
---@field AngledSightID number
---@field CurrentWeaponAttachIDList ULuaArrayHelper<number>
---@field OnPreSwitchNewFPP_Delegate FOnPreSwitchNewFPP
---@field bIsInNewFPPMode boolean
---@field bIsInTPPMeshMode boolean
---@field bIsInOldFPPAnimMode boolean
---@field bIsInOldFPPAnimMode_AttachHead boolean
---@field bIsInForceNewFPPMode boolean
---@field OldFPPAnimMode_MeshOffset FTransform
---@field bIsInTPPMeshRenderFlexMode boolean
---@field bIsEnterOldFPPCoverMode boolean
---@field bIsInFlexMode boolean
---@field WatchingBasePlayerState ASTExtraPlayerState
---@field TPPHideBones ULuaArrayHelper<string>
---@field FPPHideBones ULuaArrayHelper<string>
---@field TPPModifyBoneExtras ULuaMapHelper<string, FTransform>
---@field FPPArmSkinWeightMap ULuaArrayHelper<FSkinWeightInfoForFPP>
---@field FPPAnimInstance any
---@field DisableNewFPPStateList ULuaArrayHelper<EPawnState>
---@field NewFPPAnimClass USTExtraNewFPPAnimInstance
---@field DisableNewFPPFlagList ULuaArrayHelper<string>
---@field NewFPPHiddenMask EActorHiddenMask
---@field bLockSwitchOldFPPAnim boolean
---@field StandOffset FTransform
---@field CrouchOffset FTransform
---@field ProneOffset FTransform
---@field Spine_StandOffset FTransform
---@field Spine_CrouchOffset FTransform
---@field Spine_ProneOffset FTransform
---@field OldStandOffset FTransform
---@field OldCrouchOffset FTransform
---@field OldProneOffset FTransform
---@field NearDeathTPPMeshOffset FTransform
---@field bIsEnteringNewFPPMode boolean
---@field FPPMeshNotRenderTickFrame number
---@field FPPMeshNotRenderTickDelayTime number
---@field FPPMeshNotRenderTickTimerHandleMap ULuaMapHelper<ASTExtraBaseCharacter, FTimerHandle>
---@field bFPPMeshTickInNoRenderCheckNotifyNums boolean
---@field FPPMeshTickInNoRenderMontageGroups ULuaArrayHelper<string>
---@field FPPMeshTickInNoRenderMontageSlots ULuaArrayHelper<string>
---@field CheckPoseReadyMaxTime number
---@field CheckPoseReadyStartTimestamp number
---@field WeaponDelayFrameMap ULuaMapHelper<ASTExtraWeapon, number>
---@field ShadowChangeRecords ULuaArrayHelper<FFppTppShadowChangeRecord>
---@field AvatarSlotNotRenderInNewFPPMainPass ULuaArrayHelper<EAvatarSlotType>
---@field TPPMeshShadowTickFrame_LowMidDevice number
---@field TPPMeshShadowTickFrame_HighUltraDevice number
---@field bIsDounbleVaultStartNewFPP boolean
---@field DisableDounbleVaultSwitchPerspective number
---@field DounbleVaultTimerHandle FTimerHandle
---@field RefreshTPPMeshVisibleSet ULuaArrayHelper<ASTExtraBaseCharacter>
---@field RefreshFPPMeshVisibleSet ULuaArrayHelper<ASTExtraBaseCharacter>
---@field bInitCurrentYawLimit boolean
---@field bInitCurrentPitchLimit boolean
---@field TransitionLastTime number
---@field CurrentPitchMinLimit number
---@field CurrentPitchMaxLimit number
---@field CurrentYawMinLimit number
---@field CurrentYawMaxLimit number
---@field ViewYawLimitInterpSpeed number
---@field ViewPitchLimitInterpSpeed number
---@field VaultYawMinLimit number
---@field VaultYawMaxLimit number
---@field VaultRootBoneName string
---@field VaultBoneYawOffset number
---@field VaultPitchMinLimit number
---@field VaultPitchMaxLimit number
---@field VaultYawMinLimit_NotRotPose number
---@field VaultYawMaxLimit_NotRotPose number
---@field VaultPitchMinLimit_NotRotPose number
---@field VaultPitchMaxLimit_NotRotPose number
---@field FreeCameraYawMinLimit number
---@field FreeCameraYawMaxLimit number
---@field FreeCameraPitchMinLimit number
---@field FreeCameraPitchMaxLimit number
---@field FreeCameraYawMinLimit_Vault number
---@field FreeCameraYawMaxLimit_Vault number
---@field FreeCameraPitchMinLimit_Vault number
---@field FreeCameraPitchMaxLimit_Vault number
---@field FreeCameraWidgetStyle UUserWidgetStyle
---@field NotRotPoseVaultKey ULuaArrayHelper<string>
---@field IsInNotRotPoseVaultState boolean
---@field IsDoingCleanCameraData boolean
---@field IsSpineAttachHead ULuaArrayHelper<string>
---@field IsPlayingTPPMontage ULuaArrayHelper<string>
---@field PlayingTPPMontageMap ULuaMapHelper<string, UAnimMontage>
---@field bEnablePreloadNewFPPAvatar boolean
---@field bEnableAnimMoveMaxSpeedLimit boolean
---@field bIsCarringStartNewFPP boolean
---@field bPendingIsEnterOldFPPAnimMode boolean
---@field bPendingIsSpineAttachHead boolean
---@field PendingOldFPPAnimMode_MeshOffset FTransform
---@field OnNewFPPControllerStateChange FOnNewFPPControllerStateChange
---@field OnNewFPPMeshTickStateChange FOnNewFPPMeshTickStateChange
---@field OnSwitchNewFPPModeDelegate FOnSwitchNewFPPModeDelegate
---@field DisabledTPPMeshRenderReasons ULuaArrayHelper<string>
local UNewFPPControllerComponent = {}

---@param InSourceComp UActorComponent
---@param InRequestComp UActorComponent
function UNewFPPControllerComponent:CustomAddTickPrerequisiteComponent(InSourceComp, InRequestComp) end

---@param InSourceComp UActorComponent
---@param InRequestComp UActorComponent
function UNewFPPControllerComponent:CustomRemoveTickPrerequisiteComponent(InSourceComp, InRequestComp) end

function UNewFPPControllerComponent:GetFPPArmSkinWeightMap() end

---@param renderlevel number
function UNewFPPControllerComponent:OnUserQualitySettingChanged(renderlevel) end

function UNewFPPControllerComponent:OnRepPlayerState() end

---@param InPlayerState ASTExtraPlayerState
function UNewFPPControllerComponent:OnRepPlayerState_Character(InPlayerState) end

function UNewFPPControllerComponent:RefreshFPPModeConfig() end

---@param ViewCharacter ASTExtraBaseCharacter
---@return boolean
function UNewFPPControllerComponent:CanEnterNewFPPCameraMode(ViewCharacter) end

---@param ViewCharacter ASTExtraBaseCharacter
---@param SpringArmToActive USpringArmComponent
---@param CameraPossessName string
---@param CameraToActive UCameraComponent
---@param CameraPossessAttachComp USceneComponent
function UNewFPPControllerComponent:EnterNewFPPCameraMode_Internal(ViewCharacter, SpringArmToActive, CameraPossessName, CameraToActive, CameraPossessAttachComp) end

---@param ViewCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:LeaveNewFPPCameraMode(ViewCharacter) end

---@param ViewCharacter ASTExtraBaseCharacter
---@param bEnterNewFPP boolean
function UNewFPPControllerComponent:SwitchNewFPPMesh(ViewCharacter, bEnterNewFPP) end

---@param ViewCharacter ASTExtraBaseCharacter
---@param bEnterNewFPP boolean
function UNewFPPControllerComponent:SwitchNewFPPWeapon(ViewCharacter, bEnterNewFPP) end

---@param ViewCharacter ASTExtraBaseCharacter
---@param bEnterNewFPP boolean
function UNewFPPControllerComponent:SwitchNewFPPWeaponSkMesh(ViewCharacter, bEnterNewFPP) end

---@param ViewCharacter ASTExtraBaseCharacter
---@param bEnableLayer boolean
function UNewFPPControllerComponent:SwitchNewFPPLayerRender(ViewCharacter, bEnableLayer) end

---@return boolean
function UNewFPPControllerComponent:GetCanSwitchNewFPPModeClose() end

---@param bIsOpen boolean
---@param bForce boolean
function UNewFPPControllerComponent:SwitchNewFPPMode(bIsOpen, bForce) end

---@param ViewCharacter ASTExtraBaseCharacter
---@param bEnterOldFPPAnim boolean
---@param bOldFPPAnimMode_AttachHead boolean
function UNewFPPControllerComponent:SwitchOldFPPAnim(ViewCharacter, bEnterOldFPPAnim, bOldFPPAnimMode_AttachHead) end

---@param bEnterOldFPPAnim boolean
---@param bOldFPPAnimMode_AttachHead boolean
---@param OldAnimMeshTransform FTransform
function UNewFPPControllerComponent:SwitchOldFPPAnim_TickFlush(bEnterOldFPPAnim, bOldFPPAnimMode_AttachHead, OldAnimMeshTransform) end

---@param bIsOpen boolean
---@param bForceUpdateMeshPose boolean
function UNewFPPControllerComponent:SwitchNewFPPModeFromOldFPP(bIsOpen, bForceUpdateMeshPose) end

---@param OldAnimMeshTransform FTransform
function UNewFPPControllerComponent:SetOldFPPAnimMeshOffset(OldAnimMeshTransform) end

---@param ViewCharacter ASTExtraBaseCharacter
---@param bEnterOldFPPCoverMode boolean
function UNewFPPControllerComponent:SwitchOldFPPCoverAnimMode(ViewCharacter, bEnterOldFPPCoverMode) end

---@param Character ASTExtraBaseCharacter
function UNewFPPControllerComponent:SetNewFPPAnim(Character) end

---@param Character ASTExtraBaseCharacter
function UNewFPPControllerComponent:OnAsyncLoadFPPAnimFinished(Character) end

---@param Character ASTExtraBaseCharacter
function UNewFPPControllerComponent:InitializeNewFPPMesh(Character) end

---@param Character ASTExtraBaseCharacter
---@param bTickEnabled boolean
---@param LockAnimUpdateRate number
function UNewFPPControllerComponent:SetNewFPPMeshTickEnabled(Character, bTickEnabled, LockAnimUpdateRate) end

---@param InputCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:SetTPPMeshCastShadow(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
---@param NeedTick boolean
---@param ForceUpdateTime number
function UNewFPPControllerComponent:RefreshNewFPPMeshTickRate(InputCharacter, NeedTick, ForceUpdateTime) end

---@param InputCharacter ASTExtraBaseCharacter
---@param UpperMesh USkeletalMeshComponent
---@return boolean
function UNewFPPControllerComponent:CheckCanNewFPPMeshTickInNoRender(InputCharacter, UpperMesh) end

---@param bIsVault boolean
function UNewFPPControllerComponent:HandleVaultStateChange(bIsVault) end

---@param bDisable boolean
function UNewFPPControllerComponent:HandleDisableNewFPPStateChange(bDisable) end

---@param ViewCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:UpdateDisableNewFPPState(ViewCharacter) end

---@param InDisableFlag string
---@param InDisable boolean
function UNewFPPControllerComponent:SetDisableNewFPPFlag(InDisableFlag, InDisable) end

function UNewFPPControllerComponent:CleanDisableNewFPPFlag() end

---@param InIgnoreFlag string
---@return boolean
function UNewFPPControllerComponent:IsDisableNewFPPFlag(InIgnoreFlag) end

---@return boolean
function UNewFPPControllerComponent:IsLockTPPMode() end

---@param Character ASTExtraBaseCharacter
function UNewFPPControllerComponent:ForceUpdateAnimListData(Character) end

---@param bIsNewFpp boolean
function UNewFPPControllerComponent:HandleControlPanelSwitchNewFPPMode(bIsNewFpp) end

function UNewFPPControllerComponent:UpdateMeshOffsetInViewPortCurve() end

---@param InNewCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:BindWatchingCharacter(InNewCharacter) end

---@param InNewCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:BindPlayerCharacter(InNewCharacter) end

---@param InNewWeapon ASTExtraWeapon
function UNewFPPControllerComponent:BindControlledWeapon(InNewWeapon) end

---@param InForce boolean
function UNewFPPControllerComponent:CleanCameraBlendData(InForce) end

---@param newPawn APawn
function UNewFPPControllerComponent:OnRepNewPawn(newPawn) end

function UNewFPPControllerComponent:OnHandleSpectatorChange() end

---@param InIsSpectating boolean
function UNewFPPControllerComponent:OnHandleRepIsSpectating(InIsSpectating) end

---@param InNewCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:OnAfterSetViewTarget(InNewCharacter) end

function UNewFPPControllerComponent:OnHandleReplayChangeViewTarget() end

function UNewFPPControllerComponent:OnHandleReplayFinishLoading() end

---@param state EPawnState
function UNewFPPControllerComponent:OnPawnStateEnterEvent(state) end

---@param state EPawnState
function UNewFPPControllerComponent:OnPawnStateLeaveEvent(state) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UNewFPPControllerComponent:OnPostLocalEquipWeaponEvent(IsEquip, SelfRef, Weapon) end

---@param InVehicle ASTExtraVehicleBase
function UNewFPPControllerComponent:OnOwnerAttachedToVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UNewFPPControllerComponent:OnOwnerDetachFromVehicle(InVehicle) end

---@param LastFrameVelocity FVector
function UNewFPPControllerComponent:OnEnterLandEvent(LastFrameVelocity) end

---@param NewTarget AActor
---@param PrevTarget AActor
function UNewFPPControllerComponent:OnPostViewTargetChange(NewTarget, PrevTarget) end

---@param InRecycledActor AActor
---@param bPersistentPool boolean
function UNewFPPControllerComponent:OnPlayerRecycled(InRecycledActor, bPersistentPool) end

---@param InType number
---@param IsOnlyTurn boolean
---@param InstanceID number
function UNewFPPControllerComponent:OnHandleAngleChange(InType, IsOnlyTurn, InstanceID) end

---@param InWeapon ASTExtraWeapon
---@param SocketType EWeaponAttachmentSocketType
---@param IsEquipped boolean
function UNewFPPControllerComponent:OnHandleWeaponHandleChange(InWeapon, SocketType, IsEquipped) end

---@param IDListAdd ULuaArrayHelper<number>
---@param IDListRemove ULuaArrayHelper<number>
function UNewFPPControllerComponent:OnHandleWeaponAttachmentIDChange(IDListAdd, IDListRemove) end

function UNewFPPControllerComponent:UpdateFPPMeshAdditive() end

---@param InFOV number
function UNewFPPControllerComponent:SetFPPLayerFov(InFOV) end

function UNewFPPControllerComponent:ResetFPPLayerFov() end

---@return number
function UNewFPPControllerComponent:GetFPPLayerFov() end

---@return number
function UNewFPPControllerComponent:GetFPPLayerFovCurrent() end

---@param Weapon ASTExtraWeapon
function UNewFPPControllerComponent:HideWeaponMeshAndShowWhenPoseReady(Weapon) end

---@param IsEquip boolean
---@param Weapon ASTExtraWeapon
---@return boolean
function UNewFPPControllerComponent:ShouldHideWeaponMesh(IsEquip, Weapon) end

---@param Weapon ASTExtraWeapon
---@return boolean
function UNewFPPControllerComponent:ShouldDelayWeaponDisplay(Weapon) end

---@param bEnabled boolean
function UNewFPPControllerComponent:SetFPPShadowEnabled(bEnabled) end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarFuncBranch_NewFPP UAvatarFuncBranch_NewFPP
function UNewFPPControllerComponent:HandleFPPAvatarMeshChange(InTargetSlot, InAvatarFuncBranch_NewFPP) end

---@param ChangeEventFrom UAvatarComponent
function UNewFPPControllerComponent:HandleAvatarMeshChange(ChangeEventFrom) end

---@param SlotType number
---@param IsEquipped boolean
function UNewFPPControllerComponent:HandleAvatarEquiped(SlotType, IsEquipped) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UNewFPPControllerComponent:OnCharacterAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

function UNewFPPControllerComponent:SetNewFPPMeshOnLoadFinish() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UNewFPPControllerComponent:OnWeaponAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@param InputCharacter ASTExtraBaseCharacter
---@param bFlex boolean
function UNewFPPControllerComponent:SetTPPMeshFlex(InputCharacter, bFlex) end

---@param InputCharacter ASTExtraBaseCharacter
---@param bRender boolean
function UNewFPPControllerComponent:SetTPPMeshRenderInMainPass(InputCharacter, bRender) end

function UNewFPPControllerComponent:HandlePostUpdateAvatarMeshCastShadow() end

---@param MSGCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:OnCharacterDoubleVaultStateChange(MSGCharacter) end

function UNewFPPControllerComponent:OnCharacterDoubleVaultInterrupt() end

---@param MSGCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:OnCharacterDoubleVaultEnd(MSGCharacter) end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UNewFPPControllerComponent:OnCharacterPoseChange(LastPose, NewPose) end

---@param InputCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:RecordAllMeshVisible(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
---@param bForceRefresh boolean
function UNewFPPControllerComponent:RefreshFPPMeshVisible(InputCharacter, bForceRefresh) end

---@param InputCharacter ASTExtraBaseCharacter
---@param bForceRefresh boolean
function UNewFPPControllerComponent:RefreshTPPMeshVisible(InputCharacter, bForceRefresh) end

---设置TPP Mesh（下半身模型）是否渲染
---@param bEnable boolean
---@param Reason string
function UNewFPPControllerComponent:SetTPPMeshRenderEnabled(bEnable, Reason) end

---清除外部TPP Mesh渲染设置，恢复默认行为
---@param Reason string
function UNewFPPControllerComponent:ClearTPPMeshRenderSetting(Reason) end

---@param InputCharacter ASTExtraBaseCharacter
function UNewFPPControllerComponent:ResetTPPMeshVisible(InputCharacter) end

---@param CameraManager ASTPlayerCameraManager
---@param ViewRotation FRotator
---@return FRotator
function UNewFPPControllerComponent:HandleProcessViewRotation(CameraManager, ViewRotation) end

---@param HandleNewFPPCamera UNewFPPCameraComponent
---@param FreeCameraDeltaRotation FRotator
---@return FRotator
function UNewFPPControllerComponent:HandleFreeCameraRotation(HandleNewFPPCamera, FreeCameraDeltaRotation) end

---处理翻越时的Yaw角度限制策略
---@param BaseCharacter ASTExtraBaseCharacter
---@param ViewRotation FRotator
---@param YawMinLimit number
---@param YawMaxLimit number
---@param DeltaTime number
---@return FRotator
function UNewFPPControllerComponent:ApplyVaultYawLimitStrategy(BaseCharacter, ViewRotation, YawMinLimit, YawMaxLimit, DeltaTime) end

---@return FTransform
function UNewFPPControllerComponent:GetPendingOldFPPAnimMode_MeshOffset() end

---@return boolean
function UNewFPPControllerComponent:GetEnableNewFPPMode() end

---@return boolean
function UNewFPPControllerComponent:GetGameEnableNewFPPMode() end

function UNewFPPControllerComponent:TimerRemovePostTickFlush() end
