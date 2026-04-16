---@meta

---@class EMLAISpecialZoneType
---@field AvoidanceArea number @AI避免去的区域
---@field NoFightingArea number @禁止战斗的区域
EMLAISpecialZoneType = {}


---@class FMLAISpecialZoneConfig
---@field ZoneType EMLAISpecialZoneType
---@field EntranceRelativeOffset FVector
---@field ForbidBattleStopAfterStartDelay number
FMLAISpecialZoneConfig = {}


---@class UAIMLSpecialZoneComponent: UBoxComponent
---@field SpecialZoneConfig FMLAISpecialZoneConfig
local UAIMLSpecialZoneComponent = {}
