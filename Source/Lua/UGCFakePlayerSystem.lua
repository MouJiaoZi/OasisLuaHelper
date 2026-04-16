---@meta

---假人玩家系统
---@class UGCFakePlayerSystem
UGCFakePlayerSystem = {}

---生成假人玩家， GameMode 中 DataManager，AIProbe 数据中配置 AIController
---生效范围：服务器
---@param AIPlayerKey number @AIPlayerKey，建议使用 UGCFakePlayerSystem.GetRandomAIPlayerKey 生成
---@param TeamID number @队伍 ID
function UGCFakePlayerSystem.SpawnFakePlayer(AIPlayerKey, TeamID) end

---生成随机AIPlayerKey，用于UGCFakePlayerSystem.SpawnFakePlayer接口参数
---生效范围：服务器
---@return number @AIPlayerKey
function UGCFakePlayerSystem.GetRandomAIPlayerKey() end

---销毁假人玩家
---生效范围：服务器
---@param AIPlayerKey number @AIPlayerKey
function UGCFakePlayerSystem.DestroyFakePlayer(AIPlayerKey) end