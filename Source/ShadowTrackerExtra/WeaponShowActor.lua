---@meta

---@class FLobbyWeaponEmoteMontageBeginDelegate : ULuaMulticastDelegate
FLobbyWeaponEmoteMontageBeginDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyWeaponEmoteMontageBeginDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
function FLobbyWeaponEmoteMontageBeginDelegate:Broadcast(EmoteIndex) end


---@class FIdleStateChangeDelegate : ULuaMulticastDelegate
FIdleStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, StateId: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FIdleStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param StateId number
function FIdleStateChangeDelegate:Broadcast(StateId) end


---@class FLobbyWeaponEmoteMontageFinishedDelegate : ULuaMulticastDelegate
FLobbyWeaponEmoteMontageFinishedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyWeaponEmoteMontageFinishedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteIndex number
function FLobbyWeaponEmoteMontageFinishedDelegate:Broadcast(EmoteIndex) end


---@class FWeaponRotatingEvent : ULuaSingleDelegate
FWeaponRotatingEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponRotatingEvent:Bind(Callback, Obj) end

---执行委托
function FWeaponRotatingEvent:Execute() end


---@class FWeaponRotateEndEvent : ULuaSingleDelegate
FWeaponRotateEndEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponRotateEndEvent:Bind(Callback, Obj) end

---执行委托
function FWeaponRotateEndEvent:Execute() end


---@class AWeaponShowActor: AActor
---@field DepotItemDataTablePathString string
---@field SocketForParticle string
---@field WeaponParticle UParticleSystem
---@field OffsetTrans FTransform
---@field CppDsttag string
---@field OnIdleStateChangeDelegate FIdleStateChangeDelegate
---@field EmoteMontageFinishedEvent FLobbyWeaponEmoteMontageFinishedDelegate
---@field EmoteMontageBeginEvent FLobbyWeaponEmoteMontageBeginDelegate
---@field CurIdleState number
---@field TotalIdleStateNum number
---@field CurIdleStateTime number
---@field bIsInIdleState boolean
---@field bIsResumeIdleState boolean
---@field CurWeaponIdleStateArray ULuaArrayHelper<FLobbyWeaponIdleState>
---@field RotatingEvent FWeaponRotatingEvent
---@field RotateEndEvent FWeaponRotateEndEvent
---@field CurrentRotateThreshold number
---@field RotatedPixProduct number
---@field RotateThresholdMin number
---@field RotateThresholdMax number
---@field CurFPSMax number
---@field CurFPSMin number
local AWeaponShowActor = {}

function AWeaponShowActor:ClearAndStopParticle() end

---@param ParticleID number
---@param WeaponActorForCpp ASTExtraWeapon
---@param InTransform FTransform
function AWeaponShowActor:ApplyParticle(ParticleID, WeaponActorForCpp, InTransform) end

---@param WeaponActorForCpp ASTExtraWeapon
---@param path string
---@param ignoreParticle boolean
function AWeaponShowActor:PlayWeaponMontage(WeaponActorForCpp, path, ignoreParticle) end

---@param WeaponActorForCpp ASTExtraWeapon
---@param path string
function AWeaponShowActor:StopWeaponMontage(WeaponActorForCpp, path) end

---@param WeaponActorForCpp ASTExtraWeapon
function AWeaponShowActor:SetWeaponIdle(WeaponActorForCpp) end

---@param Handle UBackpackWeaponHandle
function AWeaponShowActor:SetWeaponhandle(Handle) end

---@param SoftObjPtr UObject
---@return string
function AWeaponShowActor:GetSoftPtrPath(SoftObjPtr) end

---@param socket string
---@param particle UParticleSystem
---@param offset FTransform
function AWeaponShowActor:SetWeaponParticle(socket, particle, offset) end

---@param bIsIn boolean
---@param StateIndex number
function AWeaponShowActor:EnterIdleStateOrNot(bIsIn, StateIndex) end

---@param bIsResume boolean
function AWeaponShowActor:ResumeIdleStateOrNot(bIsResume) end

function AWeaponShowActor:InitWeaponIdleStateInfo() end

function AWeaponShowActor:SetWeaponIdleStateAnim() end

---@return boolean
function AWeaponShowActor:GetWeaponIsPlayingMontage() end

---@return boolean
function AWeaponShowActor:GetLOD00State() end

---@param emoteID number
---@param bIsLoop boolean
---@return boolean
function AWeaponShowActor:PlayWeaponEmote(emoteID, bIsLoop) end

---@return boolean
function AWeaponShowActor:StopPlayWeaponEmote() end

---@return boolean
function AWeaponShowActor:DestroySeqHelperActor() end

function AWeaponShowActor:OnRotatingEventTrigger() end

function AWeaponShowActor:OnRotateStoppedEventTrigger() end

function AWeaponShowActor:UpdateCurrentRotateThreshold() end

function AWeaponShowActor:OnFpsChanged() end
