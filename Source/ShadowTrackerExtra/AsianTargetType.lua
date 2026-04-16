---@meta

---@class ETargetLoopType
---@field ETargetLoopType_None number @NoMove
---@field ETargetLoopType_Forward number @ForwardLoop
---@field ETargetLoopType_ReBack number @ReBackLoop
---@field ETargetLoopType_WhirlForword number @WhirlForword
---@field ETargetLoopType_WhirlReBack number @WhirlReBack
---@field ETargetLoopType_WhirlLoop number @WhirlLoop
ETargetLoopType = {}


---@class FWhirlData
---@field R number
---@field EndDegree number
---@field Speed number
---@field BeginSpeed number
---@field CurMoveDegree number
---@field ClientCurMoveDegree number
---@field BeginDir number
FWhirlData = {}


---@class FTargetMoveData
---@field CurTargetLocation FVector
---@field BisDirection boolean
---@field PointBegin FVector
---@field PointEnd FVector
---@field Speed number
FTargetMoveData = {}
