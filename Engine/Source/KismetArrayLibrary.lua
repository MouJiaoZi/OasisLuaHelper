---@meta

---@class UKismetArrayLibrary: UBlueprintFunctionLibrary
local UKismetArrayLibrary = {}

---Add item to array
---@param TargetArray ULuaArrayHelper<number>
---@param NewItem number
---@return number
function UKismetArrayLibrary:Array_Add(TargetArray, NewItem) end

---Add item to array (unique)
---@param TargetArray ULuaArrayHelper<number>
---@param NewItem number
---@return number
function UKismetArrayLibrary:Array_AddUnique(TargetArray, NewItem) end

---Shuffle (randomize) the elements of an array
---@param TargetArray ULuaArrayHelper<number>
function UKismetArrayLibrary:Array_Shuffle(TargetArray) end

---Append an array to another array
---@param TargetArray ULuaArrayHelper<number>
---@param SourceArray ULuaArrayHelper<number>
function UKismetArrayLibrary:Array_Append(TargetArray, SourceArray) end

---@param TargetArray ULuaArrayHelper<number>
---@param NewItem number
---@param Index number
function UKismetArrayLibrary:Array_Insert(TargetArray, NewItem, Index) end

---@param TargetArray ULuaArrayHelper<number>
---@param IndexToRemove number
function UKismetArrayLibrary:Array_Remove(TargetArray, IndexToRemove) end

---@param TargetArray ULuaArrayHelper<number>
---@param Item number
---@return boolean
function UKismetArrayLibrary:Array_RemoveItem(TargetArray, Item) end

---@param TargetArray ULuaArrayHelper<number>
function UKismetArrayLibrary:Array_Clear(TargetArray) end

---@param TargetArray ULuaArrayHelper<number>
---@param Size number
function UKismetArrayLibrary:Array_Resize(TargetArray, Size) end

---@param TargetArray ULuaArrayHelper<number>
---@return number
function UKismetArrayLibrary:Array_Length(TargetArray) end

---@param TargetArray ULuaArrayHelper<number>
---@return number
function UKismetArrayLibrary:Array_LastIndex(TargetArray) end

---@param TargetArray ULuaArrayHelper<number>
---@param Index number
---@param Item number
function UKismetArrayLibrary:Array_Get(TargetArray, Index, Item) end

---@param TargetArray ULuaArrayHelper<number>
---@param Index number
---@param Item number
---@param bSizeToFit boolean
function UKismetArrayLibrary:Array_Set(TargetArray, Index, Item, bSizeToFit) end

---@param TargetArray ULuaArrayHelper<number>
---@param FirstIndex number
---@param SecondIndex number
function UKismetArrayLibrary:Array_Swap(TargetArray, FirstIndex, SecondIndex) end

---@param TargetArray ULuaArrayHelper<number>
---@param ItemToFind number
---@return number
function UKismetArrayLibrary:Array_Find(TargetArray, ItemToFind) end

---@param TargetArray ULuaArrayHelper<number>
---@param ItemToFind number
---@return boolean
function UKismetArrayLibrary:Array_Contains(TargetArray, ItemToFind) end

---@param TargetArray ULuaArrayHelper<AActor>
---@param FilterClass AActor
---@param FilteredArray ULuaArrayHelper<AActor>
function UKismetArrayLibrary:FilterArray(TargetArray, FilterClass, FilteredArray) end

---Not exposed to users. Supports setting an array property on an object by name.
---@param Object UObject
---@param PropertyName string
---@param Value ULuaArrayHelper<number>
function UKismetArrayLibrary:SetArrayPropertyByName(Object, PropertyName, Value) end

---@param TargetArray ULuaArrayHelper<number>
---@param IndexToTest number
---@return boolean
function UKismetArrayLibrary:Array_IsValidIndex(TargetArray, IndexToTest) end
