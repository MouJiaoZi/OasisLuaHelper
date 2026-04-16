---@meta

---@class FWorldRealTimeWatch
---@field SuccessMinPing number
---@field LowFrequencyCheckPing number
---@field CheckDelta number
---@field LowFrequencyCheckDelta number
FWorldRealTimeWatch = {}


---@class UTimeWatchDogComponent: UActorComponent
---@field bUseTimeSync boolean @是否启用同步验证
---@field TimeStartDelay number @游戏开始到一定延迟后再开始
---@field SyncInterval number @进行同步的间隔
---@field bPunishSysTime boolean @是否对系统时间不合理进行断线处理
---@field DifSysTimeBad number @判定系统时间不合理的时间差
---@field SysTimeCompareSingleThres number @客户端系统时间戳检测阈值 当服务器检测到客户端系统时间戳的差值大于这个值时，会进行累积
---@field SysTimeCompareAccThres number @服务器判定累积的系统时间差过大的值不合理的阈值
---@field SysTimeClientBadAccThres number @服务器对客户端上报的过大时间差进行累积的阈值
---@field TimeWatchNew FWorldRealTimeWatch @新版对时机制
local UTimeWatchDogComponent = {}

---定期的时间轴同步检查
function UTimeWatchDogComponent:CheckTimeLine() end

---客户端定时检查时间戳
function UTimeWatchDogComponent:ClientCheckTime() end

---断线重连
function UTimeWatchDogComponent:OnServerAboutToReconnect() end

function UTimeWatchDogComponent:OnTimeInspectorColdMove_Vehicle() end

---射击时间推进问题
function UTimeWatchDogComponent:OnTimeInspectorColdMove_Shoot() end

function UTimeWatchDogComponent:OnTimeInspectorColdMove_Own() end

---<发送到客户端要求进行同步
---@param InIndex number
---@param InSrvInf number
function UTimeWatchDogComponent:RPC_ClientSyncTimeLine(InIndex, InSrvInf) end

---【CG23 DS性能优化专项-PC组件按需复制-TimeWatchDogComponent】 https://tapd.woa.com/CJGame/prong/stories/view/1020386762883665245 ServerPhase通过RPC下发
---@param InServerPhase number
function UTimeWatchDogComponent:RPC_ClientPhase(InServerPhase) end

---<发送到服务端后进行计算
---@param InIndex number
---@param InSrvInf number
---@param InClientTime FTwgClientInfo
function UTimeWatchDogComponent:RPC_SrvSyncTimeLine(InIndex, InSrvInf, InClientTime) end

---将不合理的系统时间变化发到服务器进行上报和记录
---@param LastTime number
---@param CurTime number
---@param TimeGap number
function UTimeWatchDogComponent:PRC_SendBadSysTime(LastTime, CurTime, TimeGap) end

---@param BaseTime number
function UTimeWatchDogComponent:RPC_ClientSyncBaseTimeToServer(BaseTime) end

---@param ServerWorldTime number
function UTimeWatchDogComponent:RPC_ServerSendTimeToClient(ServerWorldTime) end

---@param ServerWorldTime number
---@param ClientWorldTime number
function UTimeWatchDogComponent:RPC_ClientACKToServer(ServerWorldTime, ClientWorldTime) end

function UTimeWatchDogComponent:RPC_ServerRequestReCheck() end
