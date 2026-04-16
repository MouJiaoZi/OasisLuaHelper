---@meta

---The image widget allows you to display a Slate Brush, or texture or material in the UI. * No Children
---@class UImage: UWidget
---@field BrushImage UObject @Image to draw
---@field bIsEnhancedImage boolean
---@field ForceAsyncLoadReference boolean
---@field BrushAssetReference FStringAssetReference
---@field Brush FSlateBrush @Image to draw
---@field BrushMaterialParamNames string
---@field BrushDelegate FGetSlateBrush @A bindable delegate for the Image.
---@field ColorAndOpacity FLinearColor @Color and opacity
---@field ColorAndOpacityDelegate FGetLinearColor @A bindable delegate for the ColorAndOpacity.
---@field bIsUseEnhancedHitTest boolean @是否使用自定义触摸响应区域，在运行时修改无效
---@field HitTestAreaRadius number @圆形响应区域的半径，最大为控件边长一半，-1为控件大小一半
---@field OnMouseButtonDownEvent FOnPointerEvent
---@field OnImageChangeDelegate FImageChangeDelegate
local UImage = {}

---@return FSlateBrush
function UImage:GetBrush() end

---@param InColorAndOpacity FLinearColor
function UImage:SetColorAndOpacity(InColorAndOpacity) end

---@param HexString string
function UImage:SetColorRGBStr(HexString) end

---@param AssetReference FStringAssetReference
function UImage:SetBrushImageReference(AssetReference) end

---@param AssetReference FStringAssetReference
---@param bMatchSize boolean
function UImage:SetBrushImageReferenceWithMatchSize(AssetReference, bMatchSize) end

---@param AssetReference FStringAssetReference
---@param Color FLinearColor
---@param bMatchSize boolean
function UImage:SetBrushImageReferenceWithColor(AssetReference, Color, bMatchSize) end

---@param InOpacity number
function UImage:SetOpacity(InOpacity) end

---@param InBrush FSlateBrush
function UImage:SetBrush(InBrush) end

---@param Asset USlateBrushAsset
function UImage:SetBrushFromAsset(Asset) end

---@param Texture UTexture2D
---@param bMatchSize boolean
function UImage:SetBrushFromTexture(Texture, bMatchSize) end

---@param Texture UTexture2DDynamic
---@param bMatchSize boolean
function UImage:SetBrushFromTextureDynamic(Texture, bMatchSize) end

---@param Material UMaterialInterface
function UImage:SetBrushFromMaterial(Material) end

---@param InDisablePaint boolean
function UImage:SetDisablePaint(InDisablePaint) end

function UImage:ReleaseAsyncSetBrushHandle() end

function UImage:OnAsyncLoadImageAssetComplete() end

function UImage:OnAsyncLoadAssetComplete() end
