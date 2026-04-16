---@meta

---邮件操作失败结果原因
---@class EUGCMailOperationFailedReason
---@field NotFound number @邮件ID不存在
---@field AlreadyClaimed number @邮件已经领取
---@field AlreadyRead number @邮件已经阅读
---@field NotRead number @邮件未阅读
---@field NoAttachment number @邮件没有附件
---@field Expired number @邮件已经过期
---@field Revoked number @邮件已经撤销
---@field Other number @其他原因
EUGCMailOperationFailedReason = {}


---邮件状态
---@class EUGCMailStatus
---@field Unread number @未阅读
---@field Read number @已阅读
---@field Claimed number @已领取
EUGCMailStatus = {}


---邮件系统库
---@class UGCMailSystem
UGCMailSystem = {}

---邮件信息
---@class UGCMailInfo
---@field ID int @邮件ID
---@field Title string @邮件标题
---@field Content string @邮件内容
---@field Status EUGCMailStatus @邮件状态
---@field SendTime int @发送时间
---@field ExpireTime int @过期时间
---@field ClaimTime int @领取时间
---@field Attachments table @附件 {[ItemID]=Count, ...}
local UGCMailInfo = {}

---玩家邮件列表更新时触发
---非PIE时，仅在玩家刚进入玩法时触发一次，玩家在局内时后台发送的邮件，会在下一局进入时更新
---@param UID int @UID
---@param MailList UGCMailInfo[] @邮件列表
UGCMailSystem.MailListUpdateDelegate = nil

---收到领取邮件奖励结果后触发
---@param UID int @UID
---@param ItemList table @奖励物品列表
---@param ClaimedMailIDs int[] @已领取的邮件ID数组
---@param FailedResults table<ID,EUGCMailOperationFailedReason> @失败邮件
UGCMailSystem.ClaimMailsResultDelegate = nil

---收到标记邮件已阅读结果后触发
---@param UID int @UID
---@param ReadMailIDs int[] @已阅读的邮件ID数组
---@param FailedResults table<ID,EUGCMailOperationFailedReason> @失败邮件
UGCMailSystem.ReadMailsResultDelegate = nil

---收到删除已读邮件结果后触发
---@param UID int @UID
---@param DeletedMailIDs int[] @已删除的邮件ID数组
---@param FailedResults table<ID,EUGCMailOperationFailedReason> @失败邮件
UGCMailSystem.DeleteReadMailsResultDelegate = nil

---获取指定玩家的邮件列表
---生效范围：服务器
---@param UID int @UID
---@return UGCMailInfo[] @邮件列表
function UGCMailSystem.GetMailList(UID) end

---获取指定玩家的邮件信息
---生效范围：服务器
---@param UID int @UID
---@param MailID int @邮件ID
---@return UGCMailInfo @邮件信息，如果不存在则返回 nil
function UGCMailSystem.GetMailInfo(UID, MailID) end

---请求领取指定玩家的邮件奖励
---生效范围：服务器
---@param UID int @UID
---@param MailIDs int[] @邮件ID数组
function UGCMailSystem.ClaimMailAward(UID, MailIDs) end

---请求标记指定玩家的邮件已读
---生效范围：服务器
---@param UID int @UID
---@param MailIDs int[] @邮件ID数组
function UGCMailSystem.ReadMail(UID, MailIDs) end

---请求删除指定玩家的已读邮件
---生效范围：服务器
---@param UID int @UID
---@param MailIDs int[] @邮件ID数组
function UGCMailSystem.DeleteReadMail(UID, MailIDs) end

---发送邮件, 仅PIE环境有效
---生效范围：服务器
---@param UID int @UID
---@param Title string @邮件标题
---@param Content string @邮件内容
---@param ExpireTime int @过期时间
---@param Attachments table @附件 {[ItemID]=Count, ...}
function UGCMailSystem.PIESendMail(UID, Title, Content, ExpireTime, Attachments) end