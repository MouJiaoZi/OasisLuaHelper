---@meta

---@class UParticleModuleKillBox: UParticleModuleKillBase
---@field LowerLeftCorner any @The lower left corner of the box.
---@field UpperRightCorner any @The upper right corner of the box.
---@field bAbsolute number @If true, the box coordinates are in world space./
---@field bKillInside number @If true, particles INSIDE the box will be killed. If false (the default), particles OUTSIDE the box will be killed.
---@field bAxisAlignedAndFixedSize number @If true, the box will always be axis aligned and non-scalable.
local UParticleModuleKillBox = {}
