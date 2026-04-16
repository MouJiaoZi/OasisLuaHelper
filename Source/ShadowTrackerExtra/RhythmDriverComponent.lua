---@meta

---@class FRhythmTest_NoteData
---@field Notes ULuaArrayHelper<number>
FRhythmTest_NoteData = {}


---@class FRhythmData
---@field BPM number
---@field TimeBeforePlay number
FRhythmData = {}


---@class URhythmDriverComponent: UActorComponent
---@field RhythmData FRhythmData
---@field RhythmTestData ULuaArrayHelper<FRhythmTest_NoteData>
local URhythmDriverComponent = {}

function URhythmDriverComponent:OnBarBeat() end

---@param Note number
function URhythmDriverComponent:OnNoteBeat(Note) end

function URhythmDriverComponent:OnRhythmEnded() end

function URhythmDriverComponent:StartDriver() end

function URhythmDriverComponent:StopDriver() end

function URhythmDriverComponent:PauseDriver() end

function URhythmDriverComponent:ResumeDriver() end

---@param InTime number
---@return boolean
function URhythmDriverComponent:Seek(InTime) end
