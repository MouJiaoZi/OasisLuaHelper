---@meta

---PlayerComponent配置
---@class FUGCGamePartPlayerComponentConfig
---@field PlayerComponentName string @PlayerComponent名称
---@field PlayerComponentClass UActorComponent @PlayerComponent类配置
---@field bAllowPlayerComponentClassOverride boolean
FUGCGamePartPlayerComponentConfig = {}


---GamePart配置基类
---@class UUGCGamePartConfig: UPrimaryDataAsset
---@field GamePartName string @GamePart名称
---@field DependentGameParts ULuaArrayHelper<string> @依赖的的GamePart列表
---@field GlobalActorClass AActor @GlobalActor类配置
---@field bAllowGlobalActorClassOverride boolean
---@field PlayerComponentConfigs ULuaArrayHelper<FUGCGamePartPlayerComponentConfig> @GamePart PlayerComponent配置列表
local UUGCGamePartConfig = {}
