---@meta

---@class EFatalDamageRelationShip
---@field MyTeamateIsCauser number
---@field NotRelated number
---@field MyTeammateIsVictim number
---@field MyTeammateIsCauserAndVictim number
EFatalDamageRelationShip = {}


---@class EFatalDamageMaxKillStatus
---@field ENormal number
---@field EFirstKill number
---@field ENewKill number
---@field EMaxKillerBeKilled number
---@field ENoExistMaxKiller number
EFatalDamageMaxKillStatus = {}


---@class EClientFatalItemType
---@field ENormalType number
---@field EPlayerPrompt number
---@field EBeMaxKiller number
---@field EKLJEscape number
---@field EObGmKill number
EClientFatalItemType = {}


---@class EExcellentOperationResultType
---@field ENull number
---@field ETeamGetFirstBlood number @队内首杀
---@field ETripleKill number @连续三杀
---@field EQuadraKill number @连续四杀
---@field EPentaKill number @枪神
---@field ETotalKill number @累计十杀
---@field EAceTeam number @灭队
---@field ESnipeHead number @爆头
---@field EAntitankGrenadeBoom number @雷神
---@field ERevenge number @复仇
---@field ETakeSpecialItem number @携带特殊物品
---@field ETypeMax number @Max
EExcellentOperationResultType = {}


---@class EUGCCustomModeInputReason
---@field UCMIR_Look number
---@field UCMIR_Skill number
---@field UCMIR_AutoAim number
---@field UCMIR_Movement number
---@field UCMIR_Max number
EUGCCustomModeInputReason = {}


---@class EClientFatalDamageRecordCustomDataType
---@field EClientFatalDamageRecordCustomDataType_Int number
---@field EClientFatalDamageRecordCustomDataType_Float number
---@field EClientFatalDamageRecordCustomDataType_Bool number
EClientFatalDamageRecordCustomDataType = {}


---@class ETeamNumber
---@field POLICE number
---@field TERRORIST number
---@field CIVILIAN number
---@field UNKNOWN number
ETeamNumber = {}


---@class EWeaponSlot
---@field Primary number
---@field Secondary number
---@field Pistol number
EWeaponSlot = {}


---@class EPlayerBodyPartType
---@field PBPT_Head number @头
---@field PBPT_LeftArm number @左臂
---@field PBPT_RightArm number @右臂
---@field PBPT_LeftLeg number @左腿
---@field PBPT_RightLeg number @右腿
---@field PBPT_Body number @胸
EPlayerBodyPartType = {}


---@class EFootStepState
---@field Run number
---@field Squat number
---@field Walk number
---@field Crawl number
---@field Fall number
EFootStepState = {}


---@class EPhysicalSurfaceDescription
---@field Default number @默认
---@field Concrete number @混凝土
---@field Dirt number @土
---@field Water number @水
---@field Metal number @金属
---@field Wood number @木
---@field Grass number @草
---@field Glass number @玻璃
---@field Flesh number @肉
---@field Steel number @钢铁
---@field Sandbag number @沙袋
---@field Sand number @沙子
---@field Cloth number @布料
---@field Plastic number @塑料
---@field Leather number @皮料
---@field Ceramics number @陶器
---@field Paper number @纸
---@field Stone number @石头
---@field Snow number @雪
---@field PopCan number @易拉罐
---@field Pyrefly number
---@field Leaf number @叶子
---@field Car number @车
---@field Asphalt number @柏油路
---@field ConcreteTDM number @TDM混凝土
---@field Ice number @冰
---@field Food number @食物
EPhysicalSurfaceDescription = {}


---@class EFootprintType
---@field Invalid number @默认
---@field Left number @左脚印
---@field Right number @右脚印
EFootprintType = {}


---@class EPlayerEnegyStage
---@field PES_None number
---@field PES_Stage1 number
---@field PES_Stage2 number
---@field PES_Stage3 number
---@field PES_Stage4 number
EPlayerEnegyStage = {}


---@class EPostEffectBlendType
---@field PEBT_ScanBomb number
---@field PEBT_DeadGray number
---@field PEBT_PropOutline number
EPostEffectBlendType = {}


---@class ESurvivePickUpGlobalCategory
---@field SurvivePickUpItemGlobalCategory_None number
---@field SurvivePickUpItemGlobalCategory_Weapon number
---@field SurvivePickUpItemGlobalCategory_PlayerEquipment number
---@field SurvivePickUpItemGlobalCategory_WeaponComponent number
---@field SurvivePickUpItemGlobalCategory_ConsumeItem number
ESurvivePickUpGlobalCategory = {}


---@class ESurvivePickUpCategory
---@field SPUC_MainShootWeapon number
---@field SPUC_SubShootWeapon number
---@field SPUC_MeleWeapon number
---@field SPUC_Prop number
---@field SPUC_PlayerEquipment number
---@field SPUC_WeaponComponent number
---@field SPUC_ConsumeItem number
---@field SPUC_Other number
ESurvivePickUpCategory = {}


---@class ESurvivePickUpType
---@field SPUT_RifileGun number
---@field SPUT_SubmachineGun number
---@field SPUT_SniperGun number
---@field SPUT_Shotgun number
---@field SPUT_Pistol number
---@field SPUT_Helmet number
---@field SPUT_Chest number
---@field SPUT_Scop number
---@field SPUT_Bandage number
---@field SPUT_MedicalBag number
---@field SPUT_MedicalBox number
---@field SPUT_EnegyDrink number
---@field SPUT_PainKillerPills number
---@field SPUT_Adrenaline number
ESurvivePickUpType = {}


---武器槽位
---@class ESurviveWeaponPropSlot
---@field SWPS_None number
---@field SWPS_MainShootWeapon1 number @主武器1
---@field SWPS_MainShootWeapon2 number @//*UGC* 主武器1
---@field SWPS_SubShootWeapon number @//*UGC* 主武器2
---@field SWPS_MeleeWeapon number @//*UGC* 副武器
---@field SWPS_HandProp number @//*UGC* 近战武器
---@field SWPS_TempSpecialWeapon number @//*UGC* 投掷武器
---@field SWPS_ShiftGrenadeWeapon number @//*UGC* 临时特殊武器，例如载具武器
---@field SWPS_VehicleWeapon number @车载武器
---@field SWPS_TempNormalWeapon number @临时普通武器
---@field SWPS_RemoteControlledWeapon number @远程操控武器
---@field SWPS_GunBag number @枪匣槽位
---@field SWPS_Max number
ESurviveWeaponPropSlot = {}


---@class EBackpackDragSlot
---@field BPDS_None number
---@field BPDS_MainShootWeapon1 number @主武器1
---@field BPDS_MainShootWeapon2 number @主武器2
---@field BPDS_SubShootWeapon number @副武器
---@field BPDS_MeleeWeapon number @近战武器
---@field BPDS_Helmet number @头盔
---@field BPDS_ArmoredVest number @防弹衣
---@field BPDS_Package number @背包
---@field BPDS_Grenade number @投掷物
EBackpackDragSlot = {}


---@class EDataTableType
---@field EDataTableType_None number
---@field EDataTableType_PickUpGlobalDataTable number
---@field EDataTableType_PickUpGlobalIDAndWrapperDataTable number
---@field EDataTableType_WeaponDataTable number
---@field EDataTableType_PlayerEquipmentDataTable number
---@field EDataTableType_WeaponComponentDataTable number
---@field EDataTableType_ConsumeItemDataTable number
---@field EDataTableType_AkEventDataTable number
EDataTableType = {}


---@class EPlayerEquipmentSlotType
---@field EPlayerEquipmentSlotType_None number
---@field EPlayerEquipmentSlotType_HeadEquipemtSlot number
---@field EPlayerEquipmentSlotType_ChestEquipemtSlot number
---@field EPlayerEquipmentSlotType_JacketEquipemtSlot number
---@field EPlayerEquipmentSlotType_BackEquipemtSlot number
---@field EPlayerEquipmentSlotType_LegsEquipemtSlot number
---@field EPlayerEquipmentSlotType_FeetEquipemtSlot number
EPlayerEquipmentSlotType = {}


---@class EWeaponComponentType
---@field WCT_None number
---@field WCT_Scope number
---@field WCT_Max number
EWeaponComponentType = {}


---@class EConsumeItemType
---@field EConsumeItemType_None number
---@field EConsumeItemType_Bandage number
---@field EConsumeItemType_MedicalBag number
---@field EConsumeItemType_MedicalBox number
---@field EConsumeItemType_EnegyDrink number
---@field EConsumeItemType_PainKillerPills number
---@field EConsumeItemType_Adrenaline number
---@field EConsumeItemType_CG_Bandage number
---@field EConsumeItemType_CG_MedicalBag number
---@field EConsumeItemType_CG_MedicalBox number
---@field EConsumeItemType_CG_EnegyDrink number
---@field EConsumeItemType_CG_PainKillerPills number
---@field EConsumeItemType_CG_Adrenaline number
---@field EConsumeItemType_FastAidBox number
---@field EConsumeItemType_RoastedChick number
---@field EConsumeItemType_RoastedDeer number
---@field EConsumeItemType_WarmupPack number
---@field EConsumeItemType_CG_Smallbattery number
---@field EConsumeItemType_CG_Bigbattery number
---@field EConsumeItemType_SignalHPMedicine1 number
---@field EConsumeItemType_SignalHPMedicine2 number
---@field EConsumeItemType_Balloon number
---@field EConsumeItemType_Balloon_Venison number
---@field EConsumeItemType_Balloon_Warmer number
---@field EConsumeItemType_SpaceFruit number
---@field EConsumeItemType_SpaceFruit_Mango number
---@field EConsumeItemType_SpaceFruit_WaterMelon number
---@field EConsumeItemType_SpaceFruit_Toolkit number
---@field EConsumeItemType_NewYear_Picture number
---@field EConsumeItemType_McDonalds_Burger number
---@field EConsumeItemType_Summer_SeaFoodSoup number
---@field EConsumeItemType_CookingFish_Small number
---@field EConsumeItemType_CookingFish_Mid number
---@field EConsumeItemType_CookingFish_Big number
---@field EConsumeItemType_FoodCart_Naan number
---@field EConsumeItemType_FoodCart_Hamburger number
---@field EConsumeItemType_FoodCart_Bingfeng number
---@field EConsumeItemType_FoodCart_MuttonSoup number
---@field EConsumeItemType_Popsicle1 number
---@field EConsumeItemType_Popsicle2 number
---@field EConsumeItemType_Popsicle3 number
---@field EConsumeItemType_Popsicle4 number
---@field EConsumeItemType_Nezha_Xiandan1 number
---@field EConsumeItemType_Nezha_Xiandan2 number
---@field EConsumeItemType_Nezha_Xiandan3 number
---@field EConsumeItemType_Nezha_Xiandan4 number
---@field EConsumeItemType_Nezha_Xiandan5 number
---@field EConsumeItemType_Nezha_Xiandan6 number
---@field EConsumeItemType_Nezha_Xiandan7 number
---@field EConsumeItemType_Nezha_Xiandan8 number
---@field EConsumeItemType_UGC number
EConsumeItemType = {}


---@class EConsumeItemCategory
---@field EConsumeItemCategory_None number
---@field EConsumeItemCategory_RecoverHealth number
---@field EConsumeItemCategory_RecoverEnegy number
EConsumeItemCategory = {}


---@class EHandlePickUpActionReplicatedDataActionType
---@field EHandlePickUpActionReplicatedDataActionType_None number
---@field EHandlePickUpActionReplicatedDataActionType_PickUpWeapon number
---@field EHandlePickUpActionReplicatedDataActionType_PickUpPlayerEquipment number
---@field EHandlePickUpActionReplicatedDataActionType_PutDownlayerEquipment number
EHandlePickUpActionReplicatedDataActionType = {}


---@class EDriveCar
---@field None number
---@field Buggy number
EDriveCar = {}


---@class ETopMostUIPanelType
---@field ETopUIPanelType_MainInputPanel number
---@field ETopUIPanelType_BackpackPanel number
ETopMostUIPanelType = {}


---@class EThrowGrenadeMode
---@field HighThrowMode number
---@field LowThrowMode number
EThrowGrenadeMode = {}


---@class EPeekMark
---@field PeekNone number
---@field PeekLeft number
---@field PeekRight number
EPeekMark = {}


---@class EGrenadeType
---@field UnknownGrenade number
---@field StunGrenade number
---@field FireGrenade number
---@field SmokeGrenade number
---@field FragGrenade number
---@field AppleGrenade number
---@field MagicDanceGrenade number
---@field RainforcementGrenade number
---@field CG_StunGrenade number
---@field CG_FireGrenade number
---@field CG_SmokeGrenade number
---@field CG_FragGrenade number
---@field CG_StinkGrenade number
---@field CG_FireWorksGrenade number
---@field CG_ToyApple number
---@field CG_SingerDoll number
---@field SnowballGrenade number
---@field PumpkinGrenade number
---@field CG_FragTemptGrenade_1 number
---@field ReservedGrenade_Frozen number
---@field ReservedGrenade3_LoveSmoke number
---@field ReservedGrenadeWaterBall number
---@field ReservedGrenadeWaterMellon number
---@field ReservedGrenade_Before_CG03_1 number
---@field ReservedGrenade_Before_CG03_2 number
---@field ReservedGrenade_Before_CG03_3 number
---@field ReservedGrenade_Before_CG03_4 number
---@field GrenadeMax number
EGrenadeType = {}


---@class ExtraPlayerLiveState
---@field InDefault number @一般状态
---@field InPlane number @飞机中
---@field InParachute number @跳伞中
---@field InVehicle number @载具中
---@field InDying number @等待救援中
---@field InRevivaling number @等待复活
---@field InDied number @死透了
---@field Offline number @掉线
ExtraPlayerLiveState = {}


---@class EAILiveState
---@field BornOnSquare number
---@field TakeInPlane number
---@field FreeFall number
---@field InFighting number
---@field NearDeath number
---@field Death number
---@field Escape number
---@field Max number
EAILiveState = {}


---@class EParachuteState
---@field PS_None number
---@field PS_FreeFall number
---@field PS_Opening number
---@field PS_Landing number
EParachuteState = {}


---@class EBattleTextType
---@field EBattleTextType_Fist number
---@field EBattleTextType_BurningBomb number
---@field EBattleTextType_Use number
---@field EBattleTextType_ShotAndExplode number
---@field EBattleTextType_Vehicle number
---@field EBattleTextType_You number
---@field EBattleTextType_YourTeammate number
---@field EBattleTextType_By number
---@field EBattleTextType_HeadShot number
---@field EBattleTextType_PutDown number
---@field EBattleTextType_Kill number
---@field EBattleTextType_Killed number
---@field EBattleTextType_Le number
---@field EBattleTextType_Because number
---@field EBattleTextType_CriticalWounded number
---@field EBattleTextType_HighFallingDown number
---@field EBattleTextType_FallToGround number
---@field EBattleTextType_InPosionArea number
---@field EBattleTextType_TooMuchTime number
---@field EBattleTextType_UnderWeater number
---@field EBattleTextType_Finally number
---@field EBattleTextType_AirAttackHit number
---@field EBattleTextType_AccidentalDamage number
---@field EBattleTextType_Myself number
---@field EBattleTextType_Explosion number
---@field EBattleTextType_PoisonWater number
---@field EBattleTextType_FallFatalDamage number
---@field EBattleTextType_TeammateFallFatalDamage number
---@field EBattleTextType_FallDeath number
---@field EBattleTextType_TeammateFallDeath number
---@field EBattleTextType_OutSafeZoneFatalDamage number
---@field EBattleTextType_TeammateOutSafeZoneFatalDamage number
---@field EBattleTextType_OutSafeZoneDeath number
---@field EBattleTextType_TeammateOutSafeZoneDeath number
---@field EBattleTextType_UnderWaterFatalDamage number
---@field EBattleTextType_TeammateUnderWaterFatalDamage number
---@field EBattleTextType_UnderWaterDeath number
---@field EBattleTextType_TeammateUnderWaterDeath number
---@field EBattleTextType_AirAttackFatalDamage number
---@field EBattleTextType_TeammateAirAttackFatalDamage number
---@field EBattleTextType_AirAttackDeath number
---@field EBattleTextType_TeammateAirAttackDeath number
---@field EBattleTextType_FinalDeath number
---@field EBattleTextType_TeammateFinalDeath number
---@field EBattleTextType_MistakeSelfFatalDamage number
---@field EBattleTextType_TeammateMistakeSelfFatalDamage number
---@field EBattleTextType_VehicleExplosionMistakeSelfFatalDamage number
---@field EBattleTextType_TeammateVehicleExplosionMistakeSelfFatalDamage number
---@field EBattleTextType_MistakeKillSelf number
---@field EBattleTextType_TeammateMistakeKillSelf number
---@field EBattleTextType_VehicleExplosionMistakeKillSelf number
---@field EBattleTextType_TeammateVehicleExplosionMistakeKillSelf number
---@field EBattleTextType_YouPutDown number
---@field EBattleTextType_YouMistakePutDown number
---@field EBattleTextType_YouHaveBeenPutDown number
---@field EBattleTextType_YouHaveBeenMistakePutDown number
---@field EBattleTextType_YourTeammatePutDown number
---@field EBattleTextType_YourTeammateMistakePutDown number
---@field EBattleTextType_YourTeammateHaveBeenPutDown number
---@field EBattleTextType_YourTeammateHaveBeenMistakePutDown number
---@field EBattleTextType_YouKilled number
---@field EBattleTextType_YouMistakeKilled number
---@field EBattleTextType_YouHaveBeenKilled number
---@field EBattleTextType_YouHaveBeenMistakeKilled number
---@field EBattleTextType_YourTeammateKilled number
---@field EBattleTextType_YourTeammateMistakeKilled number
---@field EBattleTextType_YourTeammateHaveBeenKilled number
---@field EBattleTextType_YourTeammateHaveBeenMistakeKilled number
---@field EBattleTextType_SomeOneKilledByFalling number
---@field EBattleTextType_SomeOneKilledByOutSignalZone number
---@field EBattleTextType_SomeOneKilledByUnderWater number
---@field EBattleTextType_SomeOneKilledByAirAttack number
---@field EBattleTextType_SomeOneFinalDeath number
---@field EBattleTextType_YouEliminate number
---@field EBattleTextType_YourTeammateEliminate number
---@field EBattleTextType_YouPutDownByTyrantMonster number
---@field EBattleTextType_YourTeammatePutDownByTyrantMonster number
---@field EBattleTextType_YouKilledByTyrantMonster number
---@field EBattleTextType_YourTeammateKilledByTyrantMonster number
---@field EBattleTextType_YouCallAirAttackHurtSomebody number
---@field EBattleTextType_YouCallAirAttackKillSomebody number
---@field EBattleTextType_YouCallAirAttackHurtSelf number
---@field EBattleTextType_YouRHurtByCalledAirAttack number
---@field EBattleTextType_TeammateCallAirAttackHurtSomebody number
---@field EBattleTextType_TeammateCallAirAttackKillSomebody number
---@field EBattleTextType_TeammateCallAirAttackHurtSelf number
---@field EBattleTextType_TeammateCallAirAttackKillSelf number
---@field EBattleTextType_TeammatesHurtByCalledAirAttack number
---@field EBattleTextType_TeammatesKilledByCalledAirAttack number
---@field EBattleTextType_NumberKill number
---@field EBattleTextType_NumberAssist number
---@field EBattleTextType_SignalArea number
---@field EBattleTextType_PoisonCircle number
---@field EBattleTextType_YouHunterMonsterClawOther number
---@field EBattleTextType_YouHunterEliteBrickOther number
---@field EBattleTextType_Venom number
---@field EBattleTextType_Carnage number
---@field EBattleTextType_Carnage_PutDown number
---@field EBattleTextType_Carnage_BeenPutDown number
---@field EBattleTextType_Carnage_KilledOther number
---@field EBattleTextType_Carnage_BeenKilled number
---@field EBattleTextType_Carnage_Teammate_PutDown number
---@field EBattleTextType_Carnage_Teammate_BeenPutDown number
---@field EBattleTextType_Carnage_Teammate_Killed number
---@field EBattleTextType_Carnage_Teammate_BeenKilled number
---@field EBattleTextType_ObserverGMDamage_BeenKilled number
---@field EBattleTextType_ObserverGMDamage_Teammate_BeenKilled number
EBattleTextType = {}


---@class ELeftQueueItemType
---@field EEmpty number
---@field EControlItem number
---@field EKillInfo number
---@field EMaxKiller number
---@field EPrompt number
ELeftQueueItemType = {}


---@class EKillOrPutDownMessageType
---@field EKillOrPutDownMessageType_YouPutDownPlayer number
---@field EKillOrPutDownMessageType_YouKilledPlayer number
---@field EKillOrPutDownMessageType_YouHaveBeenPutDown number
---@field EKillOrPutDownMessageType_YouHaveBeenKilled number
---@field EKillOrPutDownMessageType_YourTeammatePutDownPlayer number
---@field EKillOrPutDownMessageType_YourTeammateKilledPlayer number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenPutDown number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilled number
---@field EKillOrPutDownMessageType_YouHaveBeenKilledByPoison number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilledByPoison number
---@field EKillOrPutDownMessageType_YouHaveBeenPutDownByPoison number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenPutDownByPoison number
---@field EKillOrPutDownMessageType_YouHaveBeenPutDownByFallingDown number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenPutDownByFallingDown number
---@field EKillOrPutDownMessageType_YouHaveBeenKilledByFallingDown number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilledByFallingDown number
---@field EKillOrPutDownMessageType_YouHaveBeenPutDownByDrowing number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenPutDownByDrowing number
---@field EKillOrPutDownMessageType_YouHaveBeenKilledByDrowing number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilledByDrowing number
---@field EKillOrPutDownMessageType_YouHaveBeenKilledFinally number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilledFinally number
---@field EKillOrPutDownMessageType_YouHaveBeenPutDownByAirAttack number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenPutDownByAirAttack number
---@field EKillOrPutDownMessageType_YouHaveBeenKilledByAirAttack number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilledByAirAttack number
---@field EKillOrPutDownMessageType_YouHaveBeenPutDownByPoisonWater number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenPutDownByPoisonWater number
---@field EKillOrPutDownMessageType_YouHaveBeenKilledByPoisonWater number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilledByPoisonWater number
---@field EKillOrPutDownMessageType_YourTeammateRevivalPickup number
---@field EKillOrPutDownMessageType_YourTeammateRevivalRelive number
---@field EKillOrPutDownMessageType_YouHaveBeenKilledByLowTemperature number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenKilledByLowTemperature number
---@field EKillOrPutDownMessageType_YouHaveBeenPutDownByLowTemperature number
---@field EKillOrPutDownMessageType_YourTeammateHaveBeenPutDownByLowTemperature number
EKillOrPutDownMessageType = {}


---@class EHealthPredictShowType
---@field EHealthPredict_Add number @累加
---@field EHealthPredict_Set number @设值
---@field EHealthPredict_Max number
EHealthPredictShowType = {}


---@class ECharacterHealthStatus
---@field HealthyAlive number @健全状态
---@field HasLastBreath number @重伤状态
---@field ZombieState number @Zombie状态
---@field WaitingForRevival number @待复活状态
---@field FinishedLastBreath number @确认死了
---@field MAX number @无效
ECharacterHealthStatus = {}


---@class EScopeMeshAnimType
---@field ScopeMeshAnimType_Normal number
---@field ScopeMeshAnimType_Translate number
---@field ScopeMeshAnimType_Scope number
EScopeMeshAnimType = {}


---@class EFollowState
---@field None number
---@field Leader number
---@field Follower number
---@field Passenger number
EFollowState = {}


---@class EInviteResponceType
---@field ETimeout number
---@field EAgree number
---@field ERefuse number
---@field EBeInviting number
---@field EInvalidInvitation number
---@field ENotAllowedInvite number
---@field ENotAllowedFollow number
---@field EDuringTransferLeader number
---@field EDuringTransferDriver number
EInviteResponceType = {}


---@class EParachuteInvitationType
---@field EInviteFollow number
---@field EInviteTransferLeader number
---@field EInviteRideTogether number
---@field EApplyToRideTogether number
---@field EInviteTransferDriver number
EParachuteInvitationType = {}


---@class FSoundType
---@field ESoundMove number
---@field ESoundFire number
---@field ESoundVehicle number
FSoundType = {}


---@class EPickUpBoxType
---@field EPickUpBoxType_TombBox number
---@field EPickUpBoxType_AirDropBox number
---@field EPickUpBoxType_TreasureBox number
---@field EPickUpBoxType_MonsterTombBox number
---@field EPickUpBoxType_SuperWeaponBox number
---@field EPickUpBoxType_ChannelBuoyBox number
---@field EPickUpBoxType_GiftBox number
---@field EPickUpBoxType_LootBox number
EPickUpBoxType = {}


---@class EDamageableGameObjectType
---@field EDamageableGameObjectType_Player number @玩家
---@field EDamageableGameObjectType_Monster number @怪物
---@field EDamageableGameObjectType_Vehicle number @载具
---@field EDamageableGameObjectType_Boss number @首领
---@field EDamageableGameObjectType_Building number @建筑物
---@field EDamageableGameObjectType_Building_A number @建筑物-A
---@field EDamageableGameObjectType_Building_B number @建筑物-B
---@field EDamageableGameObjectType_Building_C number @建筑物-C
---@field EDamageableGameObjectType_Flammable number @易燃品
---@field EDamageableGameObjectType_BF_Tank number @大战场坦克
---@field EDamageableGameObjectType_BF_Helicopter number @大战场直升机
---@field EDamageableGameObjectType_VH_AirBag number @安全气囊载具
EDamageableGameObjectType = {}


---@class EAirDropType
---@field AirDrop_None number
---@field AirDrop_NormalAirDrop number
---@field AirDrop_SuperAirDrop number
---@field AirDrop_FestivalSuperAirDrop number
---@field AirDrop_VehicleAirDrop number
---@field AirDrop_TyrantZombieAirDrop number
---@field AirDrop_VehicleAndSuperAirDrop number
---@field AirDrop_FourTheions number
---@field AirDrop_Tank number
---@field AirDrop_Wingman number
---@field AirDrop_Revival number
---@field AirDrop_Empty number
---@field AirDrop_CombatDrone number
---@field AirDrop_Max number
EAirDropType = {}


---@class EMarkStatus
---@field EMAS_HIDE number
---@field EMAS_SHOW number
---@field EMAS_CUSTOMEVENT number
---@field EMAS_UPDATETRANSFORMONLY number
---@field EMAS_RECIRCLE number
EMarkStatus = {}


---@class EMarkGetAllType
---@field EMAGET_ALL number
---@field EMAGET_REP number
---@field EMAGET_LOCAL number
EMarkGetAllType = {}


---@class EAddMarkFlag
---@field EAMF_None number
---@field EAMF_MiniMapOnly number
---@field EAMF_EntireMapOnly number
---@field EAMF_Both number
EAddMarkFlag = {}


---@class EMarkSyncDataType
---@field EMSDT_Mark number
---@field EMSDT_Line number
---@field EMSDT_LineJson number
---@field EMSDT_Spline number
EMarkSyncDataType = {}


---@class EObserverType
---@field EObserverType_None number
---@field EObserverType_InSpectating number
---@field EObserverType_GlobalObserver number
---@field EObserverType_FriendObserver number
---@field EObserverType_Spectator number
EObserverType = {}


---@class QuickChatType
---@field QuickChat number
---@field AvatarChat number
---@field CustomChat number
---@field SpecialMsgChat number
QuickChatType = {}


---无人机使用的状态
---@class EUAVUseType
---@field UAV_None number
---@field UAV_Init number
---@field UAV_Using number
---@field UAV_Standby number
EUAVUseType = {}


---当玩家处于遥控状态时 周围声音状态
---@class EUAVCharacterMsgType
---@field UAV_None number
---@field UAV_VehicleSound number
---@field UAV_CharacterMoveSound number
---@field UAV_BulletSound number
---@field UAV_HurtSoud number
EUAVCharacterMsgType = {}


---@class ESTRemoteControlState
---@field RC_Init number
---@field RC_Using number
---@field RC_StandBy number
---@field RC_PowerOff number
---@field RC_Recalling number
---@field RC_Disappearing number
---@field RC_Dying number
---@field RC_SelfDestruct number
---@field RC_InWater number
---@field RC_Shutdown number
---@field RC_Max number
ESTRemoteControlState = {}


---@class ESTRemoteControlPawnType
---@field RCT_None number
---@field RCT_Dog number
ESTRemoteControlPawnType = {}


---卡丁车相关代码 活动过后删除
---@class ESTPopkartAreaTriggerType
---@field Begin number @起点
---@field Door number @门洞
---@field End number @终点
---@field RaceRoadTrigger number @赛道区域
---@field Accelerate number @加速
---@field Jump number @弹跳
ESTPopkartAreaTriggerType = {}


---@class EPopKartMarkState
---@field UnFinish number
---@field Finish number
---@field PassDoor number
EPopKartMarkState = {}


---@class EObserverOutlineType
---@field SpectatedCharacter number
---@field SpectatedCharacterTeam number
---@field SpectatedCharacterEnemy number
---@field NoSpectatedCharacter number
---@field SpectatedAIOutlineColor number
---@field CampModeBlue number
---@field CampModeRed number
EObserverOutlineType = {}


---@class ERelationshipWithTarget
---@field Default number
---@field Self number
---@field Teammate number
---@field Enemy number
ERelationshipWithTarget = {}


---@class EPersonalOperateType
---@field EPersonalOperate_None number
---@field EPersonalOperate_BtnDown number
---@field EPersonalOperate_BtnUp number
EPersonalOperateType = {}


---@class ECarringState
---@field None number
---@field Waitting number
---@field PuttingUp number
---@field Carring number
---@field PuttingDown number
ECarringState = {}


---@class EDoubleVaultState
---@field None number
---@field Helper_Enter number
---@field Helper_Ready number
---@field Helper_Idle number
---@field Helper_Help number
---@field Climber_StageOne number
---@field Climber_StageTwo number
EDoubleVaultState = {}


---@class ECombatDroneRewardPointType
---@field None number
---@field ExcellentOperation number @高光时刻
---@field Rescue number @救援
---@field Revival number @召回
---@field CooperationKill number @合作击杀Boss
---@field RetrieveGear number @装备拾回（地铁）
ECombatDroneRewardPointType = {}


---@class EMoveInputRateLimitPriority
---@field Priority1 number
---@field Priority2 number
---@field Priority3 number
---@field Priority4 number
---@field Priority5 number
---@field Priority6 number
---@field Priority7 number
---@field Priority8 number
EMoveInputRateLimitPriority = {}


---@class ESecMarkType
---@field NoneType number
---@field EDMAType number
ESecMarkType = {}


---@class EInputActionType
---@field InputAction_None number @无
---@field InputAction_Jump number @跳跃
---@field InputAction_Vault number @攀爬
---@field InputAction_Prone number @趴
---@field InputAction_Crouch number @蹲
---@field InputAction_PeekLeft number @左探头
---@field InputAction_PeekRight number @右探头
---@field InputAction_Scope number @开镜
EInputActionType = {}


---@class FExcellentOperationRecordData
---@field OperationResultType EExcellentOperationResultType
---@field AdditionalNum number
FExcellentOperationRecordData = {}


---@class FClientFatalDamageRecordCustomData
---@field DataName string
---@field DataNameMapID number
---@field DataType EClientFatalDamageRecordCustomDataType
---@field IntData number
---@field FloatData number
---@field BoolData boolean
FClientFatalDamageRecordCustomData = {}


---@class FExtractDamageParamKillTipsData
---@field KillTipsAbilityHandleItemID number
---@field CauserWeaponAvatarID number
---@field WeaponAvatarKillsNum number
FExtractDamageParamKillTipsData = {}


---@class FClientFatalDamageRecordDataSimple
---@field ClientFatalItemType EClientFatalItemType
---@field CauserKey number
---@field HitBoneName string
---@field CauserTeamId number
---@field VictimKey number
---@field RealKillerKey number
---@field DamageType number
---@field AdditionalParam number
---@field KillFXItemID ULuaArrayHelper<number>
---@field KillTipsData FExtractDamageParamKillTipsData
---@field IsHeadShot boolean
---@field bIsVictimMonster boolean
---@field ResultHealthStatus number
---@field RecordRelationShip EFatalDamageRelationShip
---@field PreviousHealthStatus number
---@field IsKilledByMonster boolean
---@field RealKillNum number
---@field AliveTeamNum number
---@field LocalPlayerAssistNum number
---@field KillDistance number
---@field MaxKillerStatus EFatalDamageMaxKillStatus
---@field ExcellentOperationInfos ULuaArrayHelper<FExcellentOperationRecordData>
---@field AllTeammateDied boolean
---@field AllTeammateKillBySameTeam boolean
---@field DamageTypeClass UDamageType
---@field AdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
---@field CustomAdditionalParams ULuaArrayHelper<FClientFatalDamageRecordCustomData>
FClientFatalDamageRecordDataSimple = {}


---@class FClientFatalDamageRecordData
---@field ClientFatalItemType EClientFatalItemType
---@field Causer string
---@field HitBoneName string
---@field CauserUID string
---@field CauserKey number
---@field CauserTeamId number
---@field VictimName string
---@field VictimUID string
---@field VictimKey number
---@field DamageType number
---@field AdditionalParam number
---@field KillFXItemID ULuaArrayHelper<number>
---@field KillTipsData FExtractDamageParamKillTipsData
---@field IsHeadShot boolean
---@field bIsVictimMonster boolean
---@field ResultHealthStatus number
---@field RecordRelationShip EFatalDamageRelationShip
---@field PreviousHealthStatus number
---@field IsKilledByMonster boolean
---@field causerAnchorPlatformResID number
---@field causerAnchorPlatformColorID number
---@field realKillerAnchorPlatformResID number
---@field realKillerAnchorPlatformColorID number
---@field victimAnchorPlatformResID number
---@field victimAnchorPlatformColorID number
---@field CauserPicURL string
---@field VictimPicURL string
---@field CauserMedalPicUrl string
---@field VictimMedalPicUrl string
---@field RealKillerName string
---@field RealKillNum number
---@field AliveTeamNum number
---@field LocalPlayerAssistNum number
---@field KillDistance number
---@field MaxKillerStatus EFatalDamageMaxKillStatus
---@field ExcellentOperationInfos ULuaArrayHelper<FExcellentOperationRecordData>
---@field AllTeammateDied boolean
---@field AllTeammateKillBySameTeam boolean
---@field DamageTypeClass UDamageType
---@field AdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
---@field CustomAdditionalParams ULuaArrayHelper<FClientFatalDamageRecordCustomData>
FClientFatalDamageRecordData = {}


---@class FFatalDamageRecordForLog
---@field DateTime string
---@field BattleTime number
---@field CircleIndex number
FFatalDamageRecordForLog = {}


---@class FTeamateStateChangedCompressDataHigh
---@field Location FVector_NetQuantize
---@field View number
---@field Roll number
FTeamateStateChangedCompressDataHigh = {}


---@class FTeamateStateChangedCompressDataLow
---@field Health number
---@field HealthMax number
---@field Temperature number
---@field SignalHp number
FTeamateStateChangedCompressDataLow = {}


---@class FTeamateStateChangedCompressData
---@field Location FVector_NetQuantize
---@field View number
---@field Roll number
---@field Health number
---@field HealthMax number
---@field Temperature number
---@field SignalHp number
FTeamateStateChangedCompressData = {}


---@class FTeamateStateUAVChangedCompressData
---@field Location FVector_NetQuantize100
---@field View number
---@field Roll number
---@field uavType number @对应的是 ESTExtraVehicleType 值
FTeamateStateUAVChangedCompressData = {}


---@class FBodyPartCfg
---@field ItemLevel number
---@field HitPosType number
---@field Durability number
---@field DamageReduceScale number
---@field DamageReduceScaleEmptyDur number
---@field BreakthroughReduce number
---@field BreakthroughReduceScale number
---@field ExplosionDamageReduceScale number
---@field ExplosionDamageReduceScaleEmptyDur number
---@field ExplosionDamageReduceScaleExtra number
---@field BodyDurabilityIndexName string
---@field ImpactEffectOverride ASTEShootWeaponBulletImpactEffect
---@field HitEffectTagOverride string
---@field bDamageReduceScaleClamped boolean
FBodyPartCfg = {}


---@class FFootprintActorInfo
---@field PhysicalSurface EPhysicalSurfaceDescription
---@field FootprintClass AFootprintInstanceActor
FFootprintActorInfo = {}


---@class FFootprintActorBlock
---@field TeamFootprintInstanceActorMap ULuaMapHelper<number, AFootprintInstanceActor>
FFootprintActorBlock = {}


---@class FTrailMarkActorBlock
---@field WorkingList ULuaArrayHelper<ATrailMarkActor>
---@field AssignableList ULuaArrayHelper<ATrailMarkActor>
FTrailMarkActorBlock = {}


---@class FCameraData
---@field CameraFOV number
---@field SpringArmSocketOffset FVector
---@field SpringArmLength number
FCameraData = {}


---@class FSwitchCameraData
---@field StartCameraSwitchDelayTimeFrom_Normal number
---@field StartCameraSwitchDelayTimeFrom_Near number
---@field StartCameraSwitchDelayTimeFrom_Aim number
---@field CameraSwitchTime number
FSwitchCameraData = {}


---@class FCommonCameraModeData
---@field SwitchCameraData FSwitchCameraData
FCommonCameraModeData = {}


---@class FAimCameraModeData
---@field SwitchCameraData FSwitchCameraData
FAimCameraModeData = {}


---@class FWeaponSlotData
---@field WeaponSlot ESurviveWeaponPropSlot
FWeaponSlotData = {}


---@class FSurviveTableRowBase
---@field ID number
---@field PickUpSoundID number
FSurviveTableRowBase = {}


---@class FPickUpGlobalDataTableRow
---@field SurvivePickUpGlobalCategory ESurvivePickUpGlobalCategory
---@field SmallProfileImage FSlateBrush
---@field LargerProfileImage FSlateBrush
---@field Name string
---@field Description string
---@field DisplayPriority number
FPickUpGlobalDataTableRow = {}


---@class FSearchedPickUpItemResult
---@field MainItemData FPickUpItemData
---@field bIsDirty boolean
FSearchedPickUpItemResult = {}


---@class FJudgePickupUsefulItem
---@field MainItemData FPickUpItemData
---@field NetGUIDOffsetValue number
---@field DropedByPlayer boolean
FJudgePickupUsefulItem = {}


---@class FSearchedTombBoxAndWrapperListResult
---@field SearchedPickUpItemResultList ULuaArrayHelper<FSearchedPickUpItemResult>
---@field bIsDirty boolean
FSearchedTombBoxAndWrapperListResult = {}


---@class FBackpackItemData
---@field Num number
---@field BaseData FPickUpGlobalDataTableRow
---@field bIsUsing boolean
---@field FinishPercentage number
---@field SurvivePickUpGlobalCategory ESurvivePickUpGlobalCategory
FBackpackItemData = {}


---@class FUseBackpackItemParams
---@field TargetEquipWeaponComponentMainSlot ESurviveWeaponPropSlot
FUseBackpackItemParams = {}


---@class FWeaponDataTableRow
---@field WeaponID number
---@field WeaponTemplate ASTExtraWeapon
---@field SurvivePickUpCategory ESurvivePickUpCategory
FWeaponDataTableRow = {}


---@class FMainSlotItemData
---@field PickUpGlobalDataTableRow FPickUpGlobalDataTableRow
---@field WeaponDataTableRow FWeaponDataTableRow
FMainSlotItemData = {}


---@class FPlayerEquipmentDataTableRow
---@field PlayerEquipmentID number
---@field Type EPlayerEquipmentSlotType
---@field DamageMultiplyAdditionalRate number
---@field bIsAvata boolean
FPlayerEquipmentDataTableRow = {}


---@class FPlayerEquipmentItemData
---@field PickUpGlobalDataTableRow FPickUpGlobalDataTableRow
---@field PlayerEquipmentDataTableRow FPlayerEquipmentDataTableRow
FPlayerEquipmentItemData = {}


---@class FWeaponComponentDataTableRow
---@field WeaponComponentID number
---@field Type EWeaponComponentType
FWeaponComponentDataTableRow = {}


---@class FWeaponComponentItemData
---@field PickUpGlobalDataTableRow FPickUpGlobalDataTableRow
---@field WeaponComponentDataTableRow FWeaponComponentDataTableRow
FWeaponComponentItemData = {}


---@class FConsumeItemDataTableRow
---@field ConsumeItemID number
---@field Type EConsumeItemType
---@field Category EConsumeItemCategory
---@field ConsumeCD number
---@field RecoverHealthPercentage number
---@field MaxRecoverHealthPercentage number
---@field RecoverEnegy number
FConsumeItemDataTableRow = {}


---@class FConsumeItemCDData
FConsumeItemCDData = {}


---@class FPickUpActionReplicatedData
---@field ActionID number
---@field TargetPickUpItemID number
---@field ActionType EHandlePickUpActionReplicatedDataActionType
FPickUpActionReplicatedData = {}


---@class FPickUpActionReplicatedDataBroadcast
---@field ActionID number
---@field TargetPickUpItemID number
---@field ActionType EHandlePickUpActionReplicatedDataActionType
FPickUpActionReplicatedDataBroadcast = {}


---@class FPickUpGlobalDAndWrapperTableRow
---@field ID number
---@field Template APickUpWrapperActor
FPickUpGlobalDAndWrapperTableRow = {}


---@class FAkEventTableRow
---@field ID number
FAkEventTableRow = {}


---@class FDriveCarNotify
---@field DriveCar EDriveCar
FDriveCarNotify = {}


---@class FCameraViewPitchLimitData
---@field ViewPitchMin number
---@field ViewPitchMax number
FCameraViewPitchLimitData = {}


---@class FServerHitEnemyReplicatedData
---@field EventID any
FServerHitEnemyReplicatedData = {}


---@class FGrenadeSlotData
---@field ItemID number
---@field GrenadeCounts number
FGrenadeSlotData = {}


---@class FWeaponSlotSwitchTimeData
---@field EquipSlot ESurviveWeaponPropSlot
---@field TotalTime number
---@field AttachWeaponTime number
FWeaponSlotSwitchTimeData = {}


---@class FLeftQueueLoadAsyncRecordInfo
---@field DependResID number
---@field LoadedSucResMap ULuaMapHelper<string, boolean>
FLeftQueueLoadAsyncRecordInfo = {}


---@class FKillOrPutDownMessage
---@field MsgType EKillOrPutDownMessageType
---@field AttackActionName string
---@field AttackName string
---@field bIsHeadShot boolean
---@field KillNum number
---@field bShowKillNum boolean
---@field FullMsg string
---@field VictimAnchorPlatformResID number
---@field CauserPlayerName string
---@field VictimPlayerName string
---@field NumberMsg string
---@field ExcellentOperationInfos ULuaArrayHelper<FExcellentOperationRecordData>
---@field bNeedShow boolean
---@field KillTipsData FExtractDamageParamKillTipsData
---@field ExtraData ULuaMapHelper<string, string>
---@field AdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
FKillOrPutDownMessage = {}


---@class FPoseChangeTime
---@field PoseChange_Prone_Stand number
---@field PoseChange_Prone_Move number
---@field PoseChange_UnProne_Stand number
---@field PoseChange_UnProne_Move number
FPoseChangeTime = {}


---@class FHealthPredictShowData
---@field ShowDataKey string
---@field ShowType EHealthPredictShowType
---@field Value number
---@field LimitValue number
---@field bPercent boolean
FHealthPredictShowData = {}


---@class FSoundData
---@field SoundType FSoundType
---@field SoundDir FVector
---@field SoundVolume number
FSoundData = {}


---@class FSuperAirDropBoxDataItem
---@field GenerateRate number
FSuperAirDropBoxDataItem = {}


---@class FDropPropData
---@field ItemID number
---@field ItemCount number
---@field DropMode number
FDropPropData = {}


---@class FTeamShopItemData
---@field Index number
---@field ItemID number
---@field ItemCount number
---@field ItemFromTeammateIndex number
---@field ItemPrice number
---@field ItemShowWeight number
FTeamShopItemData = {}


---@class FSlotWeaponData
---@field ID number
---@field AttachMentIDList ULuaArrayHelper<number>
FSlotWeaponData = {}


---@class FSpecialAmbientData
---@field SwitchGroupName string
---@field SwitchValue string
FSpecialAmbientData = {}


---@class FWeaponVisualBulletItemConfig
---@field bEnabled boolean
FWeaponVisualBulletItemConfig = {}


---@class FWeaponVisualBulletCameraModeConfig
---@field FPPSetting FWeaponVisualBulletItemConfig
---@field TPPSetting FWeaponVisualBulletItemConfig
---@field GunADSSetting FWeaponVisualBulletItemConfig
FWeaponVisualBulletCameraModeConfig = {}


---@class FWeaponVisualBulletClientModeConfig
---@field AutonomousClientSetting FWeaponVisualBulletCameraModeConfig
---@field OBPawnPerspectiveClientSetting FWeaponVisualBulletCameraModeConfig
---@field DefaultSetting FWeaponVisualBulletItemConfig
---@field BulletTrailEffect FWeaponVisualBulletItemConfig
FWeaponVisualBulletClientModeConfig = {}


---@class FWeaponVisualBulletItemConfigNew
---@field BulletTrackEffectPath FSoftObjectPath
FWeaponVisualBulletItemConfigNew = {}


---@class FWeaponVisualBulletCameraModeConfigNew
---@field FPPSetting FWeaponVisualBulletItemConfigNew
---@field TPPSetting FWeaponVisualBulletItemConfigNew
---@field GunADSSetting FWeaponVisualBulletItemConfigNew
FWeaponVisualBulletCameraModeConfigNew = {}


---@class FWeaponVisualBulletClientModeConfigNew
---@field AutonomousClientSetting FWeaponVisualBulletCameraModeConfigNew
---@field OBPawnPerspectiveClientSetting FWeaponVisualBulletCameraModeConfigNew
---@field DefaultSetting FWeaponVisualBulletItemConfigNew
---@field BulletTrailEffect FWeaponVisualBulletItemConfigNew
FWeaponVisualBulletClientModeConfigNew = {}


---@class FOwnerClientCreateWeaponCache
---@field IDList ULuaArrayHelper<FItemDefineID>
---@field CharacterGUID number
FOwnerClientCreateWeaponCache = {}


---@class FBulletImpactFXTargetCullingByQualityLeveConfigItem
---@field MinQualityLevel ERenderQuality
---@field MinDeviceLevel number
---@field bApplyToLocal boolean
---@field TargetClassConfigList ULuaArrayHelper<AActor>
---@field CachedClassList ULuaArrayHelper<UClass>
FBulletImpactFXTargetCullingByQualityLeveConfigItem = {}


---@class FClientSettingBaseOnGameMode
---@field BulletImpactFXTargetCullingByQualityLeveConfigList ULuaArrayHelper<FBulletImpactFXTargetCullingByQualityLeveConfigItem>
---@field DisableBulletTrackDeviceQualityLevelConfigList ULuaArrayHelper<number>
---@field DisableSimulateClientBulletImpactFXDeviceQualityLevelConfigList ULuaArrayHelper<number>
---@field bDisableSimulateClientBulletImpactFXOnlyForMonster boolean
---@field DisableSimulateClientMuzzleFXDeviceQualityLevelConfigList ULuaArrayHelper<number>
---@field HideBackpackWeaponDeviceQualityLevelConfigList ULuaArrayHelper<number>
FClientSettingBaseOnGameMode = {}


---@class FNoGCCheckTableRow
---@field AssetPath string
FNoGCCheckTableRow = {}


---@class FCustomMarkEventData
---@field CreateTime number
---@field CustomState number
---@field CustomString string
---@field InWhichMap EAddMarkFlag
FCustomMarkEventData = {}


---@class FMarkSyncData
---@field Status EMarkStatus
---@field TypeID number
---@field WidgetClassPath string
---@field Location FVector
---@field Rotation FRotator
---@field InstanceID number
---@field CustomMarkEvent FCustomMarkEventData
---@field MapAdded EAddMarkFlag
---@field SyncDataType EMarkSyncDataType
---@field bLocalData boolean
---@field DeltaProperties ULuaArrayHelper<UProperty>
FMarkSyncData = {}


---@class FCompressMarkSyncData
---@field Status EMarkStatus
---@field TypeID number
---@field WidgetClassPath string
---@field Location FVector_NetQuantize
---@field View number
---@field Roll number
---@field InstanceID number
---@field CustomMarkEvent FCustomMarkEventData
---@field MapAdded EAddMarkFlag
---@field SyncDataType EMarkSyncDataType
FCompressMarkSyncData = {}


---@class FPopKartRaceInfo
---@field RaceGroup number
---@field NodeList ULuaArrayHelper<number>
FPopKartRaceInfo = {}


---@class FSyncPersionalOPInfo
---@field UniqueIndex number
---@field OPType EPersonalOperateType
FSyncPersionalOPInfo = {}


---@class FGameStateConfigParam
---@field bDisableShootTarget boolean
---@field bNotShootVehicle boolean
---@field NotShootClass ULuaArrayHelper<AActor>
---@field bDisableShootImpact boolean
---@field DisableImpacClass ULuaArrayHelper<AActor>
---@field NoShootIconClass ULuaArrayHelper<AActor>
---@field DisableShootTipID number
FGameStateConfigParam = {}


---@class FPlayerFatalDamageData
---@field CauserKey_int64 number
---@field VictimKey_int64 number
---@field DamageType number
---@field AdditionalParam number
---@field IsHeadShot boolean
---@field ResultHealthStatus number
---@field PreviousHealthStatus number
---@field KillerKillCount number
---@field bIsVictimMonster boolean
---@field DamageTypeClass UDamageType
---@field bDeadToFinished boolean
---@field KnockDownPlayerKey number
FPlayerFatalDamageData = {}


---@class FQuickSignMsg
---@field MsgID string
---@field PlayerName string
---@field MarkTicks number
---@field HitPos FVector
---@field HitActor AActor
---@field ConfigKey string
---@field audioID number
---@field ParamString string
---@field InstanceID number
---@field ParamArr ULuaArrayHelper<string>
---@field BindActorGUID number
---@field HitPosDirect number
---@field Playerkey number
---@field MiniMapIconTypeId number
---@field InputSignType number
---@field AuidoTextId number
---@field AttachedActor AActor
---@field AttachOffset FVector
FQuickSignMsg = {}


---@class FPlayerDeadShootKillerCacheInfo
---@field KillerPlayerKey number
---@field KillerUID string
---@field KillerWeaponInfo string
---@field ImpactPoint FVector
---@field DeadServerTime number
---@field ShooterClientVictimPosToHitPosDis number
---@field DSVictimPosToHitPosDis number
---@field ShooterShootPackageDelay number
---@field VictimControlMoveTime number
---@field TimeDelay_VictimControlMoveToRep number
---@field DSKillerPing number
FPlayerDeadShootKillerCacheInfo = {}


---@class FCarryRepData
---@field CarringState ECarringState
---@field bIsCarrier boolean
---@field PutDownLocOffset FVector
---@field Dirty number
FCarryRepData = {}


---@class FCarryDeadBoxRepData
---@field CarringState ECarringState
---@field PutDownLocOffset FVector
---@field Dirty number
FCarryDeadBoxRepData = {}


---@class FMeleeCombatPhaseData
---@field PhaseDuration number
---@field bNeedTriggerDamage boolean
---@field AmountOfDamage number
---@field TakeDamageDelayTime number
---@field Radius number
---@field Angle number
---@field Offset FVector
---@field PickerMaxCount number
---@field bEnableTrace boolean
---@field CameraShakeClass UCameraShake
---@field CameraShakeScale_Attacker number
FMeleeCombatPhaseData = {}


---@class FMeleeCombatData
---@field JumpPhaseData FMeleeCombatPhaseData
---@field NormalPhaseDataArray ULuaArrayHelper<FMeleeCombatPhaseData>
FMeleeCombatData = {}


---@class FGameStateParams
---@field GameStateParams ULuaMapHelper<string, string>
---@field Specifier string
FGameStateParams = {}


---@class FActorSpawnParams
---@field Name string
---@field SpawnCollisionHandlingOverride ESpawnActorCollisionHandlingMethod
---@field bDeferConstructComponents number
FActorSpawnParams = {}


---@class FLocalPlayerMoveCacheData
---@field FrameID number
---@field Location FVector
---@field WorldTime number
FLocalPlayerMoveCacheData = {}


---@class FShooterDSCacheData
---@field ShootID number
---@field ImpactPoint FVector
---@field KillerShootTimeMoveRepFrameID number
---@field ShootPackageDelayTime number
FShooterDSCacheData = {}


---@class FBPDataTime
---@field Year number
---@field Month number
---@field Day number
---@field Hour number
---@field Minute number
---@field Second number
---@field Millisecond number
FBPDataTime = {}


---@class FAirDropIDIP
---@field LastTime number
---@field LobbyTime FBPDataTime
FAirDropIDIP = {}


---@class FJumpHappyPersist
---@field JumpHappyData ULuaMapHelper<number, number>
FJumpHappyPersist = {}


---@class FDamageInfoCollection
---@field DamageTypeClass UDamageType
---@field DamageType number
---@field CauserItemID number
---@field Damage number
---@field Hit FHitResult
FDamageInfoCollection = {}


---@class FRevivalWithItemData
---@field ItemTypeID number
---@field Count number
FRevivalWithItemData = {}


---@class FRevivalWithWeaponData
---@field WeaponSlot ESurviveWeaponPropSlot
---@field AttachmentDatas ULuaArrayHelper<FRevivalWithItemData>
FRevivalWithWeaponData = {}


---@class FRevivalWithAllItemData
---@field ItemDatas ULuaArrayHelper<FRevivalWithItemData>
---@field WeaponDatas ULuaArrayHelper<FRevivalWithWeaponData>
FRevivalWithAllItemData = {}


---@class FRevivalBackpackParam
---@field ItemCfg FRevivalWithAllItemData
---@field Weight number
FRevivalBackpackParam = {}


---@class FDoubleVaultParam
---@field State EDoubleVaultState
---@field bLift boolean
---@field Height number
---@field Location FVector
---@field Rotation FRotator
FDoubleVaultParam = {}


---@class FCombatDroneRewardParam
---@field PointType ECombatDroneRewardPointType
---@field ExcellentOperationType EExcellentOperationResultType
---@field RescueDistance number
---@field RescueCircleNum number
---@field bRecallUseGun boolean
---@field RecallTeammateNum number
---@field CooperationKillNum number
---@field CooperationKillBossID number
FCombatDroneRewardParam = {}


---@class FCombatDroneRewardConfig
---@field ExcellentOperationScore ULuaMapHelper<EExcellentOperationResultType, number>
---@field RescueBaseScore number
---@field RescueCircleScore ULuaMapHelper<number, number>
---@field RescueDistanceScore ULuaMapHelper<number, number>
---@field RecallGunBaseScore number
---@field RecallTowerBaseScore number
---@field CooperationKillScoreMap ULuaMapHelper<number, number>
---@field RetrieveGearBaseScore number
FCombatDroneRewardConfig = {}


---@class FHealthChangeRecordItem
---@field Health number
---@field DSTimestamp number
---@field bIsShotGunDamage boolean
FHealthChangeRecordItem = {}


---@class FCombatDroneRepData
---@field PointType ECombatDroneRewardPointType
---@field RewardPoint number
---@field DeltaPoint number
---@field PointToday number
FCombatDroneRepData = {}


---@class FMoveInputRateLimitData
---@field DataName string
---@field MinRate number
---@field MaxRate number
---@field Priority EMoveInputRateLimitPriority
FMoveInputRateLimitData = {}


---@class FAlwaysLoadLevelData
---@field Name string
---@field Origin FVector
---@field Radius number
FAlwaysLoadLevelData = {}


---@class FDamageNotifyDelegate : ULuaMulticastDelegate
FDamageNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageInfo: FDamageInfoCollection) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDamageNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageInfo FDamageInfoCollection
function FDamageNotifyDelegate:Broadcast(DamageInfo) end


---@class FModifyDamageDelegate : ULuaSingleDelegate
FModifyDamageDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, DamageInfo: FDamageInfoCollection) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FModifyDamageDelegate:Bind(Callback, Obj) end

---执行委托
---@param DamageInfo FDamageInfoCollection
function FModifyDamageDelegate:Execute(DamageInfo) end
