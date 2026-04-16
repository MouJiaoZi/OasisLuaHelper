---@meta

---@class FAirplaneParam
---@field PlaneClass APawn @飞机类
---@field PlaneBT UBehaviorTree @飞机行为树
---@field Radius1 number @飞机起点所在的圈
---@field Radius3 number @飞机终点所在的圈
---@field Radius2 number @可以下飞机的圈
---@field CircleModeJumpRadiusPercent number @基于缩圈时的可下飞机圈半径
---@field PermitAreaMaxPoint FVector2D
---@field PermitAreaMinPoint FVector2D
---@field MapCenter FVector @上述所有圈的圆心
---@field PlaneSpeed number @飞机速度
---@field PlaneHeight number @飞机高度
---@field CanOpenParachuteHeight number @可以开伞高度
---@field ForceOpenParachuteHeight number @强制开伞高度
---@field CloseParachuteHeight number @收伞高度
---@field PlaneType EPlaneTypeForTlog @飞机类型
FAirplaneParam = {}


---@class UTriggerAction_SpawnAirplane: UTriggerAction
---@field PlaneParam FAirplaneParam
---@field bWithBackpackItem boolean
---@field bUseInitialPlane boolean
---@field bUseCircleCenterForPlane boolean
---@field bPermitJump boolean
---@field bUseRevivalFollow boolean
---@field bRevivalFollowNeedJumpPermission boolean
---@field ParachuteFollowPercent number
---@field bOptimizeSequence boolean
---@field bNeedKeepAllItems boolean
---@field RevivalBackbackCfgs ULuaArrayHelper<FRevivalBackpackParam>
---@field CurPlaneData FAirplaneData
---@field AirplaneControllerMap ULuaMapHelper<APlayerController, AAirplaneCharacter>
---@field AirplaneAICMap ULuaMapHelper<AFakePlayerAIController, AAirplaneCharacter>
local UTriggerAction_SpawnAirplane = {}
