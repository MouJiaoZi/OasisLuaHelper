---@meta

---@class FAnimNode_AssetPlayerBase
---@field bIgnoreForRelevancyTest boolean @If true, "Relevant anim" nodes that look for the highest weighted animation in a state will ignore this node
---@field GroupIndex number
---@field GroupName string
---@field GroupRole EAnimGroupRole
---@field bNeedAnimNotifyWhenNotLeader boolean
---@field bShouldSortWithTimeAccumulator boolean
---@field BlendWeight number @Last encountered blendweight for this node
---@field InternalTimeAccumulator number @Accumulated time used to reference the asset in this node
FAnimNode_AssetPlayerBase = {}
