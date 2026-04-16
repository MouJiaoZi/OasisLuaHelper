---@meta

---@class UAvatarBehaviorFeature_ModifyAllMatParams: UAvatarBehaviorFeature
---@field ModifyAllMatBehaviorFeatureParam FModifyAllMatBehaviorFeatureParam
---@field TickLerpInterval number
local UAvatarBehaviorFeature_ModifyAllMatParams = {}

function UAvatarBehaviorFeature_ModifyAllMatParams:BP_PostAvatarRender() end

---@param ItemValue FModifyAllMatBehaviorFeatureParamItem
function UAvatarBehaviorFeature_ModifyAllMatParams:TryStartLerpMatData(ItemValue) end

---@param ItemValue FModifyAllMatBehaviorFeatureParamItem
function UAvatarBehaviorFeature_ModifyAllMatParams:TickLerpMatData(ItemValue) end

---@param Name string
function UAvatarBehaviorFeature_ModifyAllMatParams:ActiveItem(Name) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarBehaviorFeature_ModifyAllMatParams:OnCharacterAvatarLoadFinishedEvent(AsyncLoadID, LoadEventFrom) end

function UAvatarBehaviorFeature_ModifyAllMatParams:CollectAllMatData() end
