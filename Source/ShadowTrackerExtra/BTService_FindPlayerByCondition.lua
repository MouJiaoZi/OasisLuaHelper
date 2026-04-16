---@meta

---所有条件
---@class EConditionType
---@field MaxHealth number @最高血量
---@field MinHealth number @最低血量
---@field UsingMachineGun number @使用机枪台
EConditionType = {}


---条件配置信息
---@class FConditionInfo
---@field ConditionType EConditionType @条件类型
---@field OutPlayer any @选择的黑板变量
FConditionInfo = {}


---根据条件寻找Player
---@class UBTService_FindPlayerByCondition: UBTService
---@field ConditionInfoList ULuaArrayHelper<FConditionInfo> @条件配置列表
---@field Range number @选择范围(单位:厘米)
---@field bOnlyInsideFortress boolean @是否只寻找要塞内的
local UBTService_FindPlayerByCondition = {}
