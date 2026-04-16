---@meta

---@class FScreenAppearanceConsolidateConfig
---@field A UScreenAppearanceProvider
---@field B UScreenAppearanceProvider
---@field To UScreenAppearanceProvider
FScreenAppearanceConsolidateConfig = {}


---@class FScreenAppearancePending
---@field To UScreenAppearanceProvider
FScreenAppearancePending = {}


---@class FConsolidatedProvider
FConsolidatedProvider = {}


---@class FScreenAppearanceConsolidator
---@field Configs ULuaArrayHelper<FScreenAppearanceConsolidateConfig>
---@field ConsolidatedProviders ULuaArrayHelper<FConsolidatedProvider>
FScreenAppearanceConsolidator = {}
