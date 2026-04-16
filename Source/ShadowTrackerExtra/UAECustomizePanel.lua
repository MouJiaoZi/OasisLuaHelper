---@meta

---@class FUIElemLayoutDetail
---@field Type number
---@field Opacity number
---@field Scale FVector2D
---@field AnchorType FAnchors
---@field RelativePos FVector2D
---@field OriginSize FVector2D
FUIElemLayoutDetail = {}


---@class FCustomizePanelInitLayoutData
---@field Position FVector2D
---@field Scale FVector2D
---@field Size FVector2D
---@field Opacity number
---@field Anchors FAnchors
FCustomizePanelInitLayoutData = {}


---@class FDynamicMatImageInfo
---@field MatParmName string
FDynamicMatImageInfo = {}


---@class UCustomizePanelInitDataAssetBase: UDataAsset
local UCustomizePanelInitDataAssetBase = {}


---@class UUAECustomizePanel: UCanvasPanel
---@field CurrentLayoutData FUIElemLayoutDetail
---@field DefaultLayoutData FUIElemLayoutDetail
---@field OriginDefaultLayoutData FUIElemLayoutDetail
---@field Border_OtherName string
---@field OpacticyMin number
---@field OpacityMax number
---@field OpacticyMin_Customize number
---@field OpacityMax_Customize number
---@field BackgroundBrushMin number
---@field LinerColor0 FLinearColor
---@field LinerColor1 FLinearColor
---@field DynamicMatImageInfoList ULuaArrayHelper<FDynamicMatImageInfo>
---@field bUseDynamicMatImageFeature boolean
---@field EnableDynamicMatImageFeature number
---@field Threshold number
---@field EnableOffset boolean
---@field bIgnoreOriginSize boolean
---@field bWinReleaseApplyAnchors boolean
---@field PCSlotType number
---@field PCSlotWeight number
local UUAECustomizePanel = {}

---@param pSaveGame USaveGame
---@param CrtUseIndex number
function UUAECustomizePanel:ApplyCustomizeData(pSaveGame, CrtUseIndex) end

---@param pSaveGame USaveGame
---@param CrtUseIndex number
function UUAECustomizePanel:BP_ApplyCustomizeData(pSaveGame, CrtUseIndex) end

---@param pSaveGame USaveGame
---@param CrtUseIndex number
---@param LayoutDetail FUIElemLayoutDetail
---@return boolean
function UUAECustomizePanel:GetDetailInfoFromSG(pSaveGame, CrtUseIndex, LayoutDetail) end

function UUAECustomizePanel:ApplyDefaultLayout() end

---@param FireMode number
---@param LayoutIdx number
function UUAECustomizePanel:ApplyLayoutFromSG(FireMode, LayoutIdx) end

---@param InData FUIElemLayoutDetail
function UUAECustomizePanel:ApplyLayoutData(InData) end

---@param InData FUIElemLayoutDetail
function UUAECustomizePanel:SetLayoutData(InData) end

---@param InScaleX number
---@param InScaleY number
function UUAECustomizePanel:SetCurrentLayoutScale(InScaleX, InScaleY) end

---@param InOpacity number
function UUAECustomizePanel:SetCurrentLayoutOpacity(InOpacity) end

---@param InPositionX number
---@param InPositionY number
function UUAECustomizePanel:SetCurrentLayoutPosition(InPositionX, InPositionY) end

---@return number
function UUAECustomizePanel:GetType() end

---@param Prefix string
---@param InData FUIElemLayoutDetail
function UUAECustomizePanel:ShowLayoutDataInfo(Prefix, InData) end

---@param Prefix string
---@param Type number
function UUAECustomizePanel:ShowRuntimeDataInfo(Prefix, Type) end

---@return FUIElemLayoutDetail
function UUAECustomizePanel:GetLayoutData() end

---@param FireMode number
---@param LayoutIdx number
---@return FUIElemLayoutDetail
function UUAECustomizePanel:GetLayoutDataFromSG(FireMode, LayoutIdx) end

---@return FUIElemLayoutDetail
function UUAECustomizePanel:GetDefaultLayoutData() end

---@return FUIElemLayoutDetail
function UUAECustomizePanel:GetOriginDefaultLayoutData() end

---@param InData FUIElemLayoutDetail
function UUAECustomizePanel:InitLayoutData(InData) end

function UUAECustomizePanel:InitOriginDefaultLayoutData() end

function UUAECustomizePanel:ResetDefaultLayoutData() end
