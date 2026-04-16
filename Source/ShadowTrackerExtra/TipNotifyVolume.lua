---@meta

---@class ATipNotifyVolume: AVolume
---@field EnterTipId number
---@field LeaveTipId number
---@field TipDisplayInterval number
local ATipNotifyVolume = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ATipNotifyVolume:HandlePlayerEnterVolume(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function ATipNotifyVolume:HandlePlayerLeaveVolume(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
