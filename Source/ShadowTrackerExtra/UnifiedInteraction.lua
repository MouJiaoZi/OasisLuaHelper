---@meta

---@class EQuitInteractionReason
---@field Interrupt number @打断
---@field Finished number @完成
EQuitInteractionReason = {}


---@class FUnifiedInteractionContext
---@field Message string
FUnifiedInteractionContext = {}


---@class IUnifiedInteractionInterface
IUnifiedInteractionInterface = {}

---@param PC AController
---@param InteractionContext FUnifiedInteractionContext
---@return boolean
function IUnifiedInteractionInterface:TryInteraction(PC, InteractionContext) end

---@param PC AController
---@param QuitReason EQuitInteractionReason
---@return boolean
function IUnifiedInteractionInterface:QuitInteraction(PC, QuitReason) end
