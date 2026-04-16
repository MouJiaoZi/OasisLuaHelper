---@meta

---@class FOnWeaponAnimInstanceInitDelegate : ULuaSingleDelegate
FOnWeaponAnimInstanceInitDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponAnimInstanceInitDelegate:Bind(Callback, Obj) end

---执行委托
function FOnWeaponAnimInstanceInitDelegate:Execute() end


---@class UWeaponAnimInstance_MeleeWeapon: UAnimInstanceBase
---@field CharacterSocketToBind string
---@field bSwitchIKFeatureOn boolean
---@field EffectorTransform FTransform
---@field bIsNewFPPAnimInstance boolean
---@field OnWeaponAnimInstanceInit FOnWeaponAnimInstanceInitDelegate
local UWeaponAnimInstance_MeleeWeapon = {}
