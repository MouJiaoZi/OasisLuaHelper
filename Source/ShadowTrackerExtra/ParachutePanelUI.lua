---@meta

---@class UParachutePanelUI: UUAEUserWidget
---@field bReadyToShow boolean
---@field bGotWidgetData boolean
---@field HeightBarSizeY number
---@field PlayerHeightWidgetPos FVector2D
---@field HorizonBarSizeYMinValue number
---@field ForceOpenParachuteMarkPos FVector2D
---@field SkyDivingToHorizonGap number
---@field SpeedMatParamIndex number
---@field SpeedMatParameterName string
---@field bGotSpeedMatParamIndex boolean
---@field MaxSpeed number
---@field ZeroSpeedPercent number
---@field MaxSpeedPercent number
---@field MaxHorizonTestHeight number
---@field HeightStrFormat string
---@field SpeedStrFormat string
---@field CachedPlayerController ASTExtraPlayerController
---@field HistoryHeight number
---@field CachedMyLandscape AMyLandscape
---@field CachedMapStandardPoint AMiniMapStandardPoint
local UParachutePanelUI = {}

function UParachutePanelUI:PrepareParachuteUI() end

---@param InDeltaTime number
function UParachutePanelUI:UpdateFallingData(InDeltaTime) end

function UParachutePanelUI:BP_InitWidget() end

function UParachutePanelUI:BP_ShrinkLeft() end

function UParachutePanelUI:BP_ShrinkBack() end

function UParachutePanelUI:BP_Reconnect_ResetUIByPlayerControllerState() end

function UParachutePanelUI:InitWidgetRef() end

---@param InCompassMat UMaterialInstanceDynamic
function UParachutePanelUI:InitSpeedMat(InCompassMat) end

function UParachutePanelUI:GetWidgetData() end
