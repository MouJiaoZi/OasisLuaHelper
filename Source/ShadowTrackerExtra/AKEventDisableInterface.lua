---@meta

---@class EAKEventDisableType
---@field DisableType_MuteAll number
---@field DisableType_AutonomosOnly number
---@field DisableType_SimulatedProxyOnly number
---@field DisableType_All number
EAKEventDisableType = {}


---@class IAKEventDisableInterface: IInterface
IAKEventDisableInterface = {}

---@return EAKEventDisableType
function IAKEventDisableInterface:ShouldOverrideAK() end

---@return boolean
function IAKEventDisableInterface:ShouldDisableAK() end
