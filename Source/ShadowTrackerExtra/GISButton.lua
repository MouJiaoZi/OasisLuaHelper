---@meta

---@class FUIGISButtonStyle
---@field ButtonText string
---@field SpritePath UObject
---@field ButtonTemplate UGISButton
FUIGISButtonStyle = {}


---@class FUIGISButtonTypeMap
---@field TypeIDButtonMap ULuaMapHelper<number, UGISButton>
FUIGISButtonTypeMap = {}


---@class FGISButtonCreationParam
---@field ButtonText string
---@field SpritePath UObject
---@field InInstanceID number
---@field InTypeID number
---@field bUseSameButton boolean
---@field bCheckShouldHideUsingSkill boolean
---@field WidgetName string
---@field OuterName string
---@field bUseContains boolean
---@field LogicManager string
---@field ShouldPullTrigger boolean
---@field AutoTriggerGISAction boolean
---@field bAutoDisposeButtonOnClick boolean
---@field SkillIndex number
---@field SkillClass AUTSkill
---@field SetToWaitingQueue boolean
---@field ButtonTemplate UGISButton
---@field CustomFunctionSelector FGISCCF_Selector
---@field CustomMessageForConditionCheck string
---@field PlaySFX2D boolean
---@field OffsetLocation FVector
---@field OffsetRotation FRotator
---@field bOverrideAnchorData boolean
---@field AnchorData FAnchorData
---@field bShouldOverrideZOrder boolean
---@field ZOrder number
---@field Priority number
---@field bHideWhenVehicleAround boolean
FGISButtonCreationParam = {}


---@class FOnGISButtonPressed : ULuaMulticastDelegate
FOnGISButtonPressed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GISActorInstanceID: number, TypeID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGISButtonPressed:Add(Callback, Obj) end

---触发 Lua 广播
---@param GISActorInstanceID number
---@param TypeID number
function FOnGISButtonPressed:Broadcast(GISActorInstanceID, TypeID) end


---@class FOnShouldHideChanged : ULuaMulticastDelegate
FOnShouldHideChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ShouldHide: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShouldHideChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param ShouldHide boolean
function FOnShouldHideChanged:Broadcast(ShouldHide) end


---@class UGISButton: UUAEUserWidget
---@field ButtonInstanceID number
---@field AssociatedGISActorInstances ULuaArrayHelper<number>
---@field ButtonTypeID number
---@field LoadedSkillClass AUTSkill
---@field BaseRow number
---@field bNotTriggerByInteract boolean
---@field CreationParam FGISButtonCreationParam
---@field OnGISButtonPressed FOnGISButtonPressed
---@field OnShouldHideChanged FOnShouldHideChanged
local UGISButton = {}

function UGISButton:Init() end

function UGISButton:SpriteLoaded() end

function UGISButton:SkillLoaded() end

function UGISButton:OnInitCompleted() end

function UGISButton:OnButtonClicked() end

---@return boolean
function UGISButton:ShouldHideButton() end

---@param PlayerController APlayerController
---@param GISActorInstanceID number
---@param GISActorTypeID number
function UGISButton:OnPullTrigger(PlayerController, GISActorInstanceID, GISActorTypeID) end

---@param InSlateBrush FSlateBrush
function UGISButton:SetResourceStyle(InSlateBrush) end

---@param InImage UImage
function UGISButton:SetResourceStylByImage(InImage) end

function UGISButton:OnEnterVehicleBtnShow() end

function UGISButton:OnEnterVehicleBtnHide() end


---@class UGISButtonManager: UObject
---@field PendingButtonToAdd ULuaMapHelper<UGISButton, FGISButtonCreationParam>
local UGISButtonManager = {}

---@param WorldContextObject UObject
---@param InButtonInstanceID number
---@param GISInstanceID number
---@param bSendClickEvent boolean
function UGISButtonManager:DisposeButtonByID(WorldContextObject, InButtonInstanceID, GISInstanceID, bSendClickEvent) end

---@param WorldContextObject UObject
---@param InInstanceID number
---@param InTypeID number
---@param bSendClickEvent boolean
---@param bIsTypeID boolean
function UGISButtonManager:DisposeButtonByTypeAndInstanceID(WorldContextObject, InInstanceID, InTypeID, bSendClickEvent, bIsTypeID) end

---@param WorldContextObject UObject
function UGISButtonManager:GetAllGISButtonInstances(WorldContextObject) end
