---@meta

---This is a mapping table between each bone in a particular skeletal mesh and the tracks of this animation set.
---@class FAnimSetMeshLinkup
---@field BoneToTrackTable ULuaArrayHelper<number> @Mapping table. Size must be same as size of SkelMesh reference skeleton. No index should be more than the number of tracks in this AnimSet. -1 indicates no track for this bone - will use reference pose instead.
FAnimSetMeshLinkup = {}


---@class UAnimSet: UObject
---@field bAnimRotationOnly number @Indicates that only the rotation should be taken from the animation sequence and the translation should come from the USkeletalMesh ref pose. Note that the root bone always takes translation from the animation, even if this flag is set. You can use the UseTranslationBoneNames array to specify other bones that should use translation with this flag set.
---@field TrackBoneNames ULuaArrayHelper<string> @Bone name that each track relates to. TrackBoneName.Num() == Number of tracks.
---@field LinkupCache ULuaArrayHelper<FAnimSetMeshLinkup> @Non-serialised cache of linkups between different skeletal meshes and this AnimSet.
---@field BoneUseAnimTranslation ULuaArrayHelper<number> @Array of booleans that indicate whether or not to read the translation of a bone from animation or ref skeleton. This is basically a cooked down version of UseTranslationBoneNames for speed. Size matches the number of tracks.
---@field ForceUseMeshTranslation ULuaArrayHelper<number> @Cooked down version of ForceMeshTranslationBoneNames
---@field UseTranslationBoneNames ULuaArrayHelper<string> @Names of bones that should use translation from the animation, if bAnimRotationOnly is set.
---@field ForceMeshTranslationBoneNames ULuaArrayHelper<string> @List of bones which are ALWAYS going to use their translation from the mesh and not the animation.
---@field PreviewSkelMeshName string @In the AnimSetEditor, when you switch to this AnimSet, it sees if this skeletal mesh is loaded and if so switches to it.
---@field BestRatioSkelMeshName string @Holds the name of the skeletal mesh whose reference skeleton best matches the TrackBoneName array.
local UAnimSet = {}
