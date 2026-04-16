---@meta

---@class FPostEvaluateAnimEvent : ULuaSingleDelegate
FPostEvaluateAnimEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPostEvaluateAnimEvent:Bind(Callback, Obj) end

---执行委托
function FPostEvaluateAnimEvent:Execute() end


---@class FOnAnimSinglePlayAnim : ULuaMulticastDelegate
FOnAnimSinglePlayAnim = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AnimAsset: UAnimationAsset, bPlay: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAnimSinglePlayAnim:Add(Callback, Obj) end

---触发 Lua 广播
---@param AnimAsset UAnimationAsset
---@param bPlay boolean
function FOnAnimSinglePlayAnim:Broadcast(AnimAsset, bPlay) end


---@class UAnimSingleNodeInstance: UAnimInstance
---@field PostEvaluateAnimEvent FPostEvaluateAnimEvent
---@field OnAnimSinglePlayAnim FOnAnimSinglePlayAnim
local UAnimSingleNodeInstance = {}

---@param bIsLooping boolean
function UAnimSingleNodeInstance:SetLooping(bIsLooping) end

---@param InPlayRate number
function UAnimSingleNodeInstance:SetPlayRate(InPlayRate) end

---@param bInReverse boolean
function UAnimSingleNodeInstance:SetReverse(bInReverse) end

---@param InPosition number
---@param bFireNotifies boolean
function UAnimSingleNodeInstance:SetPosition(InPosition, bFireNotifies) end

---@param InPosition number
---@param InPreviousTime number
---@param bFireNotifies boolean
function UAnimSingleNodeInstance:SetPositionWithPreviousTime(InPosition, InPreviousTime, bFireNotifies) end

---@param InBlendInput FVector
function UAnimSingleNodeInstance:SetBlendSpaceInput(InBlendInput) end

---@param bIsPlaying boolean
function UAnimSingleNodeInstance:SetPlaying(bIsPlaying) end

---@return number
function UAnimSingleNodeInstance:GetLength() end

---@param bIsLooping boolean
---@param InPlayRate number
---@param InStartPosition number
function UAnimSingleNodeInstance:PlayAnim(bIsLooping, InPlayRate, InStartPosition) end

function UAnimSingleNodeInstance:StopAnim() end

---Set New Asset - calls InitializeAnimation, for now we need MeshComponent *
---@param NewAsset UAnimationAsset
---@param bIsLooping boolean
---@param InPlayRate number
function UAnimSingleNodeInstance:SetAnimationAsset(NewAsset, bIsLooping, InPlayRate) end

---Set pose value
---@param PoseName string
---@param Value number
---@param bRemoveIfZero boolean
function UAnimSingleNodeInstance:SetPreviewCurveOverride(PoseName, Value, bRemoveIfZero) end
