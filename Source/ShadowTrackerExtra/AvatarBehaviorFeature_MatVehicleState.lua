---@meta

---@class UAvatarBehaviorFeature_MatVehicleState: UAvatarBehaviorFeature_UtilFuncLayer
---@field MatVehicleStateBehavior FMatVehicleStateBehaviorParam
---@field TickCounter number
local UAvatarBehaviorFeature_MatVehicleState = {}

function UAvatarBehaviorFeature_MatVehicleState:ReMatchMat() end

---@return boolean
function UAvatarBehaviorFeature_MatVehicleState:MatchStateMat() end

---@return boolean
function UAvatarBehaviorFeature_MatVehicleState:MatchNormalMat() end

---@param InBuffMatchParam FVehicleAvatarBuffMatchParam
---@return boolean
function UAvatarBehaviorFeature_MatVehicleState:IsVehicleInBuffByParam(InBuffMatchParam) end
