---@meta

---@class FWidgetTypePosKey
---@field WidgetTypePos ULuaArrayHelper<number>
FWidgetTypePosKey = {}


---@class UUserResourceMapping: UDataAsset
---@field LogicToPCLogicMapping ULuaMapHelper<UUserWidgetSkin, UUserWidgetSkin>
local UUserResourceMapping = {}


---@class UAEPCReleaseCondition: UObject
local UAEPCReleaseCondition = {}

---@return boolean
function UAEPCReleaseCondition:IsOK() end


---@class UUAEPCReleasePure: UBasicPCReleasePure
---@field GameStyleSkinStyle ULuaMapHelper<FWidgetTypePosKey, UUAEWidgetSkinStyle>
---@field ConditionOK boolean
local UUAEPCReleasePure = {}

function UUAEPCReleasePure:Init_BP() end

---@return boolean
function UUAEPCReleasePure:IsPCReleasePureNative() end

function UUAEPCReleasePure:ResetPCReleasePure() end

function UUAEPCReleasePure:Reset_BP() end

---@param bApply boolean
---@param ModeStyleSkin string
---@param TypePosKey FWidgetTypePosKey
---@param IsGlobalOB boolean
function UUAEPCReleasePure:ApplySkinStyle(bApply, ModeStyleSkin, TypePosKey, IsGlobalOB) end

---@param RefStyle UUserRefStyle
---@param CurrentApplyStyle ULuaArrayHelper<UUserWidgetStyle>
function UUAEPCReleasePure:LoadRefWidgetStyle(RefStyle, CurrentApplyStyle) end

---@param RefStyle UUserRefStyle
---@param CurrentApplyStyle ULuaArrayHelper<UUserWidgetStyle>
function UUAEPCReleasePure:UnLoadRefWidgetStyle(RefStyle, CurrentApplyStyle) end

---@param UserWidget UUAEUserWidget
function UUAEPCReleasePure:OnUAEUserWdigetNativeConstruct(UserWidget) end

---@param UserWidget UUAEUserWidget
function UUAEPCReleasePure:OnUAEUserWidgetIngameReceiveHide(UserWidget) end

---@param UserWidget UUAEUserWidget
function UUAEPCReleasePure:OnUAEUserWidgetIngameDestruct(UserWidget) end

---@param CanvasPanel UCanvasPanel
---@param PCListType number
---@param PCSlotType number
---@param PCSlotWeight number
function UUAEPCReleasePure:OnUUAECustomizePanelRebuild(CanvasPanel, PCListType, PCSlotType, PCSlotWeight) end

---@param UIStyle UUserWidgetStyle
---@param BroadcastPC APlayerController
function UUAEPCReleasePure:OnUserWidgetStyleLoaded(UIStyle, BroadcastPC) end

---@param UIStyle UUserWidgetStyle
---@param BroadcastPC APlayerController
function UUAEPCReleasePure:OnUserWidgetStyleUnLoaded(UIStyle, BroadcastPC) end

---@param UserWidget UUAEUserWidget
---@return number
function UUAEPCReleasePure:GetDragTriggerDistance(UserWidget) end
