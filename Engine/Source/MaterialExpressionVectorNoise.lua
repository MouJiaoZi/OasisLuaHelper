---@meta

---@class EVectorNoiseFunction
---@field VNF_CellnoiseALU number @Random color for each unit cell in 3D space. RGB output range 0 to 1 R only = 9 instructions, RGB = 11 instructions
---@field VNF_VectorALU number @Perlin-style noise with 3D vector/color output. RGB output range -1 to 1 R only = ~83 instructions, RGB = ~125 instructions
---@field VNF_GradientALU number @Gradient of Perlin noise, useful for bumps. RGB = Gradient of scalar noise (signed 3D vector) A = Base scalar noise with range -1 to 1 A only = ~83 instructions, RGBA = ~106 instructions
---@field VNF_CurlALU number @Curl of Perlin noise, useful for 3D flow directions. RGB = signed curl vector ~162 instructions
---@field VNF_VoronoiALU number @Also known as Worley or Cellular noise. RGB = *position* of closest point at center of Voronoi cell A = distance to closest point with range 0 to about 4 Quality levels 1-4 search 8, 16, 27 & 32 cells All ~20 instructions per cell searched
---@field VNF_MAX number
EVectorNoiseFunction = {}


---@class UMaterialExpressionVectorNoise: UMaterialExpression
---@field Position FExpressionInput @2 to 3 dimensional vector
---@field NoiseFunction EVectorNoiseFunction @Noise function, affects performance and look
---@field Quality number @For noise functions where applicable, lower numbers are faster and lower quality, higher numbers are slower and higher quality
---@field bTiling number @Whether tile the noise pattern, useful for baking to seam-free repeating textures
---@field TileSize number @How many units in each tile (if Tiling is on) For Perlin noise functions, Tile Size must be a multiple of three
local UMaterialExpressionVectorNoise = {}
