---@meta

---@class EMikuRhythmGameType
---@field Stage number
---@field BigWorld number
EMikuRhythmGameType = {}


---@class IMikuRhythmGamePKRegionInterface
IMikuRhythmGamePKRegionInterface = {}


---@class UMikuRhythmGameAfterJoinPK: UPKRoomJoinedProcess
local UMikuRhythmGameAfterJoinPK = {}


---@class UMikuRhythmGameBeforeLeavePK: UPKRoomJoinedProcess
local UMikuRhythmGameBeforeLeavePK = {}


---@class AMikuRhythmGameActor: AActivityBaseActor
---@field RhythmGameType EMikuRhythmGameType
---@field PKRoomTypeOverride number
local AMikuRhythmGameActor = {}

---@return boolean
function AMikuRhythmGameActor:IsStageRhythmGame() end

---@return boolean
function AMikuRhythmGameActor:IsBigWorldRhythmGame() end
