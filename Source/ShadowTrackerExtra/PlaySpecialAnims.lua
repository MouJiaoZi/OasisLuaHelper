---@meta

---@class FAnimPair
FAnimPair = {}


---@class FPlayAnimConfig
---@field playStartTime number
---@field playRandom boolean
---@field playCertainAnim number
FPlayAnimConfig = {}


---@class FAnimGroup
---@field probability number
---@field StartPosition string
---@field AnimationPairs ULuaArrayHelper<FAnimPair>
---@field SoundDistanceSquared number
FAnimGroup = {}


---@class USkeletalMeshCompAgent: UObject
---@field animStartTime number
---@field animLength number
---@field isPlaying boolean
local USkeletalMeshCompAgent = {}


---@class APlaySpecialAnims: AActor
---@field DestroyAfterTime number
---@field NeedSyncPlay boolean
---@field BoundsScale number
---@field PlayAnimTime ULuaArrayHelper<FPlayAnimConfig>
---@field bShowEditorArrow boolean
---@field AnimationGroups ULuaArrayHelper<FAnimGroup>
---@field SKMeshComs ULuaArrayHelper<USkeletalMeshCompAgent>
---@field bDrawDebugSphere number
local APlaySpecialAnims = {}

---@param index number
function APlaySpecialAnims:PlayAnimationByIndex(index) end
