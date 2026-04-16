---@meta

---@class FPhysicalAnimationProfile
---@field ProfileName string @Profile name used to identify set of physical animation parameters
---@field PhysicalAnimationData FPhysicalAnimationData @Physical animation parameters used to drive animation
FPhysicalAnimationProfile = {}


---PhysicsAsset contains a set of rigid bodies and constraints that make up a single ragdoll. The asset is not limited to human ragdolls, and can be used for any physical simulation using bodies and constraints. A SkeletalMesh has a single PhysicsAsset, which allows for easily turning ragdoll physics on or off for many SkeletalMeshComponents The asset can be configured inside the Physics Asset Editor.
---@class UPhysicsAsset: UObject
---@field BoundsBodies ULuaArrayHelper<number> @Index of bodies that are marked bConsiderForBounds
---@field SkeletalBodySetups ULuaArrayHelper<USkeletalBodySetup> @Array of SkeletalBodySetup objects. Stores information about collision shape etc. for each body. Does not include body position - those are taken from mesh.
---@field ConstraintSetup ULuaArrayHelper<UPhysicsConstraintTemplate> @Array of RB_ConstraintSetup objects. Stores information about a joint between two bodies, such as position relative to each body, joint limits etc.
---@field bUseAsyncScene number @If true, bodies of the physics asset will be put into the asynchronous physics scene. If false, they will be put into the synchronous physics scene.
---@field BodySetup_DEPRECATED ULuaArrayHelper<UBodySetup> @Editor only arrays that are used for rename operations in pre/post edit change
local UPhysicsAsset = {}


---@class USkeletalBodySetup: UBodySetup
---@field bClientOnlyBody boolean
---@field PhysicalAnimationData ULuaArrayHelper<FPhysicalAnimationProfile>
local USkeletalBodySetup = {}
