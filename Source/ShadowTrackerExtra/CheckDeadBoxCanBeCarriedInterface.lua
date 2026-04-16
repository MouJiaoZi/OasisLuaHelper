---@meta

---@class ICheckDeadBoxCanBeCarriedInterface
ICheckDeadBoxCanBeCarriedInterface = {}

---@param CrarryCharacter ASTExtraBaseCharacter
---@return boolean
function ICheckDeadBoxCanBeCarriedInterface:CheckCanBeCarried(CrarryCharacter) end

---@param CrarryCharacter ASTExtraBaseCharacter
---@return boolean
function ICheckDeadBoxCanBeCarriedInterface:HasCarriedCDTime(CrarryCharacter) end

---@param CrarryCharacter ASTExtraBaseCharacter
---@return number
function ICheckDeadBoxCanBeCarriedInterface:GetCanCarriedCDTime(CrarryCharacter) end
