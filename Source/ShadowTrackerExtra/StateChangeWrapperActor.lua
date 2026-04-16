---@meta

---@class EWrapperMeshLoadType
---@field None number
---@field SoftMeshLoad number
---@field StaticMeshLoad number
EWrapperMeshLoadType = {}


---@class FStateChangeWrapperInfo
---@field StaticLoadType EWrapperMeshLoadType
---@field SoftStaticMesh FSoftObjectPath
---@field DuringTime number
---@field SkinID number
---@field LinkID number
---@field NeedChangeWrapperID boolean
---@field DefineID FItemDefineID
FStateChangeWrapperInfo = {}


---@class AStateChangeWrapperActor: APickUpWrapperActor
---@field StateInfo ULuaMapHelper<number, FStateChangeWrapperInfo>
---@field AdditionalData_StateInfo string
---@field AdditionalData_TimeInfo string
---@field AdditionalData_AvatarInfo string
---@field EnterStateID number
---@field CanInitBesideHandle boolean
---@field CurrentState number
---@field CurrentStateEndTime number
---@field CurrentStateLastTime number
---@field HasInitAdditionData boolean
---@field StateTimeHandle FTimerHandle
local AStateChangeWrapperActor = {}

---@param AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
---@return boolean
function AStateChangeWrapperActor:InitAdditionalData(AdditionalData) end

function AStateChangeWrapperActor:UpdataAdditionData() end

function AStateChangeWrapperActor:SetWrapperTimer() end

---@param StateID number
function AStateChangeWrapperActor:SetWrapperMesh(StateID) end

---@param StateID number
function AStateChangeWrapperActor:SetWrapperDefineID(StateID) end

function AStateChangeWrapperActor:OnHandleStateChange() end

function AStateChangeWrapperActor:OnRep_CurrentStateChange() end

---@param MeshPath FSoftObjectPath
function AStateChangeWrapperActor:OnMeshRequestBack(MeshPath) end

function AStateChangeWrapperActor:AdditionalDataListChange() end

---@return number
function AStateChangeWrapperActor:GetServerTime() end
