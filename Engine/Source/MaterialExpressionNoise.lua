---@meta

---@class ENoiseFunction
---@field NOISEFUNCTION_SimplexTex number @High quality for direct use and bumps ~77 instructions per level, 4 texture lookups Cannot tile
---@field NOISEFUNCTION_GradientTex number @High quality for direct use and bumps Non-tiled: ~61 instructions per level, 8 texture lookups Tiling: ~74 instructions per level, 8 texture lookups Even "non-tiled" mode has a repeat of 128. Useful Repeat Size range <= 128 Formerly labeled as Perlin noise
---@field NOISEFUNCTION_GradientTex3D number @High quality for direct use, BAD for bumps; doesn't work on Mobile ~16 instructions per level, 1 texture lookup Always tiles with a repeat of 16, "Tiling" mode is not an option for Fast Gradient noise
---@field NOISEFUNCTION_GradientALU number @High quality for direct use and bumps Non-tiled: ~80 instructions per level, no textures Tiling: ~143 instructions per level, no textures
---@field NOISEFUNCTION_ValueALU number @Low quality, but pure computation Non-tiled: ~53 instructions per level, no textures Tiling: ~118 instructions per level, no textures Formerly mis-labeled as Gradient noise
---@field NOISEFUNCTION_VoronoiALU number @Also known as Worley or Cellular noise Quality=1 searches 8 cells, Quality=2 searches 16 cells Quality=3 searches 27 cells, Quality=4 searches 32 cells All are about 20 instructions per cell searched
---@field NOISEFUNCTION_MAX number
ENoiseFunction = {}


---@class UMaterialExpressionNoise: UMaterialExpression
---@field Position FExpressionInput @2 to 3 dimensional vector
---@field FilterWidth FExpressionInput @scalar, to clamp the Levels at pixel level, can be computed like this: max(length(ddx(Position)), length(ddy(Position))
---@field Scale number @can also be done with a multiply on the Position
---@field Quality number @Lower numbers are faster and lower quality, higher numbers are slower and higher quality
---@field NoiseFunction ENoiseFunction @Noise function, affects performance and look
---@field bTurbulence number @How multiple frequencies are getting combined
---@field Levels number @1 = fast but little detail, .. larger numbers cost more performance
---@field OutputMin number
---@field OutputMax number
---@field LevelScale number @usually 2 but higher values allow efficient use of few levels
---@field bTiling number @Whether to use tiling noise pattern, useful for baking to seam-free repeating textures
---@field RepeatSize number @How many units in each tile (if Tiling is on)
local UMaterialExpressionNoise = {}
