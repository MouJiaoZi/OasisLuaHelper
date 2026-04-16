---@meta

---@class FAirlineControllers
---@field TotalPlayers ULuaArrayHelper<APlayerController>
---@field TotalAIs ULuaArrayHelper<AAIController>
FAirlineControllers = {}


---@class UMultiAirlineComponent: UPlaneComponent
---@field Airlines ULuaArrayHelper<FPlaneData>
---@field AirlinePlayersMap ULuaMapHelper<number, FAirlineControllers>
---@field StartCurFlightTimes ULuaMapHelper<number, number>
---@field bNotifyPreCalculateAirlines boolean
---@field TerminalClass UMultiAirlineTerminal
---@field AirlinesNum number
---@field TerminalMap ULuaMapHelper<number, UMultiAirlineTerminal>
local UMultiAirlineComponent = {}

---@param PC AController
---@return FPlaneData
function UMultiAirlineComponent:GetCurPlaneData(PC) end

---@return boolean
function UMultiAirlineComponent:MultiAirlinesStage() end

function UMultiAirlineComponent:ForceUseMultiAirlines() end

---@return number
function UMultiAirlineComponent:GetAirlinesNum() end

function UMultiAirlineComponent:PreCalculateAirlines() end

function UMultiAirlineComponent:PostPreCalculateAirlines() end

---@param StartPoint FVector2D
---@param EndPoint FVector2D
---@param Controller APlayerController
function UMultiAirlineComponent:ChangeRoute(StartPoint, EndPoint, Controller) end

---@param InPlayer AController
---@param bAdd boolean
function UMultiAirlineComponent:DistributeAirline(InPlayer, bAdd) end

---@param InPlayer APlayerController
function UMultiAirlineComponent:OnPlayerPostLogin_MultiAirlines(InPlayer) end

---@param InPlayer APlayerController
function UMultiAirlineComponent:OnPlayerLogout_MultiAirlines(InPlayer) end

---@param DeltaTime number
function UMultiAirlineComponent:CheckPlanePos_MultiAirlines(DeltaTime) end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:ForceJumpOffPlane_MultiAirlines(PlaneData) end

---@param Plane AActor
function UMultiAirlineComponent:EndCurFlight(Plane) end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:PostFlightEnd(PlaneData) end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:SetTotalPlayerNumOnPlane_MultiAirlines(PlaneData) end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:SetCurPlayerNumOnPlane_MultiAirlines(PlaneData) end

function UMultiAirlineComponent:StartCurFlight() end

function UMultiAirlineComponent:StartFlight_MultiAirlines() end

function UMultiAirlineComponent:EndAllAirlines() end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:PostStartFlight_MultiAirlines(PlaneData) end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:OnStartFlight_MultiAirlines(PlaneData) end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:NotifyPlayersEnterPlane_MultiAirlines(PlaneData) end

---@param PlaneData FPlaneData
function UMultiAirlineComponent:NotifyAIEnterPlane_MultiAirlines(PlaneData) end

function UMultiAirlineComponent:GetMultiPlaneRouteData() end

---@param PC AController
---@return boolean
function UMultiAirlineComponent:IsFlightStarted(PC) end

---@param PC AController
---@return FPlaneData
function UMultiAirlineComponent:GetAirlineInfo(PC) end

function UMultiAirlineComponent:RefreshAllPlayersPlaneData() end

---@param Plane AActor
---@param PC APlayerController
function UMultiAirlineComponent:OnPlayerEnterPlane(Plane, PC) end

---@param PC APlayerController
function UMultiAirlineComponent:OnPlayerLeavePlane(PC) end

---@param InTotalPlayers ULuaArrayHelper<APlayerController>
---@param InTotalAis ULuaArrayHelper<AAIController>
function UMultiAirlineComponent:SetCachedTotalPlayers(InTotalPlayers, InTotalAis) end

---@param PC AController
---@return boolean
function UMultiAirlineComponent:IsMyPlaneCanJump(PC) end

---@param InAI AAIController
function UMultiAirlineComponent:OnSpawnAI(InAI) end

---@param InAI AAIController
function UMultiAirlineComponent:OnAIEnterPlane(InAI) end

---@param InAI AAIController
function UMultiAirlineComponent:OnAILeavePlane(InAI) end

---@return string
function UMultiAirlineComponent:GetLuaModule() end
