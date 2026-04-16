---@meta

---@class AEliteProjectileOBCaptureActor: AActor
---@field ProjVelocity FVector
---@field bHasInitVelocity boolean
---@field OffsetTrans FTransform
---@field FollowArmLen number
---@field FollowArmOffset FVector
---@field CirclingAnimArmLen number
---@field CirclingArmOffset FVector
---@field CirclingFarAnimTime number
---@field CirclingAnimTime number
---@field DelayDeactiveTime number
---@field bStartCirclingAnim boolean
---@field CurCirclingAnimTime number
---@field CirclingFarAnimOffset FVector
local AEliteProjectileOBCaptureActor = {}

function AEliteProjectileOBCaptureActor:RegistOBDelegates() end

function AEliteProjectileOBCaptureActor:UnRegistOBDelegates() end

---@param InVelocity FVector
function AEliteProjectileOBCaptureActor:SetProjVelocity(InVelocity) end

---@param InOffsetTrans FTransform
function AEliteProjectileOBCaptureActor:SetOffsetTrans(InOffsetTrans) end

---@param DeltaSeconds number
function AEliteProjectileOBCaptureActor:UpdateCaptureLocation(DeltaSeconds) end

function AEliteProjectileOBCaptureActor:CheckEnterEndCirclingAnim() end

---@param strMsg string
function AEliteProjectileOBCaptureActor:CastGrenadeWindowUIMsg(strMsg) end

---@param isFreeCameraInOB boolean
function AEliteProjectileOBCaptureActor:OnFreeViewChangedDelegate(isFreeCameraInOB) end

function AEliteProjectileOBCaptureActor:OnObserveCharacterSuccess() end
