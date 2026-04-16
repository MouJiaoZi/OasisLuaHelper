---@meta

---@class FOnRocketLaunch : ULuaSingleDelegate
FOnRocketLaunch = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRocketLaunch:Bind(Callback, Obj) end

---执行委托
function FOnRocketLaunch:Execute() end


---@class FOnRocketStop : ULuaSingleDelegate
FOnRocketStop = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRocketStop:Bind(Callback, Obj) end

---执行委托
function FOnRocketStop:Execute() end


---@class FOnCountdownStateChange : ULuaMulticastDelegate
FOnCountdownStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bStartOrStop: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCountdownStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bStartOrStop boolean
function FOnCountdownStateChange:Broadcast(bStartOrStop) end


---@class FOnCountdownOver : ULuaSingleDelegate
FOnCountdownOver = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCountdownOver:Bind(Callback, Obj) end

---执行委托
function FOnCountdownOver:Execute() end


---@class AActivityNewYearRocketBase: AActivityBaseActor
---@field OnRocketLaunch FOnRocketLaunch
---@field OnRocketStop FOnRocketStop
---@field OnCountdownStateChange FOnCountdownStateChange
---@field OnCountdownOver FOnCountdownOver
---@field bLaunchingRocket boolean
---@field bUseTheFlyRocket boolean
---@field LaunchingDir FVector
---@field SyncCountdown number
---@field bStartCountdown boolean
---@field LaunchCountdown number
---@field CountdownSyncInterval number
---@field bRepCountdown boolean
---@field HeightOfOutRocket number
---@field BlueCircleRadiusPercent number
---@field PlayerOffset number
---@field CacheCharacters ULuaArrayHelper<AActor>
local AActivityNewYearRocketBase = {}

function AActivityNewYearRocketBase:LaunchRocket() end

function AActivityNewYearRocketBase:StopRocket() end

function AActivityNewYearRocketBase:OnRep_SyncCountdown() end

function AActivityNewYearRocketBase:OnRep_bStartCountdown() end

function AActivityNewYearRocketBase:StartCountdown() end

---@return number
function AActivityNewYearRocketBase:GetCurrentCountdown() end

---@param bResetTime boolean
function AActivityNewYearRocketBase:StopCountdown(bResetTime) end

function AActivityNewYearRocketBase:ResetCountdown() end

---@param Actor AActor
---@param bSet boolean
function AActivityNewYearRocketBase:SetShouldDumpCallstackWhenMovingfast(Actor, bSet) end

function AActivityNewYearRocketBase:GetOutPoint() end
