---@meta

---@class FOnAsyncPhysicsCookFinished : ULuaSingleDelegate
FOnAsyncPhysicsCookFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAsyncPhysicsCookFinished:Bind(Callback, Obj) end

---执行委托
function FOnAsyncPhysicsCookFinished:Execute() end


---BodySetup contains all collision information that is associated with a single asset. A single BodySetup instance is shared among many BodyInstances so that geometry data is not duplicated. Assets typically implement a GetBodySetup function that is used during physics state creation.
---@class UBodySetup: UObject
---@field AggGeom any @Simplified collision representation of this
---@field BoneName string @Used in the PhysicsAsset case. Associates this Body with Bone in a skeletal mesh.
---@field PhysicsType EPhysicsType @If simulated it will use physics, if kinematic it will not be affected by physics, but can interact with physically simulated bodies. Default will inherit from OwnerComponent's behavior.
---@field bAlwaysFullAnimWeight_DEPRECATED number @If true (and bEnableFullAnimWeightBodies in SkelMeshComp is true), the physics of this bone will always be blended into the skeletal mesh, regardless of what PhysicsWeight of the SkelMeshComp is. This is useful for bones that should always be physics, even when blending physics in and out for hit reactions (eg cloth or pony-tails).
---@field bConsiderForBounds number @Should this BodySetup be considered for the bounding box of the PhysicsAsset (and hence SkeletalMeshComponent). There is a speed improvement from having less BodySetups processed each frame when updating the bounds.
---@field bMeshCollideAll number @If true, the physics of this mesh (only affects static meshes) will always contain ALL elements from the mesh - not just the ones enabled for collision. This is useful for forcing high detail collisions using the entire render mesh.
---@field bDoubleSidedGeometry number @If true, the physics triangle mesh will use double sided faces when doing scene queries. This is useful for planes and single sided meshes that need traces to work on both sides.
---@field bGenerateNonMirroredCollision number @Should we generate data necessary to support collision on normal (non-mirrored) versions of this body.
---@field bSharedCookedData number @Whether the cooked data is shared by multiple body setups. This is needed for per poly collision case where we don't want to duplicate cooked data, but still need multiple body setups for in place geometry changes
---@field bGenerateMirroredCollision number @Should we generate data necessary to support collision on mirrored versions of this mesh. This halves the collision data size for this mesh, but disables collision on mirrored instances of the body.
---@field bUsedPhysSimpleStaticMesh number
---@field PhysSimpleStaticMeshList ULuaArrayHelper<UStaticMesh>
---@field CollisionReponse EBodyCollisionResponse @Collision Type for this body. This eventually changes response to collision to others *
---@field bCollisionPerShape number @Whether or not can shapes use different Collision Type in one bone. subbmit by elvisxu *
---@field SphereCollisionEnabledList ULuaArrayHelper<ECollisionEnabled> @Collision Type per sphere list for this bone. In order to validate it must set bCollisionPerShape to true. subbmit by elvisxu *
---@field CapsuleCollisionEnabledList ULuaArrayHelper<ECollisionEnabled> @Collision Type per capsule list for this bone. In order to validate it must set bCollisionPerShape to true. subbmit by elvisxu *
---@field BoxCollisionEnabledList ULuaArrayHelper<ECollisionEnabled> @Collision Type per capsule list for this bone. In order to validate it must set bCollisionPerShape to true. subbmit by elvisxu *
---@field ConvexCollisionEnabledList ULuaArrayHelper<ECollisionEnabled> @Collision Type per convex list for this bone. In order to validate it must set bCollisionPerShape to true. subbmit by elvisxu *
---@field TriMeshesCollisionEnabledList ULuaArrayHelper<ECollisionEnabled> @Collision Type per trimeshes list for this bone. In order to validate it must set bCollisionPerShape to true. subbmit by elvisxu *
---@field CollisionTraceFlag ECollisionTraceFlag @Collision Trace behavior - by default, it will keep simple(convex)/complex(per-poly) separate *
---@field DefaultInstance any @Default properties of the body instance, copied into objects on instantiation, was URB_BodyInstance
---@field WalkableSlopeOverride any @Custom walkable slope setting for this body.
---@field BuildScale_DEPRECATED number
---@field BuildScale3D FVector @Build scale for this body setup (static mesh settings define this value)
local UBodySetup = {}
