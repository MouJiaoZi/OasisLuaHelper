---@meta

---@class ESVehAnimVehicleType
---@field Anim_VT_Unknown number @未知载具类型
---@field Anim_VT_Motorbike number @双人摩托
---@field Anim_VT_Motorbike_SideCart number @三人摩托
---@field Anim_VT_Dacia number @Dacia轿车
---@field Anim_VT_UAZ number @UAZ吉普车
---@field Anim_VT_Buggy number @Buggy越野车
---@field Anim_VT_PG117 number @PG117船
---@field Anim_VT_Aquarail number @摩托艇
---@field Anim_VT_MiniBus number @mini巴士
---@field Anim_VT_PickUp number @皮卡
---@field Anim_VT_Mirado number @Mirado
---@field Anim_VT_Rony number @Rony
---@field Anim_VT_Surfboard number @喷气冲浪板
---@field Anim_VT_UH60 number @直升机 UH60
---@field Anim_VT_Amphibious number @两栖装甲车
---@field Anim_VT_Motorglider number @摩托滑翔机
---@field Anim_VT_Horse number @马匹
---@field Anim_VT_LionDance number @舞狮
ESVehAnimVehicleType = {}


---@class FChararacterPoseAnimData
---@field PoseType ECharacterPoseType
---@field ShowDeprecatedValue boolean
---@field PoseAnimSoftPtr UAnimationAsset
FChararacterPoseAnimData = {}


---@class FCharGameplayTagAnimData
---@field gameplayTag FGameplayTag
---@field IsFPP boolean
---@field PoseType ECharacterPoseType
---@field PoseAnimSoftPtr UAnimationAsset
FCharGameplayTagAnimData = {}


---@class FCharacterMovementAnimData
---@field AnimType ECharacterAnimType
---@field AnimTypeName string
---@field PoseAnim_Stand FChararacterPoseAnimData
---@field PoseAnim_Crouch FChararacterPoseAnimData
---@field PoseAnim_Prone FChararacterPoseAnimData
FCharacterMovementAnimData = {}


---@class FCharacterNewFPPAnimData
---@field AnimType ECharacterNewFPPAnimType
---@field AnimTypeIndex number
---@field AnimTypeName string
---@field PoseAnim_Stand FChararacterPoseAnimData
---@field PoseAnim_Crouch FChararacterPoseAnimData
---@field PoseAnim_Prone FChararacterPoseAnimData
---@field bHidden boolean
FCharacterNewFPPAnimData = {}


---@class FCharWeaponAnimData
---@field AnimType ECharWeaponAnimType
---@field AnimTypeName string
FCharWeaponAnimData = {}


---@class FAttachmentWeaponAnimListData
---@field CharWeaponEditList ULuaArrayHelper<FCharWeaponAnimData>
---@field CharWeaponEditListNewFPP ULuaArrayHelper<FCharWeaponAnimData>
FAttachmentWeaponAnimListData = {}


---@class FCharAnimModifyData
---@field AppliedGameMode number
---@field AnimLayer EAnimLayerType
---@field ModifyAnimListType ECharaAnimListType
---@field AnimType ECharacterAnimType
---@field PoseType ECharacterPoseType
---@field JumpType ECharacterJumpType
---@field JumpPhase ECharacterJumpPhase
---@field PoseAnimSoftPtr UAnimationAsset
FCharAnimModifyData = {}


---@class FAsyncLoadCharAnimParams
FAsyncLoadCharAnimParams = {}


---@class FCharacterShieldAnimData
---@field AnimType ECharacterShieldAnimType
---@field AnimTypeName string
---@field PoseAnim_Stand FChararacterPoseAnimData
---@field PoseAnim_Crouch FChararacterPoseAnimData
---@field PoseAnim_Prone FChararacterPoseAnimData
FCharacterShieldAnimData = {}


---@class FCharacterVehAnimModifyData
---@field VehicleType ESVehAnimVehicleType
---@field SeatIdx number
---@field VehicleAnimType ECharacterVehicleAnimType
---@field VehicleAnimSoftPtr UAnimationAsset
FCharacterVehAnimModifyData = {}


---@class FDynamicLoadinigAnimData
---@field AnimType EDynamicLoadingAnimType
---@field PoseAnim_Stand FChararacterPoseAnimData
---@field PoseAnim_Crouch FChararacterPoseAnimData
---@field PoseAnim_Prone FChararacterPoseAnimData
FDynamicLoadinigAnimData = {}


---@class FDynamicLoadinigAnimAsynLoadParam
FDynamicLoadinigAnimAsynLoadParam = {}


---@class FPoseAdditive
FPoseAdditive = {}


---@class FAnimAdditiveData
---@field Enabled boolean
---@field StandAdditive FPoseAdditive
---@field CrouchAdditive FPoseAdditive
---@field ProneAdditive FPoseAdditive
FAnimAdditiveData = {}


---@class FSwayBlendSample
---@field Axis FVector2D
---@field Position FVector
---@field Rotation FRotator
FSwayBlendSample = {}


---@class FSwayRotatePoseParams
---@field Left FSwayBlendSample
---@field Right FSwayBlendSample
---@field Up FSwayBlendSample
---@field Down FSwayBlendSample
FSwayRotatePoseParams = {}


---@class FSwayMovePoseParams
---@field Left FSwayBlendSample
---@field Right FSwayBlendSample
---@field MoveLeanInterpSpeed number
FSwayMovePoseParams = {}


---@class FWeaponSwayParams
---@field bEnabled boolean
---@field SwayRotatePose FSwayRotatePoseParams
---@field SwayMovePose FSwayMovePoseParams
---@field SwayScopeRotatePose FSwayRotatePoseParams
---@field SwayScopeMovePose FSwayMovePoseParams
FWeaponSwayParams = {}


---@class AsyncConfirmAnimDel : ULuaSingleDelegate
AsyncConfirmAnimDel = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UAnimationAsset) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function AsyncConfirmAnimDel:Bind(Callback, Obj) end

---执行委托
---@param Param1 UAnimationAsset
function AsyncConfirmAnimDel:Execute(Param1) end


---@class AsyncLoadAnimDel : ULuaSingleDelegate
AsyncLoadAnimDel = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UAnimationAsset) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function AsyncLoadAnimDel:Bind(Callback, Obj) end

---执行委托
---@param Param1 UAnimationAsset
function AsyncLoadAnimDel:Execute(Param1) end


---@class UUAECharacterAnimListComponent: UUAECharAnimListCompBase
---@field AnimListEditMap ULuaMapHelper<number, FAnimListMapValueData>
---@field WarningTip string
---@field CharacterMovementAnimEditList ULuaArrayHelper<FCharacterMovementAnimData>
---@field CharacterFPPAnimEditList ULuaArrayHelper<FCharacterMovementAnimData>
---@field CharacterNewFPPAnimEditList ULuaArrayHelper<FCharacterNewFPPAnimData>
---@field bShowHiddenAnimListItem boolean
---@field CharacterNewFPPAnimEditList_Editor ULuaArrayHelper<FCharacterNewFPPAnimData>
---@field CharacterJumpEditList ULuaArrayHelper<FCharacterJumpAnimData>
---@field CharacterJumpEditListFPP ULuaArrayHelper<FCharacterJumpAnimData>
---@field CharacterJumpEditListNewFPP ULuaArrayHelper<FCharacterJumpAnimData>
---@field CharWeaponEditList ULuaArrayHelper<FCharWeaponAnimData>
---@field CharWeaponEditListNewFPP ULuaArrayHelper<FCharWeaponAnimData>
---@field AttachmentWeaponAnimOverrideMap ULuaMapHelper<number, FAttachmentWeaponAnimListData>
---@field CharAnimModifyList ULuaArrayHelper<FCharAnimModifyData>
---@field CharVehAnimModifyList ULuaArrayHelper<FCharacterVehAnimModifyData>
---@field DynamicLoadinigAnimEditList ULuaArrayHelper<FDynamicLoadinigAnimData>
---@field DynamicLoadinigAnimEditListFPP ULuaArrayHelper<FDynamicLoadinigAnimData>
---@field DynamicLoadinigAnimEditList_NewFPP ULuaArrayHelper<FDynamicLoadinigAnimData>
---@field DynamicStateAnimEditList ULuaArrayHelper<FCharGameplayTagAnimData>
---@field AnimAdditiveTPPMap ULuaMapHelper<ECharAnimAdditiveType, FAnimAdditiveData>
---@field AnimAdditiveFPPMap ULuaMapHelper<ECharAnimAdditiveType, FAnimAdditiveData>
---@field WeaponSwayParams FWeaponSwayParams
---@field InitAnimNotifysDelayTime number
---@field bHasAlreadyInitAnimNotifys boolean
---@field InitAnimNotifysTimerHandle FTimerHandle
---@field StandbyTimeOver number
---@field StandbyAnimTypeWeights_Override ULuaMapHelper<EDynamicLoadingAnimType, number>
---@field EnableStandbyAnimOverride boolean
---@field CurrentIsTPP boolean
---@field CurrentHoldShield boolean
---@field bIsNoneLoadedAnimAsset boolean
---@field bShowAllAnimList boolean
---@field bAnimListVisibleChanged boolean
local UUAECharacterAnimListComponent = {}

function UUAECharacterAnimListComponent:InitDefaultData() end

function UUAECharacterAnimListComponent:InitDefaultDataForRuntimeCreate() end

function UUAECharacterAnimListComponent:InitDefaultDataCallInEditor() end

---@param MaskValue number
function UUAECharacterAnimListComponent:AnimModifyByMask(MaskValue) end

---@param JumpType ECharacterJumpType
function UUAECharacterAnimListComponent:GetCharacterJumpAnim(JumpType) end

---@param JumpType ECharacterJumpType
function UUAECharacterAnimListComponent:GetCharacterJumpAnim_NewFPP(JumpType) end

---@return FWeaponSwayParams
function UUAECharacterAnimListComponent:GetWeaponSwayParams() end

---@return number
function UUAECharacterAnimListComponent:GetStandbyTimeOver() end

---@return boolean
function UUAECharacterAnimListComponent:IsAnimListMapEmpty() end

---@param LoadingParam FAsyncLoadCharAnimParams
function UUAECharacterAnimListComponent:OnAsyncLoadingFinished(LoadingParam) end

---@param LoadPrarm FDynamicLoadinigAnimAsynLoadParam
---@param TempPath FSoftObjectPath
function UUAECharacterAnimListComponent:OnDynamicAnimAsyncLoadingFinished(LoadPrarm, TempPath) end

---对某层的某个枚举替换强引用(资源仅是临时存放在组件的某 ChildLayer 下的 AnimListMapValue) *
---@param NewAnimAsset UAnimationAsset
---@param AnimLayer EAnimLayerType
---@param ListType ECharaAnimListType
---@param AnimType ECharacterAnimType
---@param PoseType ECharacterPoseType
function UUAECharacterAnimListComponent:AddOneAnimToLayer(NewAnimAsset, AnimLayer, ListType, AnimType, PoseType) end

---@param RemovedAnimAsset UAnimationAsset
---@param AnimLayer EAnimLayerType
---@param ListType ECharaAnimListType
---@param AnimType ECharacterAnimType
---@param PoseType ECharacterPoseType
function UUAECharacterAnimListComponent:RemoveOneAnimFromLayer(RemovedAnimAsset, AnimLayer, ListType, AnimType, PoseType) end

---@param NewAnimAsset UAnimationAsset
---@param AnimLayer EAnimLayerType
---@param WeaponAnimType ECharWeaponAnimType
---@param PoseType ECharacterPoseType
---@param AnimListOverride ECharaAnimListType
function UUAECharacterAnimListComponent:AddOneAnimToLayer_Weapon(NewAnimAsset, AnimLayer, WeaponAnimType, PoseType, AnimListOverride) end

---@param RemovedAnimAsset UAnimationAsset
---@param AnimLayer EAnimLayerType
---@param WeaponAnimType ECharWeaponAnimType
---@param PoseType ECharacterPoseType
---@param AnimListOverride ECharaAnimListType
function UUAECharacterAnimListComponent:RemoveOneAnimToLayer_Weapon(RemovedAnimAsset, AnimLayer, WeaponAnimType, PoseType, AnimListOverride) end

function UUAECharacterAnimListComponent:InitAnimNotifys() end

---@param Context UObject
---@param AnimSequence UAnimSequenceBase
function UUAECharacterAnimListComponent:InitAnimSequenceNotifys(Context, AnimSequence) end

---@param bNewNeedRefresh boolean
function UUAECharacterAnimListComponent:SetNeedRefresh(bNewNeedRefresh) end

---@return boolean
function UUAECharacterAnimListComponent:IsNeedRefresh() end
