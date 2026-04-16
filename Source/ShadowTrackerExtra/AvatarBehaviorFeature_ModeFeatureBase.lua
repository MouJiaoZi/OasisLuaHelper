---@meta

---模式相关特性，一般无法直接复制 仅核心基础参数允许放到基类参数FModeFeatureBaseInfo中 其他均通过接口访问，子类中进行配置获取，UAvatarFuncBranch_ModeFeature中访问形式保持一致
---@class UAvatarBehaviorFeature_ModeFeatureBase: UAvatarBehaviorFeature
---@field ModeFeatureBaseInfo FModeFeatureBaseInfo
local UAvatarBehaviorFeature_ModeFeatureBase = {}

---HOT_UPDATE_PROTECT *****************************************
---@return number
function UAvatarBehaviorFeature_ModeFeatureBase:GetModeFeaturePriority() end

---@param InTargetPickupHandle UBackpackAvatarHandle
---@return boolean
function UAvatarBehaviorFeature_ModeFeatureBase:IsPickupAvatarBlockedByModeFeature(InTargetPickupHandle) end

---@return boolean
function UAvatarBehaviorFeature_ModeFeatureBase:IsMutexBehavior_BlockPickupAvatar() end
