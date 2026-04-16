---@meta

---准备匹配的状态
---@class EStatusOfReadyMatch
---@field Ready number @准备
---@field NotReady number @未准备
EStatusOfReadyMatch = {}


---多模式匹配通用接口库
---@class UGCMultiMode
UGCMultiMode = {}

---模式设置
---@class ModeSetting
---@field ModeID number @模式ID
---@field bDefaultMode bool @设置为默认模式
---@field ModeName string @模式名
---@field ModeImage string @模式图片
---@field ModeUnlockConditionDescription string @模式解锁条件描述
---@field NumberOfTeams number @队伍数量
---@field TeamPlayers number @小队玩家数量
---@field bIsAllowStageMatching bool @是否开启阶段匹配
---@field bEnableChat bool @是否开启聊天功能
---@field bEnableRoomChat bool @是否开启全房间公共频道
---@field ChannelName string @频道显示名称
---@field RoomName string @房间名称
---@field bEnablePrivateChat bool @是否开启私人聊天
---@field bEnableTeamChat bool @是否开启队伍聊天频道
---@field bEnableSystemChannel bool @是否开启系统频道
---@field MatchMethod number @匹配方法
---@field InitialScore number @初始分数
---@field MinScore number @最低分数
---@field MaxScore number @最高分数
---@field RankDensity number @匹配小段分数
---@field BeyondRankTime number @匹配扩段时间
---@field BeyondRankNum number @匹配扩段数量
---@field TeamScoreCalculation number @组队匹配分计算
local ModeSetting = {}

---通知“开始匹配”的结果。通常会立即通知，然后进入“匹配中”的状态
---生效范围：客户端
---@param bSuccess boolean @是否匹配成功。通常来说 true 则把匹配界面切换到匹配中的状态，false 则把匹配界面切换到尚未开始匹配的状态
UGCMultiMode.NotifyMatchResponseDelegate = nil

---通知在“匹配中”的玩家，匹配成功，即将进入新的对局游戏
---生效范围：客户端
UGCMultiMode.NotifyMatchSucceededDelegate = nil

---通知准备匹配的状态变化
---生效范围：客户端
---@param UID number @玩家 UID
---@param NewStatus EStatusOfReadyMatch @新的准备匹配的状态
---@param OldStatus EStatusOfReadyMatch @老的准备匹配的状态
UGCMultiMode.NotifyStatusOfReadyMatchChangedDelegate = nil

---设置模式选择 UI 的显示/隐藏
---生效范围：客户端
---@param Visible boolean @设置为显示/隐藏
function UGCMultiMode.SetModeChooseUIVisible(Visible) end

---设置模式选择 UI 的子模式可选择状态
---生效范围：客户端
---@param ModeID number @模式 ID
---@param ModeAvailability boolean @设置为可用/不可用
---@return boolean @操作是否成功
function UGCMultiMode.SetModeState(ModeID, ModeAvailability) end

---获取当前模式 ID
---生效范围：服务器&客户端
---@return number @当前模式 ID，若不存在则返回 0
function UGCMultiMode.GetModeID() end

---设置模式选择打开按钮的显示/隐藏
---生效范围：客户端
---@param Visible boolean @设置为显示/隐藏
---@return boolean @操作是否成功
function UGCMultiMode.SetModeChooseButtonVisible(Visible) end

---开启/关闭补人
---生效范围：服务器
---@param bPlayerFill boolean @目标状态
function UGCMultiMode.SetPlayerFill(bPlayerFill) end

---开始匹配
---生效范围：客户端
---@param SubModeID number @子模式 ID
---@param ResCallBack function @一个接受 bool 入参的回调函数，发起匹配的结果返回后会调用该函数
---@param Obj UObject @回调函数所属的对象
---@param IsTeamUnfill boolean @是否允许不匹配队友开始匹配
---@return boolean @是否请求匹配成功
function UGCMultiMode.RequestMatch(SubModeID, ResCallBack, Obj, IsTeamUnfill) end

---请求取消匹配
---生效范围：客户端
---@return boolean @请求是否发送成功
function UGCMultiMode.RequestCancelMatch() end

---请求进入准备匹配状态
---生效范围：客户端
---@param bReady boolean @是否准备匹配
function UGCMultiMode.RequestReadyMatch(bReady) end

---查询准备匹配的状态
---生效范围：客户端
---@param UID number @玩家 UID，可选，如果传入 nil 或者不传入，那么获取自己的准备匹配状态
---@return EStatusOfReadyMatch @准备匹配的状态
function UGCMultiMode.QueryStatusOfReadyMatch(UID) end

---获取指定ModeID的配置
---生效范围：服务器&客户端
---@param ModeID number @ModeID
---@return ModeSetting @ModeID对应的设置
function UGCMultiMode.GetModeSetting(ModeID) end