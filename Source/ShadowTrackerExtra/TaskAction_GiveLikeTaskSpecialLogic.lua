---@meta

---@class ETeamTaskType
---@field KillOneTeam number
---@field KillInVehicle number
---@field KillByMark number
ETeamTaskType = {}


---@class FKillOneTeamInfo
---@field KillTime number
---@field VictimTeamID number
---@field KillerKey string
FKillOneTeamInfo = {}


---@class FKillInVehicleInfo
---@field KillerKey string
---@field KillTime number
---@field DriverKey string
FKillInVehicleInfo = {}


---@class FKillByMarkInfo
---@field MarkKey string
---@field MrakTime number
---@field MrakPos FVector2D
FKillByMarkInfo = {}


---@class FTeamWorkInfo
---@field KillOneTeamInfoArray ULuaArrayHelper<FKillOneTeamInfo>
---@field KillInVehicleInfoArray ULuaArrayHelper<FKillInVehicleInfo>
---@field KillByMarkInfoArray ULuaArrayHelper<FKillByMarkInfo>
FTeamWorkInfo = {}


---@class UTaskAction_GiveLikeTaskSpecialLogic: UUniversalTaskFuncBPBase
---@field ItemIDArray ULuaArrayHelper<number>
---@field TeamWorkInfoMap ULuaMapHelper<number, FTeamWorkInfo>
local UTaskAction_GiveLikeTaskSpecialLogic = {}

---@param ItemID number
---@return boolean
function UTaskAction_GiveLikeTaskSpecialLogic:IsSpecialItem(ItemID) end

---@param TeamID number
---@return boolean
function UTaskAction_GiveLikeTaskSpecialLogic:IsTeamWorkInfoMapContainsTeam(TeamID) end

---@param TeamID number
function UTaskAction_GiveLikeTaskSpecialLogic:GetKillOneTeamInfoArray(TeamID) end

---@param TeamID number
function UTaskAction_GiveLikeTaskSpecialLogic:GetKillInVehicleInfoArray(TeamID) end

---@param TeamID number
function UTaskAction_GiveLikeTaskSpecialLogic:GetKillByMarkInfoArray(TeamID) end

---@param TeamID number
---@param InKillOneTeamInfo FKillOneTeamInfo
function UTaskAction_GiveLikeTaskSpecialLogic:AddKillOneTeamInfo(TeamID, InKillOneTeamInfo) end

---@param TeamID number
---@param InKillInVehicleInfo FKillInVehicleInfo
function UTaskAction_GiveLikeTaskSpecialLogic:AddKillInVehicleInfo(TeamID, InKillInVehicleInfo) end

---@param TeamID number
---@param InKillByMarkInfo FKillByMarkInfo
function UTaskAction_GiveLikeTaskSpecialLogic:AddKillByMarkInfo(TeamID, InKillByMarkInfo) end

---@param TeamID number
---@param IndexArray ULuaArrayHelper<number>
---@param TaskType ETeamTaskType
function UTaskAction_GiveLikeTaskSpecialLogic:RemoveTeamInfo(TeamID, IndexArray, TaskType) end
