---@meta

---@class EATTaskGraphState
---@field EATTaskGraphsState_Init number
---@field EATTaskGraphsState_Process number
---@field EATTaskGraphsState_End number
EATTaskGraphState = {}


---@class EATTaskNodeState
---@field EATTaskNodeState_Init number
---@field EATTaskNodeState_Process number
---@field EATTaskNodeState_End number
EATTaskNodeState = {}


---@class EATTaskNodeExcuteResult
---@field EATTaskNodeExcuteResult_None number
---@field EATTaskNodeExcuteResult_Success number
---@field EATTaskNodeExcuteResult_Warning number
---@field EATTaskNodeExcuteResult_Error number
EATTaskNodeExcuteResult = {}


---@class FTaskGraphInitParam
FTaskGraphInitParam = {}


---@class FTaskGraphInitParam_DoorTest
---@field WorldSize FVector2D
---@field BlockLoadTime number
---@field WorldLeftTopCorner FVector2D
---@field BlockSize FVector2D
FTaskGraphInitParam_DoorTest = {}
