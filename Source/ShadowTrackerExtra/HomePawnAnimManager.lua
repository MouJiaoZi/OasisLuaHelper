---@meta

---@class FOnSwitchToNewPawnStateAnim : ULuaMulticastDelegate
FOnSwitchToNewPawnStateAnim = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewPawnState: EHomePawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSwitchToNewPawnStateAnim:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewPawnState EHomePawnState
function FOnSwitchToNewPawnStateAnim:Broadcast(NewPawnState) end


---@class UHomePawnAnimManager: UActorComponent
---@field BaseMovementAnim UAnimInstance
---@field HomeMovementAnim UAnimInstance
---@field BaseFallingAnim UAnimInstance
---@field HomeFallingAnim UAnimInstance
---@field OnSwitchToNewPawnStateAnim FOnSwitchToNewPawnStateAnim
local UHomePawnAnimManager = {}

---@param eNewState EHomePawnState
function UHomePawnAnimManager:SwitchToBuildGroundAnim(eNewState) end

---@param eNewState EHomePawnState
function UHomePawnAnimManager:SwitchToFlyAnim(eNewState) end

---@param eNewState EHomePawnState
function UHomePawnAnimManager:SwitchToClassicAnim(eNewState) end
