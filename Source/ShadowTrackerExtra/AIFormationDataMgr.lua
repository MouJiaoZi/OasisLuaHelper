---@meta

---@class UAIFormationDataMgr: UObject
local UAIFormationDataMgr = {}

---@param FormationMember UAIFormationComponent
---@param AutoFormedRadius number
---@return number
function UAIFormationDataMgr:RegisterAIFormationMember(FormationMember, AutoFormedRadius) end

---@param FormationMember UAIFormationComponent
---@param FormationID number
---@return boolean
function UAIFormationDataMgr:UnRegisterAIFormationMember(FormationMember, FormationID) end
