---@meta

---@class EAccumulateEnergyByHitStatus
---@field StatusNone number
---@field MaintainEnergy number
---@field DecreaseEnergy number
---@field SkillActivating number
---@field SkillCD number
EAccumulateEnergyByHitStatus = {}


---武器功能组件：通过命中敌人积攒能量，触发一定的效果
---@class UAccumulateEnergyByHitComponent: UActorComponent
---@field MaxEnergy number
---@field HitEnergyValueConfigs ULuaMapHelper<EAvatarDamagePosition, number>
---@field HitEnergyMonsterID ULuaArrayHelper<number>
---@field TriggerSkillCD number
---@field SkillRemainTime number
---@field TriggerSkill UPersistEffectBase
---@field EnergyMaintainTime number
---@field EnergyDecreaseValue number
---@field CurEnergy number
---@field LastAddEnergyTime number
---@field CurStatus EAccumulateEnergyByHitStatus
---@field OnCurStatusChangedDelegate FOnCurStatusChangedDelegate
---@field OnAddEnergyDelegate FOnAddEnergyDelegate
local UAccumulateEnergyByHitComponent = {}

---@param Data FBulletHitInfoUploadData
---@param Weapon ASTExtraShootWeapon
function UAccumulateEnergyByHitComponent:HandlePostApplyHitDamage(Data, Weapon) end

function UAccumulateEnergyByHitComponent:OnRep_CurEnergy() end

function UAccumulateEnergyByHitComponent:HandleEnergyChanged() end

function UAccumulateEnergyByHitComponent:RemoveTriggeredSkill() end

function UAccumulateEnergyByHitComponent:LeaveSkillCDStatus() end

---@param OldStatus EAccumulateEnergyByHitStatus
function UAccumulateEnergyByHitComponent:OnRep_CurStatus(OldStatus) end

function UAccumulateEnergyByHitComponent:OnRep_LastAddEnergyTime() end
