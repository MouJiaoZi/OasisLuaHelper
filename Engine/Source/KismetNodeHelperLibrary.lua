---@meta

---@class UKismetNodeHelperLibrary: UBlueprintFunctionLibrary
local UKismetNodeHelperLibrary = {}

---Returns whether the bit at index "Index" is set or not in the data
---@param Data number
---@param Index number
---@return boolean
function UKismetNodeHelperLibrary:BitIsMarked(Data, Index) end

---Sets the bit at index "Index" in the data
---@param Data number
---@param Index number
function UKismetNodeHelperLibrary:MarkBit(Data, Index) end

---Clears the bit at index "Index" in the data
---@param Data number
---@param Index number
function UKismetNodeHelperLibrary:ClearBit(Data, Index) end

---Clears all of the bit in the data
---@param Data number
function UKismetNodeHelperLibrary:ClearAllBits(Data) end

---Returns whether there exists an unmarked bit in the data
---@param Data number
---@param NumBits number
---@return boolean
function UKismetNodeHelperLibrary:HasUnmarkedBit(Data, NumBits) end

---Returns whether there exists a marked bit in the data
---@param Data number
---@param NumBits number
---@return boolean
function UKismetNodeHelperLibrary:HasMarkedBit(Data, NumBits) end

---Gets an already unmarked bit and returns the bit index selected
---@param Data number
---@param StartIdx number
---@param NumBits number
---@param bRandom boolean
---@return number
function UKismetNodeHelperLibrary:GetUnmarkedBit(Data, StartIdx, NumBits, bRandom) end

---Gets a random not already marked bit and returns the bit index selected
---@param Data number
---@param StartIdx number
---@param NumBits number
---@return number
function UKismetNodeHelperLibrary:GetRandomUnmarkedBit(Data, StartIdx, NumBits) end

---Gets the first index not already marked starting from a specific index and returns the bit index selected
---@param Data number
---@param StartIdx number
---@param NumBits number
---@return number
function UKismetNodeHelperLibrary:GetFirstUnmarkedBit(Data, StartIdx, NumBits) end

---Gets enumerator name.
---@param Enum UEnum
---@param EnumeratorValue number
---@return string
function UKismetNodeHelperLibrary:GetEnumeratorName(Enum, EnumeratorValue) end

---Gets enumerator name as FString. Use DeisplayName when possible.
---@param Enum UEnum
---@param EnumeratorValue number
---@return string
function UKismetNodeHelperLibrary:GetEnumeratorUserFriendlyName(Enum, EnumeratorValue) end

---@param Enum UEnum
---@param EnumeratorValue number
---@return number
function UKismetNodeHelperLibrary:GetValidValue(Enum, EnumeratorValue) end

---@param Enum UEnum
---@param EnumeratorIndex number
---@return number
function UKismetNodeHelperLibrary:GetEnumeratorValueFromIndex(Enum, EnumeratorIndex) end
