---@meta

---子弹命中加buff
---@class EBulletHitActionAddBuffTeamType
---@field None number @无
---@field OnlyEnemy number @仅敌人
---@field OnlyTeammate number @仅队友
EBulletHitActionAddBuffTeamType = {}


---@class UBulletHitActionEffect_AddBuff: UBulletHitActionEffectBase
---@field BuffName string
---@field ApplyTeamType EBulletHitActionAddBuffTeamType
---@field bNotAddWhenHasBuff boolean
---@field bAccordingToPoseState boolean
---@field PoseStateToBuff ULuaMapHelper<ESTEPoseState, string>
local UBulletHitActionEffect_AddBuff = {}
