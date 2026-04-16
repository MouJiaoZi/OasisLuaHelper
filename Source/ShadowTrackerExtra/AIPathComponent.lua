---@meta

---AI路径移动状态
---@class EPathMoveState
---@field Empty number @空状态, 策划请不要在路径上配这个!!!
---@field Walk number @站立行走
---@field Crawl_H number @爬行: 沿水平面
---@field Crawl_V number @爬行: 沿垂直面
---@field Crawl_HtoV number @爬行: 水平过渡到垂直
---@field Crawl_VtoH number @爬行: 垂直过度到水平
---@field Climb_Window number @翻窗
---@field Climb_Wall number @翻墙
---@field Fall number @坠落
---@field Climb_Single number @单手翻
---@field Climb_Double number @双手翻
---@field Run number @跑
---@field Jump number @跳
---@field JumpExStart number @分段跳：开始
---@field JumpExLoop number @分段跳：循环
---@field JumpExEnd number @分段跳：结束
EPathMoveState = {}


---@class FAIPathNodeConnection
---@field NextPathNodeID number
---@field Weight number
FAIPathNodeConnection = {}


---@class FAIPathNode
---@field LocalLocation FVector @相对位置
---@field LocalRotation FRotator @相对旋转
---@field bPathStart boolean @是否是起点
---@field NodeConnections ULuaArrayHelper<FAIPathNodeConnection> @节点连接
---@field SpeedScale number @移动时的速度Scale
---@field AnimKey string @移动时的动画Key(从PathInterpSync组件查找)
---@field CurveKey string @移动曲线Key(从PathInterpSync组件查找)
FAIPathNode = {}


---AI移动路径点
---@class UAIPathComponent: USceneComponent
---@field NextGenPathNodeID number
---@field PathNodeMap ULuaMapHelper<number, FAIPathNode> @PathNode列表
---@field bDrawDebug boolean
local UAIPathComponent = {}
