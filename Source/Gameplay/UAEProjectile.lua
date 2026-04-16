---@meta

---@class FProjIsExplodeCPPInfo
---@field IsServerAlreadyExplodedCpp boolean
---@field ServerActorLoc FVector
---@field IsServerAlreadyHidden boolean
FProjIsExplodeCPPInfo = {}


---@class AUAEProjectile: AUAEBuffApplierActor
---@field ProjIsServerExplodeInfo FProjIsExplodeCPPInfo
---@field ProjInitialRelativeOffset FVector
---@field ProjStandOffset FVector
---@field ProjCrouchOffset FVector
---@field ProjProneOffset FVector
---@field ProjVehicleOffset FVector
---@field ProjPrevoisOwnerPose ECharacterPoseType
local AUAEProjectile = {}

---@return boolean
function AUAEProjectile:IsOwnerAutomous() end

function AUAEProjectile:OnRep_IsServerAlreadyExplodedCpp() end

---@param offset FVector
---@param StandOffset FVector
---@param CrouchOffset FVector
---@param ProneOffset FVector
---@param VehicleOffset FVector
---@param PrevoisOwnerPose ECharacterPoseType
function AUAEProjectile:SetActorInitialRelativeOffset(offset, StandOffset, CrouchOffset, ProneOffset, VehicleOffset, PrevoisOwnerPose) end

function AUAEProjectile:IsServerAlreadyExplodedCppNotify() end

---@return number
function AUAEProjectile:GetRemainingEffectTime() end

---@param BuffName string
---@param BuffTarget APawn
function AUAEProjectile:WorkAsBuffApplierEvent(BuffName, BuffTarget) end

function AUAEProjectile:ExplodeImmediately() end

---@param Start FVector
---@param End FVector
function AUAEProjectile:GlassDetect(Start, End) end

---@param pos FVector
function AUAEProjectile:ExplodeNotifyFromBP(pos) end

---@param vel FVector
---@param isHighMode boolean
function AUAEProjectile:StartFlyMulticast_CPP(vel, isHighMode) end

---@param vel FVector
---@param isHighMode boolean
function AUAEProjectile:StartFlyMulticast_BPEvent(vel, isHighMode) end

function AUAEProjectile:TimeoutExplodeMulticast_CPP() end

function AUAEProjectile:TimeoutExplodeMulticast_BPEvent() end
