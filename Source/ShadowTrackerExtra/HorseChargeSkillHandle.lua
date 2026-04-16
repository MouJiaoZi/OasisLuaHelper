---@meta

---马匹冲锋技能 机制说明： - 玩家按住技能键蓄力，鹿进入低头姿态（降低受击面），并往前冲刺一段距离 - 蓄力越久（上限1.5秒），冲刺速度越快，冲刺距离越远，撞击伤害越高 - 蓄力过程可通过拖动到取消按键上取消，冲撞CD返还一半 - 蓄力有最大时长（4秒），达到最大时长后自动取消蓄力，返还一半CD - 对人：一击倒，若已倒再次撞则撞死 - 对生物载具：造成伤害，将对方玩家击落载具 - 对机械载具：造成伤害，施加物理冲量 - 技能冷却时间：20秒
---@class UHorseChargeSkillHandle: UVehicleSkillBaseHandle
---@field MaxChargeTime number @蓄力有效上限时间（秒），超过此时间蓄力不再增加
---@field MaxChargeWaitTime number @蓄力自动取消的最大等待时间（秒），达到后自动取消，并按CancelCDRefundRatio设置剩余CD
---@field CurrentChargeTime number @当前已蓄力时间（服务器权威，同步到客户端用于表现）。小于0表示未在蓄力
---@field MinDashSpeed number @最小冲刺速度（蓄力为0时），单位 cm/s
---@field MaxDashSpeed number @最大冲刺速度（蓄力满时），单位 cm/s
---@field MinDashAcceleration number @最小冲刺加速度（蓄力为0时）
---@field MaxDashAcceleration number @最大冲刺加速度（蓄力满时）
---@field MinDashDuration number @最小冲刺持续时间（蓄力为0时），单位秒
---@field MaxDashDuration number @最大冲刺持续时间（蓄力满时），单位秒
---@field DashRemainingTime number @当前冲刺剩余时间
---@field DashIntensity number @蓄力比例（0~1），决定了冲刺的速度、伤害和持续时间。小于0表示未在冲刺
---@field MinChargeDamage number @最小撞击伤害（蓄力为0时）
---@field MaxChargeDamage number @最大撞击伤害（蓄力满时）
---@field SpeedToInitialImpulseScaleCurveValueMultiplier number @SpeedToInitialImpulseScaleCurve 的附加倍率：最终冲量倍率 = 曲线Y值 * 此参数
---@field SpeedToMechanicalVehiclePushForceScaleCurveValueMultiplier number @SpeedToMechanicalVehiclePushForceScaleCurve 的附加倍率：最终推动力倍率 = 曲线Y值 * 此参数
---@field MechanicalVehicleClientPushMinHorseSpeed number @自主客户端本地预测推动机械载具所需的最小马匹速度（cm/s），用于降低同步延迟导致的卡挡
---@field HitDetectRadius number @撞击判定半径（cm）
---@field HitDetectDistance number @撞击判定距离（cm，从载具Actor位置向前）
---@field HitTargetCooldown number @撞击CD，防止同一非机械目标被短时间连续命中（机械载具除外）
---@field ServerAcceptablePingMs number @服务端用于补偿同步延迟的预设可接受 RTT（毫秒） - 服务端会在理想冲量触发距离的基础上，额外追加 HorseSpeed * (此值 * RTTMsToOneWaySeconds) 的距离余量 - 仅影响冲量触发距离，不影响 sweep 检测距离 - 客户端不受此参数影响
---@field MechanicalVehicleImpulseDistanceRatio number @机械载具备用冲量触发距离占 sweep 距离（HitDetectDistance）的比例（0~1） - 冲量仅在目标处于此比例范围内时触发，用于"打破静止"的近距离备用推力 - 0.3 表示仅在 sweep 前 30% 的近距离区间触发
---@field MechanicalVehicleImpulseCooldown number @同一机械载具在一次冲刺期间触发备用冲量的最小间隔（秒）
---@field FullCooldownTime number @技能完整冷却时间（秒）
---@field CancelCDRefundRatio number @取消蓄力时保留的CD比例（0.5 = 进入半CD）
---@field bDrawDebugSweep boolean @是否在客户端绘制扫描范围调试信息
---@field DashEffectName string @冲刺时播放的特效名称
---@field ChargeEffectName string @蓄力时播放的特效名称
---@field HitTargetCooldownMap ULuaMapHelper<AActor, number> @已命中目标的冷却记录，防止同一目标被连续命中
local UHorseChargeSkillHandle = {}

---玩家按下技能键，开始蓄力
---@return EVehicleSkillErrorCode
function UHorseChargeSkillHandle:UseVehicleSkill() end

---玩家松开技能键，释放冲刺
---@return EVehicleSkillErrorCode
function UHorseChargeSkillHandle:DisUseVehicleSkill() end

---主动取消蓄力（按CancelCDRefundRatio设置剩余CD）
function UHorseChargeSkillHandle:CancelCharge() end

---服务器请求开始蓄力
function UHorseChargeSkillHandle:ReqStartCharge() end

---服务器请求释放冲刺，携带客户端蓄力时间
---@param ClientChargeTime number
function UHorseChargeSkillHandle:ReqReleaseCharge(ClientChargeTime) end

---服务器请求取消蓄力
function UHorseChargeSkillHandle:ReqCancelCharge() end

---多播：同步冲刺开始表现
---@param ChargeRatio number
function UHorseChargeSkillHandle:MulticastStartDash(ChargeRatio) end

---多播：同步冲刺结束表现
function UHorseChargeSkillHandle:MulticastEndDash() end

---多播：同步蓄力开始表现
function UHorseChargeSkillHandle:MulticastStartCharge() end

---多播：同步蓄力取消表现
function UHorseChargeSkillHandle:MulticastCancelCharge() end

---蓄力开始时的蓝图表现回调（播放低头动画、特效等）
function UHorseChargeSkillHandle:OnChargeStarted() end

---冲刺开始时的蓝图表现回调
---@param ChargeRatio number
function UHorseChargeSkillHandle:OnDashStarted(ChargeRatio) end

---冲刺结束时的蓝图表现回调
function UHorseChargeSkillHandle:OnDashEnded() end

---蓄力取消时的蓝图表现回调
function UHorseChargeSkillHandle:OnChargeCancelled() end

---撞击目标时的蓝图表现回调
---@param HitActor AActor
---@param Damage number
function UHorseChargeSkillHandle:OnHitTarget(HitActor, Damage) end

function UHorseChargeSkillHandle:OnRep_ChargeTime() end

function UHorseChargeSkillHandle:OnRep_DashIntensity() end
