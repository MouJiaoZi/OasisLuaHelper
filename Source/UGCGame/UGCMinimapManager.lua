---@meta

---@class FOnUGCMapMarkVisibilityChanged : ULuaMulticastDelegate
FOnUGCMapMarkVisibilityChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ResID: number, InVisibility: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMapMarkVisibilityChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param ResID number
---@param InVisibility boolean
function FOnUGCMapMarkVisibilityChanged:Broadcast(ResID, InVisibility) end


---@class FOnUGCMapMarkDetailsShow : ULuaMulticastDelegate
FOnUGCMapMarkDetailsShow = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ResID: number, MarkInstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMapMarkDetailsShow:Add(Callback, Obj) end

---触发 Lua 广播
---@param ResID number
---@param MarkInstanceID number
function FOnUGCMapMarkDetailsShow:Broadcast(ResID, MarkInstanceID) end


---@class FOnUGCMapMarkShortcutButtonClicked : ULuaMulticastDelegate
FOnUGCMapMarkShortcutButtonClicked = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MarkInstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMapMarkShortcutButtonClicked:Add(Callback, Obj) end

---触发 Lua 广播
---@param MarkInstanceID number
function FOnUGCMapMarkShortcutButtonClicked:Broadcast(MarkInstanceID) end


---@class FOnUGCMapMarkAdded : ULuaMulticastDelegate
FOnUGCMapMarkAdded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MarkInstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMapMarkAdded:Add(Callback, Obj) end

---触发 Lua 广播
---@param MarkInstanceID number
function FOnUGCMapMarkAdded:Broadcast(MarkInstanceID) end


---@class FOnUGCMapMarkRemoved : ULuaMulticastDelegate
FOnUGCMapMarkRemoved = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MarkInstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMapMarkRemoved:Add(Callback, Obj) end

---触发 Lua 广播
---@param MarkInstanceID number
function FOnUGCMapMarkRemoved:Broadcast(MarkInstanceID) end


---@class AUGCMinimapManager: AActor, IUGCGamePartGlobalActorInterface, ILuaInterface
---@field OnUGCMapMarkVisibilityChangedEvent FOnUGCMapMarkVisibilityChanged
---@field OnUGCMapMarkDetailsShowEvent FOnUGCMapMarkDetailsShow
---@field OnUGCMapMarkShortcutButtonClickedEvent FOnUGCMapMarkShortcutButtonClicked
---@field OnUGCMapMarkAddedEvent FOnUGCMapMarkAdded
---@field OnUGCMapMarkRemovedEvent FOnUGCMapMarkRemoved
local AUGCMinimapManager = {}

---@return string
function AUGCMinimapManager:GetLuaModule() end

---@param InMapID number
function AUGCMinimapManager:ChangeMapByMapID(InMapID) end

---@return number
function AUGCMinimapManager:GetCurrentMapID() end

---@param MarkResID number
---@param InVisibility boolean
function AUGCMinimapManager:SetUGCMapMarkVisibility(MarkResID, InVisibility) end

---@param ResID number
---@param MarkInstanceID number
function AUGCMinimapManager:ShowMapMarkDetails(ResID, MarkInstanceID) end

---@param MarkInstanceID number
function AUGCMinimapManager:ExecuteMapMarkShortcutAction(MarkInstanceID) end

---绘制标点线(仅客户端)
---@param Points ULuaArrayHelper<FVector>
---@param bClearPrevious boolean
---@param InTrailHandle number
---@param GuidePathMaterial UObject
---@param TrailWidth number
---@param ArrowLength number
---@return number
function AUGCMinimapManager:DrawTrailMark(Points, bClearPrevious, InTrailHandle, GuidePathMaterial, TrailWidth, ArrowLength) end

---回收标点线(仅客户端)
---@param InTrailHandle number
function AUGCMinimapManager:ClearTrailMark(InTrailHandle) end

---@param InMapID number
function AUGCMinimapManager:SetCurrentMapID(InMapID) end

---@param InPlayerController ASTExtraPlayerController
function AUGCMinimapManager:InitUGCMinimapMarkConfig(InPlayerController) end
