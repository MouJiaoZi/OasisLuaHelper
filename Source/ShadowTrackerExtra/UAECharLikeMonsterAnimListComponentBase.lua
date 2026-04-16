---@meta

---@class ECharLikeMonsterAnimType
---@field ECharLikeMonsterAnim_Birth number @【出生】出生(UAnimMontage)
---@field ECharLikeMonsterAnim_Move number @【移动】移动(UBlendSpace/BlendSpace1D)
---@field ECharLikeMonsterAnim_IdleAction number @【待机动作】静止待机动作(UAnimMontage)
---@field ECharLikeMonsterAnim_MovementAction number @【待机动作】移动待机动作(UAnimMontage)
---@field ECharLikeMonsterAnim_IdleToBattle number @【过渡】休闲状态切战斗状态(UAnimMontage)
---@field ECharLikeMonsterAnim_BattleToIdle number @【过渡】战斗状态切休闲状态(UAnimMontage)
---@field ECharLikeMonsterAnim_Death_HeadShot number @【死亡】爆头死亡(UAnimMontage)
---@field ECharLikeMonsterAnim_Death_Normal number @【死亡】普通死亡(UAnimMontage)
---@field ECharLikeMonsterAnim_Hit_HeadShot number @【受击】爆头受击(UBlendSpace)
---@field ECharLikeMonsterAnim_HoldGunPose number @【持枪IK】持枪Pose(UAnimSequence)
---@field ECharLikeMonsterAnim_Aim_BattleIdle number @【瞄准】战斗待机瞄准(UAimOffsetBlendSpace)
---@field ECharLikeMonsterAnim_Aim_Skill1 number @【瞄准】技能瞄准1(UAimOffsetBlendSpace)
---@field ECharLikeMonsterAnim_Aim_Skill2 number @【瞄准】技能瞄准2(UAimOffsetBlendSpace)
---@field ECharLikeMonsterAnim_Aim_Skill3 number @【瞄准】技能瞄准3(UAimOffsetBlendSpace)
---@field ECharLikeMonsterAnim_Max number
ECharLikeMonsterAnimType = {}


---@class ECharLikeMonsterStateType
---@field ECharLikeMonsterState_Normal number @通用
---@field ECharLikeMonsterState_Idle number @休闲
---@field ECharLikeMonsterState_Battle number @战斗
---@field ECharLikeMonsterState_Max number
ECharLikeMonsterStateType = {}


---@class FCharLikeMonsterAnimData
---@field AnimType ECharLikeMonsterAnimType
---@field StateType ECharLikeMonsterStateType
---@field SoftPtr UAnimationAsset
FCharLikeMonsterAnimData = {}


---人形怪物AnimList基类
---@class UUAECharLikeMonsterAnimListComponentBase: UUAECharAnimListCompBase
---@field DefaultAnimEditList ULuaArrayHelper<FCharLikeMonsterAnimData>
---@field bReleaseLeftHandIKInIdle boolean
---@field IdleToBattleDelayTime number
---@field BattleToIdleDelayTime number
---@field CharLikeMonsterAnimListID number
local UUAECharLikeMonsterAnimListComponentBase = {}

---@param AnimType ECharLikeMonsterAnimType
---@param StateType ECharLikeMonsterStateType
function UUAECharLikeMonsterAnimListComponentBase:GetAnimMontageList(AnimType, StateType) end

---@param AnimType ECharLikeMonsterAnimType
---@param StateType ECharLikeMonsterStateType
function UUAECharLikeMonsterAnimListComponentBase:GetAnimAssetList(AnimType, StateType) end
