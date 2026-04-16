---@meta

---DEPRECATED Pairs desired tire friction scale with tire type
---@class FTireFrictionScalePair
---@field FrictionScale number @Friction scale for this type of tire
FTireFrictionScalePair = {}


---Physical materials are used to define the response of a physical object when interacting dynamically with the world.
---@class UPhysicalMaterial: UObject
---@field Friction number @Friction value of surface, controls how easily things can slide on this surface (0 is frictionless, higher values increase the amount of friction)
---@field FrictionCombineMode EFrictionCombineMode @Friction combine mode, controls how friction is computed for multiple materials.
---@field bOverrideFrictionCombineMode boolean @If set we will use the FrictionCombineMode of this material, instead of the FrictionCombineMode found in the project settings.
---@field Restitution number @Restitution or 'bounciness' of this surface, between 0 (no bounce) and 1 (outgoing velocity is same as incoming).
---@field RestitutionCombineMode EFrictionCombineMode @Restitution combine mode, controls how restitution is computed for multiple materials.
---@field bOverrideRestitutionCombineMode boolean @If set we will use the RestitutionCombineMode of this material, instead of the RestitutionCombineMode found in the project settings.
---@field Density number @Used with the shape of the object to calculate its mass properties. The higher the number, the heavier the object. g per cubic cm.
---@field RaiseMassToPower number @Used to adjust the way that mass increases as objects get larger. This is applied to the mass as calculated based on a 'solid' object. In actuality, larger objects do not tend to be solid, and become more like 'shells' (e.g. a car is not a solid piece of metal). Values are clamped to 1 or less.
---@field DestructibleDamageThresholdScale number @How much to scale the damage threshold by on any destructible we are applied to
---@field SurfaceType EPhysicalSurface @To edit surface type for your project, use ProjectSettings/Physics/PhysicalSurface section
---@field TireFrictionScale number @DEPRECATED - Overall tire friction scalar for every type of tire. This value is multiplied against our parents' values.
---@field TireFrictionScales ULuaArrayHelper<FTireFrictionScalePair> @DEPRECATED - Tire friction scales for specific types of tires. These values are multiplied against our parents' values.
local UPhysicalMaterial = {}
