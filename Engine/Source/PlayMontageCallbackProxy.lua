---@meta

---@class FOnMontagePlayDelegate : ULuaMulticastDelegate
FOnMontagePlayDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NotifyName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontagePlayDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NotifyName string
function FOnMontagePlayDelegate:Broadcast(NotifyName) end


---@class UPlayMontageCallbackProxy: UObject
---@field OnCompleted FOnMontagePlayDelegate
---@field OnBlendOut FOnMontagePlayDelegate
---@field OnInterrupted FOnMontagePlayDelegate
---@field OnNotifyBegin FOnMontagePlayDelegate
---@field OnNotifyEnd FOnMontagePlayDelegate
local UPlayMontageCallbackProxy = {}

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UPlayMontageCallbackProxy:OnMontageBlendingOut(Montage, bInterrupted) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UPlayMontageCallbackProxy:OnMontageEnded(Montage, bInterrupted) end

---@param NotifyName string
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UPlayMontageCallbackProxy:OnNotifyBeginReceived(NotifyName, BranchingPointNotifyPayload) end

---@param NotifyName string
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UPlayMontageCallbackProxy:OnNotifyEndReceived(NotifyName, BranchingPointNotifyPayload) end
