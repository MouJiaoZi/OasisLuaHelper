---@meta

---@class ESTExtraBuffAction_PostAKEvent_AttachTo
---@field Pawn number
---@field Controller number
ESTExtraBuffAction_PostAKEvent_AttachTo = {}


---@class FSTExtraBuffAction_PostAKEvent_Data
---@field bAllsInstanceSound_Origin boolean
---@field bNotInstanceSoundNeedCallBack_Origin boolean
FSTExtraBuffAction_PostAKEvent_Data = {}


---@class UAkEventPicker: UObject
local UAkEventPicker = {}


---@class USTExtraBuffAction_PostAKEvent: USTExtraBuffAction
---@field AkEvents ULuaArrayHelper<UAkAudioEvent>
---@field bStopOnUndo boolean
---@field AttachTo ESTExtraBuffAction_PostAKEvent_AttachTo
---@field SoundFollowActor boolean
local USTExtraBuffAction_PostAKEvent = {}
