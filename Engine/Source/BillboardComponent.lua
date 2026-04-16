---@meta

---A 2d texture that will be rendered always facing the camera.
---@class UBillboardComponent: UPrimitiveComponent
---@field bIsScreenSizeScaled number
---@field ScreenSize number
---@field U number
---@field UL number
---@field V number
---@field VL number
local UBillboardComponent = {}

---Change the sprite texture used by this component
---@param NewSprite UTexture2D
function UBillboardComponent:SetSprite(NewSprite) end

---Change the sprite's UVs
---@param NewU number
---@param NewUL number
---@param NewV number
---@param NewVL number
function UBillboardComponent:SetUV(NewU, NewUL, NewV, NewVL) end

---Change the sprite texture and the UV's used by this component
---@param NewSprite UTexture2D
---@param NewU number
---@param NewUL number
---@param NewV number
---@param NewVL number
function UBillboardComponent:SetSpriteAndUV(NewSprite, NewU, NewUL, NewV, NewVL) end
