---@meta

---@class FSeekingState
---@field None number
---@field FreeFall number
---@field Seeking number
FSeekingState = {}


---@class APVEMissle: APVEProjectileBase
---@field AdjustmentSpeed number
---@field bIsSeekingNow boolean
---@field bUseGravity boolean
---@field bSyncingLocation boolean
---@field SyncLocation FVector
---@field SyncInterval number
---@field SyncSpeed number
---@field RotateSpeed number
---@field RotatePitch number
---@field CrouchOffset FVector
---@field DyingOffset FVector
---@field OpenCollisionTime number
---@field SeekingHitChannel ECollisionChannel
---@field NotSeekingHitChannel ECollisionChannel
---@field CachedSyncDeltaTime number
---@field LiveTime number
---@field OpenCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field CloseCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field AuthorOpenCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field bEnableHitTick boolean
---@field CheckClientHitDistance number
---@field CheckServerHitDistance number
---@field HasHitCharacterSuccess boolean
---@field IsShouldBounceCollisionChannel ECollisionChannel
---@field IsNotShouldBounceCollisionChannel ECollisionChannel
---@field bUseCompReplicatorOpt boolean
---@field planeActor AActor
local APVEMissle = {}

function APVEMissle:HandleSeekCollision() end

---@param DeltaTime number
function APVEMissle:SetSyncLocation(DeltaTime) end

---@param DeltaTime number
function APVEMissle:SetGravityByTime(DeltaTime) end

function APVEMissle:RotateRootComp() end

function APVEMissle:CheckHitTick() end

function APVEMissle:OnSyncLocation() end

---@param DeltaTime number
function APVEMissle:SeekingTarget(DeltaTime) end

---@param HitResult FHitResult
function APVEMissle:HitPawnWhenSeeking(HitResult) end

---@param HitResult FHitResult
function APVEMissle:HitPawnWhenNotSeeking(HitResult) end

---@param HitResult FHitResult
---@return boolean
function APVEMissle:CheckClientHitCharacter(HitResult) end

---@param HitResult FHitResult
function APVEMissle:ClientHitCharacter(HitResult) end

---@param HitResult FHitResult
function APVEMissle:OnClientHitCharacter(HitResult) end

---@param TargetPos FVector
function APVEMissle:ResetPos(TargetPos) end

function APVEMissle:OpenPlayerPawnCollision() end

---@return boolean
function APVEMissle:IsOwnerViewedToController() end

---@param PC ASTExtraPlayerController
---@param RescueWho ASTExtraBaseCharacter
function APVEMissle:OnRescueFinishSuccessfully(PC, RescueWho) end
