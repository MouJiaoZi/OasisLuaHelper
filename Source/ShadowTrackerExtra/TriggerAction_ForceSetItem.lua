---@meta

---@class FTriggerSetItemConfig
---@field ItemID number
---@field ItemCount number
FTriggerSetItemConfig = {}


---强制改pawn的物品数量
---@class UTriggerAction_ForceSetItem: UTriggerAction
---@field ForceSetItemID ULuaArrayHelper<FTriggerSetItemConfig>
---@field IsAddToTotalPlayers boolean
---@field CharacterClass ACharacter
---@field PawnLocation FVector
local UTriggerAction_ForceSetItem = {}
