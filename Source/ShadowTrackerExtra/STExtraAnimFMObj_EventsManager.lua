---@meta

---@class USTExtraAnimFMObj_EventsManager: UAnimFunctionModule_ObjInstance
---@field bEnableShovelSubAnimOpt boolean
---@field ShovelSubAnimSlotName string
---@field ShovelSubAnimClass UAnimInstance
local USTExtraAnimFMObj_EventsManager = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function USTExtraAnimFMObj_EventsManager:HandleCharacterMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function USTExtraAnimFMObj_EventsManager:HandleCharacterHealthStatusChange(PrevStatus, NewStatus) end

function USTExtraAnimFMObj_EventsManager:OnAsyncLoadingShovelAnimFinished() end

---@param NewShovelEnabledFlag EShovelEnabledFlags
function USTExtraAnimFMObj_EventsManager:HandleCharacterEnableShoveling(NewShovelEnabledFlag) end

---@param bNewEnableShoveling boolean
function USTExtraAnimFMObj_EventsManager:HandleGameStateEnableShoveling(bNewEnableShoveling) end
