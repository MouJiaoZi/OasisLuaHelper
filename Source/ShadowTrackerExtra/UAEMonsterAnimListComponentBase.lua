---@meta

---@class EMonsterPoseType
---@field EMonsterPose_Idle number @【待机】原地待机(UAnimSequence)
---@field EMonsterPose_Idle_Crouch number @【待机】原地待机蹲(UAnimSequence)
---@field EMonsterPose_Idle_Prone number @【待机】原地待机趴(UAnimSequence)
---@field EMonsterPose_Combat_Idle number @【待机】战斗待机(UAnimSequence)
---@field EMonsterPose_Combat_Idle_Crouch number @【待机】战斗待机蹲(UAnimSequence)
---@field EMonsterPose_Combat_Idle_Prone number @【待机】战斗待机趴(UAnimSequence)
---@field EMonsterPose_Run number @【移动】休闲移动(UAnimSequence)
---@field EMonsterPose_Run_Fighting number @【移动】战斗移动(UAnimSequence)
---@field EMonsterPose_Turn_Left number @【转向】左转向(UAnimSequence)
---@field EMonsterPose_Turn_Right number @【转向】右转向(UAnimSequence)
---@field EMosterPos_Hit number @【受击】受击(UBlendSpace)
---@field EMosterPos_Stiff number @【眩晕】眩晕(UAnimMontage)
---@field EMosterPos_Fall number @【下坠】空中坠落(UAnimSequence)
---@field EMosterPos_Fall_Stand number @【下坠】坠落后站起0(UAnimSequence)
---@field EMosterPos_Fall_Stand1 number @【下坠】坠落后站起1(UAnimSequence)
---@field EMosterPos_Fall_Stand2 number @【下坠】坠落后站起2(UAnimSequence)
---@field EMosterPos_Fall_Stand3 number @【下坠】坠落后站起3(UAnimSequence)
---@field EMosterPos_Climb_WallVertical number @【爬墙】爬墙循环动画(UAnimSequence)
---@field EMosterPos_Climb_WallVerticalToHorizontal number @【爬墙】VerticalToHorizonta(UAnimSequence)
---@field EMosterPos_Climb_WallHorizontal number @【爬墙】Horizontal(UAnimSequence)
---@field EMosterPos_Climb_WallHorizontalToVertical number @【爬墙】HorizontalToVertical(UAnimSequence)
---@field EMosterPos_Climb_Window number @【翻窗】翻进窗户(UAnimSequence)
---@field EMosterPos_Climb_SingleHands number @【翻墙/窗】单手翻(UAnimSequence)
---@field EMosterPos_Climb_DoubleHands number @【翻墙/窗】双手翻(UAnimSequence)
---@field EMonsterPose_Observe number @【待机】环顾四周(UAnimSequence)
---@field EMonsterPose_Weapon_Aim number @【武器】瞄准(UAimOffsetBlendSpace)
---@field EMonsterPose_Weapon_Aim_Crouch number @【武器】瞄准_蹲(UAimOffsetBlendSpace)
---@field EMonsterPose_Weapon_Aim_Prone number @【武器】瞄准_趴(UAimOffsetBlendSpace)
---@field EMonsterPose_Weapon_Reload number @【武器】换弹(UAnimMontage)
---@field EMonsterPose_Weapon_Fire number @【武器】开火(UAnimMontage)
---@field EMonsterPose_Weapon_EquipL number @【武器】装备左(UAnimMontage)
---@field EMonsterPose_Weapon_EquipR number @【武器】装备右(UAnimMontage)
---@field EMonsterPos_BreakWall number @【攻击】破墙(UAnimMontage)
---@field EMonsterPose_Birth_Burrow number @【出生】从地底爬出来(UAnimMontage)
---@field EMonsterPose_Birth_ClimbWall number @【出生】爬墙出生(UAnimMontage)
---@field EMonsterPose_Birth_Fall number @【出生】空中出生(UAnimMontage)
---@field EMonsterPose_Birth_ProneToStand number @【出生】诈尸站起(UAnimMontage)
---@field EMonsterPose_Birth_Garbage number @【出生】垃圾堆出生(UAnimMontage)
---@field EMonsterPose_Birth_BreakWall number @【出生】破墙、镜子出生(UAnimMontage)
---@field EMonsterPose_Birth_LyingOnTheGround number @【出生】一直躺地上(UAnimMontage)
---@field EMosterPos_Death_Normal number @【死亡】正常死亡(UAnimMontage)
---@field EMosterPos_Death_HeadShot number @【死亡】爆头死亡(UAnimMontage)
---@field EMosterPos_Death_Explosion number @【死亡】冲量死亡(UAnimMontage)
---@field EMosterPos_Death_Move number @【死亡】移动中死亡(UAnimMontage)
---@field EMosterPos_Death_Wall number @【死亡】爬墙死亡(UAnimMontage)
---@field EMosterPos_Death_Burning number @【死亡】燃烧死亡(UAnimMontage)
---@field EMosterPos_Death_Melee number @【死亡】钝器死亡(UAnimMontage)
---@field EMosterPos_Death_GoBack number @【死亡】钻地死亡（主动死亡）(UAnimMontage)
---@field EMosterPos_Death_InAir number @【死亡】空中死亡(UAnimMontage)
---@field EMosterPos_Move_Alertness number @【移动】警觉(___)
---@field EMosterPos_Jump_Start number @【跳跃】起跳(UAnimSequence)
---@field EMosterPos_InSitu_Rotate number @【转向】原地转向(UAnimSequence)
---@field EMosterPos_Walk_Backward number @【移动】后退(UAnimSequence)
---@field EMosterPos_Run_BS number @【移动】休闲移动(UBlendSpace)
---@field EMosterPos_Run_Fighting_BS number @【移动】战斗移动(UBlendSpace)
---@field EMosterPos_Run_BS2D number @【移动】休闲移动(UBlendSpace2D)(E玩法)
---@field EMosterPos_Run_Fighting_BS2D number @【移动】战斗移动(UBlendSpace2D)(E玩法)
---@field EMonsterPos_IdleToBattle number @【过渡】休闲状态切战斗状态(UAnimMontage)(E玩法)
---@field EMonsterPos_BattleToIdle number @【过渡】战斗状态切休闲状态(UAnimMontage)(E玩法)
---@field EMonsterPos_Idle_BS number @【待机】休闲待机(UBlendSpace)(E玩法已弃用)
---@field EMonsterPos_Battle_Idle_BS number @【待机】战斗待机(UBlendSpace)(E玩法已弃用)
---@field EMosterPose_Hit_Headshot number @【受击】爆头受击(UBlendSpace)(E玩法)
---@field EMonsterPos_Idle_Montage number @【待机】休闲待机(UAnimMontage)(E玩法IdleBreak)
---@field EMonsterPos_Battle_Idle_Montage number @【待机】战斗待机(UAnimMontage)(E玩法IdleBreak)
---@field EMonsterPos_Idle_Walk_Montage number @【待机】休闲移动待机(UAnimMontage)(E玩法移动IdleBreak)
---@field EMosterPos_FallInAir number @【下坠】空中坠落(UAnimSequence)(E玩法)
---@field EMonsterPose_Custom number @【自定义】自定义蒙太奇(UAnimMontage)(E玩法)
---@field EMonsterPose_Aim_BattleIdle number @【瞄准】战斗待机瞄准(UAimOffsetBlendSpace)(E玩法)
---@field EMonsterPose_Aim_Skill1 number @【瞄准】技能瞄准1(UAimOffsetBlendSpace)(E玩法)
---@field EMonsterPose_Aim_Skill2 number @【瞄准】技能瞄准2(UAimOffsetBlendSpace)(E玩法)
---@field EMonsterPose_Aim_Skill3 number @【瞄准】技能瞄准3(UAimOffsetBlendSpace)(E玩法)
---@field EMosterPos_Max number
EMonsterPoseType = {}


---@class FMonsterAnimPhaseData
---@field PosType EMonsterPoseType
---@field PhaseName string
---@field PhaseAnimSoftPtr UAnimationAsset
FMonsterAnimPhaseData = {}


---@class FMonsterAsyncloadAnimParams
---@field PosType EMonsterPoseType
FMonsterAsyncloadAnimParams = {}


---@class FAsyncLoadMonsterAnimParams
FAsyncLoadMonsterAnimParams = {}


---@class FBreakConfig
---@field BreakProbability ULuaArrayHelper<number>
---@field NeedJumpBreakIndex number
---@field bOpenBreak boolean
---@field BreakCurveName string
---@field BreakTime number
FBreakConfig = {}


---@class FOnMonsterAsyncLoadingFinished : ULuaMulticastDelegate
FOnMonsterAsyncLoadingFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MonsterAsyncloadAnimParams: FMonsterAsyncloadAnimParams) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMonsterAsyncLoadingFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param MonsterAsyncloadAnimParams FMonsterAsyncloadAnimParams
function FOnMonsterAsyncLoadingFinished:Broadcast(MonsterAsyncloadAnimParams) end


---@class UUAEMonsterAnimListComponentBase: USimpleAnimListBaseComponent
---@field MonsterAnimListID number
---@field MosterAnimDatas ULuaArrayHelper<FMonsterAnimPhaseData>
---@field bUseRunAnimSpeed boolean
---@field runAnimSpeed number
---@field runFightingAnimSpeed number
---@field IdleBreakConfig FBreakConfig
---@field CombactBreakConfig FBreakConfig
---@field OnMonsterAnimLoadedFinished FOnMonsterAsyncLoadingFinished
local UUAEMonsterAnimListComponentBase = {}

---@param PoseType EMonsterPoseType
function UUAEMonsterAnimListComponentBase:GetMonsterAnimArrayByType(PoseType) end

---@param PoseType EMonsterPoseType
function UUAEMonsterAnimListComponentBase:GetMonsterAnimPhaseDataByType(PoseType) end

---@param PoseType EMonsterPoseType
function UUAEMonsterAnimListComponentBase:GetMonsterPhaseAnimAssetsByType(PoseType) end

---@param ChildComponent UUAEAnimListComponentBase
---@param Layer number
function UUAEMonsterAnimListComponentBase:AddChildComponent(ChildComponent, Layer) end

---@param ChildComponent UUAEAnimListComponentBase
function UUAEMonsterAnimListComponentBase:RemoveChildComponent(ChildComponent) end

---@param loadAnimParams FMonsterAsyncloadAnimParams
function UUAEMonsterAnimListComponentBase:OnAsyncLoadingFinished(loadAnimParams) end

---@param loadAnimParams FAsyncLoadMonsterAnimParams
function UUAEMonsterAnimListComponentBase:OnAsyncLoadingFinished_1(loadAnimParams) end

function UUAEMonsterAnimListComponentBase:SortAnimations() end
