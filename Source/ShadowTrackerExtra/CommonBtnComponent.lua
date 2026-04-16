---@meta

---@class FDoorNetInfo
---@field DoorStateValue number
---@field DoorNetGUID number
FDoorNetInfo = {}


---@class UCommonBtnComponent: UActorComponent
---@field InRangeDoorList ULuaArrayHelper<APUBGDoor>
---@field bOutRangeTryEndOverride boolean
---@field bInRangeTryEndOverride boolean
---@field InRangeDoorListSize number
---@field CheckRangeSize number
---@field CheckRangeSizeOffset number
---@field CheckRangeInterval number
---@field CurrentCheckRangeFrames number
---@field HitInRangeFrameInterval number
---@field HitOutRangeFrameInterval number
---@field HitDoorUseSweep boolean
---@field DebugDrawShape boolean
---@field DebugDrawShapeTime number
---@field OpenDoorDisSq number
---@field IsUGCCacheDoorList boolean
---@field ChenkDistanceUseRange boolean
---@field CanUsePathNameMapping boolean
---@field bOnlyRepNotNetRelevantDoor boolean
---@field bForceRepNotNetRelevantDoorList boolean
---@field ForceRepNotNetRelevantDoorListTime number
---@field CheckNotNetRelevantDoorTime number
---@field CurNotNetRelevantDoorTime number
---@field CheckDistanceCell number
---@field CheckNotNetRelevantDoorDistanceSqr number
---@field CheckNotNetRelevantDoorRange number
---@field CheckNotNetRelevantDoorRangeOnVeryLowDevice number
---@field NotCheckCellDoorSubValue number
---@field NotCheckCellDoorSubValueOnVeryLowDevice number
---@field LastCheckCellX number
---@field LastCheckCellY number
---@field WorldLeftBottom FVector
---@field LastCheckLocation FVector
---@field NotNetRelevantDoorList ULuaArrayHelper<FDoorNetInfo>
---@field NotNetRelevantDoorMap ULuaMapHelper<number, number>
---@field DoorIDActorMap ULuaMapHelper<number, APUBGDoor>
---@field DoorPathIDMap ULuaMapHelper<string, number>
---@field CachePlayerName string
---@field CacheDoorDoorList ULuaArrayHelper<APUBGDoor>
local UCommonBtnComponent = {}

---@param actionDoor APUBGDoor
---@param bAimingExtraDoor boolean
---@param IsSimulate boolean
function UCommonBtnComponent:DoorRequireRPC(actionDoor, bAimingExtraDoor, IsSimulate) end

---@param bEnable boolean
function UCommonBtnComponent:SetAutoOpenDoorEnable(bEnable) end

---@param mode number
function UCommonBtnComponent:SetAutoOpenDoorMode(mode) end

---@param bShow boolean
---@param bOpen boolean
---@param doorOpenMode number
function UCommonBtnComponent:BP_ShowDoorBtn(bShow, bOpen, doorOpenMode) end

function UCommonBtnComponent:UpdateDoorBtnShow() end

---@param bExtraDoor boolean
---@param IsAutoOpen boolean
function UCommonBtnComponent:BP_SimulateUIClick(bExtraDoor, IsAutoOpen) end

---@param actionDoor APUBGDoor
---@return boolean
function UCommonBtnComponent:IsAimingExtraDoor(actionDoor) end

function UCommonBtnComponent:UpdateClientPlayerInDoorRange() end

function UCommonBtnComponent:UpdateClientPlayerOurDoorRange() end

---@param NewPawn APawn
function UCommonBtnComponent:ControllerOnRepNewPawn(NewPawn) end

---@param NewCharacter ASTExtraBaseCharacter
function UCommonBtnComponent:ControllerOnRepNewCharacter(NewCharacter) end

---@param NewPawn APawn
function UCommonBtnComponent:ClearDoorCache(NewPawn) end

---@param InPawn APawn
---@param InDoor APUBGDoor
---@return boolean
function UCommonBtnComponent:PlayerIsInDoorAABB(InPawn, InDoor) end

---@param InDoorActor APUBGDoor
function UCommonBtnComponent:AddDoorToMap(InDoorActor) end

---@param InDoorActor APUBGDoor
function UCommonBtnComponent:RemoveDoorFromMap(InDoorActor) end

---@param InDoorActor APUBGDoor
---@return number
function UCommonBtnComponent:GetDoorState(InDoorActor) end

---@param InDoorActor APUBGDoor
---@param InState number
function UCommonBtnComponent:SetDoorState(InDoorActor, InState) end

---@param InDoorActor APUBGDoor
function UCommonBtnComponent:UpdateDoorInfoState(InDoorActor) end

---@param InDeltaTime number
function UCommonBtnComponent:UpdateNotNetRelevantDoorList(InDeltaTime) end

function UCommonBtnComponent:OnRep_NotNetRelevantDoorList() end

---@param InUseControllerList boolean
function UCommonBtnComponent:DoRepNotNetRelevantDoorList(InUseControllerList) end

---@return boolean
function UCommonBtnComponent:GetCanUsePathNameMapping() end

---@param DoorPathName string
---@return number
function UCommonBtnComponent:FindDoorGUIDWithPath(DoorPathName) end

function UCommonBtnComponent:RepDoorListToClient() end

---@param ErrorMsg string
function UCommonBtnComponent:ClientReportErrorMsg(ErrorMsg) end

---@param InPos FVector
---@param OutDoorList ULuaArrayHelper<APUBGDoor>
---@param NotCheckRange number
---@param CheckDoorDis number
function UCommonBtnComponent:GetDoorActorList(InPos, OutDoorList, NotCheckRange, CheckDoorDis) end
