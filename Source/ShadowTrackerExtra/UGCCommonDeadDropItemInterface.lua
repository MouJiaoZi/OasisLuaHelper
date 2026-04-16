---@meta

---死亡掉落配置枚举
---@class EDeadDropItemType
---@field InBackpack number @留在背包
---@field Drop number @掉落
---@field Remove number @直接删除
EDeadDropItemType = {}


---@class IUGCCommonDeadDropItemInterface: IInterface
IUGCCommonDeadDropItemInterface = {}

---@return EDeadDropItemType
function IUGCCommonDeadDropItemInterface:UGC_GetDeadDropItemType() end
