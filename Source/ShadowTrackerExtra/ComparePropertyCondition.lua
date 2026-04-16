---@meta

---@class FComparePropertyConditionParam
---@field DataOrigin ULuaArrayHelper<number>
---@field DataCurrent ULuaArrayHelper<number>
---@field DataObjectOrigin UObject
---@field DataObjectCurrent UObject
---@field SourceTargetOwner AActor
---@field SourceTargetObject UObject
---@field SourceProperty UProperty
---@field DestinProperty UProperty
---@field DataType EPropertyDataType
---@field PropertyOwner EPropertyOwner
---@field PropertyTargetOwner EPropertyTargetOwner
---@field CompareLogic ECompareLogicType
---@field SourcePropertyName ULuaArrayHelper<string>
---@field DestinPropertyName string
---@field ComponentClass UActorComponent
---@field ComponentName string
---@field UseStaticValue boolean
---@field StaticBooleanValue boolean
---@field StaticFloatValue number
---@field StaticInt32Value number
---@field StaticUInt32Value number
---@field StaticInt64Value number
---@field StaticUInt64Value number
---@field StaticEnumValue number
FComparePropertyConditionParam = {}


---@class UComparePropertyCondition: UCompareBaseCondition
---@field DataType EPropertyDataType
---@field PropertyOwner EPropertyOwner
---@field PropertyTargetOwner EPropertyTargetOwner
---@field CompareLogic ECompareLogicType
---@field SourcePropertyName ULuaArrayHelper<string>
---@field DestinPropertyName string
---@field ComponentClass UActorComponent
---@field ComponentName string
---@field UseStaticValue boolean
---@field StaticBooleanValue boolean
---@field StaticFloatValue number
---@field StaticInt32Value number
---@field StaticUInt32Value number
---@field StaticInt64Value number
---@field StaticUInt64Value number
---@field StaticEnumValue number
---@field ParamList ULuaArrayHelper<FComparePropertyConditionParam>
---@field CacheFrameCount number
local UComparePropertyCondition = {}

---@param OwnerCom UObjectPropertyCompareBase
function UComparePropertyCondition:InitCompareNode(OwnerCom) end

function UComparePropertyCondition:UnInitCompareNode() end

---@param InDeltaTime number
---@return ECompareConditionResult
function UComparePropertyCondition:CalculateConditionResult(InDeltaTime) end

---@param OutString string
function UComparePropertyCondition:GetConditionInfo(OutString) end

---@param InPropertyName string
---@param OutString string
function UComparePropertyCondition:GetPropertyValueInfo(InPropertyName, OutString) end

function UComparePropertyCondition:InitPropertyOwner() end

---@return boolean
function UComparePropertyCondition:IsConditionValid() end

---@param InTarget AActor
function UComparePropertyCondition:SetCustomObject(InTarget) end

---@param InValue number
---@param InOrigin boolean
function UComparePropertyCondition:SetCustomIntData(InValue, InOrigin) end

---@param InValue number
---@param InOrigin boolean
function UComparePropertyCondition:SetCustomInt64Data(InValue, InOrigin) end

---@param InValue number
---@param InOrigin boolean
function UComparePropertyCondition:SetCustomFloatData(InValue, InOrigin) end

---@param InValue boolean
---@param InOrigin boolean
function UComparePropertyCondition:SetCustomBooleanData(InValue, InOrigin) end

---@param InValue UObject
---@param InOrigin boolean
function UComparePropertyCondition:SetCustomObjectData(InValue, InOrigin) end

---@return boolean
function UComparePropertyCondition:SetOriginProperty() end

---@return boolean
function UComparePropertyCondition:SetDestinProperty() end

---@param InOrigin boolean
function UComparePropertyCondition:SetPropertyValue(InOrigin) end

---@return ECompareConditionResult
function UComparePropertyCondition:CompareValue() end

---@param InNode UCompareBaseNode
---@return number
function UComparePropertyCondition:SaveNodeParam(InNode) end

---@param InParamIndex number
---@return boolean
function UComparePropertyCondition:PickNodeParam(InParamIndex) end

---@param InParamIndex number
function UComparePropertyCondition:ModifyNodeParam(InParamIndex) end

function UComparePropertyCondition:ResetParamList() end
