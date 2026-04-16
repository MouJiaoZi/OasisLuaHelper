---@meta

---@class FCharAdditionalWeaponSwitchAnimData
---@field AnimType ECharacterAdditionalWeaponSwitchAnimType
---@field AnimTypeName string
---@field PoseAnim_Stand FChararacterPoseAnimData
---@field PoseAnim_Crouch FChararacterPoseAnimData
---@field PoseAnim_Prone FChararacterPoseAnimData
FCharAdditionalWeaponSwitchAnimData = {}


---@class FCharAdditionalWeaponSwitchAnimAsynLoadParam
FCharAdditionalWeaponSwitchAnimAsynLoadParam = {}


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


---@class UUAECharAdditionalWeaponAnimListComponent: UUAECharAnimListCompBase
---@field CharacterAdditionalWeaponSwitchAnimEditList ULuaArrayHelper<FCharAdditionalWeaponSwitchAnimData>
---@field CharacterAdditionalWeaponSwitchAnimEditListNewFPP ULuaArrayHelper<FCharAdditionalWeaponSwitchAnimData>
---@field AnimListEditMap ULuaMapHelper<number, FAnimListMapValueData>
---@field CurrentIsTPP boolean
---@field CurrentHoldShield boolean
---@field bNeedRefresh boolean
local UUAECharAdditionalWeaponAnimListComponent = {}

function UUAECharAdditionalWeaponAnimListComponent:InitDefaultData() end

function UUAECharAdditionalWeaponAnimListComponent:InitDefaultDataForRuntimeCreate() end

---@param LoadingParam FAsyncLoadCharAnimParams
function UUAECharAdditionalWeaponAnimListComponent:OnAsyncLoadingFinished(LoadingParam) end
