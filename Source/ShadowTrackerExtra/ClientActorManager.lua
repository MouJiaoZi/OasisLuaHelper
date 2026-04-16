---@meta

---@class UClientActorManager: UActorComponent
---@field ServerSpawnActorInfoList FCAM_SpawnActorInfoList
---@field ClientSpawnActorInfoList FCAM_SpawnActorInfoList
---@field ActorItemList FCAM_ActorItemList
---@field StateChangeDelegateMap ULuaMapHelper<FCAM_ActorHandle, FCAM_StateChangeDelegateList>
local UClientActorManager = {}

---@param SpawnActorInfo FCAM_SpawnActorInfo
function UClientActorManager:SpawnClientActor(SpawnActorInfo) end

---@param ActorHandle FCAM_ActorHandle
function UClientActorManager:DestroyClientActor(ActorHandle) end

---@param ActorHandle FCAM_ActorHandle
---@param StateChangeDelegate FCAMOnActorStateChange
function UClientActorManager:AddHandleStateChangeDelegate(ActorHandle, StateChangeDelegate) end

---@param ActorHandle FCAM_ActorHandle
---@param StateChangeDelegate FCAMOnActorStateChange
function UClientActorManager:RemoveHandleStateChangeDelegate(ActorHandle, StateChangeDelegate) end

function UClientActorManager:OnSwitchedInDS() end

---@param Actor AActor
---@return boolean
function UClientActorManager:RegisterClientSimulateRelevantActor(Actor) end

---@param Actor AActor
---@return boolean
function UClientActorManager:UnRegisterClientSimulateRelevantActor(Actor) end

---@param Controller APlayerController
---@param ActorHandle FCAM_ActorHandle
---@param OutActor AActor
---@return boolean
function UClientActorManager:GetActorByHandle(Controller, ActorHandle, OutActor) end

---@param ActorHandle FCAM_ActorHandle
---@return string
function UClientActorManager:PrintActorHandle(ActorHandle) end

function UClientActorManager:OnRep_ServerSpawnActorInfoList() end

---@param SpawnInfo FCAM_SpawnActorInfo
---@return boolean
function UClientActorManager:OnAddNewSpawn(SpawnInfo) end

---@param RemoveHandle FCAM_ActorHandle
---@return boolean
function UClientActorManager:OnRemoveSpawn(RemoveHandle) end
