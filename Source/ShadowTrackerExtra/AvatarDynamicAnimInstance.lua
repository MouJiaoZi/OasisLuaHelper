---@meta

---@class UAvatarDynamicAnimInstance: UAnimInstanceBase
---@field bUseMeshShiftAdaptFeature boolean
---@field InGameSimulationSpace AnimPhysSimSpaceType
---@field LobbySimulationSpace AnimPhysSimSpaceType
---@field LobbyAlphaValue number
---@field LobbyAlphaStateMap FAlphaStateConfig
---@field AnimDynAlpha number
---@field RigidBodyAlpha number
---@field FirstAlpha number
---@field SecondAlpha number
---@field ThirdAlpha number
---@field CurrentSimulateSpace AnimPhysSimSpaceType
---@field AnimUpdateRateAdaptInjector FAnimUpdateRateOptimizationAdapter_Injector
---@field AnimDeviceQuality number
local UAvatarDynamicAnimInstance = {}

---@return boolean
function UAvatarDynamicAnimInstance:IsUseMeshShiftAdaptFeature() end
