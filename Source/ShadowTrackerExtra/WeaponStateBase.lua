---@meta

---武器状态开始结束代理
---@class FBeginStateDelegate : ULuaSingleDelegate
FBeginStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBeginStateDelegate:Bind(Callback, Obj) end

---执行委托
function FBeginStateDelegate:Execute() end


---@class FEndStateDelegate : ULuaSingleDelegate
FEndStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEndStateDelegate:Bind(Callback, Obj) end

---执行委托
function FEndStateDelegate:Execute() end


---@class UWeaponStateBase: UWeaponLogicBaseComponent
---@field FreshWeaponStateType EFreshWeaponStateType
---@field bCanEnterAnyState boolean
---@field bNeedConditionGateCheck boolean
---@field ConditionGateMap ULuaArrayHelper<EFreshWeaponStateType>
---@field SpesificTargetState EFreshWeaponStateType
---@field bSyncSpesificStateToServer boolean
---@field OnBeginState FBeginStateDelegate
---@field OnEndState FEndStateDelegate
local UWeaponStateBase = {}

---@param LastState EFreshWeaponStateType
---@return boolean
function UWeaponStateBase:CheckCondition(LastState) end

---@param LastStateType EFreshWeaponStateType
---@return boolean
function UWeaponStateBase:BeginState(LastStateType) end

---@param LastStateType EFreshWeaponStateType
function UWeaponStateBase:BPBeginState(LastStateType) end

---@return boolean
function UWeaponStateBase:EndState() end

function UWeaponStateBase:BPEndState() end

---@param DeltaTime number
function UWeaponStateBase:BPTick(DeltaTime) end

---@return boolean
function UWeaponStateBase:TryChangeToSpesificTargetState() end
