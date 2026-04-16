---@meta

---@class USTExtraSCA_ShowWidget: USightActionNode
---@field bControlUIVisbility boolean
---@field bClearUIClassUninit boolean
---@field bShowOnCreate boolean
---@field bDisableDepthTest boolean
---@field bCreateFromInitNode boolean
---@field bCreate3DWidget boolean
---@field WidgetSpace EWidgetSpace
---@field WidgetTickGroup ETickingGroup
---@field AttachSocketType EWeaponAttachmentSocketType
---@field DrawSize FVector2D
---@field AttachName string
---@field RelativeTrans FTransform
---@field WidgetClass UUserWidget
---@field WidgetSoftClass UUserWidget
---@field WidgetZorder number
local USTExtraSCA_ShowWidget = {}

---@param NodeOwner USTextraSightScopeMgr
function USTExtraSCA_ShowWidget:CreateShowWidget(NodeOwner) end

function USTExtraSCA_ShowWidget:DestroyShowWidget() end

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCA_ShowWidget:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end

function USTExtraSCA_ShowWidget:OnLoadUIClassDone() end

---@param InNeedShow boolean
function USTExtraSCA_ShowWidget:SetUIVisbility(InNeedShow) end
