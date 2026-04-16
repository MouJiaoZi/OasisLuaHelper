---@meta

---@class FMontageWaitSimpleDelegate : ULuaSingleDelegate
FMontageWaitSimpleDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMontageWaitSimpleDelegate:Bind(Callback, Obj) end

---执行委托
function FMontageWaitSimpleDelegate:Execute() end


---@class UGameplayTask_PlayMontageAndWait: UUAEGameplayTask
---@field OnCompleted FMontageWaitSimpleDelegate
---@field OnBlendOut FMontageWaitSimpleDelegate
---@field OnInterrupted FMontageWaitSimpleDelegate
---@field bStopWhenAbilityEnds boolean
local UGameplayTask_PlayMontageAndWait = {}

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UGameplayTask_PlayMontageAndWait:OnMontageBlendingOut(Montage, bInterrupted) end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function UGameplayTask_PlayMontageAndWait:OnMontageEnded(Montage, bInterrupted) end
