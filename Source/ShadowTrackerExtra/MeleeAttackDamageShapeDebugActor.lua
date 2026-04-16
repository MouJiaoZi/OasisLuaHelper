---@meta

---@class AMeleeAttackDamageShapeDebugActor: AActor
---@field ExtractResult string
---@field SampleDataList ULuaArrayHelper<FMeleeAttackMontageSampleData>
---@field ExportDataCharacterPath ACharacter
---@field ExportDataSkMeshPath USkeletalMesh
---@field MeshRelativeTransform FTransform
local AMeleeAttackDamageShapeDebugActor = {}

function AMeleeAttackDamageShapeDebugActor:ExportAllAnimData() end

---@param InCharacter ACharacter
---@param SampleDataIndex number
---@param ExtractedData FMeleeAttackExtractData
---@param InTime number
function AMeleeAttackDamageShapeDebugActor:GetWorldLocsByTime(InCharacter, SampleDataIndex, ExtractedData, InTime) end
