---@meta

---An integral key, which holds the key time and the key value
---@class FIntegralKey
---@field Time number @The keyed time
---@field Value number @The keyed integral value
FIntegralKey = {}


---An integral curve, which holds the key time and the key value
---@class FIntegralCurve
---@field Keys ULuaArrayHelper<FIntegralKey> @The keys, ordered by time
---@field DefaultValue number @Default value
---@field bUseDefaultValueBeforeFirstKey boolean
FIntegralCurve = {}
