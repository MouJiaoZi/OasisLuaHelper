---@meta

---A single entry for a blend scale within a profile, mapping a bone to a blendscale
---@class FBlendProfileBoneEntry
---@field BoneReference FBoneReference
---@field BlendScale number
FBlendProfileBoneEntry = {}


---A blend profile is a set of per-bone scales that can be used in transitions and blend lists to tweak the weights of specific bones. The scales are applied to the normal weight for that bone
---@class UBlendProfile: UObject, IInterpolationIndexProvider
---@field ProfileEntries ULuaArrayHelper<FBlendProfileBoneEntry>
local UBlendProfile = {}
