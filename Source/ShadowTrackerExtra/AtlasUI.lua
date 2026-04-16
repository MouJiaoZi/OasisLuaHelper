---@meta

---@class UAtlasUI: UUAEUserWidget
---@field RectList ULuaArrayHelper<FVector4>
local UAtlasUI = {}

---@param AtlasList ULuaArrayHelper<string>
function UAtlasUI:OnSearchAtlas(AtlasList) end

---@param Size FVector2D
---@param ImageList ULuaArrayHelper<UImage>
---@param UsedSize number
---@param retTexture UTexture2D
---@param ImageNameList ULuaArrayHelper<string>
function UAtlasUI:OnClickOneAtlas(Size, ImageList, UsedSize, retTexture, ImageNameList) end

function UAtlasUI:SearchAtlas() end

---@param atlasName string
function UAtlasUI:ClickOneAtlas(atlasName) end

---@param InContext FPaintContext
---@return boolean
function UAtlasUI:PaintWidget(InContext) end
