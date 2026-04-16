---@meta

---@class FWeaponLogic_FN57_Moba_LockItem
---@field bIsHead boolean
---@field SocketName string
---@field Location FVector
FWeaponLogic_FN57_Moba_LockItem = {}


---FN57武器逻辑
---@class IWeaponLogic_FN57_Moba_Interface: IInterface
IWeaponLogic_FN57_Moba_Interface = {}

---@param LockOwner ASTExtraCharacter
---@return boolean
function IWeaponLogic_FN57_Moba_Interface:CheckCanBeLock(LockOwner) end

---@param LockOwner ASTExtraCharacter
---@return number
function IWeaponLogic_FN57_Moba_Interface:GetTargetLockUIRangeScale(LockOwner) end


---@class UWeaponLogic_FN57_Moba: UObject
---@field LockSocket_Head string
---@field LockSocketList_Body ULuaArrayHelper<string>
---@field LockSocketList_LeftHand ULuaArrayHelper<string>
---@field LockSocketList_RightHand ULuaArrayHelper<string>
---@field LockSocketList_LeftLeg ULuaArrayHelper<string>
---@field LockSocketList_RightLeg ULuaArrayHelper<string>
---@field InnerLockBoxSize number
---@field OuterLockBoxSize number
---@field MaxLockDistance number
---@field TraceChannel ECollisionChannel
---@field TargetClassBlackList ULuaArrayHelper<ACharacter>
local UWeaponLogic_FN57_Moba = {}

---@param InOwnerShootWeapon ASTExtraShootWeapon
---@param InLockSocket_Head string
---@param InLockSocketList_Body ULuaArrayHelper<string>
---@param InLockSocketList_LeftHand ULuaArrayHelper<string>
---@param InLockSocketList_RightHand ULuaArrayHelper<string>
---@param InLockSocketList_LeftLeg ULuaArrayHelper<string>
---@param InLockSocketList_RightLeg ULuaArrayHelper<string>
---@param InInnerLockBoxSize number
---@param InOuterLockBoxSize number
---@param InMaxLockDistance number
---@param InTargetClassBlackList ULuaArrayHelper<ACharacter>
function UWeaponLogic_FN57_Moba:InitParams(InOwnerShootWeapon, InLockSocket_Head, InLockSocketList_Body, InLockSocketList_LeftHand, InLockSocketList_RightHand, InLockSocketList_LeftLeg, InLockSocketList_RightLeg, InInnerLockBoxSize, InOuterLockBoxSize, InMaxLockDistance, InTargetClassBlackList) end

---@param TargetActor AActor
---@param OutData ULuaArrayHelper<FWeaponLogic_FN57_Moba_LockItem>
---@return boolean
function UWeaponLogic_FN57_Moba:GetTargetAllAvailableLockItemList(TargetActor, OutData) end

---@param TargetActor AActor
---@param OutLockItem FWeaponLogic_FN57_Moba_LockItem
---@return number
function UWeaponLogic_FN57_Moba:GetTargetBoxLockInfo(TargetActor, OutLockItem) end

---@param ScreenPos FVector2D
---@param PixelBoxSize number
---@return boolean
function UWeaponLogic_FN57_Moba:CheckScreenPosInBoxLockArea(ScreenPos, PixelBoxSize) end

---@param OutData FWeaponLogic_FN57_Moba_LockItem
---@return boolean
function UWeaponLogic_FN57_Moba:CalculateLockTargetItem_Player(OutData) end

---@param OutData FWeaponLogic_FN57_Moba_LockItem
---@return boolean
function UWeaponLogic_FN57_Moba:CalculateLockTargetItem_AI(OutData) end

---@param Target AActor
---@param OwnerPlayer ASTExtraBaseCharacter
---@return boolean
function UWeaponLogic_FN57_Moba:CheckTargetLockAvailable(Target, OwnerPlayer) end

---@param Target AActor
---@param OwnerPlayer ASTExtraBaseCharacter
---@return boolean
function UWeaponLogic_FN57_Moba:CheckTargetLockVisibility(Target, OwnerPlayer) end
