---@meta

---@class FAutoSwitchDSPipeline
---@field State EAutoSwitchDSState
---@field Message string
---@field TimeInterval number
---@field Timer number
FAutoSwitchDSPipeline = {}


---@class UAutoSwitchDSCollector: UObject
local UAutoSwitchDSCollector = {}


---@class UAutoSwitchDSOnlineCollector: UAutoSwitchDSCollector
local UAutoSwitchDSOnlineCollector = {}


---@class UAutoSwitchDSFilter: UObject
---@field Quota number
local UAutoSwitchDSFilter = {}


---@class UAutoSwitchDSBruteFilter: UAutoSwitchDSFilter
local UAutoSwitchDSBruteFilter = {}


---@class UAutoSwitchDSPassiveFilter: UAutoSwitchDSFilter
local UAutoSwitchDSPassiveFilter = {}


---@class UAutoSwitchDSExecutor: UObject
local UAutoSwitchDSExecutor = {}


---@class UAutoSwitchOutDSExecutor: UAutoSwitchDSExecutor
local UAutoSwitchOutDSExecutor = {}


---@class UAutoKickOutDSExecutor: UAutoSwitchDSExecutor
local UAutoKickOutDSExecutor = {}


---被动切线组件，wexuanhuang
---@class UAutoSwitchDSComponent: UGameModeBaseComponent
---@field Pipelines ULuaArrayHelper<FAutoSwitchDSPipeline>
---@field PipelineIndex number
local UAutoSwitchDSComponent = {}

---@param inst_id number
---@param state string
function UAutoSwitchDSComponent:switch_inst_state_req(inst_id, state) end

---@return EAutoSwitchDSState
function UAutoSwitchDSComponent:GetState() end
