---@meta

---@class UBlueprintSetLibrary: UBlueprintFunctionLibrary
local UBlueprintSetLibrary = {}

---Adds item to set. Output value indicates whether the item was successfully added, meaning an output of False indicates the item was already in the Set.
---@param TargetSet ULuaSetHelper<number>
---@param NewItem number
function UBlueprintSetLibrary:Set_Add(TargetSet, NewItem) end

---Adds all elements from an Array to a Set
---@param TargetSet ULuaSetHelper<number>
---@param NewItems ULuaArrayHelper<number>
function UBlueprintSetLibrary:Set_AddItems(TargetSet, NewItems) end

---Remove item from set. Output value indicates if something was actually removed. False indicates no equivalent item was found.
---@param TargetSet ULuaSetHelper<number>
---@param Item number
---@return boolean
function UBlueprintSetLibrary:Set_Remove(TargetSet, Item) end

---Removes all elements in an Array from a set.
---@param TargetSet ULuaSetHelper<number>
---@param Items ULuaArrayHelper<number>
function UBlueprintSetLibrary:Set_RemoveItems(TargetSet, Items) end

---Outputs an Array containing copies of the entries of a Set.
---@param A ULuaSetHelper<number>
---@param Result ULuaArrayHelper<number>
function UBlueprintSetLibrary:Set_ToArray(A, Result) end

---Clear a set, removes all content.
---@param TargetSet ULuaSetHelper<number>
function UBlueprintSetLibrary:Set_Clear(TargetSet) end

---Get the number of items in a set.
---@param TargetSet ULuaSetHelper<number>
---@return number
function UBlueprintSetLibrary:Set_Length(TargetSet) end

---Returns true if the set contains the given item.
---@param TargetSet ULuaSetHelper<number>
---@param ItemToFind number
---@return boolean
function UBlueprintSetLibrary:Set_Contains(TargetSet, ItemToFind) end

---Assigns Result to the intersection of Set A and Set B. That is, Result will contain all elements that are in both Set A and Set B. To intersect with the empty set use Clear.
---@param A ULuaSetHelper<number>
---@param B ULuaSetHelper<number>
---@param Result ULuaSetHelper<number>
function UBlueprintSetLibrary:Set_Intersection(A, B, Result) end

---Assigns Result to the union of two sets, A and B. That is, Result will contain all elements that are in Set A and in addition all elements in Set B. Note that a Set is a collection of unique elements, so duplicates will be eliminated.
---@param A ULuaSetHelper<number>
---@param B ULuaSetHelper<number>
---@param Result ULuaSetHelper<number>
function UBlueprintSetLibrary:Set_Union(A, B, Result) end

---Assigns Result to the relative difference of two sets, A and B. That is, Result will contain  all elements that are in Set A but are not found in Set B. Note that the difference between two sets  is not commutative. The Set whose elements you wish to preserve should be the first (top) parameter. Also called the relative complement.
---@param A ULuaSetHelper<number>
---@param B ULuaSetHelper<number>
---@param Result ULuaSetHelper<number>
function UBlueprintSetLibrary:Set_Difference(A, B, Result) end

---Not exposed to users. Supports setting a set property on an object by name.
---@param Object UObject
---@param PropertyName string
---@param Value ULuaSetHelper<number>
function UBlueprintSetLibrary:SetSetPropertyByName(Object, PropertyName, Value) end
