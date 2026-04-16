---@meta

---轰炸配置
---@class UGCAirAttackConfig
local Default__UGCAirAttackConfig = {}

---空袭波次详细数据结构
---@class UGCAirAttackWaveDetailData
---@field GeneratedBy UGCAirAttackConfig @空袭配置（深拷贝副本，支持实例级修改）
---@field InstanceID number @空袭实例唯一标识符
---@field BombPositions FVector[] @炸弹投放位置数组（三维坐标）
---@field BombIntervals number[] @炸弹投放时间间隔数组（秒）
---@field CurrentBombIndex number @当前炸弹投放索引（避免多实例并发冲突）
local _UGCAirAttackWaveDetailData = {}

---UGC轰炸区全局管理器
---@class UGCAirAttackManager:AUGCGamePartGlobalActor
---@field ArtilleryShellFlySound UAkAudioEvent @炮弹飞行音效
---@field ArtilleryShellExplosionEffect UClass @炮弹爆炸效果
local UGCAirAttackManager = {}

---轰炸区生成成功事件
---当轰炸区域成功创建并准备开始预警时触发
---生效范围：服务器&客户端
---@param InstanceID number @轰炸实例唯一标识符
---@param CenterLocation FVector @轰炸中心位置坐标
UGCAirAttackManager.SuccessfullyGeneratedBombing = nil

---轰炸区停止成功事件
---当轰炸区域被成功停止（主动停止或异常结束）时触发
---生效范围：服务器&客户端
---@param InstanceID number @被停止的轰炸实例唯一标识符
UGCAirAttackManager.SuccessfullyStopBombing = nil

---轰炸正常结束事件
---当轰炸区域按计划完成所有炸弹投放后正常结束时触发
---生效范围：服务器&客户端
---@param InstanceID number @结束的轰炸实例唯一标识符
---@param TotalBombsDropped number @实际投放的炸弹总数
UGCAirAttackManager.NormalEndBombing = nil

---轰炸正式开始事件
---当轰炸预警结束后，开始正式投放炸弹时触发
---生效范围：服务器&客户端
---@param InstanceID number @开始轰炸的实例唯一标识符
UGCAirAttackManager.SuccessfullyStartBombing = nil

---玩家受影响事件
---当炸弹爆炸并对范围内玩家造成伤害时触发
---生效范围：服务器&客户端
---@param BombLocation FVector @炸弹爆炸位置坐标
---@param AffectedPlayerKeys number[] @受到影响的玩家PlayerKey数组
UGCAirAttackManager.AffectedBombingPlayers = nil