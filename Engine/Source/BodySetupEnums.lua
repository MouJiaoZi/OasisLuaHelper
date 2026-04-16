---@meta

---@class ECollisionTraceFlag
---@field CTF_UseDefault number @Use project physics settings (DefaultShapeComplexity)
---@field CTF_UseSimpleAndComplex number @Create both simple and complex shapes. Simple shapes are used for regular scene queries and collision tests. Complex shape (per poly) is used for complex scene queries.
---@field CTF_UseSimpleAsComplex number @Create only simple shapes. Use simple shapes for all scene queries and collision tests.
---@field CTF_UseComplexAsSimple number @Create only complex shapes (per poly). Use complex shapes for all scene queries and collision tests. Can be used in simulation for static shapes only (i.e can be collided against but not moved through forces or velocity.)
---@field CTF_MAX number
ECollisionTraceFlag = {}


---@class EPhysicsType
---@field PhysType_Default number @Follow owner.
---@field PhysType_Kinematic number @Do not follow owner, but make kinematic.
---@field PhysType_Simulated number @Do not follow owner, but simulate.
EPhysicsType = {}


---@class EBodyCollisionResponse
---@field BodyCollision_Enabled number @Enabled
---@field BodyCollision_Disabled number @Disabled
EBodyCollisionResponse = {}
