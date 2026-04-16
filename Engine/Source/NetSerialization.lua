---@meta

---@class FExampleItemEntry
---@field ExampleIntProperty number
---@field ExampleFloatProperty number
FExampleItemEntry = {}


---@class FExampleArray
---@field Items ULuaArrayHelper<FExampleItemEntry>
FExampleArray = {}


---Base struct for items using Fast TArray Replication
---@class FFastArraySerializerItem
---@field ReplicationID number @Engine Modify End
---@field ReplicationKey number
---@field MostRecentArrayReplicationKey number
FFastArraySerializerItem = {}


---Base struct for wrapping the array used in Fast TArray Replication
---@class FFastArraySerializer
FFastArraySerializer = {}


---FVector_NetQuantize 0 decimal place of precision. Up to 20 bits per component. Valid range: 2^20 = +/- 1,048,576 Note: this is the historical UE format for vector net serialization
---@class FVector_NetQuantize
FVector_NetQuantize = {}


---FVector_NetQuantize10 1 decimal place of precision. Up to 24 bits per component. Valid range: 2^24 / 10 = +/- 1,677,721.6
---@class FVector_NetQuantize10
FVector_NetQuantize10 = {}


---FVector_NetQuantize100 2 decimal place of precision. Up to 30 bits per component. Valid range: 2^30 / 100 = +/- 10,737,418.24
---@class FVector_NetQuantize100
FVector_NetQuantize100 = {}


---FVector_NetQuantizeNormal 8 bits per component Valid range: -1..+1 inclusive
---@class FVector_NetQuantizeNormal8
FVector_NetQuantizeNormal8 = {}


---FVector_NetQuantizeNormal 16 bits per component Valid range: -1..+1 inclusive
---@class FVector_NetQuantizeNormal
FVector_NetQuantizeNormal = {}
