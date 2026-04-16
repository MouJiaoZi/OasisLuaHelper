---@meta

---@class UCarRacingUserComponent: UActorComponent
---@field GameProgressRepDataChangedDelegate FGameProgressRepDataChangedDelegate
---@field PlayerUID number
---@field PlayerName string
---@field GameProgressRepData FCarRacingGameProgressRepData
---@field RoadDebugInfo FCarRacingUserRoadInfo
local UCarRacingUserComponent = {}

function UCarRacingUserComponent:ServerRequestRelocateMyself() end

function UCarRacingUserComponent:ClientNotifyAutoRelocated() end

---@param InGameProgressRepData FCarRacingGameProgressRepData
function UCarRacingUserComponent:UpdateGameProgressRepData(InGameProgressRepData) end

---@param OldGameProgressRepData FCarRacingGameProgressRepData
function UCarRacingUserComponent:OnRep_GameProgressRepData(OldGameProgressRepData) end
