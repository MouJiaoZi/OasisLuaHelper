---@meta

---@class EDropItemParitcleloadType
---@field StrongReference number @强引用
---@field SoftReference number @软引用
EDropItemParitcleloadType = {}


---@class FDropItemPerformanceBase
FDropItemPerformanceBase = {}


---@class FDropItemPerformance_Parabola
---@field ParabolicRangeHigh FVector2D
---@field ParabolicStartOffset FVector
---@field GravityCoefficient number
---@field bEnableDropInWater boolean
---@field bUseTrailParticle boolean
---@field bUseItemSelfTrailEffect boolean
---@field TrailEffectLoadType EDropItemParitcleloadType
---@field SoftTrailParticlePath FSoftObjectPath
---@field TrailParticleScale number
---@field TrailParticleLifeTime number
---@field SpecialTrailParticle FDropItemSpecialParticle
---@field bUseGroundParticle boolean
---@field bUseItemSelfGroundEffect boolean
---@field GroundEffectLoadType EDropItemParitcleloadType
---@field SoftGroundParticlePath FSoftObjectPath
---@field GroundParticleScale number
---@field GroundParticleLifeTime number
---@field SpecialGroundParticle FDropItemSpecialParticle
---@field DropItemAnimGroupList ULuaArrayHelper<FDropItemAnimGroup>
FDropItemPerformance_Parabola = {}


---@class FDropItemPerformanceSelector
---@field PerformanceMethod EDropItemPerformanceMethod
---@field DropItemPerformance_Parabola FDropItemPerformance_Parabola
---@field DropItemPerformance_Invalid FDropItemPerformanceBase
FDropItemPerformanceSelector = {}
