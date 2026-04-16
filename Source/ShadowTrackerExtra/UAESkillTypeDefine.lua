---@meta

---技能事件
---@class EUAESkillEvent
---@field UAESkillEvent_None number
---@field GrenadeModeChange number @//*UGC* 无事件
---@field ReadyToThrowGrenade number @//*UGC* 手雷模式切换
---@field ThrowGrenade number @//*UGC* 准备扔出手雷
---@field SkillCancel number @//*UGC* 扔出手雷
---@field GrenadeTimeOut number @//*UGC* 技能取消
---@field SwitchWeapon number @//*UGC* 手雷超时
---@field SwitchWeaponInterrupt number @//*UGC* 切换武器
---@field SwitchWeaponFinish number @//*UGC* 切换武器被打断
---@field UnEquipWeapon number @//*UGC* 武器切换结束
---@field UnEquipWeaponFinish number @//*UGC* 武器收起
---@field SkillInterrupt number @//*UGC* 武器收起结束
---@field SkillPlayerDieInterrupt number @//*UGC* 技能打断
---@field PickItem number @//*UGC* 玩家死亡导致打断
---@field CanGiveInterrupt number @//*UGC* 拾取物品
---@field BeginAccept number @//*UGC* 给东西被打断
---@field GivingInterrupt number @//*UGC* 对方开始接受
---@field ReceivingInterrupt number @//*UGC* 正给东西中被打断
---@field Hurt number @//*UGC* 正接受东西中被打断
---@field DoorOperation number @//*UGC* 受击
---@field MovementActive number @//*UGC* 开关门
---@field MovementInactive number @//*UGC* 移动组件激活
---@field MovementBounce number @//*UGC* 移动组件不再激活
---@field MovementStop number @//*UGC* 移动组件Bounce
---@field ChangePose number @//*UGC* 移动组件停止
---@field Land number @//*UGC* 改变姿势
EUAESkillEvent = {}


---@class EUTSkillEntry
---@field SkillEntry_None number
---@field SkillEntry_Grenade_Down number @手榴弹按下
---@field SkillEntry_Grenade_Up number @手榴弹抬起
---@field SkillEntry_Flash_Down number @闪光弹按下
---@field SkillEntry_Flash_Up number @闪光弹抬起
---@field SkillEntry_Smoke_Down number @烟幕弹按下
---@field SkillEntry_Smoke_Up number @烟幕弹抬起
---@field SkillEntry_Molotov_Down number @燃烧瓶按下
---@field SkillEntry_Molotov_Up number @燃烧瓶抬起
---@field SkillEntry_Melee_Fist_Down number @挥拳按下
---@field SkillEntry_Melee_Fist_Up number @挥拳抬起
---@field SkillEntry_Melee_Weapon_1_Down number @近战武器1按下
---@field SkillEntry_Melee_Weapon_1_Up number @近战武器1抬起
---@field SkillEntry_Melee_Weapon_2_Down number @近战武器2按下
---@field SkillEntry_Melee_Weapon_2_Up number @近战武器2抬起
---@field SkillEntry_Melee_Weapon_3_Down number @近战武器3按下
---@field SkillEntry_Melee_Weapon_3_Up number @近战武器3抬起
---@field SkillEntry_Melee_Weapon_4_Down number @近战武器4按下
---@field SkillEntry_Melee_Weapon_4_Up number @近战武器4抬起
---@field SkillEntry_Bandage_Down number @绷带按下
---@field SkillEntry_EnergyDrink_Down number @能量饮料按下
---@field SkillEntry_Painkiller_Down number @止痛药按下
---@field SkillEntry_AdrenalineSyringe_Down number @肾上腺素按下
---@field SkillEntry_FirstAidKit_Down number @急救包按下
---@field SkillEntry_MedKit_Down number @医疗箱按下
---@field SkillEntry_GasCan_Down number @燃料按下
---@field SkillEntry_GrenadeApple_Down number @苹果弹按下
---@field SkillEntry_GrenadeApple_Up number @苹果弹抬起
---@field SkillEntry_GrenadeDance_Down number @跳舞弹按下
---@field SkillEntry_GrenadeDance_Up number @跳舞弹抬起
---@field SkillEntry_GrenadeRnfc_Down number @信号弹按下
---@field SkillEntry_GrenadeRnfc_Up number @信号弹抬起
---@field SkillEntry_Melee_Weapon_5_Down number @近战武器5按下
---@field SkillEntry_Melee_Weapon_5_Up number @近战武器5抬起
---@field SkillEntry_Melee_Weapon_6_Down number @近战武器6按下
---@field SkillEntry_Melee_Weapon_6_Up number @近战武器6抬起
---@field SkillEntry_Melee_Weapon_7_Down number @近战武器7按下
---@field SkillEntry_Melee_Weapon_7_Up number @近战武器7抬起
---@field SkillEntry_Melee_Weapon_8_Down number @近战武器8按下
---@field SkillEntry_Melee_Weapon_8_Up number @近战武器8抬起
---@field SkillEntry_Melee_Weapon_9_Down number @近战武器9按下
---@field SkillEntry_Melee_Weapon_9_Up number @近战武器9抬起
---@field SkillEntry_Melee_Weapon_10_Down number @近战武器10按下
---@field SkillEntry_Melee_Weapon_10_Up number @近战武器10抬起
---@field SkillEntry_Bandage_Down_CG number @绷带按下_CG
---@field SkillEntry_EnergyDrink_Down_CG number @能量饮料按下_CG
---@field SkillEntry_Painkiller_Down_CG number @止痛药按下_CG
---@field SkillEntry_AdrenalineSyringe_Down_CG number @肾上腺素按下_CG
---@field SkillEntry_FirstAidKit_Down_CG number @急救包按下_CG
---@field SkillEntry_MedKit_Down_CG number @医疗箱按下_CG
---@field SkillEntry_GasCan_Down_CG number @燃料按下_CG
---@field SkillEntry_Grenade_Down_CG number @手榴弹按下_CG
---@field SkillEntry_Grenade_Up_CG number @手榴弹抬起_CG
---@field SkillEntry_Flash_Down_CG number @小鸟红按下_CG
---@field SkillEntry_Flash_Up_CG number @小鸟红抬起_CG
---@field SkillEntry_Smoke_Down_CG number @小鸟黑按下_CG
---@field SkillEntry_Smoke_Up_CG number @小鸟黑抬起_CG
---@field SkillEntry_Molotov_Down_CG number @小鸟黄按下_CG
---@field SkillEntry_Molotov_Up_CG number @小鸟黄抬起_CG
---@field SkillEntry_ShieldStun_Down number @盾牌近战攻击按下
---@field SkillEntry_ShieldStun_Up number @盾牌近战攻击抬起
---@field SkillEntry_Shield_Melee_Down number @盾牌近战攻击按下
---@field SkillEntry_Shield_Melee_Up number @盾牌近战攻击抬起
---@field SkillEntry_SmellyEgg_Down_CG number @臭鸡蛋按下_CG
---@field SkillEntry_SmellyEgg_Up_CG number @臭鸡蛋抬起_CG
---@field SkillEntry_Fireworks_Down_CG number @烟花按下_CG
---@field SkillEntry_Fireworks_Up_CG number @烟花抬起_CG
---@field SkillEntry_FirstAidKitFast_Down_CG number @快速急救包按下_CG
---@field SkillEntry_FirstAidKitFast_Up_CG number @快速急救包抬起_CG
---@field SkillEntry_ToyApple_Down_CG number @玩具苹果按下_CG
---@field SkillEntry_ToyApple_Up_CG number @玩具苹果抬起_CG
---@field SkillEntry_SingerDoll_Down_CG number @唱歌玩偶按下_CG
---@field SkillEntry_SingerDoll_Up_CG number @唱歌玩偶抬起_CG
---@field SkillEntry_Snowball_Down number @雪球按下
---@field SkillEntry_Snowball_Up number @雪球抬起
---@field SkillEntry_Pumpkin_Down number @鸡蛋按下
---@field SkillEntry_Pumpkin_Up number @鸡蛋抬起
---@field SkillEntry_ReserveGrenade1_Down number @ReserveGrenade1按下
---@field SkillEntry_ReserveGrenade1_Up number @ReserveGrenade1抬起
---@field SkillEntry_ReserveGrenade2_Down number @液氮地雷按下
---@field SkillEntry_ReserveGrenade2_Up number @液氮地雷抬起
---@field SkillEntry_ReserveGrenade3_Down number @ReserveGrenade3按下
---@field SkillEntry_ReserveGrenade3_Up number @ReserveGrenade3抬起
---@field SkillEntry_ReserveGrenade4_Down number @ReserveGrenade4按下
---@field SkillEntry_ReserveGrenade4_Up number @ReserveGrenade4抬起
---@field SkillEntry_RapidAid_Down number @快速药箱按下
---@field SkillEntry_CommonDown number @泛用按下
---@field SkillEntry_CommonUp number @泛用抬起
---@field SkillEntry_SCSetupBonfire_Down number @极寒-生火
---@field SkillEntry_SCAddBonfireWood_Down number @极寒-加柴
---@field SkillEntry_SCBeginRoast_Down number @极寒-挂肉-开始烤鸡
---@field SkillEntry_SCEatRoast_Down number @极寒-吃熟肉-吃熟鸡
---@field SkillEntry_SCWarmupPack_Down number @极寒-暖宝宝
---@field SkillEntry_SCPickRoastFromFire_Down number @极寒-取熟肉
---@field SkillEntry_SCBeginRoastDeer_Down number @极寒-加鹿肉-开始烤鹿
---@field SkillEntry_SCEatRoastDeer_Down number @极寒-吃熟鹿肉-吃熟鹿肉
---@field SkillEntry_SignalHPMedicine1_Down number @信号值药1按下
---@field SkillEntry_SignalHPMedicine2_Down number @信号值药2按下
---@field SkillEntry_FireLauncher_Down number @火焰枪按下
---@field SkillEntry_FireLauncher_Up number @火焰枪抬起
---@field SkillEntry_GiftStartGive number @开始送礼物_花
---@field SkillEntry_GiftReceive number @开始接受礼物_花
---@field SkillEntry_GiftStartGiveLamb number @开始送礼物_灯
---@field SkillEntry_GiftReceiveLamb number @开始接受礼物_灯
---@field SkillEntry_GiftStartGiveLoveFruit number @开始送礼物_爱情果
---@field SkillEntry_GiftReceiveLoveFruit number @开始接受礼物_爱情果
---@field SkillEntry_GiftStartGiveBestWish number @开始发起祈愿
---@field SkillEntry_GiftReceiveBestWish number @开始接受祈愿
---@field SkillEntry_GrenadeLoveSmoke_Down number @爱心形的烟雾弹按下
---@field SkillEntry_GrenadeLoveSmoke_Up number @爱心形的烟雾弹抬起
---@field SkillEntry_ToyBalloon number @放出气球
---@field SkillEntry_ToyBalloon2 number @放出气球2
---@field SkillEntry_ToyBalloon3 number @放出气球3
---@field SkillEntry_ToyBalloon4 number @放出气球4
---@field SkillEntry_ToyWaterBall_Down number @水球按下
---@field SkillEntry_ToyWaterBall_Up number @水球抬起
---@field SkillEntry_WaterMellon_Down number @西瓜按下
---@field SkillEntry_WaterMellon_Up number @西瓜抬起
---@field SkillEntry_AngryBird_Down number @ReservedSkillEntry1按下
---@field SkillEntry_AngryBird_Up number @ReservedSkillEntry1抬起
---@field SkillEntry_AngryBird2_Down number @ReservedSkillEntry2按下
---@field SkillEntry_AngryBird2_Up number @ReservedSkillEntry2抬起
---@field SkillEntry_AngryBird3_Down number @ReservedSkillEntry3按下
---@field SkillEntry_AngryBird3_Up number @ReservedSkillEntry3抬起
---@field SkillEntry_AngryBird4_Down number @ReservedSkillEntry4按下
---@field SkillEntry_AngryBird4_Up number @ReservedSkillEntry4抬起
---@field SkillEntry_MaintenanceVehicle_Down number @载具维修
---@field SkillEntry_ParachuteLand number @跳伞落地
---@field SkillEntry_SuitReplace number @换装
---@field SkillEntry_RiverLantern number @放河灯
---@field SkillEntry_SuitReplaceReady number @换装广场
---@field SkillEntry_ReturnRabbits number @送回
---@field SkillEntry_Max number
EUTSkillEntry = {}


---@class EOperatorType
---@field EOperator_Equal number @等于
---@field EOperator_Greater number @大于
---@field EOperator_Less number @小于
---@field EOperator_GreaterEqual number @大于等于
---@field EOperator_LessEqual number @小于等于
EOperatorType = {}


---@class ESpeedType
---@field ESpeedType_All number @三维速度
---@field ESpeedType_Horizontal number @水平速度
---@field ESpeedType_Vertical number @竖直速度
ESpeedType = {}


---@class EValueType
---@field EValueType_Percentage number @百分比
---@field EValueType_Absolute number @绝对值
EValueType = {}


---@class ERecoveryType
---@field ERecovery_AddDirectly number @直接加值
---@field ERecovery_AddTo number @恢复到目标值
ERecoveryType = {}


---@class ESkillConditionCheckType
---@field ECheck_Once number @单次检查
---@field ECheck_Continuous number @持续检查
ESkillConditionCheckType = {}


---@class EVelocityChangeType
---@field ESpeed_Up number @加速
---@field ESpeed_Down number @减速
---@field ESpeed_Both number @全部
EVelocityChangeType = {}


---@class EMovementDirection
---@field EForward number @向前
---@field EBackward number @向后
---@field ELeft number @向左
---@field ERight number @向右
EMovementDirection = {}
