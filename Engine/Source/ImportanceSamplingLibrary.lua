---@meta

---Provides different weighting functions for texture importance sampling
---@class EImportanceWeight
---@field Luminance number @Importance from color luminance.
---@field Red number @Importance from red channel of texture.
---@field Green number @Importance from green channel of texture.
---@field Blue number @Importance from blue channel of texture.
---@field Alpha number @Importance from alpha channel of texture.
EImportanceWeight = {}


---Texture processed for importance sampling Holds marginal PDF of the rows, as well as the PDF of each row
---@class FImportanceTexture
---@field Size FIntPoint
---@field NumMips number
---@field MarginalCDF ULuaArrayHelper<number>
---@field ConditionalCDF ULuaArrayHelper<number>
---@field TextureData ULuaArrayHelper<FColor>
---@field Texture UTexture2D
---@field Weighting EImportanceWeight
FImportanceTexture = {}


---@class UImportanceSamplingLibrary: UBlueprintFunctionLibrary
local UImportanceSamplingLibrary = {}

---@param Index number
---@param Dimension number
---@param Seed number
---@return number
function UImportanceSamplingLibrary:RandomSobolFloat(Index, Dimension, Seed) end

---@param Index number
---@param Dimension number
---@param PreviousValue number
---@return number
function UImportanceSamplingLibrary:NextSobolFloat(Index, Dimension, PreviousValue) end

---@param Index number
---@param NumCells number
---@param Cell FVector2D
---@param Seed FVector2D
---@return FVector2D
function UImportanceSamplingLibrary:RandomSobolCell2D(Index, NumCells, Cell, Seed) end

---@param Index number
---@param NumCells number
---@param PreviousValue FVector2D
---@return FVector2D
function UImportanceSamplingLibrary:NextSobolCell2D(Index, NumCells, PreviousValue) end

---@param Index number
---@param NumCells number
---@param Cell FVector
---@param Seed FVector
---@return FVector
function UImportanceSamplingLibrary:RandomSobolCell3D(Index, NumCells, Cell, Seed) end

---@param Index number
---@param NumCells number
---@param PreviousValue FVector
---@return FVector
function UImportanceSamplingLibrary:NextSobolCell3D(Index, NumCells, PreviousValue) end

---Create an FImportanceTexture object for texture-driven importance sampling from a 2D RGBA8 texture
---@param Texture UTexture2D
---@param WeightingFunc EImportanceWeight
---@return FImportanceTexture
function UImportanceSamplingLibrary:MakeImportanceTexture(Texture, WeightingFunc) end

---Get texture used to create an ImportanceTexture object
---@param ImportanceTexture FImportanceTexture
---@param Texture UTexture2D
---@param WeightingFunc EImportanceWeight
function UImportanceSamplingLibrary:BreakImportanceTexture(ImportanceTexture, Texture, WeightingFunc) end

---Distribute sample points proportional to Texture2D luminance.
---@param Texture FImportanceTexture
---@param Rand FVector2D
---@param Samples number
---@param Intensity number
---@param SamplePosition FVector2D
---@param SampleColor FLinearColor
---@param SampleIntensity number
---@param SampleSize number
function UImportanceSamplingLibrary:ImportanceSample(Texture, Rand, Samples, Intensity, SamplePosition, SampleColor, SampleIntensity, SampleSize) end
