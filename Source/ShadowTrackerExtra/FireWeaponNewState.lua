---@meta

---新射击武器状态，使用射击模式行为替代射击模式类型
---@class UFireWeaponNewState: UFireWeaponState
---@field ShootingBehaviorPatternTemplateMap ULuaMapHelper<ESTEWeaponShootType, UShootingBehaviorPatternBase>
local UFireWeaponNewState = {}

---@param SBP UShootingBehaviorPatternBase
function UFireWeaponNewState:OnChangeShootingBehaviorPattern(SBP) end
