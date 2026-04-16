---@meta

---@class ECharacterDyingWeaponAnimType
---@field CharDyingWeaponAnim_Move number @倒地持枪移动
---@field CharDyingWeaponAnim_Aim number @倒地持枪瞄准
---@field CharDyingWeaponAnim_Switch number @倒地切出枪械
---@field CharDyingWeaponAnim_MAX number @无
ECharacterDyingWeaponAnimType = {}


---@class FCharDyingWeaponAnimData
---@field AnimType ECharacterDyingWeaponAnimType
---@field AnimTypeName string
FCharDyingWeaponAnimData = {}


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


---@class UUAECharDyingWeaponAnimListComponent: UUAECharAnimListCompBase
---@field CharacterDyingWeaponAnimEditList ULuaArrayHelper<FCharDyingWeaponAnimData>
---@field AnimListEditMap ULuaMapHelper<number, FAnimListMapValueData>
---@field CurrentIsTPP boolean
local UUAECharDyingWeaponAnimListComponent = {}

function UUAECharDyingWeaponAnimListComponent:InitDefaultData() end

function UUAECharDyingWeaponAnimListComponent:InitDefaultDataForRuntimeCreate() end
