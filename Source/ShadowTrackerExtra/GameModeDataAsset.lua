---@meta

---@class FGameModeParam
---@field Radius0 number @最外圈，出圈即死
---@field Radius1 number @飞机起点所在的圈
---@field Radius3 number @飞机终点所在的圈
---@field bUsingPolygon boolean @是否使用多边形作为可跳范围
---@field Radius2 number @可以下飞机的圈
---@field PolygonPoints ULuaArrayHelper<FVector2D> @多边形的顶点，必须是凸多边形
---@field RestrictedZoneLoc FVector2D @限制航线区域中心点
---@field RestrictedZoneRadius number @限制航线区域半径
---@field BlueCircleRadius number @第一个蓝圈半径
---@field MapCenter FVector @上述所有圈的圆心
---@field PlaneSpeed number @飞机速度
---@field PlaneHeight number @飞机高度
---@field CanOpenParachuteHeight number @可以开伞高度
---@field ForceOpenParachuteHeight number @强制开伞高度
---@field CloseParachuteHeight number @收伞高度
---@field bUseSpecialPoint boolean @使用指定起始点和终点
---@field SpecialPointStart FVector2D @指定起始点
---@field SpecialPointEnd FVector2D @指定终点
---@field bUseSpecialJumpPoint boolean @使用指定允许跳伞点和强制跳伞点
---@field SpecialCanJump FVector2D @指定允许跳伞点
---@field SpecialForceJump FVector2D @指定强制跳伞点
---@field AlwaysOnPlane boolean
---@field PermitAreaMaxPoint FVector2D
---@field PermitAreaMinPoint FVector2D
---@field bUseMustPassPoint boolean
---@field OptionalRangeRadius number
---@field MustPassPoint FVector2D
---@field bUseKeyPoints boolean
---@field KeyPoints ULuaArrayHelper<FVector2D>
---@field KeyPointRangeRadius number
---@field MinPassKeyPointNum number
FGameModeParam = {}


---@class FGameModeMultiAirlineParam
---@field Probability number
---@field BetweenDegree number
---@field Altitude number
---@field FlightIntervalDistance number
FGameModeMultiAirlineParam = {}


---@class UGameModeDataAsset: UDataAsset
---@field Probabilities ULuaArrayHelper<number>
---@field GameModeParams ULuaArrayHelper<FGameModeParam>
local UGameModeDataAsset = {}
