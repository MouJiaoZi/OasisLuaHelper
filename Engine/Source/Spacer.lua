---@meta

---A spacer widget; it does not have a visual representation, and just provides padding between other widgets. * No Children
---@class USpacer: UWidget
---@field Size FVector2D @The size of the spacer
---@field UsePcParams boolean
---@field SizePc FVector2D
local USpacer = {}

---Sets the size of the spacer
---@param InSize FVector2D
function USpacer:SetSize(InSize) end

---@param InValue number
function USpacer:SetPcParamController(InValue) end
