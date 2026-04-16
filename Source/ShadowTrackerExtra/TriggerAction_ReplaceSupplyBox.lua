---@meta

---@class FTrigger_ReplaceSupplyBoxInfo
---@field WarningText string
---@field SupplyBoxClass AActor
---@field SupplyBoxMonsterClass AActor
---@field MonsterID number
---@field AttrID number
---@field bFilterByTags boolean
---@field Tags ULuaArrayHelper<string>
---@field ExcludeTags ULuaArrayHelper<string>
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field bReplaceByCount boolean
---@field ReplaceCount number
---@field ReplaceRate number
---@field SpawnCollisionHandlingOverride ESpawnActorCollisionHandlingMethod
FTrigger_ReplaceSupplyBoxInfo = {}


---@class IActionReplaceInterface: IInterface
IActionReplaceInterface = {}

---@param ReplaceClass AActor
---@param GenerateItemsConfig FTrigger_ReplaceSupplyBoxInfo
function IActionReplaceInterface:StartReplace(ReplaceClass, GenerateItemsConfig) end


---@class UTriggerAction_ReplaceSupplyBox: UTriggerAction
---@field ReplaceSupplyBoxList ULuaArrayHelper<FTrigger_ReplaceSupplyBoxInfo>
local UTriggerAction_ReplaceSupplyBox = {}
