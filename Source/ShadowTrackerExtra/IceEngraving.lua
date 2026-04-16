---@meta

---@class FIceEngravingStage
---@field DamageThreshold number
---@field MeshAsset UStaticMesh
FIceEngravingStage = {}


---@class AIceEngraving: AActor
---@field EngraveStage ULuaArrayHelper<FIceEngravingStage>
---@field StageIndex number
local AIceEngraving = {}

---@param PrevStage number
function AIceEngraving:OnRep_StageIndex(PrevStage) end

function AIceEngraving:ReceiveMaxDamageAccumlated() end
