---@meta

---@class FDetectedActor : ULuaMulticastDelegate
FDetectedActor = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Actor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDetectedActor:Add(Callback, Obj) end

---触发 Lua 广播
---@param Actor AActor
function FDetectedActor:Broadcast(Actor) end


---@class ASTBuildingActor_Detector: ASTBuildingActorBase
---@field WhiteList ULuaArrayHelper<AActor>
---@field iconID number
---@field detectRad number
---@field AlertCDTime number
---@field AlertDuration number
---@field OnDetectedActor FDetectedActor
---@field PlayerStateWeakArray ULuaArrayHelper<ASTExtraPlayerState>
---@field AlertID number
---@field AlertDelayHandle FTimerHandle
---@field OwnerPlayerState ASTExtraPlayerState
local ASTBuildingActor_Detector = {}

---@param OverlappedActor AActor
---@param Other AActor
function ASTBuildingActor_Detector:OnActorOverlapBegin(OverlappedActor, Other) end

---@param Other AActor
function ASTBuildingActor_Detector:EventDetectedActor(Other) end

---@param bDebug boolean
function ASTBuildingActor_Detector:SetDebugRun(bDebug) end

---@param rad number
function ASTBuildingActor_Detector:UpdateNearbyPlayerState(rad) end

function ASTBuildingActor_Detector:ClearAllAlertFromPlayerStates() end
