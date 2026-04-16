---@meta

---伴生点组件, 用于配置与主点位关联的伴生点位置和旋转 该组件配置在与主点位相同的Actor上，会被收集到主点位的CompanionPosition和CompanionRotation字段中
---@class UCompanionSpotSceneComponent: UItemSceneComponent
---@field bIsCompanionSpot boolean
local UCompanionSpotSceneComponent = {}

---@return FVector
function UCompanionSpotSceneComponent:GetCompanionWorldLocation() end

---@return FRotator
function UCompanionSpotSceneComponent:GetCompanionWorldRotation() end
