---@meta

---@class FWorldActorFlagData
---@field ActorNetGUID number
---@field PlayerKey number
FWorldActorFlagData = {}


---@class FWorldActorFlagList
---@field FlagList ULuaArrayHelper<FWorldActorFlagData>
FWorldActorFlagList = {}


---@class UWorldActorFlagComponent: UGameModeBaseComponent
---@field WorldActorFlagMap ULuaMapHelper<number, FWorldActorFlagList>
local UWorldActorFlagComponent = {}

---@param InActorNetGUID number
---@param InPlayerKey number
function UWorldActorFlagComponent:AddWorldActorFlag(InActorNetGUID, InPlayerKey) end

---@param TeamList ULuaArrayHelper<ASTExtraPlayerState>
---@param InFlagData FWorldActorFlagData
function UWorldActorFlagComponent:ExecuteAddAction(TeamList, InFlagData) end

---@param TeamList ULuaArrayHelper<ASTExtraPlayerState>
---@param InFlagData FWorldActorFlagData
function UWorldActorFlagComponent:ExecuteRemoveAction(TeamList, InFlagData) end

---@param InActorNetGUID number
---@param InPlayerKey number
function UWorldActorFlagComponent:RemoveTeamWorldActorFlag(InActorNetGUID, InPlayerKey) end

---@param InActorNetGUID number
function UWorldActorFlagComponent:RemoveWorldActorFlag(InActorNetGUID) end

function UWorldActorFlagComponent:ClearFlag() end

---@param InActorNetGUID number
---@param InPlayerKey number
---@param OutData FWorldActorFlagData
---@param TeamList ULuaArrayHelper<ASTExtraPlayerState>
---@return boolean
function UWorldActorFlagComponent:GetFlagData(InActorNetGUID, InPlayerKey, OutData, TeamList) end

---@param InPlayerKey number
---@param TeamList ULuaArrayHelper<ASTExtraPlayerState>
function UWorldActorFlagComponent:GetTeammateList(InPlayerKey, TeamList) end

---@param InActorNetGUID number
---@param PickUpPlayerKey number
---@return number
function UWorldActorFlagComponent:GetLastMarkedTeammatePlayerKey(InActorNetGUID, PickUpPlayerKey) end
