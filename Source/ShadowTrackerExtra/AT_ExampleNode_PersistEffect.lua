---@meta

---@class EGT_TestPersistEffectEvent
---@field TestOver number @ִн
EGT_TestPersistEffectEvent = {}


---@class FPersistEffect_JumpStateInfo
---@field StateName string
---@field JumpTime number
FPersistEffect_JumpStateInfo = {}


---@class FPE_JumpStateConfig
---@field PersistEffectWithStateClass UPersistEffectWithState
---@field JumpStateInfos ULuaArrayHelper<FPersistEffect_JumpStateInfo>
FPE_JumpStateConfig = {}


---@class UAT_ExampleNode_PersistEffect: UAT_ExampleNodeBase
---@field TestPersistEffectEvent FAT_TestPersistEffectEvent
---@field JumpStateInfos ULuaArrayHelper<FPersistEffect_JumpStateInfo>
---@field CachePersistEffect UPersistEffectWithState
---@field PersistEffectWithStateClass UPersistEffectWithState
local UAT_ExampleNode_PersistEffect = {}
