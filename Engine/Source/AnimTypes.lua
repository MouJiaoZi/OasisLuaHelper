---@meta

---Enum for specifying a specific axis of a bone
---@class EBoneAxis
---@field BA_X number @X Axis
---@field BA_Y number @Y Axis
---@field BA_Z number @Z Axis
EBoneAxis = {}


---Enum for controlling which reference frame a controller is applied in.
---@class EBoneControlSpace
---@field BCS_WorldSpace number @Set absolute position of bone in world space.
---@field BCS_ComponentSpace number @Set position of bone in SkeletalMeshComponent's reference frame.
---@field BCS_ParentBoneSpace number @Set position of bone relative to parent bone.
---@field BCS_BoneSpace number @Set position of bone in its own reference frame.
---@field BCS_MAX number
EBoneControlSpace = {}


---Enum for specifying the source of a bone's rotation.
---@class EBoneRotationSource
---@field BRS_KeepComponentSpaceRotation number @Don't change rotation at all.
---@field BRS_KeepLocalSpaceRotation number @Keep forward direction vector relative to the parent bone.
---@field BRS_CopyFromTarget number @Copy rotation of target to bone.
EBoneRotationSource = {}


---Ticking method for AnimNotifies in AnimMontages.
---@class EMontageNotifyTickType
---@field Queued number @Queue notifies, and trigger them at the end of the evaluation phase (faster). Not suitable for changing sections or montage position.
---@field BranchingPoint number @Trigger notifies as they are encountered (Slower). Suitable for changing sections or montage position.
EMontageNotifyTickType = {}


---Filtering method for deciding whether to trigger a notify.
---@class ENotifyFilterType
---@field NoFiltering number @No filtering.
---@field LOD number @Filter By Skeletal Mesh LOD.
ENotifyFilterType = {}


---Indicates whether an animation is additive, and what kind.
---@class EAdditiveAnimationType
---@field AAT_None number @No additive.
---@field AAT_LocalSpaceBase number @Local Space
---@field AAT_RotationOffsetMeshSpace number @Mesh Space
---@field AAT_MAX number
EAdditiveAnimationType = {}


---@class ECurveBlendOption
---@field MaxWeight number @Find Max Weight of curve and use that weight.
---@field NormalizeByWeight number @Normalize By Sum of Weight and use it to blend.
---@field BlendByWeight number @Blend By Weight without normalizing
ECurveBlendOption = {}


---Indicates how animation should be evaluated between keys.
---@class EAnimInterpolationType
---@field Linear number @Linear interpolation when looking up values between keys.
---@field Step number @Step interpolation when looking up values between keys.
EAnimInterpolationType = {}


---@class EAxisOption
---@field X number
---@field Y number
---@field Z number
---@field X_Neg number
---@field Y_Neg number
---@field Z_Neg number
---@field Custom number
EAxisOption = {}


---@class FPerBoneBlendWeight
---@field SourceIndex number @Source index of the buffer.
---@field BlendWeight number
FPerBoneBlendWeight = {}


---@class FPerBoneBlendWeights
---@field BoneBlendWeights ULuaArrayHelper<FPerBoneBlendWeight>
FPerBoneBlendWeights = {}


---Triggers an animation notify.  Each AnimNotifyEvent contains an AnimNotify object which has its Notify method called and passed to the animation.
---@class FAnimNotifyEvent
---@field DisplayTime_DEPRECATED number @The user requested time for this notify
---@field TriggerTimeOffset number @An offset from the DisplayTime to the actual time we will trigger the notify, as we cannot always trigger it exactly at the time the user wants
---@field EndTriggerTimeOffset number @An offset similar to TriggerTimeOffset but used for the end scrub handle of a notify state's duration
---@field TriggerWeightThreshold number
---@field NotifyName string
---@field Duration number
---@field EndLink FAnimLinkableElement @Linkable element to use for the end handle representing a notify state duration
---@field bConvertedFromBranchingPoint boolean @If TRUE, this notify has been converted from an old BranchingPoint.
---@field MontageTickType EMontageNotifyTickType
---@field NotifyTriggerChance number @Defines the chance of of this notify triggering, 0 = No Chance, 1 = Always triggers
---@field NotifyFilterType ENotifyFilterType @Defines a method for filtering notifies (stopping them triggering) e.g. by looking at the meshes current LOD
---@field NotifyFilterLOD number @LOD to start filtering this notify from.
---@field bTriggerOnDedicatedServer boolean @If disabled this notify will be skipped on dedicated servers
---@field bTriggerOnSequenceChanged boolean
---@field bBroadcastOverPawn boolean
---@field bDisableTriggerByLobbyIgnoreNotifies boolean
---@field bEnableCustomTriggerFunction boolean
---@field CustomTriggerFunctionName string
---@field CustomTriggerTagList ULuaArrayHelper<string>
---@field TrackIndex number @'Track' that the notify exists on, used for visual placement in editor and sorting priority in runtime
---@field bCheckAnimIsolation boolean
---@field bCheckAnimIsolation_OnlyNewFPP boolean
---@field bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode boolean
---@field bIsMontageNotifyCheckSlotNodeRelevant boolean
FAnimNotifyEvent = {}


---@class FAnimSyncMarker
---@field MarkerName string
---@field Time number
FAnimSyncMarker = {}


---Keyframe position data for one track.  Pos(i) occurs at Time(i).  Pos.Num() always equals Time.Num().
---@class FAnimNotifyTrack
---@field TrackName string
---@field TrackColor FLinearColor
FAnimNotifyTrack = {}


---@class FMarkerSyncData
---@field AuthoredSyncMarkers ULuaArrayHelper<FAnimSyncMarker> @Authored Sync markers
FMarkerSyncData = {}
