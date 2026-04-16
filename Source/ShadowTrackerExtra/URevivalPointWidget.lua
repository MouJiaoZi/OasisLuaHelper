---@meta

---@class FRevivalPointIconChangeFactor
---@field MinDis number
---@field MaxDis number
---@field MinScaleFactorFactor number
---@field MaxScaleFactorFactor number
---@field MinTransparencyFactor number
---@field MaxTransparencyFactor number
FRevivalPointIconChangeFactor = {}


---@class UURevivalPointWidget: UUAEUserWidget
---@field FilterDistance number
---@field MinShowPanelDistance number
---@field Limit FVector4
---@field UIOffset FVector2D
---@field AllRevivalPointSyncData ULuaArrayHelper<FMarkSyncData>
---@field ChangeFactors ULuaArrayHelper<FRevivalPointIconChangeFactor>
local UURevivalPointWidget = {}

---@param isFreeCameraInOB boolean
function UURevivalPointWidget:ShowHideAllRevivalUI(isFreeCameraInOB) end
