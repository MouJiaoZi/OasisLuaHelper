---@meta

---关卡流程系统接口库
---@class UGCLevelFlowSystem
UGCLevelFlowSystem = {}

---启用关卡流程
---生效范围：服务器
---@param InMgrPath string @需要注册的 GameModeActorMgr 的路径
function UGCLevelFlowSystem.EnableLevelFlow(InMgrPath) end

---当前关卡所有玩家直接跳转到下个关卡，需所有玩家都已达到通关条件
---生效范围：服务器
---@return boolean @所有玩家跳转到下个关卡是否成功
function UGCLevelFlowSystem.GoToNextLevelForAllPlayers() end

---单个玩家直接跳转到下个关卡，需当前玩家已达到通关条件，当前队伍其他玩家仍停留在当前关卡
---生效范围：服务器
---@param PlayerController ASTExtraPlayerController @玩家
---@return boolean @当前玩家跳转到下个关卡是否成功
function UGCLevelFlowSystem.GoToNextLevelForOnePlayer(PlayerController) end

---给指定队伍关卡加分
---生效范围：服务器
---@param TeamID number @队伍 ID
---@param Score number @加分的分数
function UGCLevelFlowSystem.LevelAddScore(TeamID, Score) end

---队伍所在关卡立即结算
---生效范围：服务器
---@param TeamID number @结算的队伍
---@param IsFinish boolean @是否通关
function UGCLevelFlowSystem.LevelSettle(TeamID, IsFinish) end

---获取当前玩家处于第几关
---生效范围：服务器&客户端
---@param PlayerController ASTExtraPlayerController @玩家
---@return number @当前玩家处于第几关
function UGCLevelFlowSystem.GetCurrentLevelStage(PlayerController) end

---获取总关卡数，随机切换关卡暂时不支持获取总关卡数，需要自定义逻辑
---生效范围：服务器
---@return number @总关卡数
function UGCLevelFlowSystem.GetTotalLevelCount() end

---给指定队伍游戏加分
---生效范围：服务器
---@param TeamID number @队伍 ID
---@param Score number @加分的分数
function UGCLevelFlowSystem.GameAddScore(TeamID, Score) end

---游戏立即结算
---生效范围：服务器
---@param IsFinish boolean @是否通关
function UGCLevelFlowSystem.GameSettle(IsFinish) end

---获取关卡里的所有玩家
---生效范围：服务器
---@return APlayerController[] @玩家列表
function UGCLevelFlowSystem.GetAllPlayerControllerInCurrentLevel() end

---获取当前副本
---生效范围：服务器
---@return UGCLevelActor @关卡Actor
function UGCLevelFlowSystem.GetCurrentLevelActor() end