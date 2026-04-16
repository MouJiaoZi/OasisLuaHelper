---@meta

---@class ENetSequenceType
---@field None number
---@field OpenChannel number
---@field ReplicateProperty number
---@field CallRemoteFunction number
ENetSequenceType = {}


---@class FNetSequenceInfo
---@field NetGUIDValue number
---@field SequenceType ENetSequenceType
---@field FieldName string
---@field ContentNumBytes number
---@field ContentNumBits number
---@field Content ULuaArrayHelper<number>
FNetSequenceInfo = {}
