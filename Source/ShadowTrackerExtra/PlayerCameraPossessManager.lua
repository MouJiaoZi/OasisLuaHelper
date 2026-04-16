---@meta

---业务层相机管理，所有与业务相关的逻辑写在这里
---@class UPlayerCameraPossessManager: UCameraPossessManager
local UPlayerCameraPossessManager = {}

---@param InPlayerCharacter ASTExtraPlayerCharacter
function UPlayerCameraPossessManager:InitFromNewCharacter(InPlayerCharacter) end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UPlayerCameraPossessManager:HandlePlayerPoseChanged(LastPose, NewPose) end

---@param IsInDoor boolean
function UPlayerCameraPossessManager:HandlePlayerIndoorStateChanged(IsInDoor) end

---@param IsInDoor boolean
function UPlayerCameraPossessManager:HandlePlayerIndoorLowerStateChanged(IsInDoor) end

---@param IsEnable boolean
function UPlayerCameraPossessManager:HandlePlayerPoseStateChanged(IsEnable) end

---@param InTargetVehicle ASTExtraVehicleBase
function UPlayerCameraPossessManager:HandleCharacterAttachedToVehcicle(InTargetVehicle) end

---@param InTargetVehicle ASTExtraVehicleBase
function UPlayerCameraPossessManager:HandleCharacterDetachedFromVehicle(InTargetVehicle) end

---@param IsNearDeath boolean
function UPlayerCameraPossessManager:HandlePlayerNearDeath(IsNearDeath) end

---@param IsPeeking boolean
---@param IsPeekingLeft boolean
function UPlayerCameraPossessManager:HandlePlayerPeek(IsPeeking, IsPeekingLeft) end

---@param stateID EPawnState
---@param interruptedBy EPawnState
function UPlayerCameraPossessManager:HandlePlayerStateInterrupted(stateID, interruptedBy) end

---@param EnteredState EPawnState
function UPlayerCameraPossessManager:HandlePlayerStateEnter(EnteredState) end

---@param LeavedState EPawnState
function UPlayerCameraPossessManager:HandlePlayerStateLeave(LeavedState) end

---@param LastFrameVelocity FVector
function UPlayerCameraPossessManager:EnterLandingHeavy(LastFrameVelocity) end
