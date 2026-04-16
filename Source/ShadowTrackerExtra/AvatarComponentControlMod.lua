---@meta

---@class FAvatarInstanceList
---@field AvatarCompList ULuaArrayHelper<UAvatarComponent>
FAvatarInstanceList = {}


---@class FAvatarManagemantInfo
---@field Priority number
FAvatarManagemantInfo = {}


---@class UAvatarComponentControlMod: UAvatarManagementModBase
---@field AvatarInstanceMap ULuaMapHelper<UClass, FAvatarInstanceList>
---@field AvatarManagemantMap ULuaMapHelper<UAvatarComponent, FAvatarManagemantInfo>
local UAvatarComponentControlMod = {}
