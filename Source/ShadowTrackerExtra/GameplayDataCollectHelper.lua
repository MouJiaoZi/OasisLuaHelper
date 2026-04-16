---@meta

---@class FRangeConfig
---@field LowerBound number
---@field UpperBound number
---@field bLowerInclusive boolean
---@field bUpperInclusive boolean
---@field bHasLowerBound boolean
---@field bHasUpperBound boolean
FRangeConfig = {}


---通过 GMP事件 触发数据处理的逻辑 1. GameplayDataReporter.ini 添加对应 tag 2. GameplayDataReporter.h/.cpp 添加对应 key 3. UGameplayDataCollectHelper 中添加对应的处理函数 4. 在需要采集的地方触发 GMP事件
---@class UGameplayDataCollectHelper: UGameplayDataCollectHelperBase
---@field NewSkillToUseTimeStamp ULuaMapHelper<UPersistEffectSkill, number>
---@field NewSkillClassToReportName ULuaMapHelper<UClass, string>
---@field ValidHitToTargetDistanceConfigs ULuaArrayHelper<FRangeConfig>
---@field ValidShooterPackageDelayConfigs ULuaArrayHelper<FRangeConfig>
---@field NoRecoliRecordWeaponTypeNews ULuaArrayHelper<EWeaponTypeNew>
---@field NoRecoliRecordErrorTolerance number
local UGameplayDataCollectHelper = {}

---注册 GMP事件 的监听
function UGameplayDataCollectHelper:AddGMPEvents() end

---移除所有 GMP事件 的监听
function UGameplayDataCollectHelper:RemoveGMPEvents() end

---拾取距离
---@param Distance number
function UGameplayDataCollectHelper:GMPEvent_AutoPickFirstSpan(Distance) end

---拾取时长
---@param Time number
function UGameplayDataCollectHelper:GMPEvent_AutoPickSeqSpan(Time) end

---拾取失败次数
---@param InValue boolean
function UGameplayDataCollectHelper:GMPEvent_AutoPickFailCount(InValue) end

---客户端模拟端spawn距离
---@param Distance number
function UGameplayDataCollectHelper:GMPEvent_CharacterSpawnDist(Distance) end

---客户端载具spawn距离
---@param Distance number
function UGameplayDataCollectHelper:GMPEvent_VechicleSpawnDist(Distance) end

---客户端拾取物spawn距离
---@param Distance number
function UGameplayDataCollectHelper:GMPEvent_PickupSpawnDist(Distance) end

---武器命中失败率
---@param InWeaponID number
---@param bSuccess number
function UGameplayDataCollectHelper:GMPEvent_WeaponShootFaiRate(InWeaponID, bSuccess) end

---玩家武器命中失败率
---@param ShootWeapon ASTExtraShootWeapon
---@param VerifyResult boolean
function UGameplayDataCollectHelper:GMPEvent_PlayerWeaponShootFailRate(ShootWeapon, VerifyResult) end

---武器散布
---@param InWeaponID number
---@param Deviation number
function UGameplayDataCollectHelper:GMPEvent_WeaponDeviation(InWeaponID, Deviation) end

---武器后坐力水平方向
---@param InWeaponID number
---@param Recoli number
function UGameplayDataCollectHelper:GMPEvent_WeaponRecoil_Pitch(InWeaponID, Recoli) end

---武器射击无后坐力次数统计
---@param OwnerShootWeapon ASTExtraShootWeapon
---@param VerticalRecoilTarget number
function UGameplayDataCollectHelper:GMPEvent_WeaponNoRecoliCount(OwnerShootWeapon, VerticalRecoilTarget) end

---武器后坐力垂直方向
---@param InWeaponID number
---@param Recoli number
function UGameplayDataCollectHelper:GMPEvent_WeaponRecoli_Yaw(InWeaponID, Recoli) end

---受击时主端和模拟端位置差距
---@param Distance number
function UGameplayDataCollectHelper:GMPEvent_VictimOnPostDamageDis(Distance) end

---受击时主端和模拟端延迟
---@param Delay number
function UGameplayDataCollectHelper:GMPEvent_VictimOnPostDamageDelay(Delay) end

---技能释放失败率
---@param SkillUID number
---@param bUseFailed boolean
function UGameplayDataCollectHelper:GMPEvent_SkillUseFaildRate(SkillUID, bUseFailed) end

---技能释放延迟时间（客户端点击到实际释放的时间差）
---@param SkillUID number
---@param bRealUsed boolean
function UGameplayDataCollectHelper:GMPEvent_SkillUseDelay(SkillUID, bRealUsed) end

---姿势切换失败率
---@param PoseID number
---@param bFailed boolean
function UGameplayDataCollectHelper:GMPEvent_SwitchPoseFailRate(PoseID, bFailed) end

---探头成功次数
function UGameplayDataCollectHelper:GMPEvent_HeadProbeSuccessCount() end

---探头总次数
function UGameplayDataCollectHelper:GMPEvent_HeadProbeCount() end

---跳跃攀爬失败次数
---@param bFailed boolean
function UGameplayDataCollectHelper:GMPEvent_JumpVaultFailCount(bFailed) end

---武器连续开火调用
---@param WeaponID number
function UGameplayDataCollectHelper:GMPEvent_WeaponShoot(WeaponID) end

---武器开始开火
---@param WeaponID number
function UGameplayDataCollectHelper:GMPEvent_ShootWeaponStartFire(WeaponID) end

---武器停止开火
---@param WeaponID number
function UGameplayDataCollectHelper:GMPEvent_ShootWeaponStopFire(WeaponID) end

---切换视角失败次数
---@param bIsFailed boolean
function UGameplayDataCollectHelper:GMPEvent_PerspectiveChangeFail(bIsFailed) end

---状态异常次数
---@param SubKey string
---@param InDurationTime number
function UGameplayDataCollectHelper:GMPEvent_PlayerStateError(SubKey, InDurationTime) end

---无法移动次数
---@param InDurationTime number
function UGameplayDataCollectHelper:GMPEvent_PlayerCanNotMove(InDurationTime) end

---速度异常次数
---@param InDurationTime number
function UGameplayDataCollectHelper:GMPEvent_PlayerMoveSpeedError(InDurationTime) end

---开镜失败次数
---@param bIsFailed boolean
function UGameplayDataCollectHelper:GMPEvent_ScopeOpenFailCount(bIsFailed) end

---长帧次数
function UGameplayDataCollectHelper:GMPEvent_LongFrameTimeCount() end

---角色受伤
---@param VictimPlayer ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param _isFatalHealthCost boolean
---@param IsHeadShot boolean
function UGameplayDataCollectHelper:GMPEvent_PlayerTakeDamage(VictimPlayer, Damage, DamageEvent, EventInstigator, DamageCauser, _isFatalHealthCost, IsHeadShot) end

---有效射击时，命中包受击者位置与DS收到受击者最新移动包时位置的空间距离统计
---@param Dist number
function UGameplayDataCollectHelper:GMPEvent_ValidVictimLagDistance(Dist) end

---有效射击时，射击者延迟时间统计
---@param Delay number
function UGameplayDataCollectHelper:GMPEvent_ValidShooterPackageDelay(Delay) end

---新技能释放失败率
---@param Skill UPersistEffectSkill
---@param bUseFailed boolean
function UGameplayDataCollectHelper:GMPEvent_NewSkillUseFailRate(Skill, bUseFailed) end

---新技能释放延迟
---@param Skill UPersistEffectSkill
---@param bRealUsed boolean
function UGameplayDataCollectHelper:GMPEvent_NewSkillUseDelay(Skill, bRealUsed) end

function UGameplayDataCollectHelper:ClearSkillCache() end
