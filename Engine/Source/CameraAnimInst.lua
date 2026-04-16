---@meta

---@class UCameraAnimInst: UObject
---@field PlayRate number @Multiplier for playback rate.  1.0 = normal.
---@field PlaySpace ECameraAnimPlaySpace
local UCameraAnimInst = {}

---Jumps he camera anim to the given (unscaled) time.
---@param NewTime number
function UCameraAnimInst:SetCurrentTime(NewTime) end

---Stops this instance playing whatever animation it is playing.
---@param bImmediate boolean
function UCameraAnimInst:Stop(bImmediate) end

---Changes the running duration of this active anim, while maintaining playback position.
---@param NewDuration number
function UCameraAnimInst:SetDuration(NewDuration) end

---Changes the scale of the animation while playing.
---@param NewDuration number
function UCameraAnimInst:SetScale(NewDuration) end
