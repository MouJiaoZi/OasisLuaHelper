---@meta

---@class FDrawTexturesDataStruct
---@field Offset FVector2D
---@field Icon FCanvasIcon2D
---@field Scale FVector2D
---@field PCScale number
FDrawTexturesDataStruct = {}


---@class FTextureUVs
---@field U number
---@field V number
---@field UL number
---@field VL number
FTextureUVs = {}


---@class FHUDRenderObject
---@field bHidden boolean
---@field RenderPriority number
---@field Position FVector2D
---@field Size FVector2D
---@field RenderColor FLinearColor
---@field RenderOpacity number
FHUDRenderObject = {}


---@class FHUDRenderObject_Texture
---@field UVs FTextureUVs
---@field bUseTeamColors boolean
---@field TeamColorOverrides ULuaArrayHelper<FLinearColor>
---@field bIsBorderElement boolean
---@field bIsSlateElement boolean
---@field RenderOffset FVector2D
---@field Rotation number
---@field RotPivot FVector2D
FHUDRenderObject_Texture = {}


---@class FHUDRenderObject_Text
---@field Text string
---@field TextScale number
---@field bDrawShadow boolean
---@field ShadowDirection FVector2D
---@field ShadowColor FLinearColor
---@field bDrawOutline boolean
---@field OutlineColor FLinearColor
---@field HorzPosition ETextHorzPos
---@field VertPosition ETextVertPos
FHUDRenderObject_Text = {}


---@class FUTGetTextDelegate : ULuaSingleDelegate
FUTGetTextDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUTGetTextDelegate:Bind(Callback, Obj) end

---执行委托
function FUTGetTextDelegate:Execute() end


---@class UHUDWidgetBase: UObject
---@field bCallBlueprintDrawFunction boolean
---@field DesignedResolution number
---@field Position FVector2D
---@field Size FVector2D
---@field Origin FVector2D
---@field ScreenPosition FVector2D
---@field bScaleByDesignedResolution number
---@field bMaintainAspectRatio number
---@field Opacity number
---@field bIgnoreHUDBaseColor number
---@field PCScale number
---@field bHidden number
---@field LastRenderTime number
---@field RenderPosition FVector2D
---@field RenderSize FVector2D
---@field RenderScale number
---@field CanvasCenter FVector2D
---@field AspectScale number
---@field CanvasClip FVector2D
---@field RenderObjectList ULuaArrayHelper<UStructProperty>
local UHUDWidgetBase = {}

---@param bIsHidden boolean
function UHUDWidgetBase:SetHidden(bIsHidden) end

---@param bShowScores boolean
---@return boolean
function UHUDWidgetBase:ShouldDraw(bShowScores) end

---@param DeltaTime number
function UHUDWidgetBase:Draw(DeltaTime) end

---@param DrawColor FLinearColor
---@return FLinearColor
function UHUDWidgetBase:ApplyHUDColor(DrawColor) end

---Draws text on the screen.  This is the Blueprint callable override.  You can use the TextHorzPosition and TextVertPosition to justify the text that you are drawing.
---@param Text string
---@param X number
---@param Y number
---@param Font UFont
---@param bDrawShadow boolean
---@param ShadowDirection FVector2D
---@param ShadowColor FLinearColor
---@param bDrawOutline boolean
---@param OutlineColor FLinearColor
---@param TextScale number
---@param DrawOpacity number
---@param DrawColor FLinearColor
---@param TextHorzAlignment ETextHorzPos
---@param TextVertAlignment ETextVertPos
---@param RenderInfo FFontRenderInfo
---@return FVector2D
function UHUDWidgetBase:DrawText(Text, X, Y, Font, bDrawShadow, ShadowDirection, ShadowColor, bDrawOutline, OutlineColor, TextScale, DrawOpacity, DrawColor, TextHorzAlignment, TextVertAlignment, RenderInfo) end

---Draws a texture on the screen.
---@param Texture UTexture
---@param X number
---@param Y number
---@param Width number
---@param Height number
---@param MaterialU number
---@param MaterialV number
---@param MaterialUL number
---@param MaterialVL number
---@param DrawOpacity number
---@param DrawColor FLinearColor
---@param RenderOffset FVector2D
---@param Rotation number
---@param RotPivot FVector2D
---@param bApplyHUDRenderPos boolean
---@param bSkipPCScale boolean
function UHUDWidgetBase:DrawTexture(Texture, X, Y, Width, Height, MaterialU, MaterialV, MaterialUL, MaterialVL, DrawOpacity, DrawColor, RenderOffset, Rotation, RotPivot, bApplyHUDRenderPos, bSkipPCScale) end

---Draws a material on the screen.
---@param Material UMaterialInterface
---@param X number
---@param Y number
---@param Width number
---@param Height number
---@param MaterialU number
---@param MaterialV number
---@param MaterialUWidth number
---@param MaterialVHeight number
---@param DrawOpacity number
---@param DrawColor FLinearColor
---@param RenderOffset FVector2D
---@param Rotation number
---@param RotPivot FVector2D
function UHUDWidgetBase:DrawMaterial(Material, X, Y, Width, Height, MaterialU, MaterialV, MaterialUWidth, MaterialVHeight, DrawOpacity, DrawColor, RenderOffset, Rotation, RotPivot) end

---@param DeltaTime number
---@param DrawOffset FVector2D
function UHUDWidgetBase:DrawAllRenderObjects(DeltaTime, DrawOffset) end

---These are the HUDRenderObject render functions.  They will take whatever is defined by the object and display it.
---@param TextureObject FHUDRenderObject_Texture
---@param DrawOffset FVector2D
function UHUDWidgetBase:RenderObj_Texture(TextureObject, DrawOffset) end

---@param TextureObject FHUDRenderObject_Texture
---@param X number
---@param Y number
---@param Width number
---@param Height number
function UHUDWidgetBase:RenderObj_TextureAt(TextureObject, X, Y, Width, Height) end

---@param TextObject FHUDRenderObject_Text
---@param DrawOffset FVector2D
---@return FVector2D
function UHUDWidgetBase:RenderObj_Text(TextObject, DrawOffset) end

---@param TextObject FHUDRenderObject_Text
---@param X number
---@param Y number
---@return FVector2D
function UHUDWidgetBase:RenderObj_TextAt(TextObject, X, Y) end
