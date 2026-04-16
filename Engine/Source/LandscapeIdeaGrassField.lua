---@meta

---@class FIdeaGrassFieldData
---@field TramplerPositionList ULuaArrayHelper<FVector>
---@field TramplerDirectionList ULuaArrayHelper<FRotator>
---@field TramplerCutoff ULuaArrayHelper<number>
---@field TrampleScale number
---@field CleanTextureScale ULuaArrayHelper<number>
---@field GrassSpringness number
---@field GrassFieldRect FVector4
---@field FeatureLevel number
FIdeaGrassFieldData = {}


---@class UIdeaGrassFieldFunctionLibrary: UBlueprintFunctionLibrary
local UIdeaGrassFieldFunctionLibrary = {}

---@param GrassFieldData FIdeaGrassFieldData
function UIdeaGrassFieldFunctionLibrary:IdeaGrassRenderForceTexture(GrassFieldData) end

---@param GrassFieldData FIdeaGrassFieldData
function UIdeaGrassFieldFunctionLibrary:IdeaGrassRenderForceTextureFade(GrassFieldData) end

---@param GrassFieldData FIdeaGrassFieldData
function UIdeaGrassFieldFunctionLibrary:IdeaGrassRenderForceTextureTrample(GrassFieldData) end

---@param GrassFieldData FIdeaGrassFieldData
function UIdeaGrassFieldFunctionLibrary:IdeaGrassRenderForceTextureSkill(GrassFieldData) end
