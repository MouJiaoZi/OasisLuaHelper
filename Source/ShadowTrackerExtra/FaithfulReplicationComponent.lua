---@meta

---@class FFaithfulReplicationDataBlock
---@field Bytes ULuaArrayHelper<number>
FFaithfulReplicationDataBlock = {}


---@class FFaithfulReplicationDataBlocks
---@field Blocks ULuaArrayHelper<FFaithfulReplicationDataBlock>
FFaithfulReplicationDataBlocks = {}


---@class FFaithfulReplicationObjectState
---@field SerializedBytes ULuaArrayHelper<number>
---@field SentReplicationPass number
---@field ReceivedReplicationPass number
---@field AckedReplicationPass number
FFaithfulReplicationObjectState = {}


---@class UFaithfulReplicationComponent: UActorComponent
---@field FaithfulReplicationObjectStates ULuaArrayHelper<FFaithfulReplicationObjectState>
local UFaithfulReplicationComponent = {}

---@param TargetObject UObject
function UFaithfulReplicationComponent:EnableObjectReplication(TargetObject) end

---@param TargetObject UObject
function UFaithfulReplicationComponent:DisableObjectReplication(TargetObject) end

---@param TargetObject UObject
---@param InPropertyName string
function UFaithfulReplicationComponent:WriteBackProperty(TargetObject, InPropertyName) end

---@param TargetObject UObject
function UFaithfulReplicationComponent:ServerEnableObjectReplication(TargetObject) end

---@param TargetObject UObject
function UFaithfulReplicationComponent:ServerDisableObjectReplication(TargetObject) end

---@param TargetObject UObject
---@param ReplicationPass number
---@param FaithfulReplicationDataBlocks FFaithfulReplicationDataBlocks
function UFaithfulReplicationComponent:ClientHandleReplicationPass(TargetObject, ReplicationPass, FaithfulReplicationDataBlocks) end

---@param TargetObject UObject
---@param ReplicationPass number
function UFaithfulReplicationComponent:ServerAcknowledgeReplicationPass(TargetObject, ReplicationPass) end

---@param TargetObject UObject
function UFaithfulReplicationComponent:ServerResetReplicationPass(TargetObject) end

---@param TargetObject UObject
---@param InPropertyName string
---@param InPropertyText string
function UFaithfulReplicationComponent:ServerWriteBackProperty(TargetObject, InPropertyName, InPropertyText) end
