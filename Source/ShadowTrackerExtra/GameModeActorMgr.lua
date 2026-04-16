---@meta

---@class FGameModeActorInfo
---@field TeamID number @支持按队伍创建GameModeActor
---@field SceneIndexList ULuaArrayHelper<number> @支持切换到下一个GameModeActor, 对接大厅协议sync_player_info
---@field CurrentSceneIndex number
---@field PCList ULuaArrayHelper<ASTExtraPlayerController> @记录当前GameModeActor所在玩家
FGameModeActorInfo = {}


---@class FSceneGameTotalTime
---@field SceneGameTime number
---@field SceneIndex number
---@field Valid boolean
FSceneGameTotalTime = {}


---@class UGameModeActorMgr: UGameModeBaseComponent
---@field MultiplePlayerAreaDistance number
---@field XNum number
---@field YNum number
---@field GameModeActorPathList ULuaArrayHelper<string>
---@field MaxPlayer number
---@field GameStopJoinTimeout number
---@field GoToNextSceneResultUITimeout number
---@field UseRecycleLocation boolean
---@field bInitUseCDO boolean
---@field GameTotalTime number
---@field GameModeActorClass ULuaArrayHelper<UClass>
---@field MultiplePlayerAreaIndex number
---@field GameModeActorInfoList ULuaArrayHelper<FGameModeActorInfo> @禁用(0,0,0)位置
---@field GameTimeout boolean
---@field UseGameStopJoin boolean
---@field UseGameOver boolean
---@field IsSingle boolean
---@field GameModeActorRecycleLocationList ULuaArrayHelper<FVector>
---@field SceneGameTotalTimeList ULuaArrayHelper<FSceneGameTotalTime>
---@field LeftTotalLocation number
---@field TickFreq number
---@field OnGameModeActorCreated FGameModeActorCreated
local UGameModeActorMgr = {}

---Login调用, 由GameMode驱动
function UGameModeActorMgr:Init() end

---有必要校验玩家是否有资格登入实例
---@param PlayerID FPlayerID
---@param ErrorMessage string
---@return boolean
function UGameModeActorMgr:CanNewPlayerLogin(PlayerID, ErrorMessage) end

---切场景调用, 由业务逻辑驱动
---@param TeamID number
---@return boolean
function UGameModeActorMgr:GoToNextScene(TeamID) end

---注意本接口函数有跳过Index功能
---@param TeamID number
---@return number
function UGameModeActorMgr:GetNextSceneIndex(TeamID) end

---@param TeamID number
---@return boolean
function UGameModeActorMgr:NeedGotoNextScene(TeamID) end

---@param Actor AGameModeActor
---@param Trans FTransform
---@return boolean
function UGameModeActorMgr:FindPlayerStartTransform(Actor, Trans) end

---@param PC ASTExtraPlayerController
function UGameModeActorMgr:AddPlayer(PC) end

---@param PC ASTExtraPlayerController
function UGameModeActorMgr:OnPlayerRealExit(PC) end

---@param GameModeActor AGameModeActor
function UGameModeActorMgr:NotifyDestoryGameModeActor(GameModeActor) end

---从Lua层获得玩家能玩的Scene的列表, 对接大厅协议sync_palyer_info.special_single_game_level_list
---@param UID number
function UGameModeActorMgr:GetLobbyPlayerSceneIndexList(UID) end

---从Lua层获得单个DS进程支持的玩家数量
---@return number
function UGameModeActorMgr:GetLobbyMaxPlayersCount() end

function UGameModeActorMgr:LuaOnGameOver() end

function UGameModeActorMgr:LuaGameStopJoin() end

---@return number
function UGameModeActorMgr:CalculateLocationCount() end

function UGameModeActorMgr:CalculateGameTotalTime() end
