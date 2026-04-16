---@meta

---@class EExcellentOperationStartResult
---@field Success number @成功启动
---@field PosError number @位置异常
---@field StateError number @状态异常
---@field InvalidData number @无效数据
EExcellentOperationStartResult = {}


---@class EExcellentOperationPosType
---@field IsValid number @当前位置有效
---@field BasicDataErr number @基础数据异常
---@field MovementBaseErr number @玩家在移动平台上
---@field NoEnoughSpace number @玩家移动空间不足
---@field MaybeFloating number @玩家可能会产生浮空
---@field NoItemGroundPos number @物品找不到有效落地点
---@field NoItemEnoughSpace number @物品放置空间不足
---@field EndAtWater number @移动的终点在水里
EExcellentOperationPosType = {}


---@class FExcellentOperationBoxProxyData
---@field BoxExtent FVector
---@field RelativeLoc FVector
---@field RelativeRot FQuat
---@field bSnapToGround boolean
FExcellentOperationBoxProxyData = {}


---@class FExcellentOperationActorData
---@field ItemBoxProxyDataList ULuaArrayHelper<FExcellentOperationBoxProxyData>
---@field PawnBoxProxyData FExcellentOperationBoxProxyData
---@field PawnBoxEndPointRelativeLoc FVector
FExcellentOperationActorData = {}


---@class FExcellentOperationMoveQueryParams
---@field ObstacleOffsetZ number
---@field DownTraceZRate number
---@field MovableIterDis number
---@field UpperTraceZ number
---@field bCheckWater boolean
FExcellentOperationMoveQueryParams = {}
