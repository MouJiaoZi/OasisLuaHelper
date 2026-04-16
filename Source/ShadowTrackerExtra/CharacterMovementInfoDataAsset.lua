---@meta

---@class FCharacterMovementClientSendMoveFPSConfig
---@field MinTriggerFPS number
---@field MaxTriggerFPS number
---@field SendMoveTargetFPS number
FCharacterMovementClientSendMoveFPSConfig = {}


---@class UCharacterMovementInfoDataAsset: UDataAsset
---@field CharacterMovementClientSendMoveFPS ULuaArrayHelper<FCharacterMovementClientSendMoveFPSConfig>
---@field MoveCombineNetMoveDeltaFPS number
local UCharacterMovementInfoDataAsset = {}
