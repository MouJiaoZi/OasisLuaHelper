---@meta

---@class FUCACRule_UploadScopeRecordData
---@field ScopeTimeTotalTime number
---@field ScopeTimeAimTotalTime number
---@field ScopeMoveCounter number
---@field ScopeMoveToCharacterCounter number
---@field bScopeAimedCharacter boolean
FUCACRule_UploadScopeRecordData = {}


---@class UCACRule_RecordActionInScoping: UCheckAimCheatRule
---@field UploadScopeRecordData FUCACRule_UploadScopeRecordData
local UCACRule_RecordActionInScoping = {}

---@param Loc FVector2D
---@param MoveDir FVector2D
function UCACRule_RecordActionInScoping:OnTouchMoveEvent(Loc, MoveDir) end

function UCACRule_RecordActionInScoping:OnScopeInEvent() end

function UCACRule_RecordActionInScoping:OnScopeOutEvent() end

---@param newPawn APawn
function UCACRule_RecordActionInScoping:OnRepPawn(newPawn) end

---@param UploadData FUCACRule_UploadScopeRecordData
function UCACRule_RecordActionInScoping:UploadOneScopeRecordData(UploadData) end
