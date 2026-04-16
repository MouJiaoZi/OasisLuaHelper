---@meta

---@class FMeleeAttackDamageFromServerStruct
FMeleeAttackDamageFromServerStruct = {}


---@class UMeleeAttackSocketAnimCurveData: UDataAsset
---@field MeleeAttackBoxType EMeleeAttackBoxType @近战伤害盒子数据来源
---@field BoxConfigsWithSocket ULuaArrayHelper<FMeleeAttackBoxConfigWithSocket> @近战伤害盒子配置
---@field SocketAnimCurveConfig FMontageSocketAnimCurveProxy_PESkillMeleeAttack @近战伤害盒子DS侧使用的曲线配置，主要给DS托管端使用，比如AI角色和怪物
local UMeleeAttackSocketAnimCurveData = {}


---@class UMeleeAttackSocketAnimCurveTools: UObject
local UMeleeAttackSocketAnimCurveTools = {}


---@class UUAESkillAction_MeleeAttackDamageFromServer: UUAESkillAction
---@field InterpTimesAngle number
---@field DamageAmount number
---@field SpecificItemID number
---@field ItemType number
---@field SubDamageType EMeleeDamageSubType
---@field DamageTypeClass UDamageType
---@field PreSetDamageTypeTags ULuaArrayHelper<string>
---@field bIgnoreSameTeam boolean
local UUAESkillAction_MeleeAttackDamageFromServer = {}

---@param DamageStrategy UMeleeAttackDamageStrategyBase
---@param DamageInfo FMeleeAttackDamageSubmitInfo
function UUAESkillAction_MeleeAttackDamageFromServer:OnMeleeHit(DamageStrategy, DamageInfo) end

---@param DamageStrategy UMeleeAttackDamageStrategyBase
---@param HitResults ULuaArrayHelper<FHitResult>
function UUAESkillAction_MeleeAttackDamageFromServer:OnClientHit(DamageStrategy, HitResults) end
