---@meta

---@class FSADisablePawnStatesInstanceStruct
FSADisablePawnStatesInstanceStruct = {}


---@class FDisablePawnStateInfo
---@field State EPawnState
---@field bNewDisable boolean
---@field bResetOnEnable boolean
FDisablePawnStateInfo = {}


---@class FDisableDynamicPawnStateInfo
---@field State FGameplayTag
---@field bNewDisable boolean
---@field bResetOnEnable boolean
FDisableDynamicPawnStateInfo = {}


---@class USTExtraBuffAction_DisablePawnState: USTExtraBuffAction
---@field PendingDisablePawnStates ULuaArrayHelper<FDisablePawnStateInfo>
---@field PendingDisableDynamicPawnStates ULuaArrayHelper<FDisableDynamicPawnStateInfo>
---@field bReverseAlteredStatesOnUndo boolean
---@field bReverseAlteredStatesOnReset boolean
local USTExtraBuffAction_DisablePawnState = {}
