---@meta

---The possible targets for a physical mesh mask
---@class MaskTarget_PhysMesh
---@field None number
---@field MaxDistance number
---@field BackstopDistance number
---@field BackstopRadius number
MaskTarget_PhysMesh = {}


---@class EClothingWindMethod
---@field Legacy number
---@field Accurate number
EClothingWindMethod = {}


---A mask is simply some storage for a physical mesh parameter painted onto clothing. Used in the editor for users to paint onto and then target to a parameter, which is then later applied to a phys mesh
---@class FClothParameterMask_PhysMesh
---@field MaskName string @Name of the mask, mainly for users to differentiate
---@field CurrentTarget MaskTarget_PhysMesh @The currently targeted parameter for the mask
---@field MaxValue number @The maximum value currently in the mask value array
---@field MinValue number @The maximum value currently in the mask value array
---@field Values ULuaArrayHelper<number> @The actual values stored in the mask
---@field bEnabled boolean @Whether this mask is enabled and able to effect final mesh values
FClothParameterMask_PhysMesh = {}


---@class FClothVertBoneData
---@field NumInfluences number
FClothVertBoneData = {}


---Physical mesh data created during asset import or created from a skeletal mesh
---@class FClothPhysicalMeshData
---@field Vertices ULuaArrayHelper<FVector>
---@field Normals ULuaArrayHelper<FVector>
---@field Indices ULuaArrayHelper<number>
---@field MaxDistances ULuaArrayHelper<number>
---@field BackstopDistances ULuaArrayHelper<number>
---@field BackstopRadiuses ULuaArrayHelper<number>
---@field InverseMasses ULuaArrayHelper<number>
---@field BoneData ULuaArrayHelper<FClothVertBoneData>
---@field MaxBoneWeights number
---@field NumFixedVerts number
---@field SelfCollisionIndices ULuaArrayHelper<number>
FClothPhysicalMeshData = {}


---@class FClothLODData
---@field PhysicalMeshData FClothPhysicalMeshData
---@field CollisionData FClothCollisionData
FClothLODData = {}


---@class FClothConstraintSetup
---@field Stiffness number
---@field StiffnessMultiplier number
---@field StretchLimit number
---@field CompressionLimit number
FClothConstraintSetup = {}


---Holds initial, asset level config for clothing actors.
---@class FClothConfig
---@field WindMethod EClothingWindMethod
---@field VerticalConstraintConfig FClothConstraintSetup
---@field HorizontalConstraintConfig FClothConstraintSetup
---@field BendConstraintConfig FClothConstraintSetup
---@field ShearConstraintConfig FClothConstraintSetup
---@field SelfCollisionRadius number
---@field SelfCollisionStiffness number
---@field SelfCollisionCullScale number @Scale to use for the radius of the culling checks for self collisions. Any other self collision body within the radius of this check will be culled. This helps performance with higher resolution meshes by reducing the number of colliding bodies within the cloth. Reducing this will have a negative effect on performance!
---@field Damping FVector
---@field Friction number
---@field WindDragCoefficient number
---@field WindLiftCoefficient number
---@field LinearDrag FVector
---@field AngularDrag FVector
---@field LinearInertiaScale FVector
---@field AngularInertiaScale FVector
---@field CentrifugalInertiaScale FVector
---@field SolverFrequency number
---@field StiffnessFrequency number
---@field GravityScale number
---@field TetherStiffness number
---@field TetherLimit number
---@field CollisionThickness number
FClothConfig = {}


---Custom data wrapper for clothing assets If writing a new clothing asset importer, creating a new derived custom data is how to store importer (and possibly simulation) data that importer will create. This needs to be set to the CustomData member on the asset your factory creates. Testing whether a UClothingAsset was made from a custom plugin can be achieved with if(AssetPtr->CustomData->IsA(UMyCustomData::StaticClass()))
---@class UClothingAssetCustomData: UObject
local UClothingAssetCustomData = {}


---@class UClothingAsset: UClothingAssetBase
---@field ClothConfig FClothConfig
---@field LodData ULuaArrayHelper<FClothLODData>
---@field LodMap ULuaArrayHelper<number>
---@field UsedBoneNames ULuaArrayHelper<string>
---@field UsedBoneIndices ULuaArrayHelper<number>
---@field ReferenceBoneIndex number
local UClothingAsset = {}
