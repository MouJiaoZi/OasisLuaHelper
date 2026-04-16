---@meta

---@class FOnNavigationPathUpdated : ULuaMulticastDelegate
FOnNavigationPathUpdated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AffectedPath: UNavigationPath, PathEvent: ENavPathEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNavigationPathUpdated:Add(Callback, Obj) end

---触发 Lua 广播
---@param AffectedPath UNavigationPath
---@param PathEvent ENavPathEvent
function FOnNavigationPathUpdated:Broadcast(AffectedPath, PathEvent) end


---UObject wrapper for FNavigationPath
---@class UNavigationPath: UObject
---@field PathUpdatedNotifier FOnNavigationPathUpdated
---@field PathPoints ULuaArrayHelper<FVector>
---@field RecalculateOnInvalidation ENavigationOptionFlag
local UNavigationPath = {}

---@return string
function UNavigationPath:GetDebugString() end

---@param bShouldDrawDebugData boolean
---@param PathColor FLinearColor
function UNavigationPath:EnableDebugDrawing(bShouldDrawDebugData, PathColor) end

---if enabled path will request recalculation if it gets invalidated due to a change to underlying navigation
---@param DoRecalculation ENavigationOptionFlag
function UNavigationPath:EnableRecalculationOnInvalidation(DoRecalculation) end

---@return number
function UNavigationPath:GetPathLength() end

---@return number
function UNavigationPath:GetPathCost() end

---@return boolean
function UNavigationPath:IsPartial() end

---@return boolean
function UNavigationPath:IsValid() end

---@return boolean
function UNavigationPath:IsStringPulled() end
