---@meta

---摆在子level中用来刷物品的actor add by czcheng 2020.11.27
---@class ASpawnActorContainer: AActor
---@field bContainActor boolean
---@field SpawnActorPool ULuaMapHelper<AActor, number>
---@field bDestroyCotainerAfterSpawn boolean
---@field bNotifyCotainerOnActorEndPlay boolean
---@field SpawnActorCollisionHandlingMethod ESpawnActorCollisionHandlingMethod
local ASpawnActorContainer = {}

---@param ActorClass UClass
function ASpawnActorContainer:OnContainActorEndPlay(ActorClass) end
