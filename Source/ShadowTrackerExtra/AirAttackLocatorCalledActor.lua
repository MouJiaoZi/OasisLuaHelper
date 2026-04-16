---@meta

---@class AAirAttackLocatorCalledActor: AActor
---@field DestoryTime number
---@field AirAttackDelayTime number
---@field IconID number
---@field AttackAreaRadius number
---@field bMarkDispatchRange_All boolean
local AAirAttackLocatorCalledActor = {}

---@param Character ASTExtraBaseCharacter
function AAirAttackLocatorCalledActor:DispatchAssignedMarkData(Character) end

---@return number
function AAirAttackLocatorCalledActor:GetAttackAreaRadiusUI_BP() end
