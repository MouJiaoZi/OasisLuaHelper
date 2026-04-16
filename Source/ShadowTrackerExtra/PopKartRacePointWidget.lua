---@meta

---@class FPopKartPointIconChangeFactor
---@field MinDis number
---@field MaxDis number
---@field MinScaleFactorFactor number
---@field MaxScaleFactorFactor number
---@field MinTransparencyFactor number
---@field MaxTransparencyFactor number
FPopKartPointIconChangeFactor = {}


---@class UPopKartRacePointWidget: UUAEUserWidget
---@field MinShowPopkartTipsDistance number
---@field MinShowPanelDistance number
---@field Limit FVector4
---@field UIOffset FVector2D
---@field ChangeFactors ULuaArrayHelper<FPopKartPointIconChangeFactor>
local UPopKartRacePointWidget = {}

---@param isFreeCameraInOB boolean
function UPopKartRacePointWidget:ShowHideAllRacePointUI(isFreeCameraInOB) end
