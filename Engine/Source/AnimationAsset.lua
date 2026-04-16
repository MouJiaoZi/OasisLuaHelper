---@meta

---@class EAnimGroupRole
---@field CanBeLeader number @This node can be the leader, as long as it has a higher blend weight than the previous best leader.
---@field AlwaysFollower number @This node will always be a follower (unless there are only followers, in which case the first one ticked wins).
---@field AlwaysLeader number @This node will always be a leader (if more than one node is AlwaysLeader, the last one ticked wins).
---@field TransitionLeader number @This node will be excluded from the sync group while blending in. Once blended in it will be the sync group leader until blended out
---@field TransitionFollower number @This node will be excluded from the sync group while blending in. Once blended in it will be a follower until blended out
EAnimGroupRole = {}


---Transform definition
---@class FBlendSampleData
---@field SampleDataIndex number
---@field TotalWeight number
---@field Time number
---@field PreviousTime number
---@field SamplePlayRate number
FBlendSampleData = {}


---@class FBlendFilter
FBlendFilter = {}


---@class FMarkerSyncAnimPosition
---@field PreviousMarkerName string @The marker we have passed
---@field NextMarkerName string @The marker we are heading towards
---@field PositionBetweenMarkers number @Value between 0 and 1 representing where we are: 0   we are at PreviousMarker 1   we are at NextMarker 0.5 we are half way between the two
FMarkerSyncAnimPosition = {}


---Information about an animation asset that needs to be ticked 注意：此结构体保存在AnimInstanceProxy上，不能被GC扫描到。
---@class FAnimTickRecord
FAnimTickRecord = {}


---@class FAnimGroupInstance
---@field ActivePlayers ULuaArrayHelper<FAnimTickRecord>
FAnimGroupInstance = {}


---Utility struct to accumulate root motion.
---@class FRootMotionMovementParams
---@field bHasRootMotion boolean
---@field BlendWeight number
---@field RootMotionTransform FTransform
FRootMotionMovementParams = {}


---@class FAnimationGroupReference
---@field GroupName string
---@field GroupRole EAnimGroupRole
---@field bNeedAnimNotifyWhenNotLeader boolean
---@field bShouldSortWithTimeAccumulator boolean
FAnimationGroupReference = {}


---@class UAnimationAsset: UObject, IInterface_AssetUserData
---@field AnimAssetUID number
---@field MetaData ULuaArrayHelper<UAnimMetaData> @Meta data that can be saved with the asset You can query by GetMetaData function
---@field AssetUserData ULuaArrayHelper<UAssetUserData> @Array of user data stored with the asset
---@field bUseBoneRetarget boolean
local UAnimationAsset = {}
