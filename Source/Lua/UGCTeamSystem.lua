---@meta

---被邀请加入大厅队伍的响应类型
---@class EResponseOfBeingInvitedToJoinLobby
---@field Accept number @接受
---@field Refuse number @拒绝
EResponseOfBeingInvitedToJoinLobby = {}


---被请求加入大厅队伍的响应类型
---@class EResponseOfBeingRequestedToJoinLobby
---@field Accept number @接受
---@field Refuse number @拒绝
EResponseOfBeingRequestedToJoinLobby = {}


---队伍系统接口库
---@class UGCTeamSystem
UGCTeamSystem = {}

---通知被邀请加入大厅队伍
---生效范围：客户端
---@param InviteToJoinLobbyTeamToken table @邀请到大厅队伍的 Token。InviteToJoinLobbyTeamToken.InviterUID int @邀请者 UID
UGCTeamSystem.NotifyInviteToJoinLobbyTeamDelegate = nil

---通知请求加入大厅队伍
---生效范围：客户端
---@param RequestToJoinLobbyTeamToken table @请求加入大厅队伍的 Token。RequestToJoinLobbyTeamToken.TeamID int @队伍 ID
UGCTeamSystem.NotifyRequestToJoinLobbyTeamDelegate = nil

---【废弃】获取队伍组件
---生效范围：服务器
---@deprecated
---@return TeamModeComponent @队伍组件
function UGCTeamSystem.GetTeamComponent() end

---改变玩家 TeamID
---生效范围：服务器
---@param PlayerKey number @玩家 PlayerKey
---@param TeamID number @队伍 ID
function UGCTeamSystem.ChangePlayerTeamID(PlayerKey, TeamID) end

---根据TeamID获取对应队伍里所有的玩家UID
---生效范围：服务器
---@param TeamID number @队伍 ID
---@return number[] @UID 列表
function UGCTeamSystem.GetUIDsByTeamID(TeamID) end

---根据TeamID获取对应队伍里所有的玩家PlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
---生效范围：服务器
---@param TeamID number @队伍 ID
---@param bReturnAsLuaTable boolean @是否以LuaTable返回
---@return number[] @PlayerKey 列表
function UGCTeamSystem.GetPlayerKeysByTeamID(TeamID, bReturnAsLuaTable) end

---根据 TeamID 获取对应队伍里所有的假人玩家 AIPlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
---生效范围：服务器
---@param TeamID number @队伍 ID
---@return number[] @PlayerKey 列表
function UGCTeamSystem.GetAIPlayerKeysByTeamID(TeamID) end

---根据TeamID获取对应队伍里所有的玩家PlayerController
---生效范围：服务器
---@param TeamID number @队伍 ID
---@return ASTExtraPlayerController[] @PlayerController 列表
function UGCTeamSystem.GetPlayerControllersByTeamID(TeamID) end

---根据TeamID获取对应队伍里所有的玩家PlayerPawn
---生效范围：服务器&客户端
---@param TeamID number @队伍 ID
---@return PlayerPawn[] @PlayerPawn 列表
function UGCTeamSystem.GetPlayerPawnsByTeamID(TeamID) end

---根据TeamID获取对应队伍里所有的玩家PlayerState
---生效范围：服务器&客户端
---@param TeamID number @队伍 ID
---@return ASTExtraPlayerState[] @PlayerState 列表
function UGCTeamSystem.GetPlayerStatesByTeamID(TeamID) end

---【废弃】请使用 UGCTeamSystem.GetLobbyTeammateUIDsByUID
---根据玩家的UID获取其大厅里组队的成员 UID 列表
---生效范围：服务器
---@deprecated @UGCTeamSystem.GetLobbyTeammateUIDsByUID()
---@param UID number @玩家 UID
---@return number[] @玩家 UID 列表
function UGCTeamSystem.GetLobbyTeamUIDsByUID(UID) end

---根据玩家的UID获取其大厅里组队的成员 UID 列表
---生效范围：服务器
---@param UID number @玩家 UID
---@return number[] @玩家 UID 列表
function UGCTeamSystem.GetLobbyTeammateUIDsByUID(UID) end

---根据玩家的UID获取其大厅里组队的成员 UID 列表。跟 UGCTeamSystem.GetLobbyTeammateUIDsByUID 不同的是，此接口会返回动态组队（UGCTeamSystem.InviteToJoinLobbyTeam、UGCTeamSystem.RequestToJoinLobbyTeam）的成员 UID 列表，而 UGCTeamSystem.GetLobbyTeammateUIDsByUID 以及其他接口只会返回从大厅进入战斗对局那一刻的该玩家在大厅组队的成员 UID 列表。
---生效范围：客户端
---@param UID number @玩家 UID
---@return number[] @玩家 UID 列表
function UGCTeamSystem.GetDynamicLobbyTeammateUIDsByUID(UID) end

---【废弃】请使用 UGCTeamSystem.GetLobbyTeammatePlayerKeysByPlayerKey
---根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
---生效范围：服务器
---@deprecated @UGCTeamSystem.GetLobbyTeammatePlayerKeysByPlayerKey()
---@param PlayerKey number @玩家 PlayerKey
---@return number[] @PlayerKey 列表
function UGCTeamSystem.GetLobbyTeamKeysByPlayerKey(PlayerKey) end

---根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确
---生效范围：服务器
---@param PlayerKey number @玩家 PlayerKey
---@return number[] @PlayerKey 列表
function UGCTeamSystem.GetLobbyTeammatePlayerKeysByPlayerKey(PlayerKey) end

---邀请玩家加入（我的）大厅队伍
---生效范围：客户端
---@param InviteeUID number @被邀请玩家 UID
function UGCTeamSystem.InviteToJoinLobbyTeam(InviteeUID) end

---响应加入大厅队伍的邀请
---生效范围：客户端
---@param ResponseOfBeingInvitedToJoinLobby EResponseOfBeingInvitedToJoinLobby @被邀请加入大厅队伍的响应类型：EResponseOfBeingInvitedToJoinLobby
---@param InviteToJoinLobbyTeamToken table @邀请到大厅队伍的 Token
function UGCTeamSystem.RespondToInvitingToJoinLobbyTeam(ResponseOfBeingInvitedToJoinLobby, InviteToJoinLobbyTeamToken) end

---玩家请求加入大厅队伍
---生效范围：客户端
---@param TeamMemberUID number @大厅队伍中的玩家 UID
function UGCTeamSystem.RequestToJoinLobbyTeam(TeamMemberUID) end

---队长响应被加入大厅队伍的请求
---生效范围：客户端
---@param ResponseOfBeingRequestedToJoinLobby EResponseOfBeingRequestedToJoinLobby @被请求加入大厅队伍的响应类型：EResponseOfBeingRequestedToJoinLobby
---@param RequestToJoinLobbyTeamToken table @请求加入大厅队伍的 Token
function UGCTeamSystem.RespondToRequestingToJoinLobbyTeam(ResponseOfBeingRequestedToJoinLobby, RequestToJoinLobbyTeamToken) end

---玩家主动退出大厅队伍
---生效范围：客户端
function UGCTeamSystem.QuitLobbyTeam() end

---队长将指定玩家踢出大厅队伍
---生效范围：客户端
---@param TargetUID number @被踢玩家的 UID
function UGCTeamSystem.KickFromLobbyTeam(TargetUID) end

---队长转让大厅队长身份给指定玩家
---生效范围：客户端
---@param NewLeaderUID number @新队长的 UID
function UGCTeamSystem.TransferLobbyTeamLeader(NewLeaderUID) end

---获取所有队伍的 ID
---生效范围：服务器
---@return int[] @TeamID 列表
function UGCTeamSystem.GetTeamIDs() end

---获取所有玩家信息列表
---生效范围：服务器
---@param bWithOB boolean @【可选】是否包含 OB
---@return number[] @玩家信息列表
function UGCTeamSystem.GetPlayerList(bWithOB) end

---【废弃】请使用 UGCTeamSystem.GetTeamSizeByTeamID
---获取队伍中的玩家数量
---生效范围：服务器
---@deprecated @UGCTeamSystem.GetTeamSizeByTeamID()
---@param TeamID number @队伍 ID
---@return number @玩家数量
function UGCTeamSystem.GetTeamSizeByID(TeamID) end

---获取队伍中的玩家数量
---生效范围：服务器
---@param TeamID number @队伍 ID
---@return number @玩家数量
function UGCTeamSystem.GetTeamSizeByTeamID(TeamID) end

---通过队伍编号获取队长PlayerKey列表（每个在大厅点击开始游戏的玩家都会被设置为队长，例如四人匹配，队伍里只有一个队长，三人匹配，再随机匹配一个队友，三人里面点击开始游戏的是队长，随机匹配的那个队友也是队长，属于他自己那个小队的队长）
---生效范围：服务器
---@param TeamID number @队伍 ID
---@return number[] @队长PlayerKey
function UGCTeamSystem.GetTeamLeaderKeyByTeamID(TeamID) end

---通过玩家PlayerKey查询身份
---生效范围：服务器
---@param PlayerKey number @玩家 PlayerKey
---@return boolean @是否是队长
function UGCTeamSystem.GetIsLeaderOrNotByPlayerKey(PlayerKey) end

---获取所有队友的的PlayerState
---生效范围：客户端
---@param bExcludeSelf boolean @是否排除玩家自身
---@return ASTExtraPlayerState[]
function UGCTeamSystem.GetAllTeammatePlayerState(bExcludeSelf) end

---获取指定PlayerKey队友的的PlayerState
---生效范围：客户端
---@param PlayerKey number @玩家 PlayerKey
---@return ASTExtraPlayerState
function UGCTeamSystem.GetTeammatePlayerStateByPlayerKey(PlayerKey) end

---判断TeamID是否合法
---生效范围：服务器
---@param TeamID number @TeamID
---@return ASTExtraPlayerState
function UGCTeamSystem.IsTeamIDValid(TeamID) end

---根据PlayerKey获取队伍ID
---生效范围：服务器&客户端
---@param PlayerKey number @玩家 PlayerKey
---@return number @队伍 ID
function UGCTeamSystem.GetTeamIDByPlayerKey(PlayerKey) end

---根据PlayerKey获取队友ID(头顶标号)
---生效范围：服务器&客户端
---@param PlayerState ASTExtraPlayerState @玩家 PlayerState
---@param PlayerKey number @玩家 PlayerKey
---@return number @队友 ID
function UGCTeamSystem.GetTeammateIndexByPlayerKey(PlayerState, PlayerKey) end

---获取所有队友的的队友ID(头顶标号)
---生效范围：服务器&客户端
---@param PlayerState ASTExtraPlayerState @玩家 PlayerState
---@return table<number, number> @以PlayerKey为键，队友ID为值的表
function UGCTeamSystem.GetAllTeammateIndex(PlayerState) end

---根据队友ID(头顶标号)获取队友PlayerKey
---生效范围：服务器&客户端
---@param PlayerState ASTExtraPlayerState @玩家 PlayerState
---@param TeammateIndex number @队友ID
---@return number @队友 PlayerKey
function UGCTeamSystem.GetPlayerKeyByTeammateIndex(PlayerState, TeammateIndex) end