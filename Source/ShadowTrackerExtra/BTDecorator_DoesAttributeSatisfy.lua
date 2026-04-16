---@meta

---@class EAIAttributeTestType
---@field None number @None
---@field HealthPercent number @血量百分比
---@field BackpackBullet number @背包子弹
---@field ClipBullet number @弹夹子弹
---@field InfectType number @生化感染类型
---@field UpgradeLv number @突变者等级
---@field EquipDurability number @装备耐久
EAIAttributeTestType = {}


---属性测试
---@class UBTDecorator_DoesAttributeSatisfy: UBTDecorator
---@field TestType EAIAttributeTestType
---@field TestOperation EArithmeticKeyOperation
---@field TickInterval number
---@field TestValue number
---@field TestInfectTypeValue EInfectionPlayerInfectType
---@field TestDurabilityPosition EAvatarDamagePosition
local UBTDecorator_DoesAttributeSatisfy = {}
