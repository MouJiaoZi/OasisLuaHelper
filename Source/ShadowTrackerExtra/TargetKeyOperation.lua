---@meta

---@class EOperationRunResult
---@field OpRunning number @执行中
---@field OpSuccess number @完成
---@field OpAutoFinish number @自动完成
---@field OpFail number @失败
---@field OpNotStarted number @默认值
EOperationRunResult = {}


---@class ECharOperationType
---@field OpMove number @移动
---@field OpSprint number @Sprint
---@field OpJump number @跳跃
---@field OpInvalidEnum number @无效
ECharOperationType = {}


---Used for build  *
---@class UTargetKeyOperation: UObject
local UTargetKeyOperation = {}

---@return EOperationRunResult
function UTargetKeyOperation:Start() end

---@param DeltaTime number
---@return EOperationRunResult
function UTargetKeyOperation:Update(DeltaTime) end

---@return EOperationRunResult
function UTargetKeyOperation:Finish() end

function UTargetKeyOperation:Awake() end

function UTargetKeyOperation:TaskRemoved() end

---@param debugColor FColor
---@param isPersist boolean
function UTargetKeyOperation:DebugDraw(debugColor, isPersist) end

---@return boolean
function UTargetKeyOperation:IsValidate() end


---Used for build  *
---@class UTargetMoveOperation: UTargetKeyOperation
local UTargetMoveOperation = {}

---@return EOperationRunResult
function UTargetMoveOperation:Start() end

---@param DeltaTime number
---@return EOperationRunResult
function UTargetMoveOperation:Update(DeltaTime) end

---@return EOperationRunResult
function UTargetMoveOperation:Finish() end

---@param DletaTime number
---@return EOperationRunResult
function UTargetMoveOperation:MoveCloseToTarget(DletaTime) end

---@param deltaTime number
---@return EOperationRunResult
function UTargetMoveOperation:MoveCloseToTargetWithSprint(deltaTime) end

---@return boolean
function UTargetMoveOperation:IsValidate() end

---@return boolean
function UTargetMoveOperation:IsReachable() end


---Used for build  *
---@class UTargetSprintOperation: UTargetKeyOperation
local UTargetSprintOperation = {}

---@return EOperationRunResult
function UTargetSprintOperation:Start() end

---@return boolean
function UTargetSprintOperation:IsValidate() end


---Used for build  *
---@class UTargetJumpOperation: UTargetKeyOperation
local UTargetJumpOperation = {}

---@return EOperationRunResult
function UTargetJumpOperation:Start() end

function UTargetJumpOperation:Awake() end

function UTargetJumpOperation:TaskRemoved() end

---@return boolean
function UTargetJumpOperation:IsValidate() end

---@param debugColor FColor
---@param isPersist boolean
function UTargetJumpOperation:DebugDraw(debugColor, isPersist) end


---站蹲趴 姿势的总称 *
---@class UTargetCrouchOperation: UTargetKeyOperation
local UTargetCrouchOperation = {}

---@return EOperationRunResult
function UTargetCrouchOperation:Start() end

---@param deltaTime number
---@return EOperationRunResult
function UTargetCrouchOperation:Update(deltaTime) end

---@return boolean
function UTargetCrouchOperation:IsValidate() end


---Used for build  *
---@class UTargetVehicleOperation: UTargetKeyOperation
local UTargetVehicleOperation = {}

---@return EOperationRunResult
function UTargetVehicleOperation:Start() end

---@param deltaTime number
---@return EOperationRunResult
function UTargetVehicleOperation:Update(deltaTime) end

---@return boolean
function UTargetVehicleOperation:IsValidate() end
