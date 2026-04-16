---@meta

---@class UInteractiveProbComponent: UActorComponent
---@field PawnOwner ASTExtraBaseCharacter
local UInteractiveProbComponent = {}

---@param TempPawn APawn
function UInteractiveProbComponent:InitializeOwner(TempPawn) end

---@param ItemID number
---@param DirectUse number
function UInteractiveProbComponent:CostInteractiveProbItem(ItemID, DirectUse) end
