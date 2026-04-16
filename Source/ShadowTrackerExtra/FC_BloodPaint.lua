---@meta

---@class UFC_BloodPaint: UFeatureCustomModule
---@field GlobalBloodDecalLimit number
---@field MyDecalIds ULuaArrayHelper<number>
---@field DeathBloodSetting FBloodSetting
local UFC_BloodPaint = {}

---@param Owner AActor
---@param EventInstigater AController
---@param DamageType number
function UFC_BloodPaint:OnClearOnDeathByPose(Owner, EventInstigater, DamageType) end
