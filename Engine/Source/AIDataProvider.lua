---@meta

---AIDataProvider is an object that can provide collection of properties associated with bound pawn owner or request Id. Editable properties are used to set up provider instance, creating additional filters or ways of accessing data (e.g. gameplay tag of ability) Non editable properties are holding data
---@class FAIDataProviderValue
---@field DataField string @name of provider's value property
FAIDataProviderValue = {}


---@class FAIDataProviderTypedValue
---@field PropertyType UProperty @type of value
FAIDataProviderTypedValue = {}


---@class FAIDataProviderStructValue
FAIDataProviderStructValue = {}


---@class FAIDataProviderIntValue
---@field DefaultValue number
FAIDataProviderIntValue = {}


---@class FAIDataProviderFloatValue
---@field DefaultValue number
FAIDataProviderFloatValue = {}


---@class FAIDataProviderBoolValue
---@field DefaultValue boolean
FAIDataProviderBoolValue = {}


---@class UAIDataProvider: UObject
local UAIDataProvider = {}
