---@meta

---@class ECustomServerMoveResultFlags
---@field NoDispose number @不处理
---@field Succeed number @执行成功
---@field Failed number @失败
ECustomServerMoveResultFlags = {}


---@class FClientMoveData
---@field TimeStampDis number
---@field TimeStamp number
---@field InAccel FVector_NetQuantize10
---@field ClientLoc FVector_NetQuantize100
---@field CompressedMoveFlags number
---@field ClientRoll number
---@field View number
---@field ClientBaseBoneName string
---@field ClientMovementMode number
---@field ExtraParams FServerMoveExtraParams
FClientMoveData = {}


---@class UCustomMovementServerMoveProxy: UObject
---@field ClientMoveDataCache ULuaArrayHelper<FClientMoveData>
---@field bOpenAntiCheat boolean @是否开启反外挂逻辑
---@field AntiCheat FMinimalMoveAc @反外挂逻辑
local UCustomMovementServerMoveProxy = {}

function UCustomMovementServerMoveProxy:OnClientLostOnServer() end

function UCustomMovementServerMoveProxy:OnPreReconnectOnServer() end

---@return string
function UCustomMovementServerMoveProxy:GetToString() end

---事件：Gm移动了角色
function UCustomMovementServerMoveProxy:OnGmMovedCharacter() end

---移动模式发生变更
---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UCustomMovementServerMoveProxy:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---实际执行了移动
---@param DeltaTime number
---@param OldLocation FVector
---@param OldVelocity FVector
function UCustomMovementServerMoveProxy:OnCharacterMovementUpdated(DeltaTime, OldLocation, OldVelocity) end
