---@meta

---@class EVehicleTextureType
---@field ForwardTexture number @前进按钮图片
---@field BackwardTexture number @后退按钮图片
---@field BoostTexture number @加速按钮图片
EVehicleTextureType = {}


---@class FOnVehicleApplyUISkin : ULuaMulticastDelegate
FOnVehicleApplyUISkin = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewVehicleUISkin: UVehicleUISkin) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleApplyUISkin:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewVehicleUISkin UVehicleUISkin
function FOnVehicleApplyUISkin:Broadcast(NewVehicleUISkin) end


---@class FCreatedVehicleWidgetAsyncDelegate : ULuaSingleDelegate
FCreatedVehicleWidgetAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Path: string, CreatedWidget: UUserWidget) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCreatedVehicleWidgetAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param Path string
---@param CreatedWidget UUserWidget
function FCreatedVehicleWidgetAsyncDelegate:Execute(Path, CreatedWidget) end


---@class UVehicleControlPanelUI: UUAEUserWidget
---@field WheelPanel1VehicleTypeArray ULuaArrayHelper<ESTExtraVehicleType>
---@field WheelPanel2VehicleTypeArray ULuaArrayHelper<ESTExtraVehicleType>
---@field WheelPanel3VehicleTypeArray ULuaArrayHelper<ESTExtraVehicleType>
---@field WheelPanel4VehicleTypeArray ULuaArrayHelper<ESTExtraVehicleType>
---@field WheelPanel5VehicleTypeArray ULuaArrayHelper<ESTExtraVehicleType>
---@field WheelPanel6VehicleTypeArray ULuaArrayHelper<ESTExtraVehicleType>
---@field WheelPanel7VehicleTypeArray ULuaArrayHelper<ESTExtraVehicleType>
---@field UseHelicopterGUISeatVehicleType ULuaArrayHelper<ESTExtraVehicleType>
---@field NoSeatColor FLinearColor
---@field EmptySeatColor FLinearColor
---@field OtherSeatColor FLinearColor
---@field SelfSeatColor FLinearColor
---@field RuntimeSeatTags ULuaArrayHelper<number>
---@field LastUITextureVehicleType ESTExtraVehicleType
---@field UITextureConfig ULuaMapHelper<ESTExtraVehicleType, FVehicleUITextureConfig>
---@field NameToWidget ULuaMapHelper<string, UObject>
---@field ButtonMode_AllButtonMap ULuaMapHelper<string, UButton>
---@field JoyStickMode_AllButtonMap ULuaMapHelper<string, UButton>
---@field SteerWheelMode_AllButtonMap ULuaMapHelper<string, UButton>
---@field SteerWheelMode_AllImageMap ULuaMapHelper<string, UImage>
---@field CommonImageMap ULuaMapHelper<string, UImage>
---@field CommonButonMap ULuaMapHelper<string, UButton>
---@field CustomWidgetList ULuaArrayHelper<FCustomWidget>
---@field CurVehicleSkinID number
---@field ApplyCurVehicleUISkinConfig ULuaArrayHelper<number>
---@field CurrentPCVerVehicleUISkinPath FSoftObjectPath
---@field OnVehicleApplyUISkin FOnVehicleApplyUISkin
---@field CurVehicleUIStyle ULuaArrayHelper<string>
---@field bAsyncLoadUIStyle boolean
---@field ChildPanels ULuaArrayHelper<UVehicleControlChildPanel>
---@field ExtraUIMap ULuaMapHelper<string, UUserWidget>
---@field AsyncLoadingUIList ULuaArrayHelper<string>
---@field bUpdateBigWorldState boolean
---@field VehicleChildPanelStringMap ULuaMapHelper<EVehicleControlPanelSubMode, string>
---@field VehicleChildPanelMap ULuaMapHelper<EVehicleControlPanelSubMode, UVehicleControlChildPanel>
---@field VehicleChildPanelLoadingList ULuaArrayHelper<EVehicleControlPanelSubMode>
---@field CurShowVehicleChildPanel EVehicleControlPanelSubMode
local UVehicleControlPanelUI = {}

function UVehicleControlPanelUI:InitSeatNativeEvent() end

---@param Flag boolean
function UVehicleControlPanelUI:ProcessUpDownGUINativeEvent(Flag) end

function UVehicleControlPanelUI:InitWheelsInfoNativeEvent() end

function UVehicleControlPanelUI:RefreshWheelsInfoNativeEvent() end

---@param bShowSkillPrompt boolean
---@param MaintenanceVehicleItemDefID FItemDefineID
---@param FuelItemDefID1 FItemDefineID
---@param FuelItemDefID2 FItemDefineID
---@param MaintenanceVehicle_Show boolean
---@param Fuel_Show boolean
function UVehicleControlPanelUI:UpdateGUIVehicleStatePanelNativeEvent(bShowSkillPrompt, MaintenanceVehicleItemDefID, FuelItemDefID1, FuelItemDefID2, MaintenanceVehicle_Show, Fuel_Show) end

---@param FuelItemDefID1 FItemDefineID
---@param FuelItemDefID2 FItemDefineID
function UVehicleControlPanelUI:UpdateFuelItemNumNativeEvent(FuelItemDefID1, FuelItemDefID2) end

---@param FuelItemDefID1 FItemDefineID
---@param FuelItemDefID2 FItemDefineID
function UVehicleControlPanelUI:GetFuelItemListNativeEvent(FuelItemDefID1, FuelItemDefID2) end

---@param Fuel number
---@param FuelMax number
---@param FuelWarningValue number
---@param FuelShow boolean
function UVehicleControlPanelUI:UpdateGUIFuelNativeEvent(Fuel, FuelMax, FuelWarningValue, FuelShow) end

---@param Hp number
---@param HpMax number
---@param HpWarningValue number
function UVehicleControlPanelUI:UpdateGUIHpNativeEvent(Hp, HpMax, HpWarningValue) end

---@param Hp number
---@param HpMax number
---@param HpWarningValue number
function UVehicleControlPanelUI:UpdateGUIVehicle2HpNativeEvent(Hp, HpMax, HpWarningValue) end

function UVehicleControlPanelUI:ClearRuntimeSeatTags() end

function UVehicleControlPanelUI:UpdateGUISeatsNativeEvent() end

---@param TargetVehicleType ESTExtraVehicleType
---@return boolean
function UVehicleControlPanelUI:NowIsVehicleType(TargetVehicleType) end

---@param TargetArray ULuaArrayHelper<ESTExtraVehicleType>
---@return boolean
function UVehicleControlPanelUI:NowIsVehicleTypes(TargetArray) end

---@param TargetSeatList ULuaArrayHelper<UImage>
---@param TargetSeatTagList ULuaArrayHelper<UImage>
---@param Vehicle ASTExtraVehicleBase
function UVehicleControlPanelUI:UpdateGUISeatsInternal(TargetSeatList, TargetSeatTagList, Vehicle) end

---@param DriverLastWeaponPanel UUAEUserWidget
function UVehicleControlPanelUI:ResetAllPanelNativeEvent(DriverLastWeaponPanel) end

function UVehicleControlPanelUI:UpdateUITextureConfig() end

function UVehicleControlPanelUI:InitNameToWidget() end

---@param InString string
function UVehicleControlPanelUI:PrintVehicleUILog(InString) end

---@return boolean
function UVehicleControlPanelUI:ShouldShowEnjoyVoicePanel() end

---@return boolean
function UVehicleControlPanelUI:ShouldShowConvertibleUI() end

---@return boolean
function UVehicleControlPanelUI:ShouldShowTankTurnUI() end

---@return boolean
function UVehicleControlPanelUI:ShouldShowHolographicEffectUI() end

---@return boolean
function UVehicleControlPanelUI:ShouldShowSwappingSiblingAvatarUI() end

---@return boolean
function UVehicleControlPanelUI:ShouldShowDynamicPendantUI() end

---@param DefaultSkinConfig UVehicleUISkin
function UVehicleControlPanelUI:InitVehicleUISkinWidgetMap(DefaultSkinConfig) end

---@param SkinConfig UVehicleUISkin
function UVehicleControlPanelUI:ApplyButtonModeVehicleUISkin(SkinConfig) end

---@param SkinConfig UVehicleUISkin
function UVehicleControlPanelUI:ApplyJoyStickModeVehicleUISkin(SkinConfig) end

---@param SkinConfig UVehicleUISkin
function UVehicleControlPanelUI:ApplySteerWheelVehicleUISkin(SkinConfig) end

---@param ButtonMap ULuaMapHelper<string, UButton>
---@param NewButtonStyleList ULuaArrayHelper<FVehicleUIBtnConfig>
function UVehicleControlPanelUI:ApplyButtonVehicleUISkin(ButtonMap, NewButtonStyleList) end

---@param ImageMap ULuaMapHelper<string, UImage>
---@param NewImageBrushList ULuaArrayHelper<FVehicleUIImageConfig>
function UVehicleControlPanelUI:ApplyImageVehicleUISkin(ImageMap, NewImageBrushList) end

---@param Btn UButton
---@return boolean
function UVehicleControlPanelUI:ApplySingleBtnVehicleUISkin(Btn) end

---@param Image UImage
---@return boolean
function UVehicleControlPanelUI:ApplySingleImageVehicleUISkin(Image) end

---@param CustomWidget UWidget
---@return boolean
function UVehicleControlPanelUI:ApplySingleCustomWidgetVehicleUISkin(CustomWidget) end

---@param Parent UUAEUserWidget
---@param WidgetName string
function UVehicleControlPanelUI:AutoRegisterCustomWidget(Parent, WidgetName) end

---@param Parent UUAEUserWidget
---@param CustomWidget UWidget
function UVehicleControlPanelUI:MannualRegisterCustomWidget(Parent, CustomWidget) end

function UVehicleControlPanelUI:ApplyAllCustomWidgetVehicleUISkin() end

---@param UIWidget UUAEUserWidget
function UVehicleControlPanelUI:ApplyCustomWidgetVehicleUISkin(UIWidget) end

---@param NewVehicleUISkin UVehicleUISkin
---@param Force boolean
function UVehicleControlPanelUI:ApplyVehicleUISkin(NewVehicleUISkin, Force) end

---@param PCVerNewVehicleUISkinPath FSoftObjectPath
---@param Force boolean
function UVehicleControlPanelUI:ApplyPCVerVehicleUISkin(PCVerNewVehicleUISkinPath, Force) end

---@param NewVehicleUISkin UVehicleUISkin
function UVehicleControlPanelUI:ApplyVehicleUISkinJoyStick(NewVehicleUISkin) end

---@param Force boolean
function UVehicleControlPanelUI:ResetVehicleUISkin(Force) end

---@param UIPath string
---@param bDriver boolean
function UVehicleControlPanelUI:ShowExtraCustomUIWidget(UIPath, bDriver) end

---@param UIPath string
function UVehicleControlPanelUI:RemoveExtraCustomUIWidget(UIPath) end

function UVehicleControlPanelUI:UpdateCruiseControlUI() end

function UVehicleControlPanelUI:ReceiveInitLua() end

---@param DeltaTime number
function UVehicleControlPanelUI:LuaTick(DeltaTime) end

function UVehicleControlPanelUI:LoadVehicleUIStyle() end

function UVehicleControlPanelUI:UnLoadVehicleUIStyle() end

---@param InPathName string
---@param InContextObject UObject
---@param InCreatedDelegate FCreatedVehicleWidgetAsyncDelegate
function UVehicleControlPanelUI:CreateVehicleExtraUIAsync(InPathName, InContextObject, InCreatedDelegate) end

---@param Widget UUserWidget
---@return boolean
function UVehicleControlPanelUI:IsExtraInterfaceUI(Widget) end

---@param Widget UUserWidget
function UVehicleControlPanelUI:OnChildModePanelLoaded(Widget) end

---@param SubMode EVehicleControlPanelSubMode
function UVehicleControlPanelUI:ShowOperateChildPanel(SubMode) end

---@param bAcc boolean
function UVehicleControlPanelUI:UpdateSurfingText(bAcc) end

---@param ChildPanel UUAEUserWidget
function UVehicleControlPanelUI:UpdateVehicleChildLayout(ChildPanel) end

---@return boolean
function UVehicleControlPanelUI:GetEnableOperateChildUIPanel() end
