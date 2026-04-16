---@meta

---@class UFacingTargetComponent: UActorComponent
---@field OnFacedTarget FOnFacedTarget
---@field OnTargetBeginFaced FOnTargetBeginFaced
---@field OnTargetEndFaced FOnTargetEndFaced
---@field FacingSpeed number
---@field bXRotationLocked boolean @Lock rotation about the X-axis
---@field bYRotationLocked boolean @Lock rotation about the Y-axis
---@field bZRotationLocked boolean @Lock rotation about the Z-axis
---@field FacingTarget AActor
---@field FacingTargetSelectableInterface IFacingTargetSelectableInterface
local UFacingTargetComponent = {}

function UFacingTargetComponent:OnRep_FacingTarget() end

---@param InFacingTargetSelectableInterface IFacingTargetSelectableInterface
function UFacingTargetComponent:SetFacingTargetSelectableInterface(InFacingTargetSelectableInterface) end

---@param InCollisionComponent UPrimitiveComponent
function UFacingTargetComponent:SetCollisionComponent(InCollisionComponent) end

---@param InFacingComponent USceneComponent
function UFacingTargetComponent:SetFacingComponent(InFacingComponent) end

---@param DeltaSeconds number
function UFacingTargetComponent:TickFacingTarget(DeltaSeconds) end

---@param DeltaSeconds number
function UFacingTargetComponent:TickFacingTarget_Implementation(DeltaSeconds) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UFacingTargetComponent:OnCollisionComponentBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UFacingTargetComponent:OnCollisionComponentEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
