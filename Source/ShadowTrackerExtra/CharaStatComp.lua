---@meta

---用于上报的记录, FPackageStatus
---@class FPackageStatusController
---@field ReportInterval number @上报间隔
---@field ReportThres number @上报的阈值
FPackageStatusController = {}


---用于上报的记录, FPackgeOrderStatus
---@class FPackgeOrderStatusController
---@field ReportInterval number @上报间隔，单位为秒
FPackgeOrderStatusController = {}


---@class FPackDelayStatusController
---@field ReportInterval number @上报间隔
FPackDelayStatusController = {}


---没收到移动包上报记录
---@class FMovePackLostRecord
---@field ReportInterval number @上报间隔
FMovePackLostRecord = {}


---移动包堆包上报记录
---@class FMovePackStackRecord
FMovePackStackRecord = {}


---玩家角色状态监控组件 跟随PlayerController，用于防止Character在复活等操作后数据状态丢失的问题
---@class UCharaStatComp: UActorComponent
---@field PackStatusCon FPackageStatusController @收包状态监控
---@field MovePackageStackStat FMovePackageStackStat @堆积包监控统计
---@field PackOrderStatusCon FPackgeOrderStatusController @包乱序的监控
---@field PackDelayStatusCon FPackDelayStatusController @包延迟状态监控
---@field CharacterStatMoveDelay FCharacterStatMoveDelay @移动包堆积的数据存储和上报
---@field MovePackLostRecord FMovePackLostRecord
---@field MovePackStackRecord FMovePackStackRecord
local UCharaStatComp = {}

---获取最近是否弱网瞬移过
---@return boolean
function UCharaStatComp:GetRecentlyPackDelayMove() end

---获取最近是否弱网堆包/加速外挂
---@return boolean
function UCharaStatComp:GetRecentlySuspectMove() end
