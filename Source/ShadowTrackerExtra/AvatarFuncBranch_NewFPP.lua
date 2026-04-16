---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class FAFB_NewFPP_SwitchInfo
---@field TempOverrideNonAvatarMeshComp UMeshComponent
---@field SwitchingSlot EAvatarSlotType
---@field SwitchingID number
---@field bSwitchingToAvatar boolean
---@field bSwitchingToFixedFPPAvatar boolean
---@field bSwitchingNeedMappingSkeleton boolean
---@field bValidInfo boolean
FAFB_NewFPP_SwitchInfo = {}


---@class FAFB_NewFPP_SlotInfo
---@field ItemID number
---@field AvatarMeshConfig FAvatarMeshConfig
FAFB_NewFPP_SlotInfo = {}


---@class FOnNewFPPAvatarMeshChange : ULuaMulticastDelegate
FOnNewFPPAvatarMeshChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InTargetSlot: EAvatarSlotType, InAvatarFuncBranch_NewFPP: UAvatarFuncBranch_NewFPP) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewFPPAvatarMeshChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param InTargetSlot EAvatarSlotType
---@param InAvatarFuncBranch_NewFPP UAvatarFuncBranch_NewFPP
function FOnNewFPPAvatarMeshChange:Broadcast(InTargetSlot, InAvatarFuncBranch_NewFPP) end


---@class UAvatarFuncBranch_NewFPP: UObject
---@field OnNewFPPAvatarMeshChangeDelegate FOnNewFPPAvatarMeshChange
---@field bForceUseTPPInNewFPP boolean
---@field bOverride_InitFuncBranch boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseFuncBranch boolean
---@field bOverride_TrySwitchIntoNewFPPAvatar boolean
---@field bOverride_TrySwitchOutFPPAvatar boolean
---@field bOverride_IsSwitchingIntoNewFPPPermitted boolean
---@field bOverride_CopyMatFromTPPToFPP boolean
---@field bOverride_IsCollectNewFPPResPermitted boolean
---@field bOverride_PreAvatarMeshAsyncLoadCheck boolean
---@field bOverride_PostAvatarRenderCheck boolean
---@field bOverride_ExtractSwitchInfo boolean
---@field bOverride_SwitchIntoNewFPP_MasterMesh boolean
---@field bOverride_SwitchIntoNewFPP_SlaveMesh boolean
---@field bOverride_SwitchIntoNewFPP_NonAvatar boolean
---@field bOverride_RefreshMeshCut boolean
---@field bOverride_RefreshMeshCutBySlot boolean
---@field bOverride_RefreshAnimState boolean
---@field bOverride_RefreshAvatarAnimState boolean
---@field bOverride_RefreshMaterials boolean
---@field bOverride_SwitchOutNewFPP_MasterMesh boolean
---@field bOverride_SwitchOutNewFPP_SlaveMesh boolean
---@field bOverride_SwitchOutNewFPP_NonAvatar boolean
---@field bOverride_ReleaseNewFPPMesh boolean
---@field bOverride_SetNewFPPMeshVisibility boolean
---@field bOverride_SetNewFPPMeshTickEnable boolean
---@field bOverride_CheckBodyTypeVariantForNewFPP_MasterMesh boolean
---@field bOverride_GetNewFPPMatMasterComp boolean
---@field bOverride_GetNewFPPMasterComp boolean
---@field bOverride_CloneParticle boolean
---@field bOverride_CloneRenderSettings boolean
---@field bOverride_CloneBoneVisibility boolean
---@field bOverride_GetSkeletonMappingMeshComp boolean
---@field bOverride_IsAvatarUseNewFPPMeshFeature boolean
---@field OwnerCAC UCharacterAvatarComponent @HOT_UPDATE_PROTECT *****************************************
---@field NewFPPMasterMeshComp USkeletalMeshComponent
---@field SkeletonMappingComp USkeletalMeshComponent
---@field LatestUsingMasterComp USkeletalMeshComponent
---@field LatestUsingMasterSkeletalMesh USkeletalMesh
---@field bSwitchingMasterAnimDirty boolean
---@field LatestSwitchInfo FAFB_NewFPP_SwitchInfo
---@field NewFPPSlotInfoMap ULuaMapHelper<EAvatarSlotType, FAFB_NewFPP_SlotInfo>
---@field FuncBranchResRefList ULuaArrayHelper<UObject>
---@field FuncBranchResList ULuaArrayHelper<FSoftObjectPath>
---@field HeadVarientParam FABTV_HeadVariant_Param
---@field bSwitchingToNewFPP boolean
---@field bOverrideClothWithNonAvatarSetting boolean
---@field bIgnoreSetMeshCutVisibleOp boolean
---@field bCheckHiddenInGame boolean
---@field bFPPMeshCastShadow boolean
---@field bFPPMappingMeshAlwaysHidden boolean
---@field bMarkDirtyWhenCopyAnyTppRenderSetting boolean
---@field bCopyRenderSetting_BoneVisibility boolean
---@field bCopyRenderSetting_ForceIBL boolean
---@field bCopyRenderSetting_CastTranslucentShadowAsMask boolean
---@field bCopyRenderSetting_TranslucentDepthWrite boolean
---@field bCopyRenderSetting_TwoPassTranslucent boolean
---@field bCopyRenderSetting_RenderInTwoPass boolean
---@field bCopyRenderSetting_TranslucentDepthWriteInTwoPass boolean
---@field bIsNonTPPMeshUseTPPCutInfoPermitted boolean
---@field bOptWhenItemAndMeshNotChange boolean
---@field bForceRecreateMeshComp boolean
---@field NewFPPGenerateMeshSlotList ULuaArrayHelper<EAvatarSlotType>
---@field NewFPPMeshHideBoneNameList ULuaArrayHelper<string>
---@field TppMeshHideBoneNameList ULuaArrayHelper<string>
---@field CloneParticleBoneNameList ULuaArrayHelper<string>
---@field bEnableAvatarNewFPPIndividualControl boolean
---@field IndividuallyControlIDList ULuaArrayHelper<number>
---@field NewFPPSkeletalMeshRef_Male USkeletalMesh
---@field NewFPPSkeletalMeshRef_Female USkeletalMesh
---@field bEnableNewFPPUseBodyType boolean
---@field CachedNewFPPEnable number
---@field bCaptureNewFPPEnableState boolean
---@field bAlwaysCollectRes boolean
---@field bAlwaysCollectAutonomousClientRes boolean
local UAvatarFuncBranch_NewFPP = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_NewFPP:InitFuncBranch(InOwnerCAC) end

---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_NewFPP:ReleaseFuncBranch(InOwnerCAC) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:TrySwitchIntoNewFPPAvatar(InNewFPPMasterMesh) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:TrySwitchOutFPPAvatar(InNewFPPMasterMesh) end

function UAvatarFuncBranch_NewFPP:PreAvatarMeshAsyncLoadCheck() end

function UAvatarFuncBranch_NewFPP:PostAvatarRenderCheck() end

---@return FAFB_NewFPP_SwitchInfo
function UAvatarFuncBranch_NewFPP:ExtractSwitchInfo() end

---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:SwitchIntoNewFPP_MasterMesh(InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InSlaveSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:SwitchIntoNewFPP_SlaveMesh(InSlaveSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InNonAvatarSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:SwitchIntoNewFPP_NonAvatar(InNonAvatarSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InCusIsMale boolean
---@param InIsEnableCheck boolean
---@param Visible boolean
---@param InCameraMode EPlayerCameraMode
function UAvatarFuncBranch_NewFPP:RefreshMeshCut(InCusIsMale, InIsEnableCheck, Visible, InCameraMode) end

---@param InSlaveSlotType EAvatarSlotType
---@param InCusIsMale boolean
---@param InIsEnableCheck boolean
---@param Visible boolean
---@param InCameraMode EPlayerCameraMode
---@return string
function UAvatarFuncBranch_NewFPP:RefreshMeshCutBySlot(InSlaveSlotType, InCusIsMale, InIsEnableCheck, Visible, InCameraMode) end

function UAvatarFuncBranch_NewFPP:RefreshAnimState() end

---@param InNewFPPAvatarSlotType EAvatarSlotType
function UAvatarFuncBranch_NewFPP:RefreshAvatarAnimState(InNewFPPAvatarSlotType) end

function UAvatarFuncBranch_NewFPP:RefreshMaterials() end

---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:SwitchOutNewFPP_MasterMesh(InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InSlaveSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:SwitchOutNewFPP_SlaveMesh(InSlaveSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InNonAvatarSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:SwitchOutNewFPP_NonAvatar(InNonAvatarSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InSlaveSlotType EAvatarSlotType
function UAvatarFuncBranch_NewFPP:ReleaseNewFPPMesh(InSlaveSlotType) end

---@param InSlaveSlotType EAvatarSlotType
---@param InIsVisible boolean
function UAvatarFuncBranch_NewFPP:SetNewFPPMeshVisibility(InSlaveSlotType, InIsVisible) end

---@param InIsEnable boolean
function UAvatarFuncBranch_NewFPP:SetNewFPPMeshTickEnable(InIsEnable) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:CheckBodyTypeVariantForNewFPP_MasterMesh(InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@return boolean
function UAvatarFuncBranch_NewFPP:IsSwitchingIntoNewFPPPermitted() end

---@param InTPPMeshComp UMeshComponent
---@param InNewFPPMeshComp UMeshComponent
function UAvatarFuncBranch_NewFPP:CopyMatFromTPPToFPP(InTPPMeshComp, InNewFPPMeshComp) end

---@return boolean
function UAvatarFuncBranch_NewFPP:IsCollectNewFPPResPermitted() end

---@param InCollectReqID number
function UAvatarFuncBranch_NewFPP:CollectFuncBranchRes(InCollectReqID) end

---@param InSlaveSlotType EAvatarSlotType
function UAvatarFuncBranch_NewFPP:CollectFuncBranchResBySlot(InSlaveSlotType) end

function UAvatarFuncBranch_NewFPP:ReferenceResList() end

---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:HideBoneList(InTargetSkelMeshComp) end

---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:UnHideBoneList(InTargetSkelMeshComp) end

---@param InTargetSlotType EAvatarSlotType
---@param InSourceSkelMeshComp USkeletalMeshComponent
---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:CloneParticle(InTargetSlotType, InSourceSkelMeshComp, InTargetSkelMeshComp) end

---@param InTargetSlotType EAvatarSlotType
---@param InSourceSkelMeshComp USkeletalMeshComponent
---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:CloneRenderSettings(InTargetSlotType, InSourceSkelMeshComp, InTargetSkelMeshComp) end

---@param InTargetSlotType EAvatarSlotType
---@param InSourceSkelMeshComp USkeletalMeshComponent
---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:CloneBoneVisibility(InTargetSlotType, InSourceSkelMeshComp, InTargetSkelMeshComp) end

---@param InAvatarID number
---@return boolean
function UAvatarFuncBranch_NewFPP:IsAvatarUseNewFPPMeshFeature(InAvatarID) end

---@param InMeshConfig FAvatarMeshConfig
---@param InTargetSlot EAvatarSlotType
---@param InNewFPPMeshComp USkeletalMeshComponent
---@param InTPPMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:ApplyMaterialByMeshConfig(InMeshConfig, InTargetSlot, InNewFPPMeshComp, InTPPMeshComp) end

---@param DebugMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:OnDebugMeshHiddenInGameChanged(DebugMeshComp) end

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_NewFPP:BP_InitFuncBranch(InOwnerCAC) end

---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_NewFPP:BP_ReleaseFuncBranch(InOwnerCAC) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:BP_TrySwitchIntoNewFPPAvatar(InNewFPPMasterMesh) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:BP_TrySwitchOutFPPAvatar(InNewFPPMasterMesh) end

---@return boolean
function UAvatarFuncBranch_NewFPP:BP_IsSwitchingIntoNewFPPPermitted() end

---@param InTPPMeshComp UMeshComponent
---@param InNewFPPMeshComp UMeshComponent
function UAvatarFuncBranch_NewFPP:BP_CopyMatFromTPPToFPP(InTPPMeshComp, InNewFPPMeshComp) end

---@return boolean
function UAvatarFuncBranch_NewFPP:BP_IsCollectNewFPPResPermitted() end

function UAvatarFuncBranch_NewFPP:BP_PreAvatarMeshAsyncLoadCheck() end

function UAvatarFuncBranch_NewFPP:BP_PostAvatarRenderCheck() end

---@return FAFB_NewFPP_SwitchInfo
function UAvatarFuncBranch_NewFPP:BP_ExtractSwitchInfo() end

---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:BP_SwitchIntoNewFPP_MasterMesh(InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InSlaveSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:BP_SwitchIntoNewFPP_SlaveMesh(InSlaveSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InNonAvatarSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:BP_SwitchIntoNewFPP_NonAvatar(InNonAvatarSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InCusIsMale boolean
---@param InIsEnableCheck boolean
---@param Visible boolean
---@param InCameraMode EPlayerCameraMode
function UAvatarFuncBranch_NewFPP:BP_RefreshMeshCut(InCusIsMale, InIsEnableCheck, Visible, InCameraMode) end

---@param InSlaveSlotType EAvatarSlotType
---@param InCusIsMale boolean
---@param InIsEnableCheck boolean
---@param Visible boolean
---@param InCameraMode EPlayerCameraMode
---@return string
function UAvatarFuncBranch_NewFPP:BP_RefreshMeshCutBySlot(InSlaveSlotType, InCusIsMale, InIsEnableCheck, Visible, InCameraMode) end

function UAvatarFuncBranch_NewFPP:BP_RefreshAnimState() end

---@param InNewFPPAvatarSlotType EAvatarSlotType
function UAvatarFuncBranch_NewFPP:BP_RefreshAvatarAnimState(InNewFPPAvatarSlotType) end

function UAvatarFuncBranch_NewFPP:BP_RefreshMaterials() end

---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:BP_SwitchOutNewFPP_MasterMesh(InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InSlaveSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:BP_SwitchOutNewFPP_SlaveMesh(InSlaveSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InNonAvatarSlotType EAvatarSlotType
---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:BP_SwitchOutNewFPP_NonAvatar(InNonAvatarSlotType, InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InSlaveSlotType EAvatarSlotType
function UAvatarFuncBranch_NewFPP:BP_ReleaseNewFPPMesh(InSlaveSlotType) end

---@param InSlaveSlotType EAvatarSlotType
---@param InIsVisible boolean
function UAvatarFuncBranch_NewFPP:BP_SetNewFPPMeshVisibility(InSlaveSlotType, InIsVisible) end

---@param InIsEnable boolean
function UAvatarFuncBranch_NewFPP:BP_SetNewFPPMeshTickEnable(InIsEnable) end

---@param InNewFPPMasterMesh USkeletalMeshComponent
---@param InSkeletonMappingMesh USkeletalMeshComponent
---@param InIsNeedSkeletonMapping boolean
function UAvatarFuncBranch_NewFPP:BP_CheckBodyTypeVariantForNewFPP_MasterMesh(InNewFPPMasterMesh, InSkeletonMappingMesh, InIsNeedSkeletonMapping) end

---@param InTargetSlotType EAvatarSlotType
---@param InSourceSkelMeshComp USkeletalMeshComponent
---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:BP_CloneParticle(InTargetSlotType, InSourceSkelMeshComp, InTargetSkelMeshComp) end

---@param InTargetSlotType EAvatarSlotType
---@param InSourceSkelMeshComp USkeletalMeshComponent
---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:BP_CloneRenderSettings(InTargetSlotType, InSourceSkelMeshComp, InTargetSkelMeshComp) end

---@param InTargetSlotType EAvatarSlotType
---@param InSourceSkelMeshComp USkeletalMeshComponent
---@param InTargetSkelMeshComp USkeletalMeshComponent
function UAvatarFuncBranch_NewFPP:BP_CloneBoneVisibility(InTargetSlotType, InSourceSkelMeshComp, InTargetSkelMeshComp) end

---@param InAvatarID number
---@return boolean
function UAvatarFuncBranch_NewFPP:BP_IsAvatarUseNewFPPMeshFeature(InAvatarID) end
