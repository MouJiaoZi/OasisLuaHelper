---@meta

---Struct defining a RootMotionExtractionStep. When extracting RootMotion we can encounter looping animations (wrap around), or different animations. We break those up into different steps, to help with RootMotion extraction, as we can only extract a contiguous range per AnimSequence.
---@class FRootMotionExtractionStep
---@field StartPosition number @Start position to extract root motion from.
---@field EndPosition number @End position to extract root motion to.
FRootMotionExtractionStep = {}


---this is anim segment that defines what animation and how *
---@class FAnimSegment
---@field StartPos number @Start Pos within this AnimCompositeBase
---@field AnimStartTime number @Time to start playing AnimSequence at.
---@field AnimEndTime number @Time to end playing the AnimSequence at.
---@field AnimPlayRate number @Playback speed of this animation. If you'd like to reverse, set -1
---@field LoopingCount number
FAnimSegment = {}


---This is list of anim segments for this track For now this is only one TArray, but in the future we should define more transition/blending behaviors
---@class FAnimTrack
---@field AnimSegments ULuaArrayHelper<FAnimSegment>
FAnimTrack = {}


---@class UAnimCompositeBase: UAnimSequenceBase
local UAnimCompositeBase = {}
