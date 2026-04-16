---@meta

---@class EPESkillImpulseDir
---@field E_PESKILL_ImpulseDir_SelectTransform number @//*UGC* 技能目标向技能选中位置后退
---@field E_PESKILL_ImpulseDir_SkillOwner number @//*UGC* 技能目标沿技能释放者位置的反方向后退
---@field E_PESKILL_ImpulseDir_SelectedDirection number @选中方向
EPESkillImpulseDir = {}


---@class UPESkillTask_AddImpulse: UPESkillTaskBase
---@field ImpulseDir EPESkillImpulseDir
---@field HitBackParam FOnHurtEffect_HitBack
---@field ImpulseTargets ULuaMapHelper<ACharacter, FTransform>
local UPESkillTask_AddImpulse = {}
