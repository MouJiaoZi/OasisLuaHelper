---@meta

---@class FMeleeAttackSocketFramesTrans
---@field SocketRelativeToRoots ULuaArrayHelper<FTransform>
FMeleeAttackSocketFramesTrans = {}


---@class FMeleeAttackExtractData
---@field MontageTotalTime number
---@field ComboJumpEnableTime number
---@field ComboJumpDisableTime number
---@field ApplyDamageEnableTime number
---@field ApplyDamageDisableTime number
---@field ActualDamageFrameTime number
---@field ChargeJumpEnableTime number
---@field OriginSampleRate number
---@field ShapeRelativeToRootsFrames ULuaArrayHelper<FMeleeAttackVectorArrayWrapper>
---@field ShapeRadiusList ULuaArrayHelper<number>
---@field DamageSampleRate number
---@field DamageFrameSocketRelativeToRoots ULuaMapHelper<string, FMeleeAttackSocketFramesTrans>
FMeleeAttackExtractData = {}


---@class FMeleeAttackMontageSampleData
---@field SocketName string
---@field SocketNames ULuaArrayHelper<string>
---@field bManualSetExtractName boolean
---@field ExtractAssetName string
---@field SlotIndex number
---@field DamageSampleRate number
---@field EditorSampleRate number
---@field RuntimeSampleRate number
---@field CachedOriginRelativeFrames ULuaArrayHelper<FMeleeAttackVectorArrayWrapper>
FMeleeAttackMontageSampleData = {}


---@class UMeleeAttackExtractDataAsset: UDataAsset
---@field ExtractedData FMeleeAttackExtractData
local UMeleeAttackExtractDataAsset = {}

function UMeleeAttackExtractDataAsset:UpdateCurrentAssetData() end
