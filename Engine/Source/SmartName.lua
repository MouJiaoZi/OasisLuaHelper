---@meta

---in the future if we need more bools, please convert to bitfield These are not saved in asset but per skeleton.
---@class FAnimCurveType
FAnimCurveType = {}


---Curve Meta Data for each name Unfortunately this should be linked to FName, but no GUID because we don't have GUID in run-time We only add this if anything changed, by default, it is attribute curve
---@class FCurveMetaData
FCurveMetaData = {}


---@class FSmartNameMapping
FSmartNameMapping = {}


---@class FSmartNameContainer
FSmartNameContainer = {}


---@class FSmartName
---@field DisplayName string
FSmartName = {}
