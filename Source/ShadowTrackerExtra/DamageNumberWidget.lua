---@meta

---飘字超限淘汰策略
---@class EDamageNumberEvictionPolicy
---@field Oldest number @替换生存时间最长（最老）的飘字
---@field Farthest number @替换距离屏幕中心最远的飘字
---@field LowestDamage number @替换伤害值最低的飘字
---@field DiscardNew number @直接丢弃新飘字，不替换旧的
EDamageNumberEvictionPolicy = {}


---@class UDamageNumberWidget: UHUDWidgetBase
---@field DamageNumberGlobalLimit number @全局飘字数量上限，-1表示不限制
---@field GlobalLimitEvictionPolicy EDamageNumberEvictionPolicy @超限淘汰策略
---@field NumberList ULuaArrayHelper<FDamageNumber>
---@field MaxDamageHistoryCount number
---@field DamageHistoryLifeTime number
---@field DamageNumberConfigArray ULuaArrayHelper<FDamageNumberConfig>
---@field TargetDistanceBase number
---@field HeadDamageTextureOffset FVector2D
---@field HeadDamageTextureSize FVector2D
---@field StylePolicyClass UDamageNumberPolicy
local UDamageNumberWidget = {}
