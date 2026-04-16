---@meta

---@class FChangedEventInfo
---@field bCallImmediate boolean
---@field RefreshFunction FBindFunctionSelector
FChangedEventInfo = {}


---@class UAttrChangedEventManagerComp: UActorComponent, IObjectPoolInterface
---@field bAutoRegisterBeginPlay boolean
---@field AttrChangedEventInfos ULuaMapHelper<FGameAttributeContainer, FChangedEventInfo>
---@field bRegisteredAttr boolean
---@field PendingCallFunctions ULuaArrayHelper<FBindFunctionSelector>
local UAttrChangedEventManagerComp = {}

function UAttrChangedEventManagerComp:RegisterEvent() end

function UAttrChangedEventManagerComp:UnRegisterEvent() end

function UAttrChangedEventManagerComp:RefreshAllAttr() end

---@param AttrName string
---@param CurValue number
function UAttrChangedEventManagerComp:OnAttrValueChanged(AttrName, CurValue) end
