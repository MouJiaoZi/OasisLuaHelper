---@meta

---@class FFPSMonitorConfigSwitch
---@field bFPSMonitor boolean
---@field FPSCollectInternal number
---@field FPSCollectCountForGroup number
---@field FPSThreshold number
---@field FPSLowActionType number
FFPSMonitorConfigSwitch = {}


---@class FOnFPSConfigSwitchRecv : ULuaMulticastDelegate
FOnFPSConfigSwitchRecv = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, configswitch: FFPSMonitorConfigSwitch) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFPSConfigSwitchRecv:Add(Callback, Obj) end

---触发 Lua 广播
---@param configswitch FFPSMonitorConfigSwitch
function FOnFPSConfigSwitchRecv:Broadcast(configswitch) end


---@class FOnFPSLowWarning : ULuaMulticastDelegate
FOnFPSLowWarning = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, targetFPS: number, currentFPS: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFPSLowWarning:Add(Callback, Obj) end

---触发 Lua 广播
---@param targetFPS number
---@param currentFPS number
function FOnFPSLowWarning:Broadcast(targetFPS, currentFPS) end


---@class UServerSwitchComponent: UActorComponent
---@field OnFPSMonitorConfigSwitchRecv FOnFPSConfigSwitchRecv
---@field OnFPSLowWarning FOnFPSLowWarning
---@field FPSMonitorConfigSwitch FFPSMonitorConfigSwitch
---@field LowFPSWarningTipsLastTime number
---@field FPSLowWarningSDKMatch ULuaArrayHelper<string>
---@field bLocalSwitcherFPSLowWarning boolean
local UServerSwitchComponent = {}

function UServerSwitchComponent:RequireConfigRPC() end

---@param configswitch FFPSMonitorConfigSwitch
function UServerSwitchComponent:AnswerconfigRPC(configswitch) end

---@param targetFPS number
---@param currentFPS number
function UServerSwitchComponent:MakeLowFPSWarning(targetFPS, currentFPS) end

function UServerSwitchComponent:MakeLowFPSWarningEx() end

function UServerSwitchComponent:CloseFPSCheck() end

---@param renderlevel number
function UServerSwitchComponent:OnUserQualitySettingChanged(renderlevel) end

function UServerSwitchComponent:CountingDown() end
