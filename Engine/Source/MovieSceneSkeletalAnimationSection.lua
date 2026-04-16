---@meta

---For MovieSceneSkeletalAnimation MultipleDeviceGrade Feature Start *************************************************************
---@class FMovieSceneSkeletalAnimation_MultipleDeviceGrade
---@field DeviceGrade_Min number
---@field DeviceGrade_Max number
FMovieSceneSkeletalAnimation_MultipleDeviceGrade = {}


---For MovieSceneSkeletalAnimation MultipleDeviceGrade Feature End *************************************************************
---@class FMovieSceneSkeletalAnimationParams
---@field MultipleDeviceGradeAnimList ULuaArrayHelper<FMovieSceneSkeletalAnimation_MultipleDeviceGrade>
---@field StartOffset number @The offset into the beginning of the animation clip
---@field EndOffset number @The offset into the end of the animation clip
---@field PlayRate number @The playback rate of the animation clip
---@field bReverse number @Reverse the playback of the animation clip
---@field SlotName string @The slot name to use for the animation
---@field Weight FRichCurve @The weight curve for this animation section
---@field BlendOutTime number @BlendOutTimeWhenStop
---@field bClearPose number @clear the cached pose
---@field bForceUseTPP number @if use TPP when player is in Newfpp
---@field bSetSequenceEvalReinitStartPosition number @SetSequenceEvalReinit  to StartPosition
---@field bApplySubAnim number @Apply Anim To SubAnim
---@field ApplyAvatarSlot ULuaArrayHelper<number> @Apply Anim To Avatar
---@field DisableBoneResolve ULuaArrayHelper<number> @Apply Anim To SubAnim
FMovieSceneSkeletalAnimationParams = {}


---Movie scene section that control skeletal animation
---@class UMovieSceneSkeletalAnimationSection: UMovieSceneSection
---@field Params FMovieSceneSkeletalAnimationParams
---@field StartOffset_DEPRECATED number
---@field EndOffset_DEPRECATED number
---@field PlayRate_DEPRECATED number
---@field bReverse_DEPRECATED number
---@field bClearPose_DEPRECATED number
---@field bForceUseTPP_DEPRECATED number
---@field bSetSequenceEvalReinitStartPosition_DEPRECATED number
---@field SlotName_DEPRECATED string
local UMovieSceneSkeletalAnimationSection = {}
