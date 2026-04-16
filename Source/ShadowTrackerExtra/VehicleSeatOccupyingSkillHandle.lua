---@meta

---@class FSeatOccupyingSkillMeta
---@field SkillOwner ASTExtraPlayerCharacter
---@field Skill UObject
FSeatOccupyingSkillMeta = {}


---@class FSeatOccupyingSkillCompleteContext
---@field SkillActivationOrder ULuaArrayHelper<FSeatOccupyingSkillMeta>
---@field SeatSkillContext ULuaArrayHelper<FSeatOccupyingSkillMeta>
FSeatOccupyingSkillCompleteContext = {}


---@class UVehicleSeatOccupyingSkillHandle: UVehicleSkillBaseHandle
---@field ValidVehicleType ULuaArrayHelper<ESTExtraVehicleType>
---@field HasApplied boolean
---@field DisabledSeatBitMask number
---@field NumOfValidSeatOccupiedByPlayer number
---@field SkillToOccupyingSeatIndices ULuaMapHelper<FSeatOccupyingSkillMeta, number>
---@field PlayerToSeatIndices ULuaMapHelper<ASTExtraPlayerCharacter, number>
---@field SkillsActivated ULuaSetHelper<FSeatOccupyingSkillMeta>
---@field PlayerSkillSeatOccupyingContext FSeatOccupyingSkillCompleteContext
local UVehicleSeatOccupyingSkillHandle = {}

---@param Character ASTExtraPlayerCharacter
---@param HasSkill boolean
function UVehicleSeatOccupyingSkillHandle:OnNewPlayerEnter(Character, HasSkill) end

---@param Character ASTExtraPlayerCharacter
function UVehicleSeatOccupyingSkillHandle:OnExitVehicle(Character) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleSeatOccupyingSkillHandle:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Skill FSeatOccupyingSkillMeta
---@param SeatIndices number
function UVehicleSeatOccupyingSkillHandle:OnSkillShow(Skill, SeatIndices) end

---@param Skill FSeatOccupyingSkillMeta
---@param SeatIndices number
function UVehicleSeatOccupyingSkillHandle:OnSkillHide(Skill, SeatIndices) end

---@param Skill FSeatOccupyingSkillMeta
---@param SeatIndices number
function UVehicleSeatOccupyingSkillHandle:OnServerSeatAvailable(Skill, SeatIndices) end

---@param Skill FSeatOccupyingSkillMeta
---@param OldSeatIndices number
---@param NewSeatIndices number
function UVehicleSeatOccupyingSkillHandle:OnSkillMoveSeat(Skill, OldSeatIndices, NewSeatIndices) end

---@param Skill FSeatOccupyingSkillMeta
---@return boolean
function UVehicleSeatOccupyingSkillHandle:ServerCheckSkillRegistered(Skill) end

---@param Skill FSeatOccupyingSkillMeta
---@return number
function UVehicleSeatOccupyingSkillHandle:ServerGetSkillCurrentSeat(Skill) end

---@return number
function UVehicleSeatOccupyingSkillHandle:ServerGetAmountOfFreeSeatForSkill() end

---@return number
function UVehicleSeatOccupyingSkillHandle:ServerGetFirstFreeSeatForSkillIndex() end

---@param Skill FSeatOccupyingSkillMeta
---@return number
function UVehicleSeatOccupyingSkillHandle:ServerRequestShowSkill(Skill) end

---@param Skill FSeatOccupyingSkillMeta
function UVehicleSeatOccupyingSkillHandle:ServerRequestDeactivateSkill(Skill) end

---@param Skill FSeatOccupyingSkillMeta
function UVehicleSeatOccupyingSkillHandle:ServerRequestActivateSkill(Skill) end

---@param OldSkill FSeatOccupyingSkillMeta
---@param NewSkill FSeatOccupyingSkillMeta
function UVehicleSeatOccupyingSkillHandle:ServerInplaceUpdateSkill(OldSkill, NewSkill) end
