---@meta

---@class FHeavyWeaponBoxSpawnFlow
---@field BoxName string
---@field SpawnTime number
---@field SpawnLocation string
FHeavyWeaponBoxSpawnFlow = {}


---@class FHeavyWeaponBoxActivationFlow
---@field BoxName string
---@field ActiveTime number
FHeavyWeaponBoxActivationFlow = {}


---@class FHeavyWeaponBoxOpenPlayerFlow
---@field BoxName string
---@field WaitTimeFromActiveToOpen number
---@field UID number
---@field TeamID number
FHeavyWeaponBoxOpenPlayerFlow = {}


---@class FHeavyWeaponBoxItemFlow
---@field BoxName string
---@field ItemIDList ULuaArrayHelper<number>
FHeavyWeaponBoxItemFlow = {}


---@class FSimpleDeadBoxOpenFlow
---@field box_name string
---@field open_uid string
---@field count number
FSimpleDeadBoxOpenFlow = {}


---@class FUIStyleWidgetUnloadNameFlow
---@field UID number
---@field UnLoadUIStyleWidgetNameList ULuaArrayHelper<string>
FUIStyleWidgetUnloadNameFlow = {}
