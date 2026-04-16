---@meta

---@class EDeathMatchPersonalNotifyReason
---@field Kill number
---@field HeadShoot number
EDeathMatchPersonalNotifyReason = {}


---@class EDeathMatchGlobalNotifyReason
---@field FirstKill number
---@field SuperGod number
---@field LastStraw number
---@field Slaughter number
---@field GameComingEnd_KillNum number
---@field GameComingEnd_RemainTime number
---@field HardPointHalfTime number
---@field HardPointComingEnd_Score number
---@field HardPointComingEnd_RemainTime number
EDeathMatchGlobalNotifyReason = {}


---@class EDeathMatchGlobalAudioType
---@field FirstKill number
---@field SuperGod number
---@field SuperGodEnd number
---@field Rampage number
---@field GameComingHalfScore number
---@field GameComingEnd_KillNum number
---@field GameComingHalfTime number
---@field GameComingEnd_RemainTime number
---@field HardPointHalfTime number
---@field HardPointComingEnd_Score number
---@field HardPointComingEnd_RemainTime number
EDeathMatchGlobalAudioType = {}


---@class EDeathMatchDamageResult
---@field None number
---@field Assist number
---@field Kill number
EDeathMatchDamageResult = {}


---@class EDeathMatchGameEndType
---@field None number
---@field ScoreWin number
---@field Timeout number
---@field EnemyEscape number
EDeathMatchGameEndType = {}


---@class EDeathMatchPersonalMedalType
---@field SuperGod number
---@field ContinuouKill number
---@field SuperGodEnd number
---@field TopSpotEnd number
---@field ContinuouKillEnd number
---@field FirstKill number
---@field Revenge number
---@field HeadShot number
---@field Hunter number
---@field Rally number
---@field Cheer number
---@field Sharpshooter number
---@field GorgeousExplosion number
---@field Slaughter number
---@field AntiKill number
---@field SunderArmorExperts number
EDeathMatchPersonalMedalType = {}


---@class FDeathMatchStopJoinConfig
---@field bIsEnabled boolean
---@field BestScore number
---@field ScoreGap number
---@field bReCheckAfterPlayerLost boolean
FDeathMatchStopJoinConfig = {}


---@class FDeathMatchPlayerStartSelectConfig
---@field bIsEnabled boolean
---@field NoEnemyRangeRadius number
---@field ExistTeammateRanageRadius number
FDeathMatchPlayerStartSelectConfig = {}


---@class FDeathMatchEditorPSInfo
---@field Transform FTransform
---@field BornID number
---@field RegionID number
---@field SerialNum number
---@field bMarkOccupied boolean
FDeathMatchEditorPSInfo = {}


---@class FBornDeathMatchEditorPSData
---@field BornID number
---@field EditorPSInfos ULuaArrayHelper<FDeathMatchEditorPSInfo>
FBornDeathMatchEditorPSData = {}


---@class FDeathMatchPlayerFightingData
---@field Kills number
---@field Assists number
---@field Deaths number
FDeathMatchPlayerFightingData = {}


---@class FDeathMatchPlayerInfo
---@field UID number
---@field UIDString string
---@field PlayerName string
---@field IconURL string
---@field Gender number
---@field PlatformGender number
---@field PlayerLevel number
---@field SegmentLevel number
---@field AvatarBoxId number
---@field AchievementPrizeIDList ULuaArrayHelper<number>
FDeathMatchPlayerInfo = {}


---@class FDeathMatchPlayerStateData
---@field PlayerKey number
---@field DeathMatchPlayerInfo FDeathMatchPlayerInfo
---@field TeamID number
---@field Score number
---@field Rank number
---@field OccupyScore number
---@field Kills number
---@field Assists number
---@field Deaths number
---@field ContinuouKills number
---@field IsAIPlayer boolean
---@field InfectType number
---@field CurLiveState number
---@field InGameLevel number
---@field IsRealTimeLevelUp boolean
---@field ReasonID number
---@field HeadShotID number
FDeathMatchPlayerStateData = {}


---@class FDeathMatchCheckKilledKillerData
---@field PlayerKey number
---@field Kills number
---@field Score number
---@field ReasonID number
---@field HeadShotID number
---@field ContinuouKills number
---@field Rank number
FDeathMatchCheckKilledKillerData = {}


---@class FDeathMatchCheckKilledVictimData
---@field PlayerKey number
---@field Deaths number
---@field ContinuouKills number
---@field Rank number
FDeathMatchCheckKilledVictimData = {}


---@class FDeathMatchDamageCauserRecordData
---@field DamageType number
---@field MurderWeaponID number
---@field Damage number
FDeathMatchDamageCauserRecordData = {}


---@class FDeathMatchDamageRecordData
---@field VictimName string
---@field Damage number
---@field DamageResult EDeathMatchDamageResult
---@field LastTime number
FDeathMatchDamageRecordData = {}


---@class FDeathMatchPlayerDieData
---@field KillerCauserRecords ULuaArrayHelper<FDeathMatchDamageCauserRecordData>
---@field KillerStateData FDeathMatchPlayerStateData
---@field AssisterStateDatas ULuaArrayHelper<FDeathMatchPlayerStateData>
---@field VictimDamageRecords ULuaArrayHelper<FDeathMatchDamageRecordData>
FDeathMatchPlayerDieData = {}


---@class FDeathMatchTeamScoreData
---@field TeamID number
---@field Result string
---@field TeamRank number
---@field TeamScore number
---@field PlayerStateDatas ULuaArrayHelper<FDeathMatchPlayerStateData>
FDeathMatchTeamScoreData = {}


---@class FDeathMatchCheckKilledTeamScoreData
---@field TeamID number
---@field TeamScore number
FDeathMatchCheckKilledTeamScoreData = {}


---@class FDeathMatchBattleData
---@field TeamScoreDatas ULuaArrayHelper<FDeathMatchTeamScoreData>
---@field bIsAlreadyFirstKill boolean
---@field bSentGameComingEndNotify boolean
---@field bSentHalfScoreNotify boolean
---@field bSentHalfGameTimeNotify boolean
FDeathMatchBattleData = {}


---@class FDeathMatchDamageFlowRecordData
---@field VictimKey number
---@field VictimName string
---@field CauserKey number
---@field CauserName string
---@field Time number
---@field Damage number
---@field DamageType number
---@field MurderWeaponID number
---@field bIsDead boolean
FDeathMatchDamageFlowRecordData = {}


---@class FDeathMatchWeaponConfigTableData
---@field WeaponId number
---@field BulletID number
---@field BulletAmount number
FDeathMatchWeaponConfigTableData = {}


---@class FDeathMatchMedalTableData
---@field ID number
---@field Priority number
---@field IsAvailable boolean
FDeathMatchMedalTableData = {}


---@class FTDMTeamBattleData
---@field TeamID number
---@field TeamScore number
FTDMTeamBattleData = {}


---@class FTDMPlayerBattleData
---@field PlayerKey number
---@field UID number
---@field Score number
---@field Rank number
---@field Kill number
---@field Assist number
---@field ReasonID number
---@field HeadShotID number
---@field InfectType number
---@field InGameLevel number
---@field CurLiveState number
---@field IsRealTimeLevelUp boolean
FTDMPlayerBattleData = {}
