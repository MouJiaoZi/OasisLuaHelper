---@meta

---@class FOnBulletNumChangedDelegate : ULuaMulticastDelegate
FOnBulletNumChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewNum: number, OldNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletNumChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewNum number
---@param OldNum number
function FOnBulletNumChangedDelegate:Broadcast(NewNum, OldNum) end


---武器功能模块——自定义弹药管理基类，适用于所有不走正常流程由玩家背包管理的武器弹药
---@class UWeaponFunctionModule_CustomBulletManager: UWeaponFunctionModuleBase
---@field BulletDefineID FItemDefineID
---@field OnBulletNumChangedDelegate FOnBulletNumChangedDelegate
local UWeaponFunctionModule_CustomBulletManager = {}

---获取当前换弹消耗的子弹数，并扣除对应子弹
---@param WantReloadNum number
---@return number
function UWeaponFunctionModule_CustomBulletManager:ReloadConsumeBulletNum(WantReloadNum) end

---@return number
function UWeaponFunctionModule_CustomBulletManager:GetAvailableBulletNum() end

---@param NewNum number
---@param OldNum number
function UWeaponFunctionModule_CustomBulletManager:HandleBulletNumChanged(NewNum, OldNum) end
