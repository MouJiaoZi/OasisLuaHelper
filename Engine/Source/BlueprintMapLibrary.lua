---@meta

---@class UBlueprintMapLibrary: UBlueprintFunctionLibrary
local UBlueprintMapLibrary = {}

---Adds a key and value to the map. If something already uses the provided key it will be overwritten with the new value. After calling Key is guaranteed to be associated with Value until a subsequent mutation of the Map.
---@param TargetMap ULuaMapHelper<number, number>
---@param Key number
---@param Value number
function UBlueprintMapLibrary:Map_Add(TargetMap, Key, Value) end

---Removes a key and its associated value from the map.
---@param TargetMap ULuaMapHelper<number, number>
---@param Key number
---@return boolean
function UBlueprintMapLibrary:Map_Remove(TargetMap, Key) end

---Finds the value associated with the provided Key
---@param TargetMap ULuaMapHelper<number, number>
---@param Key number
---@param Value number
---@return boolean
function UBlueprintMapLibrary:Map_Find(TargetMap, Key, Value) end

---Checks whether key is in a provided Map
---@param TargetMap ULuaMapHelper<number, number>
---@param Key number
---@return boolean
function UBlueprintMapLibrary:Map_Contains(TargetMap, Key) end

---Outputs an array of all keys present in the map
---@param TargetMap ULuaMapHelper<number, number>
---@param Keys ULuaArrayHelper<number>
function UBlueprintMapLibrary:Map_Keys(TargetMap, Keys) end

---Outputs an array of all values present in the map
---@param TargetMap ULuaMapHelper<number, number>
---@param Values ULuaArrayHelper<number>
function UBlueprintMapLibrary:Map_Values(TargetMap, Values) end

---Determines the number of entries in a provided Map
---@param TargetMap ULuaMapHelper<number, number>
---@return number
function UBlueprintMapLibrary:Map_Length(TargetMap) end

---Clears a map of all entries, resetting it to empty
---@param TargetMap ULuaMapHelper<number, number>
function UBlueprintMapLibrary:Map_Clear(TargetMap) end

---Not exposed to users. Supports setting a map property on an object by name.
---@param Object UObject
---@param PropertyName string
---@param Value ULuaMapHelper<number, number>
function UBlueprintMapLibrary:SetMapPropertyByName(Object, PropertyName, Value) end
