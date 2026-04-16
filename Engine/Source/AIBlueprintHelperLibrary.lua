---@meta

---@class UAIBlueprintHelperLibrary: UBlueprintFunctionLibrary
local UAIBlueprintHelperLibrary = {}

---@param Target APawn
---@param Message string
---@param MessageSource UObject
---@param bSuccess boolean
function UAIBlueprintHelperLibrary:SendAIMessage(Target, Message, MessageSource, bSuccess) end

---locks indicated AI resources of animated pawn
---@param AnimInstance UAnimInstance
---@param bLockMovement boolean
---@param LockAILogic boolean
function UAIBlueprintHelperLibrary:LockAIResourcesWithAnimation(AnimInstance, bLockMovement, LockAILogic) end

---unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources
---@param AnimInstance UAnimInstance
---@param bUnlockMovement boolean
---@param UnlockAILogic boolean
function UAIBlueprintHelperLibrary:UnlockAIResourcesWithAnimation(AnimInstance, bUnlockMovement, UnlockAILogic) end

---@param Location FVector
---@return boolean
function UAIBlueprintHelperLibrary:IsValidAILocation(Location) end

---@param DirectionVector FVector
---@return boolean
function UAIBlueprintHelperLibrary:IsValidAIDirection(DirectionVector) end

---@param Rotation FRotator
---@return boolean
function UAIBlueprintHelperLibrary:IsValidAIRotation(Rotation) end
