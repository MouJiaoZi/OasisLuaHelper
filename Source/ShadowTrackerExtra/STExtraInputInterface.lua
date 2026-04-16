---@meta

---@class ISTExtraInputInterface
ISTExtraInputInterface = {}

---@param rate number
function ISTExtraInputInterface:MoveForward(rate) end

---@param rate number
function ISTExtraInputInterface:MoveRight(rate) end

---@param rate number
function ISTExtraInputInterface:MoveUp(rate) end

---@return number
function ISTExtraInputInterface:GetMoveForwardRate() end
