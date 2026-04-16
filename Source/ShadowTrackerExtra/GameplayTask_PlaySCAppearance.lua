---@meta

---@class FGameplayTask_SCAppearanceData
---@field AppearanceName string
---@field AppearanceMaterial UMaterialInterface
---@field AppearanceParticle UParticleSystem
---@field AppearanceProviderClass UScreenAppearanceProvider
---@field LifeSpan number
---@field bNotNeedCheckViewSelf boolean
FGameplayTask_SCAppearanceData = {}


---@class UGameplayTask_PlaySCAppearance: UUAEGameplayTask
---@field Data FGameplayTask_SCAppearanceData
local UGameplayTask_PlaySCAppearance = {}
