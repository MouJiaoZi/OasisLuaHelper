---@meta

---哪吒 商业化合作
---@class ASTExtraNeZhaLotus: ASTExtraAircraftVehicleBase
---@field SimulateTargetViewRot FRotator
---@field bEnableUpdateViewRot boolean
---@field bEnableSyncTargetViewRot boolean
---@field bUseSimulateLookRot boolean
---@field bGunADSUseCameraRot boolean
---@field bCanForceSyncRot boolean
---@field bServerSetControlRotationOnVehicleUnreliable boolean
---@field bEnableSimulateSyncRot boolean
---@field bEnableSimulateResetPreviousDesiredRot boolean
---@field bCanPassengerShouldPossesVehicle boolean
---@field bCheckViewTarget boolean
---@field bForceSyncRotThreshold number
---@field LeaveFreeCameraCD number
---@field bEnableSetOwner boolean
---@field LeaveFreeCameraCounter number
---@field bEnableSimulateClientSyncInput boolean
---@field bHasInitDriver boolean
---@field UpPlayEventID number
---@field DownPlayEventID number
---@field bIgnorePostNetReceiveOnLocalControl boolean
---@field bIgnorePostNetReceive boolean
---@field bOnPostNetReceiveUseLocalRot boolean
---@field ExtraSpecialCollisionDataList ULuaArrayHelper<FVehicleSpecialCollisionData>
---@field SpecialModifyCollisionList ULuaArrayHelper<ECollisionChannel>
---@field NeZhaLotusLifeTime number
---@field bModeCanEnableChangeSeat boolean
---@field CantCantChangeSeatModeIDList ULuaArrayHelper<string>
---@field SmartCameraInput FRotator
---@field FreeCameraInput FRotator
---@field CurSmartCameraInput FRotator
---@field CurFreeCameraInput FRotator
---@field LerpSmartCameraInputSpeed number
---@field LerpFreeSmartCameraInputSpeed number
local ASTExtraNeZhaLotus = {}

---@param DeltaTime number
function ASTExtraNeZhaLotus:UpdateViewRot(DeltaTime) end

---@param CurViewRot FRotator
function ASTExtraNeZhaLotus:SyncTargetViewRot(CurViewRot) end

---@param SimulatePassengerViewRot FRotator
---@param bFreeCamera boolean
function ASTExtraNeZhaLotus:SyncSimulateViewRotByPassenger(SimulatePassengerViewRot, bFreeCamera) end

function ASTExtraNeZhaLotus:OnRep_SimulateTargetViewRot() end

---@return FRotator
function ASTExtraNeZhaLotus:GetSimulateViewRot() end

function ASTExtraNeZhaLotus:SynSimulateMoveToServer() end

function ASTExtraNeZhaLotus:InitDriver() end

---@return number
function ASTExtraNeZhaLotus:GetMoveUpInput() end

function ASTExtraNeZhaLotus:ModifyExtraSpecialBodyCollision() end

function ASTExtraNeZhaLotus:UpdatePlayerInput() end

function ASTExtraNeZhaLotus:OnRep_ModeCanEnableChangeSeat() end

function ASTExtraNeZhaLotus:OnRep_SmartCameraInput() end

function ASTExtraNeZhaLotus:OnRep_FreeCameraInput() end

---@param Input FRotator
---@param bFreeCamera boolean
function ASTExtraNeZhaLotus:SyncSmartCameraInput(Input, bFreeCamera) end

---@param Input FRotator
---@param bFreeCamera boolean
function ASTExtraNeZhaLotus:SyncSmartCameraInputUnReliable(Input, bFreeCamera) end

---@param DeltaTime number
function ASTExtraNeZhaLotus:TickOBSmartCamearInputEvent(DeltaTime) end

---@return FRotator
function ASTExtraNeZhaLotus:GetObSmartCamera() end

---@return FRotator
function ASTExtraNeZhaLotus:GetObFreeCamera() end
