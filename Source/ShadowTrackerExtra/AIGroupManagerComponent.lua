---@meta

---@class FAIGroupData
FAIGroupData = {}


---@class FAnimalGroupRespawnNumProbability
---@field AnimalNum number
---@field Weight number
FAnimalGroupRespawnNumProbability = {}


---@class FAnimalGroupRespawnConfig
---@field AnimalType EAnimalType
---@field AnimalGroupRespawnNumProbability ULuaArrayHelper<FAnimalGroupRespawnNumProbability>
---@field NoBlueCircleRadius number
---@field CheckPlayerRadius number
---@field EndRespawnTime number
---@field TryFindSpawnLocNum number
---@field ValidTraceActorIncludeName ULuaArrayHelper<string>
---@field AnimalGenerateOffset FVector
---@field AnimalCharacterClass ASTAnimalCharacter
FAnimalGroupRespawnConfig = {}


---@class UAIGroupManagerComponent: UActorComponent
---@field AnimalGroupRespawnConfig ULuaArrayHelper<FAnimalGroupRespawnConfig>
---@field AIActingComp UAIActingComponent
local UAIGroupManagerComponent = {}
