---@meta

---@class EAIWarningNotifyCharType
---@field NotifyBaseCharacter number @人形角色
---@field NotifySimpleCharacter number @怪物
EAIWarningNotifyCharType = {}


---@class FAIWarningNotifyConfig
---@field CharType EAIWarningNotifyCharType
---@field Radius number
---@field WarnedBySetBBKey string
---@field WarningLocBBKey string
FAIWarningNotifyConfig = {}


---@class UAIWarningNotifyComponent: UAIAbilityComponent
---@field ReceivedDamageWarningConfig ULuaArrayHelper<FAIWarningNotifyConfig>
---@field SenseEnemyWarningConfig ULuaArrayHelper<FAIWarningNotifyConfig>
local UAIWarningNotifyComponent = {}
