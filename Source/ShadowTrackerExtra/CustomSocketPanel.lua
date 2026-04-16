---@meta

---@class FChildPendingActiveWidget
---@field ChildWidgetClass UUAEUserWidget
---@field WidgetTreeNameToAssign string
---@field Anchor FAnchorData
---@field bAutoSize boolean
---@field ZOrder number
---@field ModeUIList ULuaArrayHelper<string>
---@field bDefaultCreate boolean
---@field bDefaultCreateOnPC boolean
---@field bCheckIfMenuOpen boolean
---@field MenuID number
FChildPendingActiveWidget = {}


---@class FCustomSockPanelDelegate : ULuaSingleDelegate
FCustomSockPanelDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomSockPanelDelegate:Bind(Callback, Obj) end

---执行委托
function FCustomSockPanelDelegate:Execute() end


---@class FOnCustomSockPanelWidgetCreated : ULuaMulticastDelegate
FOnCustomSockPanelWidgetCreated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CreatedWidget: UUAEUserWidget) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCustomSockPanelWidgetCreated:Add(Callback, Obj) end

---触发 Lua 广播
---@param CreatedWidget UUAEUserWidget
function FOnCustomSockPanelWidgetCreated:Broadcast(CreatedWidget) end


---@class UCustomSocketPanel: UCanvasPanel
---@field ChildPendingWidget FChildPendingActiveWidget
---@field SeeIt boolean
---@field bPassEventToChild boolean
---@field CustomWidget UUAEUserWidget
---@field CompleteDelegate FCustomSockPanelDelegate
---@field OnWidgetCreated FOnCustomSockPanelWidgetCreated
local UCustomSocketPanel = {}

---@param ModeUIList ULuaArrayHelper<string>
function UCustomSocketPanel:ActivateSocket(ModeUIList) end

---@param DelegateToCall FCustomSockPanelDelegate
function UCustomSocketPanel:ActivateSocketASync(DelegateToCall) end

function UCustomSocketPanel:ActivateSocketASyncOnInit() end

function UCustomSocketPanel:ActivateSocketASyncByModeNoCall() end

function UCustomSocketPanel:OnLoadFinished() end

function UCustomSocketPanel:OnLoadFinishedOnInit() end
