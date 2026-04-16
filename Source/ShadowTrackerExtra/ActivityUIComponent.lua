---@meta

---@class FActivityUIConfig
---@field ActivityUIWidget UActivityUIWidget
---@field WidgetName string
---@field OuterName string
---@field bUseContains boolean
---@field LogicManager string
---@field ZOrder number
---@field AnchorData FAnchorData
FActivityUIConfig = {}


---@class FActivityShowUIInfo
---@field ShowUIIndex number
---@field bShow boolean
FActivityShowUIInfo = {}


---@class FActivityUIPlayerInfo
---@field bAddUIStyle boolean
---@field UIStyleIndex ULuaArrayHelper<number>
---@field ShowUIInfo ULuaArrayHelper<FActivityShowUIInfo>
FActivityUIPlayerInfo = {}


---@class FOnActivityUIShow : ULuaMulticastDelegate
FOnActivityUIShow = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UIIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActivityUIShow:Add(Callback, Obj) end

---触发 Lua 广播
---@param UIIndex number
function FOnActivityUIShow:Broadcast(UIIndex) end


---@class FOnActivityUIHiden : ULuaMulticastDelegate
FOnActivityUIHiden = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UIIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActivityUIHiden:Add(Callback, Obj) end

---触发 Lua 广播
---@param UIIndex number
function FOnActivityUIHiden:Broadcast(UIIndex) end


---@class UActivityUIComponent: UActorComponent
---@field OnActivityUIShow FOnActivityUIShow
---@field OnActivityUIHiden FOnActivityUIHiden
---@field bUseMinMap boolean
---@field TempAlertData FMarkSyncData
---@field PossessUIs ULuaMapHelper<number, FActivityUIConfig>
---@field ExtraUserWidgetStyles ULuaArrayHelper<UUserWidgetStyle>
---@field PlayerInfo ULuaArrayHelper<FActivityUIPlayerInfo>
---@field bClientPerLoadUIClass boolean
local UActivityUIComponent = {}

---@param PC ASTExtraPlayerController
---@param Index number
---@param bNetForce boolean
function UActivityUIComponent:ShowUI(PC, Index, bNetForce) end

---@param PC ASTExtraPlayerController
---@param Index number
---@param bNetForce boolean
function UActivityUIComponent:HideUI(PC, Index, bNetForce) end

---@param CallFunctionName string
---@param UIIndex number
function UActivityUIComponent:HandleUIMsg(CallFunctionName, UIIndex) end

---@param PC ASTExtraPlayerController
---@param StyleIndex number
function UActivityUIComponent:AddUIStyle(PC, StyleIndex) end

---@param PC ASTExtraPlayerController
---@param StyleIndex number
function UActivityUIComponent:RemoveUIStyle(PC, StyleIndex) end

---@param UIIndex number
function UActivityUIComponent:OnUIAsyncLoadingFinished(UIIndex) end

function UActivityUIComponent:OnRep_PlayerInfo() end

---@param UIIndex number
function UActivityUIComponent:OnUIClassAsyncLoadingFinished(UIIndex) end
