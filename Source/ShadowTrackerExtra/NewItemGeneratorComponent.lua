---@meta

---@class EGeneratorState
---@field EInitial number
---@field ENotGenerated number
---@field EGenerated number
---@field ETerminated number
EGeneratorState = {}


---@class FItemGeneratedRule
---@field RuleId number
---@field GeneratedCount number
---@field GeneratedInterval number
---@field ItemPoolIds ULuaArrayHelper<number>
---@field ItemPoolWeights ULuaArrayHelper<number>
FItemGeneratedRule = {}


---@class FItemPool
---@field PoolId number
---@field ItemIds ULuaArrayHelper<number>
---@field ItemWeights ULuaArrayHelper<number>
FItemPool = {}


---@class FItemGenerated
---@field ItemId number
---@field ItemBPPath string
---@field ItemCount number
FItemGenerated = {}


---@class UNewItemGeneratorComponent: USceneComponent
---@field ItemGeneratedRuleTableName string @团队竞技补给刷新规则表
---@field ItemPoolTableName string @团队竞技补给池表
---@field ItemsTableName string @团队竞技补给表
---@field RuleId number @补给刷新规则id
---@field LineOffsetZ number @生成物品垂直偏移
---@field CurItemGeneratedRule FItemGeneratedRule
---@field CurItemPool FItemPool
---@field CurItem FItemGenerated
local UNewItemGeneratorComponent = {}

function UNewItemGeneratorComponent:OnActorPicked() end
