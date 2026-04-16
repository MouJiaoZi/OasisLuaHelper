---@meta

---@class EMeleeAttackBoxType
---@field None number @无效
---@field FromSocket number @读取角色Socket位置的攻击盒参数
---@field FromWeaponComp number @读取武器上的攻击盒组件
EMeleeAttackBoxType = {}


---@class EMeleeTraceInterpolationType
---@field ByAngleAndTimeRange number @按角度、次数区间补帧)
---@field ByAngle number @按配置角度补帧
EMeleeTraceInterpolationType = {}


---@class FMeleeAttackBoxConfigWithWeapon
---@field AttackBoxTag string
FMeleeAttackBoxConfigWithWeapon = {}


---@class FMeleeAttackBoxConfigWithSocket
---@field AttackBoxSocket string
---@field AttackBoxRelativeLoc FVector
---@field AttackBoxRelativeRot FRotator
---@field AttackBoxExtent FVector
FMeleeAttackBoxConfigWithSocket = {}


---@class FMeleeAttackSocketAnimCurveDebugRepData
---@field CurveSyncData FSocketAnimCurveSyncData
---@field AttackBoxData FMeleeAttackBoxConfigWithSocket
FMeleeAttackSocketAnimCurveDebugRepData = {}


---@class FMeleeAttackBoxLoaderBase
FMeleeAttackBoxLoaderBase = {}


---@class FMeleeAttackBoxLoaderFromComponent
FMeleeAttackBoxLoaderFromComponent = {}


---@class FMeleeAttackBoxLoaderFromSocket
FMeleeAttackBoxLoaderFromSocket = {}


---@class FMeleeAttackBoxLoaderFormSocketCurve
---@field SocketCurveContext FSocketAnimCurveContext
---@field SocketCurveState FSocketAnimCurveState
FMeleeAttackBoxLoaderFormSocketCurve = {}
