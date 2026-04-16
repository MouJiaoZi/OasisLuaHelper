---@meta

---@class UAvatarBehaviorFeature_MatWeaponState: UAvatarBehaviorFeature_UtilFuncLayer
---@field MatWeaponStateBehavior FMatWeaponStateBehaviorParam
---@field TickCounter number
local UAvatarBehaviorFeature_MatWeaponState = {}

function UAvatarBehaviorFeature_MatWeaponState:ReMatchMat() end

---@return boolean
function UAvatarBehaviorFeature_MatWeaponState:MatchStateMat() end

---@return boolean
function UAvatarBehaviorFeature_MatWeaponState:MatchNormalMat() end
