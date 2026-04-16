---@meta

---@class FOnPreStartPlayEvent : ULuaSingleDelegate
FOnPreStartPlayEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreStartPlayEvent:Bind(Callback, Obj) end

---执行委托
function FOnPreStartPlayEvent:Execute() end


---@class FOnStartPlayInnerEvent : ULuaSingleDelegate
FOnStartPlayInnerEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStartPlayInnerEvent:Bind(Callback, Obj) end

---执行委托
function FOnStartPlayInnerEvent:Execute() end


---@class FOnStopPlayEvent : ULuaSingleDelegate
FOnStopPlayEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStopPlayEvent:Bind(Callback, Obj) end

---执行委托
function FOnStopPlayEvent:Execute() end


---@class FOnCompareFinish : ULuaMulticastDelegate
FOnCompareFinish = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsEqual: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCompareFinish:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsEqual boolean
function FOnCompareFinish:Broadcast(bIsEqual) end


---@class FOnTickDebugError : ULuaMulticastDelegate
FOnTickDebugError = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ErrorMessage: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTickDebugError:Add(Callback, Obj) end

---触发 Lua 广播
---@param ErrorMessage string
function FOnTickDebugError:Broadcast(ErrorMessage) end


---@class URecoderData_Script: UObject
---@field LuaPath string
local URecoderData_Script = {}

---@param PC ASTExtraPlayerController
function URecoderData_Script:Init(PC) end

---@param PC ASTExtraPlayerController
function URecoderData_Script:StartPlay(PC) end

function URecoderData_Script:OnFinsh() end

---@param DelatTime number
---@param AddtiveTime number
---@param CurrentFrame number
function URecoderData_Script:Tick(DelatTime, AddtiveTime, CurrentFrame) end


---@class UInputRecordComponent: UActorComponent
---@field OnPreStartPlay FOnPreStartPlayEvent
---@field OnStartPlayInner FOnStartPlayInnerEvent
---@field OnStopPlay FOnStopPlayEvent
---@field OnCompareDataFinish FOnCompareFinish
---@field OnTickDebugError FOnTickDebugError
---@field OnServerStartInit FOnStartPlayInnerEvent
---@field FixedRandomStream FRandomStream
---@field FixedFPS number
---@field bShouldSetFPS boolean
---@field AddStartItem ULuaArrayHelper<FStartPlayItemData>
---@field LastFileName string
---@field StartDelayFrame number
---@field DelayInitFrame number
---@field NetObject ULuaArrayHelper<UObject>
local UInputRecordComponent = {}

function UInputRecordComponent:StartRecoder() end

---@param FilePath string
function UInputRecordComponent:StopRecoder(FilePath) end

---@param FilePath string
function UInputRecordComponent:StartPlay(FilePath) end

function UInputRecordComponent:StopPlay() end

---@return string
function UInputRecordComponent:GetContentPath() end

---@return number
function UInputRecordComponent:GetCurrentFrame() end

---@param Postion FVector
---@param ItemData ULuaArrayHelper<FStartPlayItemData>
function UInputRecordComponent:ServerInit_RPC(Postion, ItemData) end

---@param bUse boolean
function UInputRecordComponent:InitForPlay(bUse) end

---@return number
function UInputRecordComponent:FRand() end

---@param seed number
function UInputRecordComponent:InitRandSeed(seed) end

---@param bIsUse boolean
function UInputRecordComponent:UseFixedFPS(bIsUse) end

function UInputRecordComponent:PlayInner() end

function UInputRecordComponent:TickCheckPawn() end
