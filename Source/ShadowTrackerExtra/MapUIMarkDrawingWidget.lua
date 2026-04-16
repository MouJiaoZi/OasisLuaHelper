---@meta

---@class UMapUIMarkDrawingWidget: UMapUIMarkBaseWidget
---@field TextureWidth number
---@field TextureHeight number
local UMapUIMarkDrawingWidget = {}

---@param WorldContext UObject
---@param WorldCorners ULuaArrayHelper<FVector>
---@param InColor FColor
---@param RadiusOrLineWidth number
---@param bRecolorOrBlending boolean
---@param AddMarkFlag EAddMarkFlag
function UMapUIMarkDrawingWidget:MakeMapMarkGraph(WorldContext, WorldCorners, InColor, RadiusOrLineWidth, bRecolorOrBlending, AddMarkFlag) end

---@param WorldCorners ULuaArrayHelper<FVector>
---@param InColor FColor
---@param RadiusOrLineWidth number
---@param bRecolorOrBlending boolean
function UMapUIMarkDrawingWidget:DrawGraphOnTexture(WorldCorners, InColor, RadiusOrLineWidth, bRecolorOrBlending) end

---@param TextureCorners ULuaArrayHelper<FVector2D>
---@param InColor FColor
---@param RadiusOrLineWidth number
---@param bRecolorOrBlending boolean
function UMapUIMarkDrawingWidget:DrawPolygonOnTexture(TextureCorners, InColor, RadiusOrLineWidth, bRecolorOrBlending) end

---@param CenterPoint FVector2D
---@param Radius number
---@param InColor FColor
---@param EdgeWidth number
---@param bRecolorOrBlending boolean
function UMapUIMarkDrawingWidget:DrawCircleOnTexture(CenterPoint, Radius, InColor, EdgeWidth, bRecolorOrBlending) end

---@param Start FVector2D
---@param End FVector2D
---@param InColor FColor
---@param LineWidth number
---@param bRecolorOrBlending boolean
function UMapUIMarkDrawingWidget:DrawLineOnTexture(Start, End, InColor, LineWidth, bRecolorOrBlending) end

function UMapUIMarkDrawingWidget:ClearTexture() end
