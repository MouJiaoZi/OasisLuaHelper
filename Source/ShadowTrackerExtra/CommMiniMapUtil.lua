---@meta

---@class FAirLineMarkIDs
---@field AirLineID number
---@field PlaneID number
FAirLineMarkIDs = {}


---@class FAirLineMarkParam
---@field RangeType EMarkDispatchRange
---@field MarkTypeID FAirLineMarkIDs
FAirLineMarkParam = {}


---@class FAirLineMarkData
---@field PlaneVelocity FVector
---@field PlaneStartLoc FVector
---@field PlaneEndLoc FVector
---@field TotalPlayers ULuaArrayHelper<APlayerController>
---@field bForceShow boolean
---@field TotalPlayerStates ULuaArrayHelper<ASTExtraPlayerState>
FAirLineMarkData = {}


---@class UCommMiniMapUtil: UBlueprintFunctionLibrary
local UCommMiniMapUtil = {}

---@param RealTimeInfo FMiniMapRealTimeInfo
---@param StateID number
---@param StartLoc FVector
---@param EndLoc FVector
---@param Process number
---@param CalRot boolean
---@return FMiniMapRealTimeInfo
function UCommMiniMapUtil:QuickSetRealInfoLine(RealTimeInfo, StateID, StartLoc, EndLoc, Process, CalRot) end

---@param RealTimeInfo FMiniMapRealTimeInfo
---@param StateID number
---@param Loc FVector
---@param Rot number
---@param ItemIndex number
---@param OutOfRange boolean
---@return FMiniMapRealTimeInfo
function UCommMiniMapUtil:QuickSetRealInfoActor(RealTimeInfo, StateID, Loc, Rot, ItemIndex, OutOfRange) end

---@param StartPoint FVector2D
---@param EndPoint FVector2D
---@return FVector2D
function UCommMiniMapUtil:GetLineLengthAndAngle(StartPoint, EndPoint) end

---@param WorldObj AActor
---@param StartLocation FVector
---@param EndLocation FVector
---@param PlaneLocation FVector
---@param PlaneRotation FRotator
---@param PlaneSpeed FVector
---@param AirLineParam FAirLineMarkParam
---@param IsClient boolean
---@return FAirLineMarkIDs
function UCommMiniMapUtil:ShowAirLineMark(WorldObj, StartLocation, EndLocation, PlaneLocation, PlaneRotation, PlaneSpeed, AirLineParam, IsClient) end

---@param WorldObj AActor
---@param StartLocation FVector
---@param EndLocation FVector
---@param PlaneLocation FVector
---@param PlaneRotation FRotator
---@param PlaneSpeed FVector
---@param MarkInstanceID FAirLineMarkIDs
---@param AirLineParam FAirLineMarkParam
---@param IsClient boolean
function UCommMiniMapUtil:UpdateAirLineMark(WorldObj, StartLocation, EndLocation, PlaneLocation, PlaneRotation, PlaneSpeed, MarkInstanceID, AirLineParam, IsClient) end

---@param WorldObj AActor
---@param MarkInstanceID FAirLineMarkIDs
---@param AirLineParam FAirLineMarkParam
---@param IsClient boolean
function UCommMiniMapUtil:HideAirLineMark(WorldObj, MarkInstanceID, AirLineParam, IsClient) end

---@param MarkManagerComp UMapUIMarkManager
---@param MiniMapMarkUI UUserWidget
---@param EntireMapMarkUI UUserWidget
---@param CurLocation FVector
---@param bIsEntireMap boolean
function UCommMiniMapUtil:UpdateClientSimulateLocation(MarkManagerComp, MiniMapMarkUI, EntireMapMarkUI, CurLocation, bIsEntireMap) end
