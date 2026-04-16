---@meta

---@class FGameplayTask_DisablePawnState_Data
---@field State EPawnState
---@field bNewDisable boolean
---@field bResetOnEnable boolean
FGameplayTask_DisablePawnState_Data = {}


---@class UGameplayTask_DisablePawnState: UUAEGameplayTask
---@field bReverseAlteredStatesOnDestroy boolean
---@field DisablePawnState_DataArray ULuaArrayHelper<FGameplayTask_DisablePawnState_Data>
local UGameplayTask_DisablePawnState = {}
