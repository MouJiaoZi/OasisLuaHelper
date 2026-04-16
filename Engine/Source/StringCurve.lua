---@meta

---One key in a curve of FStrings.
---@class FStringCurveKey
---@field Time number @Time at this key
---@field Value string @Value at this key
FStringCurveKey = {}


---Implements a curve of FStrings.
---@class FStringCurve
---@field DefaultValue string @Default value
---@field Keys ULuaArrayHelper<FStringCurveKey> @Sorted array of keys
FStringCurve = {}
