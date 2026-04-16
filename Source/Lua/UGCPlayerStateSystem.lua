---@meta

---玩家数据/状态系统接口库
---@class UGCPlayerStateSystem
UGCPlayerStateSystem = {}

---是否存活
---生效范围：服务器
---@param PlayerKey number
---@return boolean
function UGCPlayerStateSystem.IsAlive(PlayerKey) end

---是否离开游戏（主动退出，非断线）
---生效范围：服务器
---@param PlayerKey number
---@return boolean
function UGCPlayerStateSystem.IsExit(PlayerKey) end

---获取 VIP Level
---生效范围：服务器
---@param PlayerKey number
---@return number
function UGCPlayerStateSystem.GetUGCVIPLevel(PlayerKey) end

---获取玩家的账号数据
---生效范围：服务器 & 客户端
---@param PlayerKey number
---@return FPlayerAccountInfo
function UGCPlayerStateSystem.GetPlayerAccountInfo(PlayerKey) end

---获取玩家的战斗数据
---生效范围：服务器
---@param PlayerKey number
---@return FPlayerBattleInfo
function UGCPlayerStateSystem.GetPlayerBattleInfo(PlayerKey) end

---保存玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取）!!!!注意，不能在对局结算之后保存存档数据，在对局结算后调用此接口无法成功保存存档数据
---生效范围：服务器
---@param UID number @玩家 UID
---@param ArchiveData table @存档数据
---@return boolean
function UGCPlayerStateSystem.SavePlayerArchiveData(UID, ArchiveData, ChunkIndex) end

---获取玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取）
---生效范围：服务器
---@param UID number @玩家 UID
---@return table @存档数据
function UGCPlayerStateSystem.GetPlayerArchiveData(UID, ChunkIndex) end

---清理玩家存档数据（GM 指令，仅开发环境生效）
---生效范围：客户端
function UGCPlayerStateSystem.ClearPlayerArchiveData() end

---获取玩家账号性别
---生效范围：客户端
---@param PlatformGender number @从DS获取的玩家性别
---@param UID number @玩家UID
---@return number @玩家账号性别，0 - 隐藏，1 - 男，2 - 女
function UGCPlayerStateSystem.GetPlayerPlatformGender(PlatformGender, UID) end

---获取 TeamID
---生效范围：服务器&客户端
---@param PlayerKey number
---@return number
function UGCPlayerStateSystem.GetTeamID(PlayerKey) end

---获取 64 位玩家 PlayerKey
---生效范围：服务器&客户端
---@param PlayerState PlayerState
---@return number
function UGCPlayerStateSystem.GetPlayerKeyInt64(PlayerState) end

---获取字符串玩家 PlayerKey
---生效范围：服务器&客户端
---@param PlayerState PlayerState
---@return string
function UGCPlayerStateSystem.GetPlayerKey(PlayerState) end