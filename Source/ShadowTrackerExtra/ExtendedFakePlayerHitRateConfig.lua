---@meta

---扩展的假玩家命中率配置类 将UFakePlayerHitRateConfig中的所有曲线扩展到20条可配版本
---@class UExtendedFakePlayerHitRateConfig: UDataAsset
---@field PlayerHitRateScaleWithAILevelIndex number
---@field PlayerDamageScaleWithAILevelIndex number
---@field PlayerHitRateScaleWithPlayerHealthIndex number
---@field PlayerDamageScaleWithPlayerHealthIndex number
---@field AIHitRateScaleWithAILevelIndex number
---@field AIDamageScaleWithAILevelIndex number
local UExtendedFakePlayerHitRateConfig = {}
