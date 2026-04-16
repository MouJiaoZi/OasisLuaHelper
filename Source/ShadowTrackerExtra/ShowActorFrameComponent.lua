---@meta

---@class FFrameUITransformData
---@field Offset FTransform
---@field BaseSizeX number
---@field BaseSizeY number
FFrameUITransformData = {}


---@class UShowActorFrameComponent: UActorComponent
---@field FrameUITransformData FFrameUITransformData
---@field FrameUI UMaterialBillboardComponent
---@field TranslucentSortPriority number
---@field bSizeIsInScreenSpace boolean
---@field FrameDetailsUIPath FSoftClassPath
---@field FrameDetailsParentWidgetName string
---@field FrameDetailsParentOuterName string
---@field BPFunction_WhenWidgetCreate string
---@field BPFunction_WhenWidgetDestroy string
local UShowActorFrameComponent = {}

---@param ParamIfNecessary number
---@return boolean
function UShowActorFrameComponent:CreateFrameUI(ParamIfNecessary) end

function UShowActorFrameComponent:DestroyFrameUI() end
