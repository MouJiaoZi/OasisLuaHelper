---@meta

---@class ICustomMovementInterface
ICustomMovementInterface = {}

---@return FCustomMovementSimulatorRepDataNew
function ICustomMovementInterface:GetCustomMovementSimulatorRepData() end

---@return FCustomMovementOwnerRepDataNew
function ICustomMovementInterface:GetCustomMovementOwnerRepData() end

---@return FCurveRootMotionRepData
function ICustomMovementInterface:GetCustomMovementCurveRootMotionRepData() end

---@return FGamePlayTagCustomMovementModePairs
function ICustomMovementInterface:GetGamePlayTagCustomMovementModePairs() end

function ICustomMovementInterface:DropOnceCustomMovementSimulatorRepData() end

function ICustomMovementInterface:DropOnceCustomMovementOwnerRepData() end

function ICustomMovementInterface:DropOnceCustomMovementCurveRootMotionRepData() end

function ICustomMovementInterface:DropOnceGamePlayTagCustomMovementModePairs() end
