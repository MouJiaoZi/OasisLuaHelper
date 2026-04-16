---@meta

---Fires when a particle is spawned
---@class FParticleSpawnSignature : ULuaMulticastDelegate
FParticleSpawnSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventName: string, EmitterTime: number, Location: FVector, Velocity: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FParticleSpawnSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventName string
---@param EmitterTime number
---@param Location FVector
---@param Velocity FVector
function FParticleSpawnSignature:Broadcast(EventName, EmitterTime, Location, Velocity) end


---Fires when a particle system bursts
---@class FParticleBurstSignature : ULuaMulticastDelegate
FParticleBurstSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventName: string, EmitterTime: number, ParticleCount: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FParticleBurstSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventName string
---@param EmitterTime number
---@param ParticleCount number
function FParticleBurstSignature:Broadcast(EventName, EmitterTime, ParticleCount) end


---Fires when a particle dies
---@class FParticleDeathSignature : ULuaMulticastDelegate
FParticleDeathSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventName: string, EmitterTime: number, ParticleTime: number, Location: FVector, Velocity: FVector, Direction: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FParticleDeathSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventName string
---@param EmitterTime number
---@param ParticleTime number
---@param Location FVector
---@param Velocity FVector
---@param Direction FVector
function FParticleDeathSignature:Broadcast(EventName, EmitterTime, ParticleTime, Location, Velocity, Direction) end


---Fires when a particle dies
---@class FParticleCollisionSignature : ULuaMulticastDelegate
FParticleCollisionSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventName: string, EmitterTime: number, ParticleTime: number, Location: FVector, Velocity: FVector, Direction: FVector, Normal: FVector, BoneName: string, PhysMat: UPhysicalMaterial) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FParticleCollisionSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventName string
---@param EmitterTime number
---@param ParticleTime number
---@param Location FVector
---@param Velocity FVector
---@param Direction FVector
---@param Normal FVector
---@param BoneName string
---@param PhysMat UPhysicalMaterial
function FParticleCollisionSignature:Broadcast(EventName, EmitterTime, ParticleTime, Location, Velocity, Direction, Normal, BoneName, PhysMat) end


---@class AEmitter: AActor
---@field bDestroyOnSystemFinish number
---@field bPostUpdateTickGroup number
---@field bCurrentlyActive number @used to update status of toggleable level placed emitters on clients
---@field OnParticleSpawn FParticleSpawnSignature
---@field OnParticleBurst FParticleBurstSignature
---@field OnParticleDeath FParticleDeathSignature
---@field OnParticleCollide FParticleCollisionSignature
local AEmitter = {}

---@param FinishedComponent UParticleSystemComponent
function AEmitter:OnParticleSystemFinished(FinishedComponent) end

---Replication Notification Callbacks
function AEmitter:OnRep_bCurrentlyActive() end

function AEmitter:Activate() end

function AEmitter:Deactivate() end

function AEmitter:ToggleActive() end

---@return boolean
function AEmitter:IsActive() end

---@param NewTemplate UParticleSystem
function AEmitter:SetTemplate(NewTemplate) end

---@param ParameterName string
---@param Param number
function AEmitter:SetFloatParameter(ParameterName, Param) end

---@param ParameterName string
---@param Param FVector
function AEmitter:SetVectorParameter(ParameterName, Param) end

---@param ParameterName string
---@param Param FLinearColor
function AEmitter:SetColorParameter(ParameterName, Param) end

---@param ParameterName string
---@param Param AActor
function AEmitter:SetActorParameter(ParameterName, Param) end

---@param ParameterName string
---@param Param UMaterialInterface
function AEmitter:SetMaterialParameter(ParameterName, Param) end
