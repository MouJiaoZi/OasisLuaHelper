---@meta

---@class ESensibilityCheckType
---@field Int number
---@field Float number
---@field Boolean number
---@field Object number
---@field Struct number
ESensibilityCheckType = {}


---@class FCheckItemConfig
---@field CheckType ESensibilityCheckType
---@field UseConfigValue boolean
---@field BooleanValue boolean
---@field IntValue number
---@field FloatValue number
---@field ReportTime number
---@field StateName string
---@field DestinPropertyName string
---@field PropertyFlagName string
---@field SourcePropertyNameLink ULuaArrayHelper<string>
FCheckItemConfig = {}


---@class FSensibilityCheckItem
---@field HasDestinOwner boolean
---@field BooleanValue boolean
---@field BooleanValueCur boolean
---@field IntValue number
---@field IntValueCur number
---@field FloatValue number
---@field FloatValueCur number
---@field FirstHitTime number
---@field HitCount number
---@field ItemConfig FCheckItemConfig
---@field DataValue ULuaArrayHelper<number>
---@field DataValueCur ULuaArrayHelper<number>
FSensibilityCheckItem = {}


---@class USensibilityResidualObject: UCompareBaseNode
---@field bIsPauseCheck boolean
---@field bIsInitConfigList boolean
---@field bCheckInTick boolean
---@field InitBeginPlay boolean
---@field IntervalTime number
---@field IntervalHandleTime number
---@field LastCheckTime number
---@field LastHandleTime number
---@field TempReportStr string
---@field CheckItemConfigList ULuaArrayHelper<FCheckItemConfig>
---@field CheckItemList ULuaArrayHelper<FSensibilityCheckItem>
---@field PausePropertyFlagList ULuaArrayHelper<string>
---@field InitActionTime number
local USensibilityResidualObject = {}

---@param PitchInput number
---@param YawInput number
---@param ScreenLoc FVector2D
function USensibilityResidualObject:HandleTouchInputEvent(PitchInput, YawInput, ScreenLoc) end

function USensibilityResidualObject:InitConfigList() end

---@param InItemConfig FCheckItemConfig
---@param InSour UObject
---@param InDest UObject
function USensibilityResidualObject:AddSensibilityCheckItem(InItemConfig, InSour, InDest) end

---@param InItemConfig FCheckItemConfig
---@param InSour UObject
---@param InDest UObject
function USensibilityResidualObject:RemoveSensibilityCheckItem(InItemConfig, InSour, InDest) end

---@param InObject UObject
function USensibilityResidualObject:ClearSourceObject(InObject) end

---@param InObject UObject
function USensibilityResidualObject:ClearDestinObject(InObject) end

---@param InItem FSensibilityCheckItem
function USensibilityResidualObject:SetPropertyValue(InItem) end

---@param InPropertyFlag string
function USensibilityResidualObject:ResetPropertyValue(InPropertyFlag) end

---@param InItem FSensibilityCheckItem
---@return boolean
function USensibilityResidualObject:IsValidCheckItem(InItem) end

---@param InItem FSensibilityCheckItem
---@param OutStr string
function USensibilityResidualObject:CheckItem2String(InItem, OutStr) end

---@param InPropertyFlag string
---@param InResetHitTime boolean
function USensibilityResidualObject:AddPausePropertyFlag(InPropertyFlag, InResetHitTime) end

---@param InPropertyFlag string
---@param InResetHitTime boolean
function USensibilityResidualObject:RemovePausePropertyFlag(InPropertyFlag, InResetHitTime) end

---@param InPropertyFlag string
function USensibilityResidualObject:ResetPropertyHitTime(InPropertyFlag) end

---@param InPropertyFlag string
---@param InTime number
function USensibilityResidualObject:ResetPropertyReportTime(InPropertyFlag, InTime) end

---@return boolean
function USensibilityResidualObject:NeedPauseCheck() end
