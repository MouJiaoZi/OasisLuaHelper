---@meta

---@class EPEBackpackOperationType
---@field PEBackpackOperation_None number @所有
---@field PEBackpackOperation_Pickup number @拾取
---@field PEBackpackOperation_Drop number @丢弃
---@field PEBackpackOperation_Use number @使用
---@field PEBackpackOperation_Remove number @销毁
EPEBackpackOperationType = {}


---@class EPEBackpackMonitorType
---@field EPEBackpackMonitorType_Id number @监控道具ID
---@field EPEBackpackMonitorType_Tag number @监控道具Tag
EPEBackpackMonitorType = {}


---@class UPESkillEvent_BackpackOperate: UPESkillEventBase
---@field MonitorType EPEBackpackMonitorType
---@field ItemTags FGameplayTagContainer
---@field ItemIDWrapper FIntGetter
---@field OperationType number
local UPESkillEvent_BackpackOperate = {}

---@param ItemOperationInfo FItemOperationInfo
function UPESkillEvent_BackpackOperate:OnBackpackOperation(ItemOperationInfo) end
