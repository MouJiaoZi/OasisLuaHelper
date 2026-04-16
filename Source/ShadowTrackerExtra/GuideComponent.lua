---@meta

---@class FGuideInfo
---@field guildUI number
---@field offset FVector2D
---@field size FVector2D
---@field childData number
FGuideInfo = {}


---@class UGuideComponent: UActorComponent
---@field widgetList ULuaArrayHelper<FGuideInfo>
---@field MaskWidget UWidget
local UGuideComponent = {}

function UGuideComponent:CreateGuideUI() end

---@param bTop boolean
function UGuideComponent:SetMaskWidgetOnTop(bTop) end
