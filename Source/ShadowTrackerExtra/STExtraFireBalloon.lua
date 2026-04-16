---@meta

---@class EMaxFlyHeightType
---@field RelativeToInitialHeight number
---@field WorldAbsoluteHeight number
EMaxFlyHeightType = {}


---@class EMoveState
---@field None number
---@field RiseUp number
---@field FallDown number
EMoveState = {}


---@class UFireBalloonMovementComponent: UFloatingPawnMovement
---@field MaxFlyHeightType EMaxFlyHeightType
---@field MaxFlyHeight number
---@field InitialMaxTarceDist number
---@field OnFireBalloonImpactDelegate FOnFireBalloonImpactDelegate
---@field InitialLocation FVector
local UFireBalloonMovementComponent = {}

---@return number
function UFireBalloonMovementComponent:GetMaxFlyHeight() end

---@param Hit FHitResult
---@param TimeSlice number
---@param MoveDelta FVector
function UFireBalloonMovementComponent:ReceiveOnImpact(Hit, TimeSlice, MoveDelta) end


---@class ASTExtraFireBalloon: AActor, IDynamicMovementBaseInterface
---@field MapMarkTypeID number
---@field MapMarkFlag EAddMarkFlag
---@field bIsMapMarkRotation boolean
---@field MoveUpValue number
---@field MovementSmoothMode ELerpInterpolationMode
---@field MovementSmoothAlpha number
---@field MoveUpScale number
---@field bAutoFallOff boolean
---@field AutoFallOffSpeed number
---@field MoveState EMoveState
---@field ControlInputVector FVector @Accumulated control input vector, stored in world space. This is the pending input, which is cleared (zeroed) once consumed.
---@field LastControlInputVector FVector @The last control input vector that was processed by ConsumeMovementInputVector().
---@field TickInterval number
---@field InitialLocation FVector
---@field CheckOverlapInterval number
local ASTExtraFireBalloon = {}

---@param RealViewer AActor
---@param ViewTarget AActor
---@param SrcLocation FVector
---@return boolean
function ASTExtraFireBalloon:BlueprintIsNetRelevantFor(RealViewer, ViewTarget, SrcLocation) end

---@param PrevDriver APawn
function ASTExtraFireBalloon:OnRep_Driver(PrevDriver) end

function ASTExtraFireBalloon:OnRep_MoveUpValue() end

function ASTExtraFireBalloon:OnRep_InitialLocation() end

---@param InPawn APawn
function ASTExtraFireBalloon:SetDriver(InPawn) end

---@param InPawn APawn
function ASTExtraFireBalloon:SetParachuteServerAuthorized(InPawn) end

---@param InPawn APawn
---@return boolean
function ASTExtraFireBalloon:CanBeDriver(InPawn) end

---@param InMoveUpValue number
function ASTExtraFireBalloon:SetMoveUpValue(InMoveUpValue) end

---@param OverlapActor AActor
function ASTExtraFireBalloon:OnTriggerEnter(OverlapActor) end

---@param OverlapActor AActor
function ASTExtraFireBalloon:OnTriggerLeave(OverlapActor) end
