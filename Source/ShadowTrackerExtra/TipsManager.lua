---@meta

---@class ETipType
---@field DefaultTip number
---@field DevTip number
---@field PopUpWindow number
ETipType = {}


---@class FTopTipImageWidgetConfig
---@field Brush FSlateBrush
---@field TextureSoftObjectPath FSoftObjectPath
---@field Offset FVector2D
FTopTipImageWidgetConfig = {}


---@class FPopUpWindowConfig
---@field TopTipWidget UTopTipWidget
---@field PlayLength number
---@field ParentOuterName string
---@field ParentWidgetName string
---@field ZOrder number
FPopUpWindowConfig = {}


---@class FAdvanceTipCommonConfig
---@field Priority number
---@field bCanBeReplaced boolean
---@field TopTipWidget UTopTipWidget
---@field PlayLength number
---@field Offset FVector2D
---@field AnimationName string
---@field ParentOuterName string
---@field ParentWidgetName string
---@field ZOrder number
FAdvanceTipCommonConfig = {}


---@class FAdvancedTipConfig
---@field EnableGameModeIDs ULuaArrayHelper<number>
---@field Priority number
---@field bCanBeReplaced boolean
---@field bDoOverrideTipWidget boolean
---@field TopTipWidget UTopTipWidget
---@field PlayLength number
---@field Offset FVector2D
---@field AnimationName string
---@field MainBackgroundWidgetLayoutConfig FTopTipImageWidgetConfig
---@field SecondBackgroundWidgetLayoutConfig FTopTipImageWidgetConfig
---@field LeftWidgetLayoutConfig FTopTipImageWidgetConfig
---@field RightWidgetLayoutConfig FTopTipImageWidgetConfig
---@field FinalContext string
---@field ParentOuterName string
---@field ParentWidgetName string
---@field ZOrder number
FAdvancedTipConfig = {}


---@class FDevTipConfig
---@field Priority number
---@field bCanBeReplaced boolean
---@field PlayLength number
---@field Template string
FDevTipConfig = {}


---@class FPCShowTips : ULuaSingleDelegate
FPCShowTips = {}

---绑定回调函数
---@param Callback fun(Obj: any, Widget: UUAEUserWidget, TipsID: number, TipConfig: FAdvancedTipConfig) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPCShowTips:Bind(Callback, Obj) end

---执行委托
---@param Widget UUAEUserWidget
---@param TipsID number
---@param TipConfig FAdvancedTipConfig
function FPCShowTips:Execute(Widget, TipsID, TipConfig) end


---@class FPCLoadTipsWidget : ULuaSingleDelegate
FPCLoadTipsWidget = {}

---绑定回调函数
---@param Callback fun(Obj: any, TipsID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPCLoadTipsWidget:Bind(Callback, Obj) end

---执行委托
---@param TipsID number
function FPCLoadTipsWidget:Execute(TipsID) end


---@class FPCHideTips : ULuaSingleDelegate
FPCHideTips = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPCHideTips:Bind(Callback, Obj) end

---执行委托
function FPCHideTips:Execute() end


---@class UCommonTipsConfigDataAsset: UDataAsset
---@field AdvanceTipsCommonConfigMap ULuaMapHelper<number, FAdvanceTipCommonConfig>
local UCommonTipsConfigDataAsset = {}


---@class UTipsManager: UActorComponent
---@field AdvancedTipsConfigMap ULuaMapHelper<number, FAdvancedTipConfig>
---@field DefaultTipConfig FAdvancedTipConfig
---@field MaxPriority number
---@field CoolDownConfigMap ULuaMapHelper<number, number>
---@field LastCoolDownDisplayTipsMap ULuaMapHelper<number, number>
---@field bEnableForceTipHide boolean
---@field PopUpWindowConfigMap ULuaMapHelper<number, FPopUpWindowConfig>
---@field DevTipConfigMap ULuaMapHelper<number, FDevTipConfig>
---@field PCShowTipsDelegate FPCShowTips
---@field PCLoadTipsWidget FPCLoadTipsWidget
---@field PCHideTips FPCHideTips
---@field WaitingTips ULuaArrayHelper<FAdvancedTipConfig>
---@field CurrentTipWidget UTopTipWidget
---@field PopUpWindowsList ULuaArrayHelper<UTopTipWidget>
---@field ModeID2OffsetZOrder ULuaMapHelper<string, number>
---@field BlackIDSet ULuaSetHelper<number>
local UTipsManager = {}

function UTipsManager:RequestForceTipHide() end

function UTipsManager:CancelForceTipHide() end

---@param TipType ETipType
---@param ID number
---@param param1 string
---@param param2 string
---@param ExtraParam UUAEBlackboard
---@return boolean
function UTipsManager:TryShowTipByTypeAndID(TipType, ID, param1, param2, ExtraParam) end

---@param ID number
---@param param1 string
---@param param2 string
---@param Main FTopTipImageWidgetConfig
---@param sec FTopTipImageWidgetConfig
---@return boolean
function UTipsManager:TryDisplayGameTipWithMsgID_WithReplaceBackGroundImg(ID, param1, param2, Main, sec) end

---@param ID number
---@param param1 string
---@param param2 string
---@param Time number
---@return boolean
function UTipsManager:TryDisplayGameTipWithMsgID_WithTime(ID, param1, param2, Time) end

---@param ID number
---@param param1 string
---@param param2 string
---@param ExtraParam UUAEBlackboard
---@return boolean
function UTipsManager:TryDisplayGameTipWithMsgID(ID, param1, param2, ExtraParam) end

---@param param1 string
---@param param2 string
---@param DevTipId_Extra number
function UTipsManager:DisplayDebugTip(param1, param2, DevTipId_Extra) end

---@param ID number
---@param ExtraParam UUAEBlackboard
---@return boolean
function UTipsManager:TryDisplayPopUpWindow(ID, ExtraParam) end

---@param ID number
function UTipsManager:AddBlackID(ID) end

---@param ID number
function UTipsManager:RemoveBlackID(ID) end

---@param IDList ULuaArrayHelper<number>
function UTipsManager:AddBlackIDList(IDList) end

---@param IDList ULuaArrayHelper<number>
function UTipsManager:RemoveBlackIDList(IDList) end

---@param ID number
---@return boolean
function UTipsManager:IsInBlackIDSet(ID) end

---@param ID number
---@return boolean
function UTipsManager:CheckAndUpdateCoolDownInfo(ID) end

function UTipsManager:ClearBlackIDSet() end

function UTipsManager:ClientBlueprintBeginPlay() end

---@param ConfigMap ULuaMapHelper<number, FAdvanceTipCommonConfig>
function UTipsManager:AddCommonConfigMap(ConfigMap) end

---@param ID number
---@param Config FAdvanceTipCommonConfig
function UTipsManager:AddSingleCommonConfig(ID, Config) end

---@param ID number
function UTipsManager:DisplayConfigTextErrorMessageBox(ID) end

function UTipsManager:LoadTextureResource() end

---@param InGameState ASTExtraGameStateBase
function UTipsManager:OnGameStateBaseActorCreate(InGameState) end
