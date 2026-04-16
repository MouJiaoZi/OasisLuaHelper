---@meta

---FSpotDropIDMapping Spot 级别的 DropID 映射配置
---@class FSpotDropIDMapping
---@field SpotType ESpotType
---@field DropID number
FSpotDropIDMapping = {}


---FGroupDropIDMapping Group 级别的 DropID 映射配置 包含 GroupType 和该 Group 下所有 Spot 的映射配置
---@class FGroupDropIDMapping
---@field GroupType ESpotGroupType
---@field SpotMappings ULuaArrayHelper<FSpotDropIDMapping>
FGroupDropIDMapping = {}


---FDropIDMappingConfig DropID 映射配置项 支持 GroupType + SpotType 组合映射到 DropID
---@class FDropIDMappingConfig
---@field GroupType ESpotGroupType
---@field SpotType ESpotType
---@field DropID number
FDropIDMappingConfig = {}


---UTriggerAction_SpawnItemCookedWithDrop 功能：从 Cook 文件加载物资点，使用掉落表在点位生成物品 设计特点： - 极简接口，可作为扩展基类 - 支持按物资点组合（GroupType + SpotType）配置不同的掉落表 ID - 嵌套配置结构：Group → Spots → DropIDs，层级清晰，便于管理 - 向后兼容：未配置的组合使用 DefaultDropID - 扩展性设计：嵌套 struct 结构，可在 Group 或 Spot 级别添加新字段 - 支持地铁模式（使用不同的读表工具函数）
---@class UTriggerAction_SpawnItemCookedWithDrop: UTriggerAction, ITriggerAction_SpawnItemInterface, ITriggerAction_IDIPInterface
---@field CookedFilePath string
---@field DefaultDropID number
---@field GroupDropIDMappings ULuaArrayHelper<FGroupDropIDMapping>
---@field bUseEscapeTable boolean
---@field SpawnProbability number
---@field bEnableFrameSplit boolean
---@field SpotsPerFrame number
---@field MaxItemsPerFrame number
---@field SpotDataSerialize FUAESpotDataSerialize
---@field SpawnedPickupActors ULuaArrayHelper<AActor>
local UTriggerAction_SpawnItemCookedWithDrop = {}
