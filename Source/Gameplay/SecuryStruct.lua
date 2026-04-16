---@meta

---@class FGameBaseInfo
---@field GameSvrId string
---@field GameAppID string
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field UserName string
---@field RoleID number
---@field RoleType number
---@field PicUrl string
FGameBaseInfo = {}


---@class FClientGameStartFlow
---@field ClientStartTime number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field MapName string
---@field Weatherid number
---@field ItemList string
---@field TeamType number
---@field TeamID number
---@field TeamPlayer1 string
---@field TeamPlayer2 string
---@field TeamPlayer3 string
---@field SecGameStartFlowFlowID number
---@field GVoiceTeamID string
---@field GVoiceRoomID string
---@field GVoiceTeamMemberID number
---@field GVoiceRoomMemberID number
---@field MrpcsFlowData ULuaArrayHelper<number>
FClientGameStartFlow = {}


---@class FGameStartFlow
---@field GameSvrId string
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field ClientStartTime number
---@field MrpcsFlowcount_ number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field UserName string
---@field RoleID number
---@field RoleType number
---@field PicUrl string
---@field SvrUserMoney1 number
---@field SvrUserMoney2 number
---@field SvrUserMoney3 number
---@field SvrRoundRank number
---@field SvrRoundRank1 number
---@field SvrRoundRank2 number
---@field SvrRoundRank3 number
---@field SvrRoleID number
---@field SvrRoleType number
---@field SvrMapName string
---@field SvrWeatherid number
---@field SvrItemList string
---@field WaitStartTime number
---@field WaitEndTime number
---@field MapName string
---@field Weatherid number
---@field ItemList string
---@field GameType number
---@field TeamType number
---@field AutoMatch number
---@field playerCount number
---@field TeamID number
---@field TeamPlayer1 string
---@field TeamPlayer2 string
---@field TeamPlayer3 string
---@field TeamPlayer1Rank number
---@field TeamPlayer2Rank number
---@field TeamPlayer3Rank number
---@field SecGameStartFlowFlowID number
---@field GVoiceTeamID string
---@field GVoiceRoomID string
---@field GVoiceTeamMemberID number
---@field GVoiceRoomMemberID number
---@field MrpcsFlowStr string
FGameStartFlow = {}


---@class FClientJumpFlow
---@field ClientStartTime number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field MapName string
---@field Weatherid number
---@field GameStartTime number
---@field StartJumpTime number
---@field EndJumpTime number
---@field PlayerJumpTime number
---@field PlayerOpenTime number
---@field PlayerLandTime number
---@field PlayerJumpPositionX number
---@field PlayerJumpPositionY number
---@field PlayerJumpPositionZ number
---@field PlaneJumpPositionX number
---@field PlaneJumpPositionY number
---@field PlaneJumpPositionZ number
---@field PlayerLandPositionX number
---@field PlayerLandPositionY number
---@field PlayerLandPositionZ number
---@field PlayerLandDistance number
---@field PlayerSpeedMax1 number
---@field PlayerSpeedMax2 number
---@field GVoiceTeamID string
---@field GVoiceRoomID string
---@field GVoiceTeamMemberID number
---@field GVoiceRoomMemberID number
FClientJumpFlow = {}


---@class FJumpFlow
---@field GameSvrId string
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field ClientStartTime number
---@field MrpcsFlowcount_ number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field UserName string
---@field RoleID number
---@field RoleType number
---@field PicUrl string
---@field MapName string
---@field Weatherid number
---@field GameStartTime number
---@field StartJumpTime number
---@field EndJumpTime number
---@field PlayerJumpTime number
---@field PlayerOpenTime number
---@field PlayerLandTime number
---@field PlayerJumpPositionX number
---@field PlayerJumpPositionY number
---@field PlayerJumpPositionZ number
---@field PlaneJumpPositionX number
---@field PlaneJumpPositionY number
---@field PlaneJumpPositionZ number
---@field PlayerLandPositionX number
---@field PlayerLandPositionY number
---@field PlayerLandPositionZ number
---@field PlayerLandDistance number
---@field PlayerSpeedMax1 number
---@field PlayerSpeedMax2 number
---@field GVoiceTeamID string
---@field GVoiceRoomID string
---@field GVoiceTeamMemberID number
---@field GVoiceRoomMemberID number
FJumpFlow = {}


---@class FClientCircleFlow
---@field ClientStartTime number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field PicUrl string
---@field GameStartTime number
---@field NewCircleBornTime number
---@field NewCirclePositionX number
---@field NewCirclePositionY number
---@field NewCirclePositionRadius number
---@field NewCircleCount number
---@field PlayerPositionX number
---@field PlayerPositionY number
---@field PlayerPositionZ number
---@field PlayerHP number
---@field OldCircleMoveTime number
---@field OldCircleMoveEndTime number
---@field PlayerOutTime number
---@field CirclePoisonCount number
---@field CirclePoisonMin number
---@field CirclePoisonMax number
---@field CirclePoisonAvg number
---@field CirclePoisonTotal number
---@field CirclePoisonDrop number
---@field CirclePoisonDead number
---@field RecoveryCount number
---@field RecoveryMin number
---@field RecoveryMax number
---@field RecoveryTotal number
---@field EnergyRecoveryCount number
---@field EnergyRecoveryMin number
---@field EnergyRecoveryMax number
---@field EnergyRecoveryTotal number
---@field EnergyStartLv number
---@field EnergyStartTime number
---@field EnergyItemUse string
---@field EnergyLvTimeInfo number
---@field EnergyRunFastTime string
---@field EnergyRecoveryLvTimeInfo string
---@field EnergyEndLv number
---@field EnergyEndTime number
---@field PlayerMoveDis number
---@field PlayerSpeedMax number
---@field PlayerSpeedAvg number
---@field PlayerCarSpeedMax number
---@field PlayerCarSpeedAvg number
---@field PlayerSquatMoveDis number
---@field PlayerSquatMoveTime number
---@field PlayerCreepMoveDis number
---@field PlayerCreepMoveTime number
---@field PlayerRunMoveDis number
---@field PlayerRunMoveTime number
---@field PlayerDriveMoveDis number
---@field PlayerDriveMoveTime number
---@field PlayerCar number
---@field PlayerCameraDistanceMax number
---@field SecCircleFlowID number
---@field AutoAimType number
---@field AutoAimTime number
---@field MrpcsFlowData ULuaArrayHelper<number>
FClientCircleFlow = {}


---@class FCircleFlow
---@field GameSvrId string @通用属性*****************
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field ClientStartTime number
---@field MrpcsFlowcount_ number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field UserName string
---@field PicUrl string
---@field RoleID number
---@field RoleType number
---@field GameStartTime number
---@field NewCircleBornTime number
---@field NewCirclePositionX number
---@field NewCirclePositionY number
---@field NewCirclePositionRadius number
---@field NewCircleCount number
---@field PlayerPositionX number
---@field PlayerPositionY number
---@field PlayerPositionZ number
---@field PlayerHP number
---@field OldCircleMoveTime number
---@field OldCircleMoveEndTime number
---@field PlayerOutTime number
---@field CirclePoisonCount number
---@field CirclePoisonMin number
---@field CirclePoisonMax number
---@field CirclePoisonAvg number
---@field CirclePoisonTotal number
---@field CirclePoisonDrop number
---@field CirclePoisonDead number
---@field RecoveryCount number
---@field RecoveryMin number
---@field RecoveryMax number
---@field RecoveryTotal number
---@field EnergyRecoveryCount number
---@field EnergyRecoveryMin number
---@field EnergyRecoveryMax number
---@field EnergyRecoveryTotal number
---@field EnergyStartLv number
---@field EnergyStartTime number
---@field EnergyItemUse string
---@field EnergyLvTimeInfo number
---@field EnergyRunFastTime string
---@field EnergyRecoveryLvTimeInfo string
---@field EnergyEndLv number
---@field EnergyEndTime number
---@field PlayerMoveDis number
---@field PlayerSpeedMax number
---@field PlayerSpeedAvg number
---@field PlayerCarSpeedMax number
---@field PlayerCarSpeedAvg number
---@field PlayerSquatMoveDis number
---@field PlayerSquatMoveTime number
---@field PlayerCreepMoveDis number
---@field PlayerCreepMoveTime number
---@field PlayerRunMoveDis number
---@field PlayerRunMoveTime number
---@field PlayerDriveMoveDis number
---@field PlayerDriveMoveTime number
---@field PlayerCar number
---@field PlayerCameraDistanceMax number
---@field SecCircleFlowID number
---@field AutoAimType number
---@field AutoAimTime number
---@field PlayerKillCount number
---@field PlayerKillAICount number
---@field PlayerHeadKillCount number
---@field PlayerHatID number
---@field PlayerMaskID number
---@field PlayerShirtID number
---@field PlayerPantsID number
---@field MrpcsFlowStr string
FCircleFlow = {}


---@class FClientGameEndFlow
---@field ClientStartTime number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field ClientVersion string
---@field OverTime number
---@field EndType number
---@field KillCount number
---@field AssistsCount number
---@field DropCount number
---@field SaveCount number
---@field RebornCount number
---@field AliveType number
---@field GoldGet number
---@field DiamondGet number
---@field ExpGet number
---@field WinRank number
---@field TotalPlayers number
---@field PlayerRank number
---@field RankEnd number
---@field TeamID number
---@field TeamPlayer1 string
---@field TeamPlayer2 string
---@field TeamPlayer3 string
---@field TeamPlayer1AliveType number
---@field TeamPlayer2AliveType number
---@field TeamPlayer3AliveType number
---@field TeamPlayer1Kill number
---@field TeamPlayer2Kill number
---@field TeamPlayer3Kill number
---@field GameEndFlowID number
---@field RoundCircleCount number
---@field MrpcsFlowData ULuaArrayHelper<number>
FClientGameEndFlow = {}


---@class FForbitPickFlowNode
---@field playerName string
---@field forbitNumList ULuaArrayHelper<number>
FForbitPickFlowNode = {}


---@class FSuitSkinUnitFlow
---@field UID number
---@field ElapseTime number
---@field State number
---@field SuitID number
---@field LocationX number
---@field LocationY number
---@field LocationZ number
FSuitSkinUnitFlow = {}


---@class FSuitSkinFlow
---@field flowList ULuaArrayHelper<FSuitSkinUnitFlow>
FSuitSkinFlow = {}


---@class FForbitPickFlow
---@field forbitList ULuaArrayHelper<FForbitPickFlowNode>
FForbitPickFlow = {}


---@class FTeammatHurtFlowNode
---@field HurtPlayerName string
---@field GameModeType number
---@field MakeHurtPlayerName string
---@field DataTimes string
FTeammatHurtFlowNode = {}


---@class FTeammatHurtFlow
---@field TeammatHurtList ULuaArrayHelper<FTeammatHurtFlowNode>
FTeammatHurtFlow = {}


---@class FGameEndFlow
---@field GameSvrId string
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field ClientStartTime number
---@field MrpcsFlowcount_ number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field UserName string
---@field RoleID number
---@field RoleType number
---@field ClientVersion string
---@field OverTime number
---@field EndType number
---@field KillCount number
---@field AssistsCount number
---@field DropCount number
---@field SaveCount number
---@field RebornCount number
---@field AliveType number
---@field GoldGet number
---@field DiamondGet number
---@field ExpGet number
---@field WinRank number
---@field TotalPlayers number
---@field PlayerRank number
---@field RankEnd number
---@field TeamID number
---@field TeamPlayer1 string
---@field TeamPlayer2 string
---@field TeamPlayer3 string
---@field TeamPlayer1AliveType number
---@field TeamPlayer2AliveType number
---@field TeamPlayer3AliveType number
---@field TeamPlayer1Kill number
---@field TeamPlayer2Kill number
---@field TeamPlayer3Kill number
---@field GameEndFlowID number
---@field AIKillCount number
---@field KillHeadShotCount number
---@field RoundCircleCount number
---@field PlayerLastKillGet number
---@field MrpcsFlowStr string
FGameEndFlow = {}


---@class FAimFlow
---@field GameSvrId string
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field ClientStartTime number
---@field MrpcsFlowcount_ number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field UserName string
---@field RoleID number
---@field RoleType number
---@field AimTime number
---@field ShotCDTime string
---@field ShotCount number
---@field ShotHitCount number
---@field ShotHeadHitCount number
---@field ShotPersonHitCount number
---@field ShotPersonKillCount number
---@field HitDistance string
---@field HitEachDistance string
---@field HitAngle string
---@field HitEachCdTime string
---@field HitPartInfo string
---@field PlayerState string
---@field bHoldBreath number
---@field SightType number
---@field AimFlowID number
FAimFlow = {}


---@class FAttackFlow
---@field GameSvrId string
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field AreaID number
---@field PlatID number
---@field ZoneID string
---@field BattleID number
---@field ClientStartTime number
---@field ReportTimeSinceOnPlane number
---@field MrpcsFlowcount_ number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field UserName string
---@field RoleID number
---@field RoleType number
---@field TargetOpenID string
---@field TargetUserName string
---@field TargetRoleID number
---@field TargetRoleType number
---@field GunName string
---@field GunPartsType string
---@field SightType number
---@field BulletSpeed number
---@field MagazineMax number
---@field MagazineLeft number
---@field ShotFrequency number
---@field BulletDamage number
---@field BulletDown number
---@field BulletDamageReduce number
---@field Recoil number
---@field ReloadTime number
---@field PlayerState string
---@field ShotPose number
---@field FireType number
---@field bHoldBreath number
---@field Sideways number
---@field ShootingDeviationX number
---@field ShootingDeviationY number
---@field ZeroDistance number
---@field ShotTime number
---@field HitTime number
---@field PlayerPositionX number
---@field PlayerPositionY number
---@field PlayerPositionZ number
---@field GunPositionX number
---@field GunPositionY number
---@field GunPositionZ number
---@field BulletsBornPositionX number
---@field BulletsBornPositionY number
---@field BulletsBornPositionZ number
---@field LastHitTime number
---@field BulletFlyDistance number
---@field BulletFlyTime number
---@field HitPositionX number
---@field HitPositionY number
---@field HitPositionZ number
---@field DamageRate number
---@field HitPart number
---@field bHitCar number
---@field IfHitHuman number
---@field bTireOut number
---@field BulletCost number
---@field HPstart number
---@field HPEnd number
---@field ArmorHPStart number
---@field ArmorHPEnd number
---@field CarHPStart number
---@field CarHPEnd number
---@field PlayerKill number
---@field bArmorKill number
---@field bCarKill number
---@field RecoilMoveX number
---@field RecoilMoveY number
---@field WeaponAimFOV number
---@field BulletDamageDebuff number
---@field BulletDamageBuff number
---@field AtackFlowID number
---@field AutoAimSpeed number
---@field AutoAimSpeedRateMax number
---@field AutoAimRangeMax number
---@field AutoAimRangeRateMax number
---@field GunID number
---@field SymbolWord number
---@field UnixTimestampMS string
---@field VehicleType number
FAttackFlow = {}


---@class FDSSafePolicyFlow
---@field UID string
---@field PolicyName string
---@field ReportCount number
---@field RejectCount number
---@field PunishSwitch number
---@field PunishOn number
---@field ReportType number
---@field CheckTimes ULuaArrayHelper<number>
---@field RejectCheckTimes ULuaArrayHelper<number>
---@field ExtStr string
FDSSafePolicyFlow = {}


---@class FDSSafePolicyFlowChild
---@field CheckTimesString ULuaArrayHelper<string>
FDSSafePolicyFlowChild = {}


---@class FHurtFlow
---@field GameSvrId string
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field PlatID number
---@field AreaID number
---@field ZoneID string
---@field BattleID number
---@field ClientStartTime number
---@field MrpcsFlowcount_ number
---@field MrpcsFlow ULuaArrayHelper<number>
---@field UserName string
---@field RoleID number
---@field RoleType number
---@field EnemyOpenID string
---@field EnemyUserName string
---@field EnemyRoleID number
---@field EnemyRoleType number
---@field HurtTime number
---@field HurtType number
---@field DamageItemID number
---@field HitType number
---@field DamageStart number
---@field DamageReduce number
---@field ArmorDef number
---@field HPstart number
---@field HPEnd number
---@field ArmorHPStart1 number
---@field ArmorHPEnd1 number
---@field ArmorHPStart2 number
---@field ArmorHPEnd2 number
---@field CarHPStart number
---@field CarHPEnd number
---@field FallHeight number
---@field HypoxiaTime number
---@field HypoxiaHurtTotal number
---@field PlayerKilled number
---@field ArmorKill number
---@field CarKill number
---@field IfIsAI number
---@field HurtFlowID number
FHurtFlow = {}


---@class FResultRatingData
---@field rank_rating number
---@field kill_rating number
---@field win_rating number
---@field change_rank_rating number
---@field change_kill_rating number
---@field change_win_rating number
FResultRatingData = {}


---@class FMemBTResultData
---@field Name string
---@field Kill number
---@field State string
---@field travelDistance number
---@field DamageAmount number
---@field surviveTime number
---@field AssistNum number
---@field HeadShotNum number
---@field rescueTimes number
---@field HealAmount number
---@field UID string
---@field ShouldShowAddFriendBtn number
FMemBTResultData = {}


---@class FBattleResultData
---@field Reason string
---@field RemainingPlayerCount number
---@field TotalPlayerCount number
---@field RemainingTeamCount number
---@field TotalTeamCount number
---@field IsSolo boolean
---@field ShootWeaponShotNum number
---@field ShootWeaponShotAndHitPlayerNum number
---@field HealTimes number
---@field marchDistance number
---@field driveDistance number
---@field destroyVehicleNum number
---@field add_exp number
---@field add_gold number
---@field battle_id string
---@field max_game_num number
---@field person_rank number
---@field team_rank number
---@field BP_ARRAY_TeammateList ULuaArrayHelper<FMemBTResultData>
---@field BP_STRUCT_BTRating FResultRatingData
FBattleResultData = {}


---@class FPlayerBehaviorFlow
---@field FrameCounter number
---@field BattleId number
---@field IsTargetPlayer boolean
---@field Name string
---@field PlayerKey number
---@field RelevantPlayerKey number
---@field LocationX number
---@field LocationY number
---@field LocationZ number
---@field RotationP number
---@field RotationY number
---@field RotationR number
---@field Stats string
---@field IsDying boolean
---@field Breath number
---@field SpeedX number
---@field SpeedY number
---@field SpeedZ number
---@field Health number
---@field Energy number
---@field CurrentWeaponID number
---@field Ammo number
---@field SightId number
---@field IsBeAttacking boolean
---@field BeAttackDirX number
---@field BeAttackDirY number
---@field BeAttackDirZ number
---@field MedicineId number
---@field IsHaveSound boolean
FPlayerBehaviorFlow = {}


---@class FPosAndTime
---@field LocationX number
---@field LocationY number
---@field LocationZ number
---@field Time number
---@field VehicleType number
FPosAndTime = {}


---@class FPlayerRouteFlow
---@field GameAppID string
---@field PlatID number
---@field OpenID string
---@field UID number
---@field BattleID number
---@field SeasonID number
---@field PlayerName string
---@field Route ULuaArrayHelper<FPosAndTime>
---@field End FPosAndTime
FPlayerRouteFlow = {}


---@class FPlayerThrowFlow
---@field InstanceID number
---@field OwnerUID number
---@field TypeID number
---@field LifeStart number
---@field BornTime number
---@field ExplodeTime number
---@field LifeEnd number
---@field BornLocation FVector
---@field ExplodeLocation FVector
---@field EndLocation FVector
---@field DamageList ULuaMapHelper<number, number>
FPlayerThrowFlow = {}


---@class FRecoilInfo
---@field VerticalRecoilMin number
---@field VerticalRecoilMax number
---@field VerticalRecoilVariation number
---@field VerticalRecoveryModifier number
---@field VerticalRecoveryClamp number
---@field VerticalRecoveryMax number
---@field LeftMax number
---@field RightMax number
---@field HorizontalTendency number
---@field BulletPerSwitch number
---@field TimePerSwitch number
---@field SwitchOnTime boolean
---@field RecoilSpeedVertical number
---@field RecoilSpeedHorizontal number
---@field RecovertySpeedVertical number
---@field RecoilValueClimb number
---@field RecoilValueFail number
---@field RecoilModifierStand number
---@field RecoilModifierCrouch number
---@field RecoilModifierProne number
---@field RecoilHorizontalMinScalar number
---@field BurstEmptyDelay number
---@field ShootSightReturn boolean
---@field ShootSightReturnSpeed number
---@field AccessoriesVRecoilFactor number
---@field AccessoriesHRecoilFactor number
---@field AccessoriesRecoveryFactor number
FRecoilInfo = {}


---@class FClientSecPlayerKillFlow
---@field ClientStartTime number @非通用属性*********************
---@field SecPlayerKillFlowID number
---@field GunID number
---@field KilledPlayerKey number
---@field RecoilInfo FRecoilInfo
FClientSecPlayerKillFlow = {}


---@class FSecPlayerKillFlow
---@field GameSvrId string @通用属性*********************
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field PlatID number
---@field AreaID number
---@field ZoneID string
---@field BattleID number
---@field UserName string
---@field SvrRoleID number
---@field ClientStartTime number @非通用属性*********************
---@field SecPlayerKillFlowID number
---@field GunID number
---@field KilledPlayerRoleID number
---@field RecoilInfo FRecoilInfo
FSecPlayerKillFlow = {}


---客户端设置数据start*********************************
---@class FGameSetting_BasicSetting
---@field CrossHairColor number
---@field AimAssist boolean
---@field WallFeedBack boolean
---@field SingleShotWeaponShootMode number
---@field ShotGunShootMode number
---@field LeftRightShoot boolean
---@field LRShootMode number
---@field LRShootSniperSwitch boolean
---@field ScopeAutoPeekSwitch boolean
---@field LeftHandFire number
---@field Gyroscope number
---@field AutoOpenDoor boolean
---@field IntelligentDrugs boolean
---@field ActorAnimationSwitch boolean
---@field FPViewSwitch boolean
---@field OneKeyScopeFire_OtherMode boolean
---@field UniversalSignSwitch boolean
---@field RotateViewWithPeekSwitch boolean
---@field RotateViewWithSniperSwitch boolean
---@field InterruptReloadType number
---@field QuasiMirrorSwitch boolean
---@field OpenMirrorMode number
---@field SideMirrorMode number
---@field DynamicHoldGun boolean
---@field FpViewValue number
---@field TpViewValue number
---@field QuickThrowSwitch boolean
---@field QuickThrowPressSwitch boolean
---@field NormalJumpTypeSwitch number
---@field DeathMatchJumpTypeSwitch number
---@field HideProneBtn boolean
FGameSetting_BasicSetting = {}


---@class FGameSetting_ArtQuality
---@field ArtStyle number
---@field AntiAliasingSwitch boolean
FGameSetting_ArtQuality = {}


---@class FGameSetting_Operate
---@field FireMode number
---@field Touch_3D_Switcher boolean
FGameSetting_Operate = {}


---@class FGameSetting_Vehicle
---@field VehicleControlMode number
---@field DrivingViewMode number
FGameSetting_Vehicle = {}


---@class FGameSetting_Sensibility_FreeCam
---@field VehicleEye number
---@field ParachuteEye number
---@field CamFpFreeEye number
FGameSetting_Sensibility_FreeCam = {}


---@class FGameSetting_Sensibility_Cam
---@field CamLensSenNoneSniper number
---@field CamLensSenNoneSniperFP number
---@field CamLensSenRedDotSniper number
---@field CamLensSen2XSniper number
---@field CamLensSen3XSniper number
---@field CamLensSen4XSniper number
---@field CamLensSen6XSniper number
---@field CamLensSen8XSniper number
FGameSetting_Sensibility_Cam = {}


---@class FGameSetting_Sensibility_Fire
---@field FireCamLensSenNoneSniper number
---@field FireCamLensSenNoneSniperFP number
---@field FireCamLensSenRedDotSniper number
---@field FireCamLensSen2XSniper number
---@field FireCamLensSen3XSniper number
---@field FireCamLensSen4XSniper number
---@field FireCamLensSen6XSniper number
---@field FireCamLensSen8XSniper number
FGameSetting_Sensibility_Fire = {}


---@class FGameSetting_Sensibility_Gyroscope
---@field GyroscopeSenNoneSniper number
---@field GyroscopeSenNoneSniperFP number
---@field GyroscopeSenRedDotSniper number
---@field GyroscopeSen2XSniper number
---@field GyroscopeSen3XSniper number
---@field GyroscopeSen4XSniper number
---@field GyroscopeSen6XSniper number
---@field GyroscopeSen8XSniper number
FGameSetting_Sensibility_Gyroscope = {}


---@class FGameSetting_Sensibility
---@field CameraLensSensibility number
---@field Sens_FreeCamera FGameSetting_Sensibility_FreeCam
---@field Sens_Camera FGameSetting_Sensibility_Cam
---@field Sens_Fire FGameSetting_Sensibility_Fire
---@field Sens_Gyroscope FGameSetting_Sensibility_Gyroscope
FGameSetting_Sensibility = {}


---@class FGameSetting_PickUp_Drug
---@field MedicalTreatment number
---@field Bandage number
---@field PainKiller number
---@field Adrenaline number
---@field EnergyDrink number
---@field FirstAidKit number
FGameSetting_PickUp_Drug = {}


---@class FGamesetting_PickUp_Grenade
---@field IncendiaryBomb number
---@field ShockBomb number
---@field SmokeBomb number
---@field GrenadeFragmented number
FGamesetting_PickUp_Grenade = {}


---@class FGameSetting_PickUp_WeaponBullet
---@field WeaponID number
---@field BulletCount number
FGameSetting_PickUp_WeaponBullet = {}


---@class FGameSetting_PickUp_SightingTelescope
---@field LimitSniper2X number
---@field LimitSniper3X number
---@field LimitSniper4X number
---@field LimitSniper6X number
---@field LimitSniper8X number
---@field NewLimitRedDotHolographic number
FGameSetting_PickUp_SightingTelescope = {}


---@class FGameSetting_PickUp
---@field AutoPickUpSwitcher boolean
---@field AutoPickUpPistol boolean
---@field AutoPickupSideMirror boolean
---@field AutoPickUpLevel3Backpack boolean
---@field AutoPickMirror boolean
---@field AutoEquipAim boolean
---@field DisableAutoPickupSwitcher boolean
---@field AKMAutoMirror boolean
---@field Drug FGameSetting_PickUp_Drug
---@field Grenade FGamesetting_PickUp_Grenade
---@field WeaponBulletList ULuaArrayHelper<FGameSetting_PickUp_WeaponBullet>
---@field SightingTelescope FGameSetting_PickUp_SightingTelescope
FGameSetting_PickUp = {}


---@class FGameSetting_Effect
---@field HitEffect_Type number
---@field HitEffect_Color number
FGameSetting_Effect = {}


---@class FGameSetting
---@field RoleID number
---@field BasicSetting FGameSetting_BasicSetting
---@field ArtQuality FGameSetting_ArtQuality
---@field Operate FGameSetting_Operate
---@field Vehicle FGameSetting_Vehicle
---@field Sensibility FGameSetting_Sensibility
---@field PickUp FGameSetting_PickUp
---@field Effect FGameSetting_Effect
FGameSetting = {}


---观战角色信息按钮数据 begin*********************************
---@class FWatchGamePlayerInfoButtonClick
---@field WatchPlayer_UID number
---@field WatchedPlayer_UID number
FWatchGamePlayerInfoButtonClick = {}


---观战角色信息按钮数据 end*********************************
---@class FGvoiceTeamCreate
---@field GVoiceTeamID string
---@field GVoiceRoomID string
---@field GVoiceTeamMemberID number
---@field GVoiceRoomMemberID number
---@field UID number
FGvoiceTeamCreate = {}


---@class FGvoiceTeamQuit
---@field GVoiceTeamID string
---@field GVoiceRoomID string
---@field GVoiceTeamMemberID number
---@field GVoiceRoomMemberID number
---@field UID number
FGvoiceTeamQuit = {}


---@class FVerifyInfoFlow
---@field GameAppID string
---@field OpenID string
---@field UID number
---@field BattleID number
---@field LocationX number
---@field LocationY number
---@field LocationZ number
FVerifyInfoFlow = {}


---@class FClientSecMrpcsFlow
---@field SecMrpcsFlowID number
---@field MrpcsFlowData ULuaArrayHelper<number>
FClientSecMrpcsFlow = {}


---@class FSecMrpcsFlow
---@field GameSvrId string @通用属性*********************
---@field dtEventTime number
---@field GameAppID string
---@field OpenID string
---@field PlatID number
---@field AreaID number
---@field ZoneID string
---@field BattleID number
---@field UserName string
---@field SvrRoleID number
---@field SecMrpcsFlowID number @非通用属性*********************
---@field MrpcsFlowStr string
FSecMrpcsFlow = {}


---@class FJoyStickFlow
---@field UID string
---@field StickAngle number
---@field RoleCoordinate string
---@field RoleMovingState number
FJoyStickFlow = {}


---@class FSecRecordStartFlow
---@field GameSvrId string
---@field dtEventTime number
---@field GameAppID string
---@field PlatID number
---@field AreaID number
---@field ZoneID number
---@field BattleID number
---@field SvrId string
---@field GameSvrBusID string
---@field DsVersion string
---@field IsRecorded number
---@field RoundRankLevel number
---@field RankType number
---@field CameraMode number
---@field RecordedCondition number
---@field MatchType number
---@field PlayerNumber number
---@field RealPlayerNumber number
---@field GameModeType number
---@field ModeID number
---@field MapID number
---@field DemoTotalTime number
---@field CurCheckpointIndex number
---@field IsCheckpointCorrect boolean
FSecRecordStartFlow = {}


---@class FDHkeyNegotiateInfo
---@field UID number
---@field RefuseServer boolean
---@field NegotiateDHKeyTimeoutCount number
---@field NegotiateDHKeyCount number
---@field NegotiateDHKeySeq number
---@field NegotiateDHKeySuccessCount number
---@field SuccessRate number
---@field NegotiateDHKeyFailedCountSeq number
---@field NegotiateDHKeyFailedCountKeyIndex number
---@field NegotiateDHKeyFailedCountCRC number
FDHkeyNegotiateInfo = {}


---@class FDragonBoatVehicleUseInfo
---@field UseCount number
---@field OpenID string
FDragonBoatVehicleUseInfo = {}


---@class FUseDragonBoatFlow
---@field open_id string
---@field uid number
---@field seatIdx number
---@field dragonBoatUniqueID number
---@field bDrumming number
---@field perfectTime number
---@field bestTime number
---@field goodTime number
---@field missTime number
---@field bGetAward number
---@field bGetBoost number
---@field driveDistance number
---@field driveTime number
FUseDragonBoatFlow = {}


---@class FAsianAttackFlow
---@field ClientStartTime number
---@field TrackNum number
---@field Username string
---@field RoleID number
---@field WeaponID number
---@field GunPartsType string
---@field SightType number
---@field HitPositionX number
---@field HitPositionY number
---@field HitPositionZ number
---@field HPStart number
---@field HPEnd number
---@field CriticalRatio number
---@field HitTime number
---@field TargetType number
---@field ShootPositionX number
---@field ShootPositionY number
---@field ShootPositionZ number
---@field Distance number
---@field TeamID number
---@field ShootGrade number
FAsianAttackFlow = {}


---@class FDSBattlePerfMetricFlow
---@field UID string
---@field MetricName string
---@field MetricValue number
---@field CheckTimes ULuaArrayHelper<number>
---@field ExtStr string
---@field CheckTimesString ULuaArrayHelper<string>
FDSBattlePerfMetricFlow = {}
