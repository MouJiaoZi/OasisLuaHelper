---@meta

---One key in a curve of FNames.
---@class FNameCurveKey
---@field Time number @Time at this key
---@field Value string @Value at this key
FNameCurveKey = {}


---Implements a curve of FNames.
---@class FNameCurve
---@field Keys ULuaArrayHelper<FNameCurveKey> @Sorted array of keys
FNameCurve = {}
