---@meta

---@class EAlphaBlendOption
---@field Linear number
---@field Cubic number
---@field HermiteCubic number
---@field Sinusoidal number
---@field QuadraticInOut number
---@field CubicInOut number
---@field QuarticInOut number
---@field QuinticInOut number
---@field CircularIn number
---@field CircularOut number
---@field CircularInOut number
---@field ExpIn number
---@field ExpOut number
---@field ExpInOut number
---@field Custom number
EAlphaBlendOption = {}


---Alpha Blend class that supports different blend options as well as custom curves
---@class FAlphaBlend
---@field BlendOption EAlphaBlendOption @Type of blending used (Linear, Cubic, etc.)
---@field BlendTime number @Blend Time
FAlphaBlend = {}
