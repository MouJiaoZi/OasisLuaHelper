---@meta

---@class EReplaceLevelCycleType
---@field NoCycle number
---@field PerDay number
---@field PerWeek number
---@field Custom number
EReplaceLevelCycleType = {}


---@class FIDIPLevelItem
---@field LevelID number
---@field bOpened boolean
---@field StartTimeStr string
---@field EndTimeStr string
---@field StartTime FDateTime
---@field EndTime FDateTime
---@field LevelPath string
FIDIPLevelItem = {}


---@class FSubWorldLevelItem
---@field SubWorldID string
---@field LevelType string
---@field bOpened boolean
---@field StartTimeStr string
---@field EndTimeStr string
---@field StartTime FDateTime
---@field EndTime FDateTime
---@field LevelPath string
FSubWorldLevelItem = {}


---@class FDefaultLevelItem
---@field LevelID number
---@field SubWorldID string
---@field bClosed boolean
---@field LevelPath string
FDefaultLevelItem = {}


---@class FSubWorldDefaultLevelConfig
---@field SubWorldID string
---@field LevelID number
FSubWorldDefaultLevelConfig = {}


---@class FTriggerLevelItem
---@field LevelID number
---@field bOpened boolean
---@field StartTimeStr string
---@field EndTimeStr string
---@field StartTime FDateTime
---@field EndTime FDateTime
---@field CycleType EReplaceLevelCycleType
---@field CustomCycleLength number
---@field StartTimeInCycleStr string
---@field EndTimeInCycleStr string
---@field bUseCycle boolean
---@field CycleLength FTimespan
---@field StartTimeInCycle FTimespan
---@field EndTimeInCycle FTimespan
---@field LevelPath string
FTriggerLevelItem = {}


---@class FBlackLevelItem
---@field LevelID number
---@field bClosed boolean
---@field StartTimeStr string
---@field EndTimeStr string
---@field StartTime FDateTime
---@field EndTime FDateTime
---@field LevelPath string
FBlackLevelItem = {}


---@class FIDIPLevelRep
---@field LevelIDList ULuaArrayHelper<number>
FIDIPLevelRep = {}


---@class FSubWorldLevelRepItem
---@field SubWorldID string
---@field LevelTypeIndexList ULuaArrayHelper<number>
FSubWorldLevelRepItem = {}


---@class FSubWorldLevelRep
---@field Items ULuaArrayHelper<FSubWorldLevelRepItem>
FSubWorldLevelRep = {}


---@class FDefaultLevelRep
---@field LevelIDList ULuaArrayHelper<number>
FDefaultLevelRep = {}


---@class FBlackLevelRep
---@field LevelIDList ULuaArrayHelper<number>
FBlackLevelRep = {}


---@class UScriptReplaceLevelHelper: UObject
local UScriptReplaceLevelHelper = {}

---@param IDIPLevels ULuaArrayHelper<FIDIPLevelItem>
function UScriptReplaceLevelHelper:ReceiveIDIPLevels(IDIPLevels) end

---@param SubWorldLevels ULuaArrayHelper<FSubWorldLevelItem>
function UScriptReplaceLevelHelper:ReceiveSubWorldLevels(SubWorldLevels) end

---@param TriggerLevels ULuaArrayHelper<FTriggerLevelItem>
function UScriptReplaceLevelHelper:ReceiveTriggerLevels(TriggerLevels) end

---@param BlackLevels ULuaArrayHelper<FBlackLevelItem>
function UScriptReplaceLevelHelper:ReceiveBlackLevels(BlackLevels) end

---@param WorldContextObject UObject
---@param InLevelName string
---@param OutSubWorldId string
---@return boolean
function UScriptReplaceLevelHelper:GetAssociatedSubWorld(WorldContextObject, InLevelName, OutSubWorldId) end

---@param InSubWorldId string
function UScriptReplaceLevelHelper:GetLevelTypesOfSubWorld(InSubWorldId) end


---通用动态关卡组件，目前支持消息驱动战斗内换关卡，wexuanhuang
---@class UReplaceLevelComponent: UActorComponent
---@field SubWorldDefaultLevelConfigs ULuaArrayHelper<FSubWorldDefaultLevelConfig>
---@field NoTransfromIDList ULuaArrayHelper<number>
---@field NoTransfromPathList ULuaArrayHelper<string>
---@field IDIPLevelItems ULuaArrayHelper<FIDIPLevelItem>
---@field SubWorldLevelItems ULuaArrayHelper<FSubWorldLevelItem>
---@field DefaultLevelItems ULuaArrayHelper<FDefaultLevelItem>
---@field TriggerLevelItems ULuaArrayHelper<FTriggerLevelItem>
---@field BlackLevelItems ULuaArrayHelper<FBlackLevelItem>
---@field IDIPLevelRepData FIDIPLevelRep
---@field SubWorldLevelRepData FSubWorldLevelRep
---@field DefaultLevelRepData FDefaultLevelRep
---@field BlackLevelRepData FBlackLevelRep
local UReplaceLevelComponent = {}

---@param IDList ULuaArrayHelper<number>
function UReplaceLevelComponent:GMReplaceLevels(IDList) end

function UReplaceLevelComponent:RefreshIDIPLevelItems() end

function UReplaceLevelComponent:RefreshSubWorldLevelItems() end

function UReplaceLevelComponent:InitDefaultLevelItems() end

function UReplaceLevelComponent:RefreshDefaultLevelItems() end

function UReplaceLevelComponent:RefreshTriggerLevelItems() end

function UReplaceLevelComponent:RefreshBlackLevelItems() end

function UReplaceLevelComponent:UpdateWorldComposition() end

function UReplaceLevelComponent:OnRep_IDIPLevelRepData() end

function UReplaceLevelComponent:OnRep_SubWorldLevelRepData() end

function UReplaceLevelComponent:OnRep_DefaultLevelRepData() end

function UReplaceLevelComponent:OnRep_BlackLevelRepData() end

---@param PC ASTExtraPlayerController
function UReplaceLevelComponent:OnNearbyLevelReplaced(PC) end

---@param LevelPath string
function UReplaceLevelComponent:OnLevelLoadUnload(LevelPath) end

---@param LevelName string
function UReplaceLevelComponent:OnTriggerLevelLoadUnload(LevelName) end

function UReplaceLevelComponent:BindTriggerLevelEvents() end

function UReplaceLevelComponent:InitNoTransfromPathList() end

function UReplaceLevelComponent:GetItemIDs() end
