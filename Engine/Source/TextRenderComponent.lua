---@meta

---@class EHorizTextAligment
---@field EHTA_Left number @Left
---@field EHTA_Center number @Center
---@field EHTA_Right number @Right
EHorizTextAligment = {}


---@class EVerticalTextAligment
---@field EVRTA_TextTop number @Text Top
---@field EVRTA_TextCenter number @Text Center
---@field EVRTA_TextBottom number @Text Bottom
---@field EVRTA_QuadTop number @Quad Top
EVerticalTextAligment = {}


---Renders text in the world with given font. Contains usual font related attributes such as Scale, Alignment, Color etc.
---@class UTextRenderComponent: UPrimitiveComponent
---@field Text string @Text content, can be multi line using <br> as line separator
---@field HorizontalAlignment EHorizTextAligment @Horizontal text alignment
---@field VerticalAlignment EVerticalTextAligment @Vertical text alignment
---@field TextRenderColor FColor @Color of the text, can be accessed as vertex color
---@field XScale number @Horizontal scale, default is 1.0
---@field YScale number @Vertical scale, default is 1.0
---@field WorldSize number @Vertical size of the fonts largest character in world units. Transform, XScale and YScale will affect final size.
---@field InvDefaultSize number @The inverse of the Font's character height.
---@field HorizSpacingAdjust number @Horizontal adjustment per character, default is 0.0
---@field VertSpacingAdjust number @Vertical adjustment per character, default is 0.0
---@field bAlwaysRenderAsText number @Allows text to draw unmodified when using debug visualization modes. *
local UTextRenderComponent = {}

---Change the text value and signal the primitives to be rebuilt The FString variant is deprecated in favor of the FText variant
---@param Value string
function UTextRenderComponent:SetText(Value) end

---Change the text value and signal the primitives to be rebuilt
---@param Value string
function UTextRenderComponent:K2_SetText(Value) end

---Change the text material and signal the primitives to be rebuilt
---@param Material UMaterialInterface
function UTextRenderComponent:SetTextMaterial(Material) end

---Change the font and signal the primitives to be rebuilt
---@param Value UFont
function UTextRenderComponent:SetFont(Value) end

---Change the horizontal alignment and signal the primitives to be rebuilt
---@param Value EHorizTextAligment
function UTextRenderComponent:SetHorizontalAlignment(Value) end

---Change the vertical alignment and signal the primitives to be rebuilt
---@param Value EVerticalTextAligment
function UTextRenderComponent:SetVerticalAlignment(Value) end

---Change the text render color and signal the primitives to be rebuilt
---@param Value FColor
function UTextRenderComponent:SetTextRenderColor(Value) end

---Change the text X scale and signal the primitives to be rebuilt
---@param Value number
function UTextRenderComponent:SetXScale(Value) end

---Change the text Y scale and signal the primitives to be rebuilt
---@param Value number
function UTextRenderComponent:SetYScale(Value) end

---Change the text horizontal spacing adjustment and signal the primitives to be rebuilt
---@param Value number
function UTextRenderComponent:SetHorizSpacingAdjust(Value) end

---Change the text vertical spacing adjustment and signal the primitives to be rebuilt
---@param Value number
function UTextRenderComponent:SetVertSpacingAdjust(Value) end

---Change the world size of the text and signal the primitives to be rebuilt
---@param Value number
function UTextRenderComponent:SetWorldSize(Value) end

---Get local size of text
---@return FVector
function UTextRenderComponent:GetTextLocalSize() end

---Get world space size of text
---@return FVector
function UTextRenderComponent:GetTextWorldSize() end
