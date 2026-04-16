---@meta

---@class FBigWorldMapMark
---@field TypeID number
---@field BigWorldMarkFlag number
FBigWorldMapMark = {}


---@class ABigWorldGameState: ASTExtraGameStateBase
---@field BigWorldMapMarkList ULuaArrayHelper<FBigWorldMapMark>
local ABigWorldGameState = {}

function ABigWorldGameState:OnSwitchedDS() end

function ABigWorldGameState:OnRep_BigWorldMapMarkList() end

---@param bAdd boolean
---@param TypeID number
---@param InstanceID number
function ABigWorldGameState:ProcessMapMark(bAdd, TypeID, InstanceID) end

---@param bShow boolean
---@param TypeID number
---@param InstanceID number
function ABigWorldGameState:SetMark(bShow, TypeID, InstanceID) end

function ABigWorldGameState:BigWorldSubWorldChangeLua() end
