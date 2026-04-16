---@meta

---@class IPickupInterface
IPickupInterface = {}


---@class IPickupValidatorInterface
IPickupValidatorInterface = {}

---@param TargetPlayer ASTExtraCharacter
---@return boolean
function IPickupValidatorInterface:BisCanSearch(TargetPlayer) end

---@param TargetPlayer ASTExtraCharacter
---@return boolean
function IPickupValidatorInterface:CanbePickupBy(TargetPlayer) end
