---@meta

---@class FIDIPActivityActorInfo
---@field ActivityActorID number
---@field IDIPID number
---@field bEnable boolean
---@field BeginTime FDateTime
---@field EndTime FDateTime
---@field Params string
---@field bLastest boolean
---@field LoopEndTime FDateTime
FIDIPActivityActorInfo = {}


---@class FIDIPInfo
---@field ActivityActorID number
---@field TimesForSort number
FIDIPInfo = {}


---@class FIDIPMapValue
---@field InfoList ULuaArrayHelper<FIDIPActivityActorInfo>
FIDIPMapValue = {}


---@class UBWDynamicParaIDIPComponent: UGameModeBaseComponent
---@field TryEnableList ULuaArrayHelper<FIDIPInfo>
---@field TryDisableList ULuaArrayHelper<FIDIPInfo>
---@field DelayAddEnableList ULuaArrayHelper<FIDIPInfo>
---@field DelayAddDisableList ULuaArrayHelper<FIDIPInfo>
---@field IDIPStateMap ULuaMapHelper<number, FIDIPMapValue>
local UBWDynamicParaIDIPComponent = {}

---@param ActivityActorID number
---@return FIDIPActivityActorInfo
function UBWDynamicParaIDIPComponent:GetIDIPStateInfo(ActivityActorID) end

---@param ActivityActorID number
---@return boolean
function UBWDynamicParaIDIPComponent:CheckIsValid(ActivityActorID) end

---@param IDIPStateInfos ULuaMapHelper<number, FIDIPStateInfo>
function UBWDynamicParaIDIPComponent:ReceivedIDIPStates(IDIPStateInfos) end

function UBWDynamicParaIDIPComponent:TickForDelegate() end
