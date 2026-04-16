---@meta

---Implements a media play list.
---@class UMediaPlaylist: UObject
---@field Loop number @Whether the play list should loop (default = true).
---@field Items ULuaArrayHelper<UMediaSource> @List of media sources to play.
local UMediaPlaylist = {}

---Add a media source to the play list.
---@param MediaSource UMediaSource
---@return boolean
function UMediaPlaylist:Add(MediaSource) end

---Add a media file path to the play list.
---@param FilePath string
---@return boolean
function UMediaPlaylist:AddFile(FilePath) end

---Add a media URL to the play list.
---@param Url string
---@return boolean
function UMediaPlaylist:AddUrl(Url) end

---Insert a media source into the play list at the given position.
---@param MediaSource UMediaSource
---@param Index number
function UMediaPlaylist:Insert(MediaSource, Index) end

---Remove all occurrences of the given media source in the play list.
---@param MediaSource UMediaSource
---@return boolean
function UMediaPlaylist:Remove(MediaSource) end

---Remove the media source at the specified position.
---@param Index number
---@return boolean
function UMediaPlaylist:RemoveAt(Index) end

---Replace the media source at the specified position.
---@param Index number
---@param Replacement UMediaSource
---@return boolean
function UMediaPlaylist:Replace(Index, Replacement) end
