---@meta

---Data for a single sphere primitive in the clothing simulation. This can either be a sphere on its own, or part of a capsule referenced by the indices in FClothCollisionPrim_Capsule
---@class FClothCollisionPrim_Sphere
---@field BoneIndex number
---@field Radius number
---@field LocalPosition FVector
FClothCollisionPrim_Sphere = {}


---Data for a single connected sphere primitive. This should be configured after all spheres have been processed as they are really just indexing the existing spheres
---@class FClothCollisionPrim_SphereConnection
FClothCollisionPrim_SphereConnection = {}


---Data for a single convex element A convex is a collection of planes, in which the clothing will attempt to stay outside of the shape created by the planes combined.
---@class FClothCollisionPrim_Convex
---@field Planes ULuaArrayHelper<FPlane>
---@field BoneIndex number
FClothCollisionPrim_Convex = {}


---@class FClothCollisionData
---@field Spheres ULuaArrayHelper<FClothCollisionPrim_Sphere>
---@field SphereConnections ULuaArrayHelper<FClothCollisionPrim_SphereConnection>
---@field Convexes ULuaArrayHelper<FClothCollisionPrim_Convex>
FClothCollisionData = {}
