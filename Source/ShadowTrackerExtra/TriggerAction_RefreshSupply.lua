---@meta

---@class FSupplySpotData
---@field SpotHandle number
---@field MyBox AActor
FSupplySpotData = {}


---@class UTriggerAction_RefreshSupply: UTriggerAction
---@field BattleItemTabPath string
---@field CookedSpotFile string
---@field SpotGroupType ESpotGroupType
---@field SpotTypeProperty ULuaArrayHelper<FSpotTypeProperty>
---@field TipsID number
---@field RefreshInterval number
---@field PerFrameSpawn number
---@field PipedHandles ULuaArrayHelper<number>
---@field SpawnItemCfg FSpawnItemCfg
---@field MySpotDatas ULuaArrayHelper<FSupplySpotData>
---@field TimeElapse number
---@field CurSpawnIndex number
---@field SpotDataSerialize FUAESpotDataSerialize
---@field CustomNetCullDis number
---@field bInited boolean
---@field bForceStop boolean
local UTriggerAction_RefreshSupply = {}

function UTriggerAction_RefreshSupply:OnGotoFightingState() end

---@param GameModeStateName string
function UTriggerAction_RefreshSupply:OnGameModeStateChanged(GameModeStateName) end
