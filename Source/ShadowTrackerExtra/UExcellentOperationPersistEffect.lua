---@meta

---@class UUExcellentOperationPersistEffect: UPersistEffectWithState
---@field bShouldCorrectRootComp boolean
---@field bShouldCorrectLocationZ boolean
---@field RootCompStandardRot FRotator
---@field ComputeFloorTraceHeight number
---@field InitialTransform FTransform
---@field FloorLocationZ number
---@field EffectCheckChannels ULuaArrayHelper<ECollisionChannel>
---@field EffectCheckOuterRadius number
---@field EffectCheckInnerRadius number
---@field EffectCheckInterval number
---@field IgnoreCheckTag string
local UUExcellentOperationPersistEffect = {}

---@param bShouldCorrect boolean
function UUExcellentOperationPersistEffect:SetCorrectLocationZ(bShouldCorrect) end

---@param PC ASTExtraPlayerController
---@param bBind boolean
function UUExcellentOperationPersistEffect:ClientBindTouchEvent(PC, bBind) end

---@param SceneComp USceneComponent
---@param Translation FVector
---@param Rotation FRotator
---@param DeltaTime number
function UUExcellentOperationPersistEffect:CorrectSceneComp(SceneComp, Translation, Rotation, DeltaTime) end

---@param BaseCharacter ASTExtraBaseCharacter
---@param FallingProtectionTime number
function UUExcellentOperationPersistEffect:SafeTeleportCharacter(BaseCharacter, FallingProtectionTime) end

---@param BaseCharacter ASTExtraBaseCharacter
---@return FVector
function UUExcellentOperationPersistEffect:GetStandLocation(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
---@param OutLoc FVector
---@return boolean
function UUExcellentOperationPersistEffect:GetSnapGroundLocation(BaseCharacter, OutLoc) end

---@param Character ACharacter
---@param DeltaTime number
function UUExcellentOperationPersistEffect:CorrectRootCompInSequence(Character, DeltaTime) end

---@param Character ACharacter
---@param bEnable boolean
---@param bSkipAllMoveComp boolean
function UUExcellentOperationPersistEffect:SetupMovementEnableBP(Character, bEnable, bSkipAllMoveComp) end

function UUExcellentOperationPersistEffect:OnEffectCheck() end

---@param ScreenPosition FVector2D
function UUExcellentOperationPersistEffect:OnTouchHappen(ScreenPosition) end
