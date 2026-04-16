---@meta

---@class EAIFindActorOfTypeStrategy
---@field Nearest number @最近
---@field Random number @随机
EAIFindActorOfTypeStrategy = {}


---@class EAIFindableActorType
---@field Invalid number @无效类型
---@field DamageableActor number @可伤害物
---@field KarakinMinder number @卡拉金矿机
---@field EscapeHelicopter_GunMaster number @枪匠逃脱直升机
EAIFindableActorType = {}


---寻找特定类型的Actor
---@class UBTService_FindActorOfType: UBTService
---@field InFindRadius number
---@field InFindStrategy EAIFindActorOfTypeStrategy
---@field InFindActorType EAIFindableActorType
---@field InFindActorTag string
---@field InFindActorState ULuaArrayHelper<string>
---@field OutFoundActor any
local UBTService_FindActorOfType = {}
