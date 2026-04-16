---@meta

---@class FTlogBoxExtraParams
---@field EnterExtraParam number
---@field EnterExtraStr string
---@field LandedExtraParam number
---@field LandedExtraStr string
---@field DeadExtraParam number
---@field DeadExtraStr string
FTlogBoxExtraParams = {}


---@class ATlogTriggerBox: ATriggerBox
---@field bIsActivityEvent boolean
---@field ActivityEventExtraParams FTlogBoxExtraParams
---@field PlayerEnterID number
---@field PlayerLandedID number
---@field PlayerDeadID number
---@field PlayerList ULuaArrayHelper<number>
---@field PlayerEnterTime ULuaMapHelper<number, number>
local ATlogTriggerBox = {}

function ATlogTriggerBox:BindPlayerCustomDelegate() end

function ATlogTriggerBox:UnbindPlayerCustomDelegate() end

---@param PlayerTransform FTransform
---@return FVector
function ATlogTriggerBox:GetRelativePosition(PlayerTransform) end

---@return FTransform
function ATlogTriggerBox:GetBaseTransform() end

---@param OverlappedActor AActor
---@param Other AActor
function ATlogTriggerBox:OnPlayerEnter(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function ATlogTriggerBox:OnPlayerLeave(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function ATlogTriggerBox:OnPlayerEnterMultiple(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function ATlogTriggerBox:OnPlayerLeaveMultiple(OverlappedActor, Other) end

---@param PlayerKey number
function ATlogTriggerBox:OnPlayerLanded(PlayerKey) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function ATlogTriggerBox:OnPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param PlayerKey number
function ATlogTriggerBox:OnPlayerLanded_Internal(PlayerKey) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function ATlogTriggerBox:OnPlayerKilled_Internal(PlayerKey, KillerKey, bIsAI) end

---@param ID number
---@param Value1 string
---@param Value2 string
---@param PlayerKey number
---@param Position FVector
function ATlogTriggerBox:TlogStatistics(ID, Value1, Value2, PlayerKey, Position) end
