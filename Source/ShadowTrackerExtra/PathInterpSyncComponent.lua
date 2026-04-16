---@meta

---@class EPathInterpType
---@field PIT_Line number @直线
---@field PIT_Curve number @曲线
EPathInterpType = {}


---@class FPawnVaultConfig
---@field AnimKey string
---@field BlockDistance number
---@field BlockHeight number
---@field BlockLength number
---@field bIsJump boolean
---@field CountTime number
---@field PlaySpeed number
FPawnVaultConfig = {}


---@class FPawnPathInterpCurveConfig
---@field CurveTime number
FPawnPathInterpCurveConfig = {}


---@class FPathInterpAnimData
---@field PlayerAnimSoftPtr UAnimMontage
---@field ZombieAnimSoftPtr UAnimMontage
FPathInterpAnimData = {}


---@class FRepPathNodeData
---@field Location FVector
---@field SpeedScale number
---@field AnimKey string
---@field CurveKey string
FRepPathNodeData = {}


---@class FPlayerAIVaultAnimData
---@field AnimKey string
---@field MoveLength number
---@field SpeedScale number
FPlayerAIVaultAnimData = {}


---@class FOnPathInterpStatusChanged : ULuaMulticastDelegate
FOnPathInterpStatusChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean, Param2: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPathInterpStatusChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
---@param Param2 boolean
function FOnPathInterpStatusChanged:Broadcast(Param1, Param2) end


---@class UPathInterpSyncComponent: UActorComponent
---@field bUseForVault boolean
---@field VaultConfigData ULuaArrayHelper<FPawnVaultConfig>
---@field PathInterpCurveConfigData ULuaMapHelper<string, FPawnPathInterpCurveConfig>
---@field PathInterpAnimData ULuaMapHelper<string, FPathInterpAnimData>
---@field InterpCorrectionTimeInterval number
---@field LineInterpStopRadius number
---@field LoopAnimData FPlayerAIVaultAnimData
---@field StartAnimData FPlayerAIVaultAnimData
---@field EndAnimData FPlayerAIVaultAnimData
local UPathInterpSyncComponent = {}

---@param BlockDistance number
---@param BlockHeight number
---@param BlockLength number
---@param BlockMaxFall number
---@param BlockMaxDist number
---@param StartPos FVector
---@param HitPoint FVector
---@param MoveDir FRotator
function UPathInterpSyncComponent:PawnStartVault(BlockDistance, BlockHeight, BlockLength, BlockMaxFall, BlockMaxDist, StartPos, HitPoint, MoveDir) end

---@param PathNodeData ULuaArrayHelper<FRepPathNodeData>
---@param SvrStartLoc FVector
function UPathInterpSyncComponent:PawnStartPathNodeInterp(PathNodeData, SvrStartLoc) end

---@param PathIndex number
---@param PathTime number
function UPathInterpSyncComponent:NotifyServerPathProgress(PathIndex, PathTime) end

---@param lookAtBlockHeight number
---@param blockLength number
---@param startPos FVector
---@param endPos FVector
function UPathInterpSyncComponent:DoPathNodeInterp(lookAtBlockHeight, blockLength, startPos, endPos) end
