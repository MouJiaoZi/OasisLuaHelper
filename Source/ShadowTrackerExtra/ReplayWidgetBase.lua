---@meta

---@class FOnReplaySetViewTarget
---@field LastTeamID number
---@field isSameTeam boolean
FOnReplaySetViewTarget = {}


---@class FLiveUIRecordSetting
---@field UniqueUIIndex number
---@field WidgetName string
---@field OuterName string
FLiveUIRecordSetting = {}


---@class UReplayWidgetBase: UUAEUserWidget
---@field OnReadyInit FReplayWidgetMuntiCastDelegate
---@field LoadingCountLimit number
---@field ReplayTargetPlayerName string
---@field ReplayTargetUIDStr string
---@field ReplayTargetTeamID number
---@field UIRecordSetting ULuaArrayHelper<FLiveUIRecordSetting>
---@field GameModeIDIgnoreCheckPlayerList ULuaArrayHelper<number>
local UReplayWidgetBase = {}

---@param StrKey string
---@param Content string
function UReplayWidgetBase:ShowErrorMsg(StrKey, Content) end

---@param Vehicle ASTExtraVehicleBase
function UReplayWidgetBase:OnViewCharacterAttachedToVehicle(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
function UReplayWidgetBase:OnViewCharacterDetachedFromVehicle(Vehicle) end

function UReplayWidgetBase:OnViewCharaterChangedVechileSeat() end

function UReplayWidgetBase:OnWidgetInitialize() end

function UReplayWidgetBase:OnWidgetRelease() end

function UReplayWidgetBase:SetupUIRoot_BP() end

function UReplayWidgetBase:OnWidgetReInit() end

---@param inSettingInfo FOnReplaySetViewTarget
function UReplayWidgetBase:OnResetViewTarget_BP(inSettingInfo) end

function UReplayWidgetBase:ForceRefreshUI() end

function UReplayWidgetBase:ClearUIOnGotoTime() end

function UReplayWidgetBase:UpdateWeaponUI() end

function UReplayWidgetBase:UpdateBulletUI() end

function UReplayWidgetBase:OnReplayFinishPlay() end

function UReplayWidgetBase:OnInitChildWidget() end

function UReplayWidgetBase:RefreshUIInfoOnAttachCameraViewFinished() end

function UReplayWidgetBase:UpdateIDPanel() end

---@param PropSlot ESurviveWeaponPropSlot
function UReplayWidgetBase:OnSimulatedWeaponChanged(PropSlot) end

function UReplayWidgetBase:OnBulletNumChanged() end

---@param isResetting boolean
function UReplayWidgetBase:SetIsResettingViewTarget(isResetting) end

---@return boolean
function UReplayWidgetBase:GetIsResettingViewTarget() end
