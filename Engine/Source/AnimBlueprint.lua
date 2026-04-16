---@meta

---@class FAnimGroupInfo
---@field Name string
---@field Color FLinearColor
FAnimGroupInfo = {}


---@class FAnimParentNodeAssetOverride
---@field ParentNodeGuid FGuid
FAnimParentNodeAssetOverride = {}


---An Anim Blueprint is essentially a specialized Blueprint whose graphs control the animation of a Skeletal Mesh. It can perform blending of animations, directly control the bones of the skeleton, and output a final pose for a Skeletal Mesh each frame.
---@class UAnimBlueprint: UBlueprint
---@field Groups ULuaArrayHelper<FAnimGroupInfo>
---@field bUseMultiThreadedAnimationUpdate boolean @Allows this anim Blueprint to update its native update, blend tree, montages and asset players on a worker thread. The compiler will attempt to pick up any issues that may occur with threaded update. For updates to run in multiple threads both this flag and the project setting "Allow Multi Threaded Animation Update" should be set.
---@field bWarnAboutBlueprintUsage boolean @Selecting this option will cause the compiler to emit warnings whenever a call into Blueprint is made from the animation graph. This can help track down optimizations that need to be made.
local UAnimBlueprint = {}
