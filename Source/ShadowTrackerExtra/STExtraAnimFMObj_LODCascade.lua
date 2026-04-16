---@meta

---@class FForceLODLevelConfig
---@field LockKeys ULuaArrayHelper<string>
FForceLODLevelConfig = {}


---@class USTExtraAnimFMObj_LODCascade: UAnimFunctionModule_ObjInstance
---@field LODLevelAnimSlotName string
---@field LODLevelAnimClassConfig ULuaArrayHelper<UAnimInstance>
---@field LODMinDeltaTime_0 number
---@field LODPoseBlendTime number
---@field ForceLODPriorityFromMin boolean
---@field Weight number
---@field LODLevel number
---@field LastLODLevel number
---@field ForceLODLevel ULuaArrayHelper<FForceLODLevelConfig>
---@field LODMinDeltaTime_0_Counter number
local USTExtraAnimFMObj_LODCascade = {}

---@param TargetLODLevel number
---@param LockKeyName string
function USTExtraAnimFMObj_LODCascade:EnableForceLODLevel(TargetLODLevel, LockKeyName) end

---@param TargetLODLevel number
---@param LockKeyName string
function USTExtraAnimFMObj_LODCascade:DisableForceLODLevel(TargetLODLevel, LockKeyName) end

---@param TargetLODLevel number
function USTExtraAnimFMObj_LODCascade:ClearForceLODLevel(TargetLODLevel) end

function USTExtraAnimFMObj_LODCascade:ClearAllForceLODLevel() end

function USTExtraAnimFMObj_LODCascade:RefreshLODSubAnim() end

---@param NewTarget AActor
---@param PrevTarget AActor
function USTExtraAnimFMObj_LODCascade:OnViewTargetChange(NewTarget, PrevTarget) end

---@param Pawn ASTExtraBaseCharacter
---@param NewLODLevel number
---@param ForceUpdate boolean
---@param LockKeyName string
function USTExtraAnimFMObj_LODCascade:OnLockAnimInstanceLOD(Pawn, NewLODLevel, ForceUpdate, LockKeyName) end

---@param Pawn ASTExtraBaseCharacter
---@param TargetLODLevel number
---@param ForceUpdate boolean
---@param LockKeyName string
function USTExtraAnimFMObj_LODCascade:OnUnlockAnimInstanceLOD(Pawn, TargetLODLevel, ForceUpdate, LockKeyName) end
