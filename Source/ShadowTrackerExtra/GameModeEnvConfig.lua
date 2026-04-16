---@meta

---@class EGameModeType
---@field EUnknownGameMode number
---@field ETypicalGameMode number @经典模式
---@field EEntertainmentGameMode number @娱乐模式
---@field EBattleRoyalCorpsWarMode number @军团模式
---@field EWarGameMode number @战争模式
---@field EWarGameMode_SuperPower number @超能模式
---@field EWarGameMode_GrandTheft number @抢夺模式
---@field EZombieGameMode_Survival number @李龙模式-召唤直升机
---@field EZombieGameMode_Escape number @鑫龙模式-尸潮
---@field EDeathMatchGameMode number @死亡竞赛模式
---@field ELycanGameMode number @狼人模式
---@field EBattleRoyal_SuperCold number @极寒模式
---@field EZombieGameMode_LiveTillDawn number @破晓生还模式
---@field ERevivalGameMode number @复活模式
---@field EPeakCompetitionMode number @巅峰赛
---@field EActivityFunMode number @演唱会模式
---@field EMyHome_HomeMode number @家园模式-家园
---@field EEscapeMode number @Home, feishen, 20210615
---@field EGalleryMode number @藏馆
---@field EMagicBattleRoyale number @奇幻大乱斗
---@field EUGCMobileMode number @手机UGC
---@field ESuperPeopleBlasting number @超体爆破
---@field ELostTombMode number @L玩法
---@field ENormalTrainingMode number @经典训练场模式
---@field EEscapeGalleryMode number @地铁藏馆
EGameModeType = {}


---@class ELobbyGameType
---@field LobbyTypeMobile number
---@field LobbyTypeSimulator number
---@field LobbyTypeExternalSimulator number
---@field LobbyTypeBlackRoom number
---@field LobbyTypeNovice number
ELobbyGameType = {}


---@class FPlaneTypes
---@field SeasonIdx number
---@field ModeTypes ULuaArrayHelper<EGameModeType>
---@field PlaneClassFullPath string
FPlaneTypes = {}


---@class FBornPlayerStartData
---@field BornPointID number
---@field PlayerStarts ULuaArrayHelper<ASTExtraPlayerStart>
FBornPlayerStartData = {}


---@class FAIFriendlyCampItem
---@field CampID number
---@field FriendlyCampList ULuaArrayHelper<number>
FAIFriendlyCampItem = {}
