---@meta

---@class UAIFormationComponent: UAIAbilityComponent
---@field FormationAutoFormedRadius number
---@field bReviseWayPointRelativeToFormation boolean
---@field bReviseWayPointUse2DRelativeLocation boolean
local UAIFormationComponent = {}

---@param PossessedPawn APawn
function UAIFormationComponent:OnPossessBP(PossessedPawn) end

---@param UnpossessedPawn APawn
function UAIFormationComponent:OnUnPossessBP(UnpossessedPawn) end

---@param EventInstigator AController
---@param DamageCauser AActor
function UAIFormationComponent:ReceiveDamageFromFormation(EventInstigator, DamageCauser) end

---@param InWayPoint AAIWayPointActor
---@param InWayPointLoc FVector
---@return FVector
function UAIFormationComponent:GetReviseWayPointFromFormation(InWayPoint, InWayPointLoc) end

---@param SearchRadius number
---@param bIncludeSelf boolean
---@param SearchTag string
function UAIFormationComponent:GetFormationMembersInRange(SearchRadius, bIncludeSelf, SearchTag) end
