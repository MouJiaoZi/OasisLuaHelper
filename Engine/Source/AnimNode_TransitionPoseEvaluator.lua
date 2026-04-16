---@meta

---Indicates which state is being evaluated by this node (source or destination).
---@class EEvaluatorDataSource
---@field EDS_SourcePose number @Source Pose
---@field EDS_DestinationPose number @Destination Pose
EEvaluatorDataSource = {}


---Determines the behavior this node will use when updating and evaluating.
---@class EEvaluatorMode
---@field EM_Standard number @DataSource is ticked and evaluated every frame.
---@field EM_Freeze number @DataSource is never ticked and only evaluated on the first frame. Every frame after uses the cached pose from the first frame.
---@field EM_DelayedFreeze number @DataSource is ticked and evaluated for a given number of frames, then freezes after and uses the cached pose for future frames.
EEvaluatorMode = {}


---Animation data node for state machine transitions. Can be set to supply either the animation data from the transition source (From State) or the transition destination (To State).
---@class FAnimNode_TransitionPoseEvaluator
---@field DataSource EEvaluatorDataSource
---@field EvaluatorMode EEvaluatorMode::Mode
---@field FramesToCachePose number
---@field CacheFramesRemaining number
FAnimNode_TransitionPoseEvaluator = {}
