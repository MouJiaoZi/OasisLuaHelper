---@meta

---@class UThrustComponent: UActorComponent
---@field bCanPush boolean
---@field bBindHitCheck boolean
---@field bBindOverlapCheck boolean
---@field bCalcDirectionBaseActorLocation boolean
---@field BindOverlapCompoents ULuaArrayHelper<FActorComponentSelector>
---@field NoDetectTag string
---@field FixedForce number
---@field FixedForceZ number
---@field bSetMovementModeToFalling boolean
---@field bCheckVelocity boolean
---@field bPushPerpendicular boolean
---@field VelocityDirectionProjectionThreshold number
---@field DetectComponentCaches ULuaArrayHelper<UStaticMeshComponent>
---@field DetectOverlapComponentCaches ULuaArrayHelper<UPrimitiveComponent>
---@field IgnoreActorList ULuaArrayHelper<AActor>
---@field PushedActorList ULuaArrayHelper<AActor>
local UThrustComponent = {}

---@param InIgnoreActorList ULuaArrayHelper<AActor>
function UThrustComponent:StartCheck(InIgnoreActorList) end

function UThrustComponent:StopCheck() end

function UThrustComponent:InitDetectComponents() end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UThrustComponent:OnHitHandle(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@param Compoent UPrimitiveComponent
---@param OtherActor AActor
function UThrustComponent:OnOverlapHandle(Compoent, OtherActor) end

---@param HitCompVelocity FVector
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
---@param bInCheckVelocity boolean
---@return boolean
function UThrustComponent:CanPush(HitCompVelocity, HitComponent, OtherActor, OtherComp, NormalImpulse, Hit, bInCheckVelocity) end

---@param HitCompVelocity FVector
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
---@param bInPushPerpendicular boolean
---@param bInCheckVelocity boolean
---@return FVector
function UThrustComponent:CalculatePushVelocity(HitCompVelocity, HitComponent, OtherActor, OtherComp, NormalImpulse, Hit, bInPushPerpendicular, bInCheckVelocity) end

---@param HitCompVelocity FVector
---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
---@param bInPushPerpendicular boolean
---@param bInCheckVelocity boolean
function UThrustComponent:Push(HitCompVelocity, HitComponent, OtherActor, OtherComp, NormalImpulse, Hit, bInPushPerpendicular, bInCheckVelocity) end

---@param Compoent UPrimitiveComponent
---@param IgonreList ULuaArrayHelper<AActor>
function UThrustComponent:TickOverlap(Compoent, IgonreList) end
