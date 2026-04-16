---@meta

---@class EHideAndSeekCampType
---@field Invalid number
---@field Seeker number
---@field Hider number
EHideAndSeekCampType = {}


---@class EHideAndSeekRespawnReason
---@field InvalidReason number
---@field PlayerInit number
---@field RoundReset number
---@field ShapeSelect number
---@field Death number
---@field Revival number
EHideAndSeekRespawnReason = {}


---@class EHideAndSeekRoundStateType
---@field LoadingState number
---@field SelectCampState number
---@field HidingState number
---@field HuntingState number
---@field RoundSwitchState number
EHideAndSeekRoundStateType = {}


---@class UHideAndSeekGameplayStatics: UBlueprintFunctionLibrary
local UHideAndSeekGameplayStatics = {}
