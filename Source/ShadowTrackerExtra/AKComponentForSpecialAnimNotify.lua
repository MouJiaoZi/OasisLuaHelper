---@meta

---@class FAnimNotifyPlayAKInfo
---@field AkEventName string
---@field PlayingID number
---@field AnimName string
FAnimNotifyPlayAKInfo = {}


---@class UAKComponentForSpecialAnimNotify: UAkComponent
local UAKComponentForSpecialAnimNotify = {}

---@param PlayAnimName string
---@param AkEvent UAkAudioEvent
---@param AkEventName string
---@return number
function UAKComponentForSpecialAnimNotify:PostAKAndCacheInfo(PlayAnimName, AkEvent, AkEventName) end

---@param PlayAnimName string
---@param AkEventName string
---@return boolean
function UAKComponentForSpecialAnimNotify:HasOtherAnimEventPlaying(PlayAnimName, AkEventName) end

---@param PlayingID number
function UAKComponentForSpecialAnimNotify:StopEvent(PlayingID) end
