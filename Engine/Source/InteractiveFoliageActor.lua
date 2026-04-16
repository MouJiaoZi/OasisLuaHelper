---@meta

---@class AInteractiveFoliageActor: AStaticMeshActor
---@field TouchingActorEntryPosition FVector @Position of the last actor to enter the collision cylinder. This currently does not handle multiple actors affecting the foliage simultaneously.
---@field FoliageVelocity FVector @Simulated physics state
---@field FoliageForce FVector
---@field FoliagePosition FVector
---@field FoliageDamageImpulseScale number @Scales forces applied from damage events.
---@field FoliageTouchImpulseScale number @Scales forces applied from touch events.
---@field FoliageStiffness number @Determines how strong the force that pushes toward the spring's center will be.
---@field FoliageStiffnessQuadratic number @Same as FoliageStiffness, but the strength of this force increases with the square of the distance to the spring's center. This force is used to prevent the spring from extending past a certain point due to touch and damage forces.
---@field FoliageDamping number @Determines the amount of energy lost by the spring as it oscillates. This force is similar to air friction.
---@field MaxDamageImpulse number @Clamps the magnitude of each damage force applied.
---@field MaxTouchImpulse number @Clamps the magnitude of each touch force applied.
---@field MaxForce number @Clamps the magnitude of combined forces applied each update.
---@field Mass number
local AInteractiveFoliageActor = {}

---Called when capsule is touched
---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param OverlapInfo FHitResult
function AInteractiveFoliageActor:CapsuleTouched(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, OverlapInfo) end
