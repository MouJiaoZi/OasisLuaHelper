---@meta

---@class ICommonCampInterface
ICommonCampInterface = {}

---@return number
function ICommonCampInterface:GetCampID() end

---@param CampID number
---@return ECampRelation
function ICommonCampInterface:GetCampRelationWithCampID(CampID) end

---@param Actor AActor
---@return ECampRelation
function ICommonCampInterface:GetCampRelationWithActor(Actor) end
