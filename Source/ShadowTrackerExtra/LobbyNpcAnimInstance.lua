---@meta

---@class ELobbyNPCAnimState
---@field LobbyNPCAnimState_Empty number @None
---@field LobbyNPCAnimState_Idle number @Idle
---@field LobbyNPCAnimState_DoAnim number @DoAnim
---@field LobbyNPCAnimState_TeamUP number @TeamUP
---@field LobbyNPCAnimState_FirstLogin number @FirstLogin
---@field LobbyNPCAnimState_DoAnimRestart number @DoAnimRestart
ELobbyNPCAnimState = {}


---@class FLobbyNPCOnStateEntered : ULuaMulticastDelegate
FLobbyNPCOnStateEntered = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: ELobbyNPCAnimState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyNPCOnStateEntered:Add(Callback, Obj) end

---触发 Lua 广播
---@param State ELobbyNPCAnimState
function FLobbyNPCOnStateEntered:Broadcast(State) end


---@class FLobbyNPCOnStateLeft : ULuaMulticastDelegate
FLobbyNPCOnStateLeft = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: ELobbyNPCAnimState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyNPCOnStateLeft:Add(Callback, Obj) end

---触发 Lua 广播
---@param State ELobbyNPCAnimState
function FLobbyNPCOnStateLeft:Broadcast(State) end


---@class FLobbyNPCOnDoAnimPlay : ULuaMulticastDelegate
FLobbyNPCOnDoAnimPlay = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AnimType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyNPCOnDoAnimPlay:Add(Callback, Obj) end

---触发 Lua 广播
---@param AnimType number
function FLobbyNPCOnDoAnimPlay:Broadcast(AnimType) end


---@class ULobbyNpcAnimInstance: UAnimInstance
---@field OnStateEnteredEvent FLobbyNPCOnStateEntered
---@field OnStateLeftEvent FLobbyNPCOnStateLeft
---@field OnDoAnimPlayEvent FLobbyNPCOnDoAnimPlay
---@field C_targetState ELobbyNPCAnimState
---@field C_bIsActorShowing boolean
---@field C_idleRandomDuration number
---@field C_animType number
---@field C_DoAnimCounter number
---@field C_OpenRandomSequence boolean
local ULobbyNpcAnimInstance = {}

---@param vTargetState ELobbyNPCAnimState
---@param vCurStateAnim UAnimSequence
---@param vAnimType number
function ULobbyNpcAnimInstance:SetTargetStateInfoNative(vTargetState, vCurStateAnim, vAnimType) end

function ULobbyNpcAnimInstance:ResetStateNative() end

---@return number
function ULobbyNpcAnimInstance:GetIdleSeqLength() end

---@param state ELobbyNPCAnimState
function ULobbyNpcAnimInstance:OnStateEntered_LobbyNPC(state) end

---@param state ELobbyNPCAnimState
function ULobbyNpcAnimInstance:OnStateLeft_LobbyNPC(state) end

---@param AnimType number
function ULobbyNpcAnimInstance:OnDoAnimPlay_LobbyNPC(AnimType) end

---@return ELobbyNPCAnimState
function ULobbyNpcAnimInstance:GetCurDoAnimType() end
