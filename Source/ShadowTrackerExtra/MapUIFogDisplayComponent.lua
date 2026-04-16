---@meta

---@class UMapUIFogDisplayComponent: UActorComponent
---@field bIsChangingMap boolean
---@field CurrentMapID number
---@field CircleMaskRadius number
local UMapUIFogDisplayComponent = {}

---@return FMapUIFogDataKey
function UMapUIFogDisplayComponent:GetMapUIFogKey() end

---@return number
function UMapUIFogDisplayComponent:GetCampID() end

---@return number
function UMapUIFogDisplayComponent:GetPlayerKey() end

---@param InMapID number
function UMapUIFogDisplayComponent:ChangeMap(InMapID) end

---@return boolean
function UMapUIFogDisplayComponent:IsClientReady() end

---@return boolean
function UMapUIFogDisplayComponent:IsChangingMap() end

---@param InWorldPos FVector
---@return boolean
function UMapUIFogDisplayComponent:IsPointInFog(InWorldPos) end

---@param InMapID number
function UMapUIFogDisplayComponent:ClientRequestChangeMap(InMapID) end

function UMapUIFogDisplayComponent:ClientReadyOrFinishChangeMap() end

function UMapUIFogDisplayComponent:ClientReceivedExploredPoints() end

---@param InRepExploredPoints ULuaArrayHelper<FMapUIFogExploredPoint>
function UMapUIFogDisplayComponent:ServerRepExploredPointsToClient(InRepExploredPoints) end

function UMapUIFogDisplayComponent:OnRep_CurrentMapID() end
