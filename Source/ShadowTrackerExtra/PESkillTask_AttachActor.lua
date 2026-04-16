---@meta

---@class EPEActorAttachEndType
---@field EPEActorAttachEndType_Client number @客户端
---@field EPEActorAttachEndType_Server number @服务器
EPEActorAttachEndType = {}


---@class UPESkillTask_AttachActor: UPESkillTaskPeriod
---@field EndType EPEActorAttachEndType
---@field ActorClass AActor
---@field AttachPos FMeshSocketSelector
---@field DestroyOnTaskEnd boolean
---@field AttachedList FArraySetter
---@field SavedSocketName string
---@field SocketAnimCurveProxy FMontageSocketAnimCurveGeneralProxy_PETaskComm
---@field SpawnedActors ULuaArrayHelper<AActor>
local UPESkillTask_AttachActor = {}
