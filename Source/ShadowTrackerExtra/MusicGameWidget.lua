---@meta

---@class FSingleNote
FSingleNote = {}


---@class UTrackNote: UObject
---@field NoteList ULuaArrayHelper<FSingleNote>
local UTrackNote = {}


---@class UMusicGameWidget: UUAEUserWidget
---@field trackNoteList ULuaArrayHelper<UTrackNote>
---@field topScale number
---@field downScale number
---@field LiveTime number
---@field XTolerent_in number
---@field YTolerent_in number
---@field XTolerent_out number
---@field YTolerent_out number
local UMusicGameWidget = {}

---@param index number
---@param costedTime number
function UMusicGameWidget:StartMoveNote(index, costedTime) end

---@param Top UWidget
---@param Down UWidget
---@param EndBox UWidget
function UMusicGameWidget:AddTrack(Top, Down, EndBox) end

---@param track number
---@param combo boolean
---@return number
function UMusicGameWidget:Click(track, combo) end
