---@meta

---Holds texture information with UV coordinates as well.
---@class FCanvasIcon
---@field U number @UV coords
---@field V number
---@field UL number
---@field VL number
FCanvasIcon = {}


---A drawing canvas.
---@class UCanvas: UObject
---@field OrgX number
---@field OrgY number
---@field ClipX number
---@field ClipY number
---@field DrawColor FColor
---@field bCenterX number
---@field bCenterY number
---@field bNoSmooth number
---@field SizeX number
---@field SizeY number
---@field ColorModulate FPlane
local UCanvas = {}

---Draws a line on the Canvas.
---@param ScreenPositionA FVector2D
---@param ScreenPositionB FVector2D
---@param Thickness number
---@param RenderColor FLinearColor
function UCanvas:K2_DrawLine(ScreenPositionA, ScreenPositionB, Thickness, RenderColor) end

---Draws a texture on the Canvas.
---@param RenderTexture UTexture
---@param ScreenPosition FVector2D
---@param ScreenSize FVector2D
---@param CoordinatePosition FVector2D
---@param CoordinateSize FVector2D
---@param RenderColor FLinearColor
---@param BlendMode EBlendMode
---@param Rotation number
---@param PivotPoint FVector2D
function UCanvas:K2_DrawTexture(RenderTexture, ScreenPosition, ScreenSize, CoordinatePosition, CoordinateSize, RenderColor, BlendMode, Rotation, PivotPoint) end

---Draws a material on the Canvas.
---@param RenderMaterial UMaterialInterface
---@param ScreenPosition FVector2D
---@param ScreenSize FVector2D
---@param CoordinatePosition FVector2D
---@param CoordinateSize FVector2D
---@param Rotation number
---@param PivotPoint FVector2D
function UCanvas:K2_DrawMaterial(RenderMaterial, ScreenPosition, ScreenSize, CoordinatePosition, CoordinateSize, Rotation, PivotPoint) end

---Draws text on the Canvas.
---@param RenderFont UFont
---@param RenderText string
---@param ScreenPosition FVector2D
---@param RenderColor FLinearColor
---@param Kerning number
---@param ShadowColor FLinearColor
---@param ShadowOffset FVector2D
---@param bCentreX boolean
---@param bCentreY boolean
---@param bOutlined boolean
---@param OutlineColor FLinearColor
function UCanvas:K2_DrawText(RenderFont, RenderText, ScreenPosition, RenderColor, Kerning, ShadowColor, ShadowOffset, bCentreX, bCentreY, bOutlined, OutlineColor) end

---Draws a 3x3 grid border with tiled frame and tiled interior on the Canvas.
---@param BorderTexture UTexture
---@param BackgroundTexture UTexture
---@param LeftBorderTexture UTexture
---@param RightBorderTexture UTexture
---@param TopBorderTexture UTexture
---@param BottomBorderTexture UTexture
---@param ScreenPosition FVector2D
---@param ScreenSize FVector2D
---@param CoordinatePosition FVector2D
---@param CoordinateSize FVector2D
---@param RenderColor FLinearColor
---@param BorderScale FVector2D
---@param BackgroundScale FVector2D
---@param Rotation number
---@param PivotPoint FVector2D
---@param CornerSize FVector2D
function UCanvas:K2_DrawBorder(BorderTexture, BackgroundTexture, LeftBorderTexture, RightBorderTexture, TopBorderTexture, BottomBorderTexture, ScreenPosition, ScreenSize, CoordinatePosition, CoordinateSize, RenderColor, BorderScale, BackgroundScale, Rotation, PivotPoint, CornerSize) end

---Draws an unfilled box on the Canvas.
---@param ScreenPosition FVector2D
---@param ScreenSize FVector2D
---@param Thickness number
function UCanvas:K2_DrawBox(ScreenPosition, ScreenSize, Thickness) end

---Draws a set of triangles on the Canvas.
---@param RenderTexture UTexture
---@param Triangles ULuaArrayHelper<FCanvasUVTri>
function UCanvas:K2_DrawTriangle(RenderTexture, Triangles) end

---Draws a set of triangles on the Canvas.
---@param RenderMaterial UMaterialInterface
---@param Triangles ULuaArrayHelper<FCanvasUVTri>
function UCanvas:K2_DrawMaterialTriangle(RenderMaterial, Triangles) end

---Draws a polygon on the Canvas.
---@param RenderTexture UTexture
---@param ScreenPosition FVector2D
---@param Radius FVector2D
---@param NumberOfSides number
---@param RenderColor FLinearColor
function UCanvas:K2_DrawPolygon(RenderTexture, ScreenPosition, Radius, NumberOfSides, RenderColor) end

---Performs a projection of a world space coordinates using the projection matrix set up for the Canvas.
---@param WorldLocation FVector
---@return FVector
function UCanvas:K2_Project(WorldLocation) end

---Performs a deprojection of a screen space coordinate using the projection matrix set up for the Canvas.
---@param ScreenPosition FVector2D
---@param WorldOrigin FVector
---@param WorldDirection FVector
function UCanvas:K2_Deproject(ScreenPosition, WorldOrigin, WorldDirection) end

---Returns the wrapped text size in screen space coordinates.
---@param RenderFont UFont
---@param RenderText string
---@return FVector2D
function UCanvas:K2_StrLen(RenderFont, RenderText) end

---Returns the clipped text size in screen space coordinates.
---@param RenderFont UFont
---@param RenderText string
---@param Scale FVector2D
---@return FVector2D
function UCanvas:K2_TextSize(RenderFont, RenderText, Scale) end
