---@meta

---@class UTaskParamBase: UObject
local UTaskParamBase = {}


---@class UTaskParam_Input: UTaskParamBase
---@field Value string
local UTaskParam_Input = {}


---@class UTaskParam_EventParam: UTaskParamBase, ITriggerEventWrapperInterface
---@field ParamKeySelector FTriggerEventParamKeySelector
local UTaskParam_EventParam = {}


---@class UTaskParam_CacheBlackboardParam: UTaskParamBase
---@field BBKeySelector FTaskBlackboardKeySelector
local UTaskParam_CacheBlackboardParam = {}


---@class UTaskParam_TableParam: UTaskParamBase
---@field TaskTableParamType EUniversalTaskTableParamType
local UTaskParam_TableParam = {}


---@class UTaskParam_ObjectCacheChildProperty: UTaskParamBase, ISelectablePropertyWrapperInterface, ITriggerEventWrapperInterface
---@field BBKeySelector FTaskBlackboardKeySelector
---@field TaskObjectCacheType ETaskObjectCacheType
---@field ObjectCacheClassSelector FTaskPropertySelector
---@field ObjectCacheChildPropertyType ETaskParamType
---@field ObjectCachePropertySelector FTaskPropertySelector
local UTaskParam_ObjectCacheChildProperty = {}
