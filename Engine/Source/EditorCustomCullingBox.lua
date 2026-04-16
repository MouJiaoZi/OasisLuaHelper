---@meta

---@class ECustomCullingBoxType
---@field ECCB_ActiveZone number
---@field ECCB_VisibleZone number
ECustomCullingBoxType = {}


---@class AEditorCustomCullingGroup: AVolume
local AEditorCustomCullingGroup = {}


---@class AEditorCustomCullingBox: AVolume
---@field CullingBoxType ECustomCullingBoxType
---@field bIsOrient boolean
---@field bIsFlip boolean
---@field bShowPreviewCube boolean
---@field bPreviewVisibility boolean
local AEditorCustomCullingBox = {}
