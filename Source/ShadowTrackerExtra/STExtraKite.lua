---@meta

---@class EKiteState
---@field EKS_Close number
---@field EKS_Idle number
---@field EKS_Open number
EKiteState = {}


---30主题风筝载具
---@class ASTExtraKite: ASTExtraAircraftVehicleBase
---@field PowerFireSfxLoop FSTExtraVehicleSfxLoop
---@field bDisableWireOnLand boolean
---@field TimeToFlyAfterDisconnectedToPivot number
---@field DisuseKiteHeight number
---@field KiteStringEffectName string
---@field KiteAttachedVehicleSocket string
---@field DisBackToConnectedVehicle number
---@field TLogAccumulateMoveDisSingle number
---@field TLogAccumulateMoveDisOnVehicle number
---@field KiteState EKiteState
---@field bIsBackToConnectedVehicle boolean
---@field bLosePower boolean
---@field bKiteConnectedToPivot boolean
---@field bKiteConnectToVehicle boolean
local ASTExtraKite = {}

function ASTExtraKite:TickBackToConnectedVehicle() end

---@param InKiteState EKiteState
function ASTExtraKite:SetKiteState(InKiteState) end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraKite:SetConnectedVehicle(InVehicle) end

---@param InFlag boolean
function ASTExtraKite:SetKiteConnectedToPivot(InFlag) end

---@param InFlag boolean
function ASTExtraKite:SetKiteConnectToVehicle(InFlag) end

---@param InFlag boolean
function ASTExtraKite:SetIsBackToConnectedVehicle(InFlag) end

function ASTExtraKite:SetKiteLosePower() end

function ASTExtraKite:ReqDisconnectToPivot() end

function ASTExtraKite:ReqBackToConnectedVehicle() end

---@return boolean
function ASTExtraKite:CheckCanReturnToVehicle() end

function ASTExtraKite:OnRep_bKiteConnectedToPivot() end

function ASTExtraKite:OnRep_bKiteConnectToVehicle() end

function ASTExtraKite:OnRep_bLosePower() end

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraKite:HandleServerExitVehicle(InCharacter, SeatType, IsSucc) end

---@param InCharacter ASTExtraPlayerCharacter
function ASTExtraKite:UploadUseKiteCountTLog(InCharacter) end
