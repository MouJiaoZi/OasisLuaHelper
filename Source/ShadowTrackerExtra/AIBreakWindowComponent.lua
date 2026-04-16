---@meta

---AI DS破窗
---@class UAIBreakWindowComponent: UActorComponent
---@field OverlapChannel ECollisionChannel
---@field bCheckWhenMove boolean
---@field bOnlyCheckAbstractPath boolean
---@field MinCheckDistance number
---@field bCheckWhenCastSkill boolean
---@field AttackAngleOffset number
---@field AttackDistance number
---@field bCheckWhenVault boolean
---@field VaultCheckHorizontalOffset number
---@field VaultCheckHeightOffset number
---@field VaultCheckForwardOffset number
---@field VaultCheckInterval number
---@field bDrawDebugLine boolean
---@field DrawDebugLifeTime number
---@field bDrawAllWindows boolean
local UAIBreakWindowComponent = {}

---@param PossessedPawn APawn
function UAIBreakWindowComponent:OnFakePlayerAIControllerPossessed(PossessedPawn) end

---@param StartPos FVector
---@param StartRot FRotator
---@param MoveRot FRotator
function UAIBreakWindowComponent:OnAIVaultStart(StartPos, StartRot, MoveRot) end
