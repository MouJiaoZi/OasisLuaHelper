---@meta

---@class FLogicPartConfig
FLogicPartConfig = {}


---@class ULogicPartManagerComponent: UActorComponent, ILogicPartManagerInterface, IObjectPoolInterface, ILogicPartVisualizerInterface
---@field LogicPartConfigs ULuaArrayHelper<FLogicPartConfig>
---@field Tag2LogicPart ULuaMapHelper<FGameplayTag, UBasicLogicPart>
local ULogicPartManagerComponent = {}
