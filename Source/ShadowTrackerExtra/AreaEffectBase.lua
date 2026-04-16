---@meta

---区域效果基类 - 所有具体效果对象的基类
---@class UAreaEffectBase: UObject, IAreaEffectInterface
---@field EffectID string
---@field EffectName string
---@field EffectDescription string
---@field bEnabled boolean
---@field bApplyOnEnter boolean
---@field bApplyOnLeave boolean
---@field bApplyOnTick boolean
---@field RequiredTags FGameplayTagContainer
---@field BlockedTags FGameplayTagContainer
---@field Priority number
local UAreaEffectBase = {}

---@param TargetActor AActor
---@return boolean
function UAreaEffectBase:CheckActorTags(TargetActor) end

---@param TargetActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
---@param AreaController ACustomAreaControllerActor
function UAreaEffectBase:ExecuteEffect(TargetActor, AreaComponent, AreaController) end
