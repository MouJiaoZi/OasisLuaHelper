---@meta

---提供基础移动反外挂的移动组件 方便新建简单的移动组件时能够进行代码的复用
---@class USTAntiCheatMovementComponent: USTCharacterMovementComponentBase
---@field bUseMoveAntiCheat boolean @是否使用移动反外挂逻辑
---@field bUseDefaultPullClientCheck boolean @是否使用默认的ShouldPullClientLoc调用方式 默认的情况下，会在ServerCheckClientError中调用ShouldPullClientLoc 如果关闭的话，子类需要自己调用ShouldPullClientLoc
local USTAntiCheatMovementComponent = {}

---添加反外挂信息的新RPC
---@param ClientInf FClientMoveInfo
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param CompressedMoveFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
function USTAntiCheatMovementComponent:CustomSrvMove(ClientInf, TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

---@param ClientInf FClientMoveInfo
---@param TimeStamp0 number
---@param InAccel0 FVector_NetQuantize10
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
function USTAntiCheatMovementComponent:CustomSrvMoveDual(ClientInf, TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end

---@param ClientInf FClientMoveInfo
---@param TimeStamp0 number
---@param InAccel0 FVector_NetQuantize10
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
function USTAntiCheatMovementComponent:CustomSrvMoveDualHybridRootMotion(ClientInf, TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode) end
