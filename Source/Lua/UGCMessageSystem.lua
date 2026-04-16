---@meta

---游戏聊天通用接口库
---@class UGCMessageSystem
UGCMessageSystem = {}

---阵营聊天 开局分阵营或阵营变更时同步阵营信息，创建阵营的聊天室
---生效范围：服务器
---@param PlayerKey number @玩家的 PlayerKey
---@param CampID number @阵营 ID（传入0为无阵营）
function UGCMessageSystem.JoinCampMessageChannel(PlayerKey, CampID) end

---给单独玩家发送系统消息
---生效范围：服务器
---@param PlayerKey number @玩家 PlayerKey
---@param MessageTag string @消息标题
---@param MessageContent string @消息内容
---@param Level number @消息等级
---@return boolean @是否发送成功
function UGCMessageSystem.SendSystemMessageToPlayer(PlayerKey, MessageTag, MessageContent, Level) end

---给所有玩家发送系统消息
---生效范围：服务器
---@param MessageTag string @消息标题
---@param MessageContent string @消息内容
---@param Level number @消息等级
---@return boolean @是否发送成功
function UGCMessageSystem.SendSystemMessageToAll(MessageTag, MessageContent, Level) end