---@meta

---@class FNianAILevelAttr
FNianAILevelAttr = {}


---@class UNianAIConfigComponent: UActorComponent
---@field NianLevelAttrConfig string
---@field AttrNames ULuaArrayHelper<string>
---@field NianTagConfig string
---@field NianAttrConfig string
---@field ChallengeID number
---@field CheckPlayerReachabilityCD number
---@field StartingPointExtent FVector
---@field EndPointExtent FVector
---@field FilterClass UNavigationQueryFilter
local UNianAIConfigComponent = {}

---@param Actor AActor
---@param Type number
---@param AttrName string
---@return number
function UNianAIConfigComponent:BP_UpdateAttrScale(Actor, Type, AttrName) end

---@param InID number
function UNianAIConfigComponent:ResetChallengeID(InID) end
