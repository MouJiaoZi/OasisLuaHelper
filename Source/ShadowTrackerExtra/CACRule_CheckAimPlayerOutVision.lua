---@meta

---@class FUCACRule_UploadAimOutVisionRecordData
---@field ScopeAimTime number
---@field NotScopeAimTime number
---@field AimCounter number
FUCACRule_UploadAimOutVisionRecordData = {}


---@class UCACRule_CheckAimPlayerOutVision: UCheckAimCheatRule
---@field AccumulatedAimThreshold number
---@field TargetDistanceThresholdMin number
---@field TargetDistanceThresholdMax number
---@field XPCallInterval number
---@field TargetRadius number
---@field bCanDrawDebugLine boolean
---@field EnableHitCollisionObjectType ULuaArrayHelper<ECollisionChannel>
local UCACRule_CheckAimPlayerOutVision = {}

---@param UploadData FUCACRule_UploadAimOutVisionRecordData
function UCACRule_CheckAimPlayerOutVision:UploadAimOutVisionRecordData(UploadData) end

---@param newPawn APawn
function UCACRule_CheckAimPlayerOutVision:UpdateScopeEventBind(newPawn) end

function UCACRule_CheckAimPlayerOutVision:OnScopeInEvent() end

function UCACRule_CheckAimPlayerOutVision:OnScopeOutEvent() end
