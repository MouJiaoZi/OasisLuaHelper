---@meta

---@class UBlackboardComponent: UActorComponent
---@field KeyInstances ULuaArrayHelper<UBlackboardKeyType> @instanced keys with custom data allocations
local UBlackboardComponent = {}

---@param KeyName string
---@return number
function UBlackboardComponent:GetValueAsEnum(KeyName) end

---@param KeyName string
---@return number
function UBlackboardComponent:GetValueAsInt(KeyName) end

---@param KeyName string
---@return number
function UBlackboardComponent:GetValueAsFloat(KeyName) end

---@param KeyName string
---@return boolean
function UBlackboardComponent:GetValueAsBool(KeyName) end

---@param KeyName string
---@return string
function UBlackboardComponent:GetValueAsString(KeyName) end

---@param KeyName string
---@return string
function UBlackboardComponent:GetValueAsName(KeyName) end

---@param KeyName string
---@return FVector
function UBlackboardComponent:GetValueAsVector(KeyName) end

---@param KeyName string
---@return FRotator
function UBlackboardComponent:GetValueAsRotator(KeyName) end

---@param KeyName string
---@param ObjectValue UObject
function UBlackboardComponent:SetValueAsObject(KeyName, ObjectValue) end

---@param KeyName string
---@param ClassValue UClass
function UBlackboardComponent:SetValueAsClass(KeyName, ClassValue) end

---@param KeyName string
---@param EnumValue number
function UBlackboardComponent:SetValueAsEnum(KeyName, EnumValue) end

---@param KeyName string
---@param IntValue number
function UBlackboardComponent:SetValueAsInt(KeyName, IntValue) end

---@param KeyName string
---@param FloatValue number
function UBlackboardComponent:SetValueAsFloat(KeyName, FloatValue) end

---@param KeyName string
---@param BoolValue boolean
function UBlackboardComponent:SetValueAsBool(KeyName, BoolValue) end

---@param KeyName string
---@param StringValue string
function UBlackboardComponent:SetValueAsString(KeyName, StringValue) end

---@param KeyName string
---@param NameValue string
function UBlackboardComponent:SetValueAsName(KeyName, NameValue) end

---@param KeyName string
---@param VectorValue FVector
function UBlackboardComponent:SetValueAsVector(KeyName, VectorValue) end

---@param KeyName string
---@param VectorValue FRotator
function UBlackboardComponent:SetValueAsRotator(KeyName, VectorValue) end

---@param KeyName string
---@return boolean
function UBlackboardComponent:IsVectorValueSet(KeyName) end

---return false if call failed (most probably no such entry in BB)
---@param KeyName string
---@param ResultLocation FVector
---@return boolean
function UBlackboardComponent:GetLocationFromEntry(KeyName, ResultLocation) end

---return false if call failed (most probably no such entry in BB)
---@param KeyName string
---@param ResultRotation FRotator
---@return boolean
function UBlackboardComponent:GetRotationFromEntry(KeyName, ResultRotation) end

---@param KeyName string
function UBlackboardComponent:ClearValue(KeyName) end
