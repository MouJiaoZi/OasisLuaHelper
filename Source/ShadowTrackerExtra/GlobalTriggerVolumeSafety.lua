---@meta

---@class EGlobaleTriggerVolumeSafety
---@field Box number
---@field Sphere number
---@field Capsule number
---@field Custom number
EGlobaleTriggerVolumeSafety = {}


---@class FOnTriggerOverlapEvent : ULuaMulticastDelegate
FOnTriggerOverlapEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TriggerActor: AActor, EntorActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTriggerOverlapEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param TriggerActor AActor
---@param EntorActor AActor
function FOnTriggerOverlapEvent:Broadcast(TriggerActor, EntorActor) end


---@class AGlobalTriggerVolumeSafety: AActor
---@field bActive boolean
---@field TriggerShapeType EGlobaleTriggerVolumeSafety
---@field TriggerShapeCustomClass AActor
---@field TriggerActorClass ULuaArrayHelper<AActor>
---@field TriggerChildActor AActor
---@field MaxLeaveVolumeDistance number
---@field CheckLeaveInterval number
---@field OnTriggerEnterDelegate FOnTriggerOverlapEvent
---@field OnTriggerExitDelegate FOnTriggerOverlapEvent
---@field OverlappedActorInVolume ULuaArrayHelper<AActor>
---@field PendingOverlapActorInVolume ULuaArrayHelper<AActor>
local AGlobalTriggerVolumeSafety = {}

function AGlobalTriggerVolumeSafety:RefreshChildTrigger() end

---@param OverlappedActor AActor
---@param Other AActor
function AGlobalTriggerVolumeSafety:OnTriggerEnter(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function AGlobalTriggerVolumeSafety:OnTriggerExit(OverlappedActor, Other) end

---@param TriggerActor AActor
---@param EntorActor AActor
function AGlobalTriggerVolumeSafety:OnTriggerEnterEvent(TriggerActor, EntorActor) end

---@param TriggerActor AActor
---@param LeaveActor AActor
function AGlobalTriggerVolumeSafety:OnTriggerExitEvent(TriggerActor, LeaveActor) end

---@param actor AActor
---@return boolean
function AGlobalTriggerVolumeSafety:IsActorInVolume(actor) end

---@param actor AActor
---@return number
function AGlobalTriggerVolumeSafety:GetVolumeCountOfActor(actor) end

function AGlobalTriggerVolumeSafety:CheckActorLeaveVolume() end

---@param bInActive boolean
function AGlobalTriggerVolumeSafety:ToggleActive(bInActive) end
