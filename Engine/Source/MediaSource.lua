---@meta

---Abstract base class for media sources. Media sources describe the location and/or settings of media objects that can be played in a media player, such as a video file on disk, a video stream on the internet, or a web cam attached to or built into the target device. The location is encoded as a media URL string, whose URI scheme and optional file extension will be used to locate a suitable media player.
---@class UMediaSource: UObject, IMediaOptions
local UMediaSource = {}

---Get the media source's URL string (must be implemented in child classes).
---@return string
function UMediaSource:GetUrl() end

---Validate the media source settings (must be implemented in child classes).
---@return boolean
function UMediaSource:Validate() end
