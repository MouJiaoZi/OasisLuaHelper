---@meta

---@class FPawnStateSwimmingUsingWeaponConfig
---@field bAllowApplierOnly boolean
---@field bAllowOnWaterSurfaceOnly boolean
---@field bCheckOnlyOnServer boolean
FPawnStateSwimmingUsingWeaponConfig = {}


---@class FOnOwnerWeaponEquippedDelegate : ULuaMulticastDelegate
FOnOwnerWeaponEquippedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bEquip: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOwnerWeaponEquippedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bEquip boolean
function FOnOwnerWeaponEquippedDelegate:Broadcast(bEquip) end


---@class UPawnStateOverrider_SwimmingUsingWeapon: UPawnStateRelationOverrider
---@field PawnStateConfigs ULuaMapHelper<EPawnState, FPawnStateSwimmingUsingWeaponConfig>
local UPawnStateOverrider_SwimmingUsingWeapon = {}


---@class UWeaponSwimmingUsingComponent: UWeaponLogicBaseComponent
---@field PawnStateOverriderClass UPawnStateOverrider_SwimmingUsingWeapon
---@field SwimmingAnimListClass UUAEAnimListComponentBase
---@field SwimmingAnimLayer EAnimLayerType
---@field TPPCameraOffset FCameraOffsetData
local UWeaponSwimmingUsingComponent = {}

---@param bAdd boolean
function UWeaponSwimmingUsingComponent:SetupSwimmingAnimChildList(bAdd) end

---@param bAdd boolean
function UWeaponSwimmingUsingComponent:RequestSetupSwimmingUsingAnimList(bAdd) end

function UWeaponSwimmingUsingComponent:HandleSwimmingAnimListSetup() end

---@param State EPawnState
function UWeaponSwimmingUsingComponent:HandlePlayerLeaveWater(State) end

---@param State EPawnState
function UWeaponSwimmingUsingComponent:HandlePlayerEnterWater(State) end

---@param Weapon ASTExtraWeapon
function UWeaponSwimmingUsingComponent:PostWeaponAnimListSetup(Weapon) end

---@param AnimListGroup string
function UWeaponSwimmingUsingComponent:PostWeaponAnimListRegistered(AnimListGroup) end
