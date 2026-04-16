---@meta

---@class FSimpleCameraInfo
---@field Location FVector
---@field Forward FVector
FSimpleCameraInfo = {}


---@class FHomeCapsuleInfo
---@field bCanChangeCapsuleHalfHeight boolean
---@field CapsuleHalfHeight_StandClassic number
---@field CapsuleHalfHeight_StandBuild number
---@field CapsuleHalfHeight_CrouchClassic number
---@field CapsuleHalfHeight_CrouchBuild number
FHomeCapsuleInfo = {}


---@class UHomePawnMgrComponent: UActorComponent
---@field CameraInfo FSimpleCameraInfo
---@field HomeCapsuleInfo FHomeCapsuleInfo
---@field BuildCameraOffsetData FCameraOffsetData
---@field FlyingCameraOffsetData FCameraOffsetData
---@field ExitCameraOffsetData FCameraOffsetData
---@field m_ePawnClientMutex EHomelandMutexState
---@field m_ePawnState EHomePawnState
local UHomePawnMgrComponent = {}

function UHomePawnMgrComponent:EnterFlyingMode() end

function UHomePawnMgrComponent:ExitFlyingMode() end

---@return boolean
function UHomePawnMgrComponent:IsFlying() end

---@return boolean
function UHomePawnMgrComponent:IsClassicState() end

---@param bAdd boolean
---@param nValue number
function UHomePawnMgrComponent:PlayerAddForce(bAdd, nValue) end

---@param bEnter boolean
function UHomePawnMgrComponent:ReqNotifyPlayerEnterFlying(bEnter) end

---@param LastPanwState EHomePawnState
---@param HomePawnState EHomePawnState
function UHomePawnMgrComponent:SetHomePawnStateCamera(LastPanwState, HomePawnState) end

function UHomePawnMgrComponent:GetPawnState() end

---@param NewHomePawnState EHomePawnState
function UHomePawnMgrComponent:ServerSwitchToNewPawnState(NewHomePawnState) end

---@param NewHomePawnState EHomePawnState
function UHomePawnMgrComponent:ServerSwitchToNewPawnState_Native(NewHomePawnState) end

function UHomePawnMgrComponent:ServerReconnetNotifyPawnState() end

function UHomePawnMgrComponent:ServerReconnetNotifyPawnState_Native() end

function UHomePawnMgrComponent:LocalReconnetNotify() end

---@param eLastState EHomePawnState
---@param eNewState EHomePawnState
function UHomePawnMgrComponent:ClientSwitchToNewPawnState(eLastState, eNewState) end

---@return number
function UHomePawnMgrComponent:GetCameraArmLength() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UHomePawnMgrComponent:OnHomeCharacterAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@return number
function UHomePawnMgrComponent:GetActualCullDistance() end

---@param bIsClassicState boolean
function UHomePawnMgrComponent:ChangeCapsuleHalfHeight(bIsClassicState) end

function UHomePawnMgrComponent:DisuseBuildEqiupment() end

---@param NewCameraInfo FSimpleCameraInfo
function UHomePawnMgrComponent:ServerSetCameraInfo(NewCameraInfo) end
