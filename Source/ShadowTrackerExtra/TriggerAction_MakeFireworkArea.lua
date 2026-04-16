---@meta

---history: 在跳伞时, 选择某个区域, 该区域能触发播放烟花效果,  20191011, feishen
---@class FMakeFireworkAreaCfg
---@field CookedFilePath string
---@field RouteWidth number
---@field AreaRadius number
---@field AreaNumMin number
---@field AreaNumMax number
---@field TriggerSphereZ number
---@field ActorTemplate AActor
FMakeFireworkAreaCfg = {}


---@class UTriggerAction_MakeFireworkArea: UTriggerAction
---@field Cfg FMakeFireworkAreaCfg
---@field SpotDataSerialize FUAESpotDataSerialize
local UTriggerAction_MakeFireworkArea = {}
