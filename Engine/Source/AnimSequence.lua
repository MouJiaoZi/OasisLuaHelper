---@meta

---Indicates animation data key format.
---@class AnimationKeyFormat
---@field AKF_ConstantKeyLerp number
---@field AKF_VariableKeyLerp number
---@field AKF_PerTrackCompression number
---@field AKF_PerTrackVariableBit number
---@field AKF_MAX number
AnimationKeyFormat = {}


---Raw keyframe data for one track.  Each array will contain either NumFrames elements or 1 element. One element is used as a simple compression scheme where if all keys are the same, they'll be reduced to 1 key that is constant over the entire sequence.
---@class FRawAnimSequenceTrack
---@field PosKeys ULuaArrayHelper<FVector> @Position keys.
---@field RotKeys ULuaArrayHelper<FQuat> @Rotation keys.
---@field ScaleKeys ULuaArrayHelper<FVector> @Scale keys.
FRawAnimSequenceTrack = {}


---@class FAnimSequenceTrackContainer
---@field AnimationTracks ULuaArrayHelper<FRawAnimSequenceTrack>
---@field TrackNames ULuaArrayHelper<string>
FAnimSequenceTrackContainer = {}


---@class FTrackToSkeletonMap
---@field BoneTreeIndex number
FTrackToSkeletonMap = {}


---Keyframe position data for one track.  Pos(i) occurs at Time(i).  Pos.Num() always equals Time.Num().
---@class FTranslationTrack
---@field PosKeys ULuaArrayHelper<FVector>
---@field Times ULuaArrayHelper<number>
FTranslationTrack = {}


---Keyframe rotation data for one track.  Rot(i) occurs at Time(i).  Rot.Num() always equals Time.Num().
---@class FRotationTrack
---@field RotKeys ULuaArrayHelper<FQuat>
---@field Times ULuaArrayHelper<number>
FRotationTrack = {}


---Keyframe scale data for one track.  Scale(i) occurs at Time(i).  Rot.Num() always equals Time.Num().
---@class FScaleTrack
---@field ScaleKeys ULuaArrayHelper<FVector>
---@field Times ULuaArrayHelper<number>
FScaleTrack = {}


---Key frame curve data for one track CurveName: Morph Target Name CurveWeights: List of weights for each frame
---@class FCurveTrack
---@field CurveName string
---@field CurveWeights ULuaArrayHelper<number>
FCurveTrack = {}


---@class FCompressedTrack
---@field ByteStream ULuaArrayHelper<number>
---@field Times ULuaArrayHelper<number>
FCompressedTrack = {}


---@class UAnimSequence: UAnimSequenceBase
---@field NumFrames number @Number of raw frames in this sequence (not used by engine - just for informational purposes).
---@field TrackToSkeletonMapTable ULuaArrayHelper<FTrackToSkeletonMap> @In the future, maybe keeping RawAnimSequenceTrack + TrackMap as one would be good idea to avoid inconsistent array size TrackToSkeletonMapTable(i) should contains  track mapping data for RawAnimationData(i).
---@field OverrideChunkFreeTime number
---@field OverrideFollowingChunkSize number
---@field bIshugeAnim number
---@field bImmediateLoadChunk number
---@field bForceUseStreamable number
---@field bUseStreamable number
---@field StreamableAdvanceConfig boolean
---@field StreamableFirstChunkSize number
---@field StreamableFollowingChunkSize number
---@field bIgnoreDirectoryLimit boolean
---@field AdditiveAnimType EAdditiveAnimationType @Additive animation type. *
---@field RefPoseType EAdditiveBasePoseType
---@field RefFrameIndex number
---@field EncodingPkgVersion number @The version of the global encoding package used at the time of import
---@field RetargetSource string @Base pose to use when retargeting
---@field Interpolation EAnimInterpolationType @This defines how values between keys are calculated *
---@field bEnableRootMotion boolean @If this is on, it will allow extracting of root motion *
---@field RootMotionRootLock ERootMotionRootLock @Root Bone will be locked to that position when extracting root motion.*
---@field bForceRootLock boolean @Force Root Bone Lock even if Root Motion is not enabled
---@field bRootMotionSettingsCopiedFromMontage boolean @Have we copied root motion settings from an owning montage
---@field AuthoredSyncMarkers ULuaArrayHelper<FAnimSyncMarker> @Authored Sync markers
---@field CurveForPositionRootSingleAxis UCurveFloat
---@field CurveForOnlySinglePosition UCurveVector
local UAnimSequence = {}
