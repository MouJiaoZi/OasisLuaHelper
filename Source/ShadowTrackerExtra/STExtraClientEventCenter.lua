---@meta

---@class EPlayerStateMsgType
---@field EPMT_HealthChanged number
---@field EPMT_SignalChanged number
EPlayerStateMsgType = {}


---@class EPlayerControllerMsgType
---@field EPMT_MAX number
EPlayerControllerMsgType = {}


---@class EGameMsgType
---@field EGMT_GameModeStateChanged number
EGameMsgType = {}


---@class EDragBackpackItemMsgType
---@field EDBIMT_DragBegin number @开始拖动
---@field EDBIMT_DragDrop number @松手(在有效的背包范围内)
---@field EDBIMT_DragCancelled number @松手(在背包范围外(空白处))
EDragBackpackItemMsgType = {}


---@class EBackpackItemOperateMsgType
---@field EBIMT_DropItem number @丢弃物品
EBackpackItemOperateMsgType = {}


---@class FNetEventUID
---@field PropName string
---@field PropOwner UObject
FNetEventUID = {}


---@class FNetEventListener
---@field CallbackNames ULuaSetHelper<string>
FNetEventListener = {}


---@class FNetEventParam
---@field PropListenerMap ULuaMapHelper<UObject, FNetEventListener>
FNetEventParam = {}


---@class FCallbackParam
FCallbackParam = {}


---@class FEventPlayerStateChanged : ULuaMulticastDelegate
FEventPlayerStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PS: ASTExtraPlayerState, MsgType: EPlayerStateMsgType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventPlayerStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param PS ASTExtraPlayerState
---@param MsgType EPlayerStateMsgType
function FEventPlayerStateChanged:Broadcast(PS, MsgType) end


---@class FEventPlayerControllerChanged : ULuaMulticastDelegate
FEventPlayerControllerChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController, MsgType: EPlayerControllerMsgType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventPlayerControllerChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
---@param MsgType EPlayerControllerMsgType
function FEventPlayerControllerChanged:Broadcast(PC, MsgType) end


---@class FEventGameStateChanged : ULuaMulticastDelegate
FEventGameStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GS: ASTExtraGameStateBase, MsgType: EGameMsgType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventGameStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param GS ASTExtraGameStateBase
---@param MsgType EGameMsgType
function FEventGameStateChanged:Broadcast(GS, MsgType) end


---@class FEventCenterEventNoParam : ULuaSingleDelegate
FEventCenterEventNoParam = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventNoParam:Bind(Callback, Obj) end

---执行委托
function FEventCenterEventNoParam:Execute() end


---@class FEventCenterEventOneParamBool : ULuaMulticastDelegate
FEventCenterEventOneParamBool = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BoolParam: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOneParamBool:Add(Callback, Obj) end

---触发 Lua 广播
---@param BoolParam boolean
function FEventCenterEventOneParamBool:Broadcast(BoolParam) end


---@class FEventCenterEventOneParamInt : ULuaMulticastDelegate
FEventCenterEventOneParamInt = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IntParam: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOneParamInt:Add(Callback, Obj) end

---触发 Lua 广播
---@param IntParam number
function FEventCenterEventOneParamInt:Broadcast(IntParam) end


---@class FEventCenterEventOneParamFloat : ULuaMulticastDelegate
FEventCenterEventOneParamFloat = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FloatParam: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOneParamFloat:Add(Callback, Obj) end

---触发 Lua 广播
---@param FloatParam number
function FEventCenterEventOneParamFloat:Broadcast(FloatParam) end


---@class FEventCenterEventOneParamDefineID : ULuaMulticastDelegate
FEventCenterEventOneParamDefineID = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOneParamDefineID:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FEventCenterEventOneParamDefineID:Broadcast(DefineID) end


---@class FEventCenterEventOneParamPlayerState : ULuaMulticastDelegate
FEventCenterEventOneParamPlayerState = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerStateParam: ASTExtraPlayerState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOneParamPlayerState:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerStateParam ASTExtraPlayerState
function FEventCenterEventOneParamPlayerState:Broadcast(PlayerStateParam) end


---@class FEventCenterEventOneParamActor : ULuaMulticastDelegate
FEventCenterEventOneParamActor = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Actor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOneParamActor:Add(Callback, Obj) end

---触发 Lua 广播
---@param Actor AActor
function FEventCenterEventOneParamActor:Broadcast(Actor) end


---@class FEventCenterEventPlayerStateInt : ULuaMulticastDelegate
FEventCenterEventPlayerStateInt = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: ExtraPlayerLiveState, TeammateIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventPlayerStateInt:Add(Callback, Obj) end

---触发 Lua 广播
---@param State ExtraPlayerLiveState
---@param TeammateIndex number
function FEventCenterEventPlayerStateInt:Broadcast(State, TeammateIndex) end


---@class FEventCenterEventIntIntBool : ULuaMulticastDelegate
FEventCenterEventIntIntBool = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IntParam1: number, IntParam2: number, BoolParam: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventIntIntBool:Add(Callback, Obj) end

---触发 Lua 广播
---@param IntParam1 number
---@param IntParam2 number
---@param BoolParam boolean
function FEventCenterEventIntIntBool:Broadcast(IntParam1, IntParam2, BoolParam) end


---@class FEventCenterEventIntFloatBool : ULuaMulticastDelegate
FEventCenterEventIntFloatBool = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IntParam1: number, IntParam2: number, BoolParam: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventIntFloatBool:Add(Callback, Obj) end

---触发 Lua 广播
---@param IntParam1 number
---@param IntParam2 number
---@param BoolParam boolean
function FEventCenterEventIntFloatBool:Broadcast(IntParam1, IntParam2, BoolParam) end


---@class FEventCenterEventPlayerStateBool : ULuaMulticastDelegate
FEventCenterEventPlayerStateBool = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PS: ASTExtraPlayerState, ParamBool: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventPlayerStateBool:Add(Callback, Obj) end

---触发 Lua 广播
---@param PS ASTExtraPlayerState
---@param ParamBool boolean
function FEventCenterEventPlayerStateBool:Broadcast(PS, ParamBool) end


---@class FEventCenterEventOnCharacterCanRescueChange : ULuaMulticastDelegate
FEventCenterEventOnCharacterCanRescueChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerPawn: ACharacter, RescuedPawn: ACharacter, IsTurnInto: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOnCharacterCanRescueChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerPawn ACharacter
---@param RescuedPawn ACharacter
---@param IsTurnInto boolean
function FEventCenterEventOnCharacterCanRescueChange:Broadcast(OwnerPawn, RescuedPawn, IsTurnInto) end


---@class FEventCenterEventCircleInfo : ULuaMulticastDelegate
FEventCenterEventCircleInfo = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IntParam: number, floatParam: number, status: ECircleStatus) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventCircleInfo:Add(Callback, Obj) end

---触发 Lua 广播
---@param IntParam number
---@param floatParam number
---@param status ECircleStatus
function FEventCenterEventCircleInfo:Broadcast(IntParam, floatParam, status) end


---@class FEventCenterOnDragBackpackItem : ULuaMulticastDelegate
FEventCenterOnDragBackpackItem = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BattleItemData: FBattleItemData, DragMsgType: EDragBackpackItemMsgType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnDragBackpackItem:Add(Callback, Obj) end

---触发 Lua 广播
---@param BattleItemData FBattleItemData
---@param DragMsgType EDragBackpackItemMsgType
function FEventCenterOnDragBackpackItem:Broadcast(BattleItemData, DragMsgType) end


---@class FEventCenterOnOperateBackpackItem : ULuaMulticastDelegate
FEventCenterOnOperateBackpackItem = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BattleItemData: FBattleItemData, OperateMsgType: EBackpackItemOperateMsgType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnOperateBackpackItem:Add(Callback, Obj) end

---触发 Lua 广播
---@param BattleItemData FBattleItemData
---@param OperateMsgType EBackpackItemOperateMsgType
function FEventCenterOnOperateBackpackItem:Broadcast(BattleItemData, OperateMsgType) end


---@class FEventCenterShowUIDelegate : ULuaMulticastDelegate
FEventCenterShowUIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bShow: boolean, UIName: string, OwnerActor: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterShowUIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bShow boolean
---@param UIName string
---@param OwnerActor UObject
function FEventCenterShowUIDelegate:Broadcast(bShow, UIName, OwnerActor) end


---@class FEventCenterShowOrHideWidgetDelegate : ULuaMulticastDelegate
FEventCenterShowOrHideWidgetDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WidgetParam: UWidget, BoolParam: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterShowOrHideWidgetDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WidgetParam UWidget
---@param BoolParam boolean
function FEventCenterShowOrHideWidgetDelegate:Broadcast(WidgetParam, BoolParam) end


---@class FCustomizeWidgetTouchDownDelegate : ULuaMulticastDelegate
FCustomizeWidgetTouchDownDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WidgetType: number, CustomizeWidget: UWidget, ScreenPosition: FVector2D) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomizeWidgetTouchDownDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WidgetType number
---@param CustomizeWidget UWidget
---@param ScreenPosition FVector2D
function FCustomizeWidgetTouchDownDelegate:Broadcast(WidgetType, CustomizeWidget, ScreenPosition) end


---@class FPCBottomMainBorderMouseEventDelegate : ULuaMulticastDelegate
FPCBottomMainBorderMouseEventDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Geometry: FGeometry, TouchLocation: FVector2D, MouseButtonIndex: number, bMouseButtonDown: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPCBottomMainBorderMouseEventDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Geometry FGeometry
---@param TouchLocation FVector2D
---@param MouseButtonIndex number
---@param bMouseButtonDown boolean
function FPCBottomMainBorderMouseEventDelegate:Broadcast(Geometry, TouchLocation, MouseButtonIndex, bMouseButtonDown) end


---@class FEventCenterShowCongratulationsGetItemUIDelegate : ULuaMulticastDelegate
FEventCenterShowCongratulationsGetItemUIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemInfoList: ULuaArrayHelper<FBatttleItemInfo>, AdditionInfo: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterShowCongratulationsGetItemUIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemInfoList ULuaArrayHelper<FBatttleItemInfo>
---@param AdditionInfo string
function FEventCenterShowCongratulationsGetItemUIDelegate:Broadcast(ItemInfoList, AdditionInfo) end


---@class FOnDynamicUILoaded : ULuaMulticastDelegate
FOnDynamicUILoaded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UIClassName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDynamicUILoaded:Add(Callback, Obj) end

---触发 Lua 广播
---@param UIClassName string
function FOnDynamicUILoaded:Broadcast(UIClassName) end


---@class FEventCenterCharacterPostNetinit : ULuaMulticastDelegate
FEventCenterCharacterPostNetinit = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterCharacterPostNetinit:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ASTExtraBaseCharacter
function FEventCenterCharacterPostNetinit:Broadcast(Param1) end


---@class FOnClientChangeWeaponInspectDelegate : ULuaMulticastDelegate
FOnClientChangeWeaponInspectDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraWeapon, bEnableInspect: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientChangeWeaponInspectDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraWeapon
---@param bEnableInspect boolean
function FOnClientChangeWeaponInspectDelegate:Broadcast(Weapon, bEnableInspect) end


---@class FOnEntireMapAddPlayerIconDelegate : ULuaMulticastDelegate
FOnEntireMapAddPlayerIconDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerIcon: UUAEUserWidget, PlayerIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEntireMapAddPlayerIconDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerIcon UUAEUserWidget
---@param PlayerIndex number
function FOnEntireMapAddPlayerIconDelegate:Broadcast(PlayerIcon, PlayerIndex) end


---@class FOnActionMappingChanged : ULuaMulticastDelegate
FOnActionMappingChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ActionNames: ULuaArrayHelper<string>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActionMappingChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param ActionNames ULuaArrayHelper<string>
function FOnActionMappingChanged:Broadcast(ActionNames) end


---@class FAvatarSourceDownloadFinished : ULuaMulticastDelegate
FAvatarSourceDownloadFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AvatarComponent: UAvatarComponent, AvatarDownloadParamForCallback: FAvatarDownloadParamForCallback) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAvatarSourceDownloadFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param AvatarComponent UAvatarComponent
---@param AvatarDownloadParamForCallback FAvatarDownloadParamForCallback
function FAvatarSourceDownloadFinished:Broadcast(AvatarComponent, AvatarDownloadParamForCallback) end


---@class FEventCenterOnUAEUserWidgetCreated : ULuaMulticastDelegate
FEventCenterOnUAEUserWidgetCreated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Widget: UUAEUserWidget) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnUAEUserWidgetCreated:Add(Callback, Obj) end

---触发 Lua 广播
---@param Widget UUAEUserWidget
function FEventCenterOnUAEUserWidgetCreated:Broadcast(Widget) end


---@class FEventCenterVehicleSeatDelegate : ULuaMulticastDelegate
FEventCenterVehicleSeatDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, EnterSeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterVehicleSeatDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param EnterSeatType ESTExtraVehicleSeatType
function FEventCenterVehicleSeatDelegate:Broadcast(Vehicle, EnterSeatType) end


---@class FClickButtonWidgetAddOrRemove : ULuaMulticastDelegate
FClickButtonWidgetAddOrRemove = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ClickButtonWidget: UUAEUserWidget, IsAdd: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClickButtonWidgetAddOrRemove:Add(Callback, Obj) end

---触发 Lua 广播
---@param ClickButtonWidget UUAEUserWidget
---@param IsAdd boolean
function FClickButtonWidgetAddOrRemove:Broadcast(ClickButtonWidget, IsAdd) end


---@class FGISButtonWidgetAddOrRemove : ULuaMulticastDelegate
FGISButtonWidgetAddOrRemove = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GISButtonWidget: UUAEUserWidget, IsAdd: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGISButtonWidgetAddOrRemove:Add(Callback, Obj) end

---触发 Lua 广播
---@param GISButtonWidget UUAEUserWidget
---@param IsAdd boolean
function FGISButtonWidgetAddOrRemove:Broadcast(GISButtonWidget, IsAdd) end


---@class FEventCenterOnSkillUILoadFinished : ULuaMulticastDelegate
FEventCenterOnSkillUILoadFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Widget: UUAEUserWidget, SkillUID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnSkillUILoadFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param Widget UUAEUserWidget
---@param SkillUID number
function FEventCenterOnSkillUILoadFinished:Broadcast(Widget, SkillUID) end


---@class FEventCenterOnSkillUIUnLoad : ULuaMulticastDelegate
FEventCenterOnSkillUIUnLoad = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Widget: UUAEUserWidget, SkillUID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnSkillUIUnLoad:Add(Callback, Obj) end

---触发 Lua 广播
---@param Widget UUAEUserWidget
---@param SkillUID number
function FEventCenterOnSkillUIUnLoad:Broadcast(Widget, SkillUID) end


---@class FEventCenterOnPlayRingEffects : ULuaMulticastDelegate
FEventCenterOnPlayRingEffects = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemID: number, bPlay: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnPlayRingEffects:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemID number
---@param bPlay boolean
function FEventCenterOnPlayRingEffects:Broadcast(ItemID, bPlay) end


---@class FEventCenterOnTeamAssemableDisplayInfoListChange : ULuaSingleDelegate
FEventCenterOnTeamAssemableDisplayInfoListChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnTeamAssemableDisplayInfoListChange:Bind(Callback, Obj) end

---执行委托
function FEventCenterOnTeamAssemableDisplayInfoListChange:Execute() end


---@class FEventCenterOnEscapeTeamAssemableFinished : ULuaSingleDelegate
FEventCenterOnEscapeTeamAssemableFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnEscapeTeamAssemableFinished:Bind(Callback, Obj) end

---执行委托
function FEventCenterOnEscapeTeamAssemableFinished:Execute() end


---@class FEventCenterOnHideLoadingUI : ULuaSingleDelegate
FEventCenterOnHideLoadingUI = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterOnHideLoadingUI:Bind(Callback, Obj) end

---执行委托
function FEventCenterOnHideLoadingUI:Execute() end


---@class FOnSwitchInteractionMode : ULuaMulticastDelegate
FOnSwitchInteractionMode = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewInteractionMode: EPCInteractionMode) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSwitchInteractionMode:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewInteractionMode EPCInteractionMode
function FOnSwitchInteractionMode:Broadcast(NewInteractionMode) end


---@class FEventCenterEventOnPlayerControllerPlayerUIDChange : ULuaMulticastDelegate
FEventCenterEventOnPlayerControllerPlayerUIDChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerUID: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventOnPlayerControllerPlayerUIDChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerUID string
function FEventCenterEventOnPlayerControllerPlayerUIDChange:Broadcast(PlayerUID) end


---@class FNotifyHintUICreate : ULuaMulticastDelegate
FNotifyHintUICreate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Widget: UUAEUserWidget) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyHintUICreate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Widget UUAEUserWidget
function FNotifyHintUICreate:Broadcast(Widget) end


---@class FEventCenterEventAvatarMaterialEffectChange : ULuaMulticastDelegate
FEventCenterEventAvatarMaterialEffectChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bLerp: boolean, bLoop: boolean, CurrentValue: number, CurrentLinearColor: FLinearColor, Alpha: number, AvatarMaterialNamePair: FAvatarMaterialNamePair) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterEventAvatarMaterialEffectChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bLerp boolean
---@param bLoop boolean
---@param CurrentValue number
---@param CurrentLinearColor FLinearColor
---@param Alpha number
---@param AvatarMaterialNamePair FAvatarMaterialNamePair
function FEventCenterEventAvatarMaterialEffectChange:Broadcast(bLerp, bLoop, CurrentValue, CurrentLinearColor, Alpha, AvatarMaterialNamePair) end


---Broadcast AvatarComponent Destroy
---@class FEventAvatarDestroy : ULuaMulticastDelegate
FEventAvatarDestroy = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AvatarComponent: UAvatarComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventAvatarDestroy:Add(Callback, Obj) end

---触发 Lua 广播
---@param AvatarComponent UAvatarComponent
function FEventAvatarDestroy:Broadcast(AvatarComponent) end


---@class FEventCenterDyingWeaponActive : ULuaMulticastDelegate
FEventCenterDyingWeaponActive = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bDyingWeaponActive: boolean, InWeapon: ASTExtraWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterDyingWeaponActive:Add(Callback, Obj) end

---触发 Lua 广播
---@param bDyingWeaponActive boolean
---@param InWeapon ASTExtraWeapon
function FEventCenterDyingWeaponActive:Broadcast(bDyingWeaponActive, InWeapon) end


---@class FEventCenterGalaxyFaceRenderFinished : ULuaMulticastDelegate
FEventCenterGalaxyFaceRenderFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CharacterAvatarComponent: UCharacterAvatarComponent, GalaxyFaceUtils: UGalaxyFaceUtils) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEventCenterGalaxyFaceRenderFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param CharacterAvatarComponent UCharacterAvatarComponent
---@param GalaxyFaceUtils UGalaxyFaceUtils
function FEventCenterGalaxyFaceRenderFinished:Broadcast(CharacterAvatarComponent, GalaxyFaceUtils) end


---@class USTExtraClientEventCenter: UObject
---@field EventListenerMap ULuaMapHelper<FNetEventUID, FNetEventParam>
---@field OnPlayerStateChangeEvent FEventPlayerStateChanged
---@field ChatComponent_OnCongregationFlag FEventCenterEventNoParam
---@field ChatComponent_UpdateQuickTextIDList FEventCenterEventNoParam
---@field Controller_ResetUIByPlayerControllerState FEventCenterEventNoParam
---@field Controller_MemberVoice FEventCenterEventIntIntBool
---@field OnPreCameraFreeMovingStatusChanged FEventCenterEventOneParamBool
---@field OnCameraFreeMovingStatusChanged FEventCenterEventOneParamBool
---@field OnHomePhotoStatusChanged FEventCenterEventOneParamBool
---@field PlayerState_RefreshRobotIcon FEventCenterEventNoParam
---@field PlayerState_UseVoiceChange FEventCenterEventOneParamPlayerState
---@field PlayerState_TeammatesAutoFollowing FEventCenterEventOneParamPlayerState
---@field PlayerState_IsLostConnection FEventCenterEventOneParamPlayerState
---@field PlayerState_IsEvacuated FEventCenterEventOneParamPlayerState
---@field PlayerState_SyncToClientBuffNameList FEventCenterEventOneParamPlayerState
---@field PlayerState_Imprintinfo FEventCenterEventOneParamPlayerState
---@field PlayerState_SetCharacter FEventCenterEventOneParamPlayerState
---@field PlayerState_CanFollowTarget FEventCenterEventNoParam
---@field PlayerState_HasRevivalSign FEventCenterEventNoParam
---@field PlayerState_LiveStateChange FEventCenterEventPlayerStateInt
---@field PlayerState_WeaponVoice FEventCenterEventPlayerStateBool
---@field PlayerState_RescueingInfo FEventCenterEventOneParamPlayerState
---@field OnCanRescueOtherChange FEventCenterEventOnCharacterCanRescueChange
---@field PlayerCharacter_DisplayCharStateWhenOperateUAV FEventCenterEventNoParam
---@field PlayerCharacter_UpdateTeamPFList FEventCenterEventNoParam
---@field PlayerCharacter_RemindTeammateShoot FEventCenterEventIntFloatBool
---@field SpeakerPanel_OnBtnForbidClicked FEventCenterEventNoParam
---@field Setting_SaveDataPostEvent FEventCenterEventNoParam
---@field AvatarDisplayDirector_SwitchUIBattleToStartDisplay FEventCenterEventNoParam
---@field AvatarDisplayDirector_SwitchUIStartDisplayToBattle FEventCenterEventNoParam
---@field AvatarDisplayDirector_SwitchUIBattleToEndDisplay FEventCenterEventNoParam
---@field AvatarDisplayDirector_SwitchUIEndDisplayToResult FEventCenterEventNoParam
---@field GameState_EnableSignalSystem FEventCenterEventNoParam
---@field OnMapMarkParticleStateChanged FEventCenterEventNoParam
---@field GameState_TeamPanelUpdateMaxKiller FEventCenterEventNoParam
---@field Replay_AssumeNameDataChanged FEventCenterEventNoParam
---@field Replay_ReInit FEventCenterEventOneParamInt
---@field OnFactionCampPlayerDataListChanged FEventCenterEventOneParamActor
---@field OnFactionCampPlayerDataChanged FEventCenterEventOneParamActor
---@field OnFactionCampCaptainDataChanged FEventCenterEventOneParamActor
---@field OnSameCampCaptainPlayerDataListChanged FEventCenterEventOneParamActor
---@field OnAllCampCaptainPlayerUIDListChanged FEventCenterEventOneParamActor
---@field OnFactionCampPlayerLocChanged FEventCenterEventOneParamActor
---@field OnFactionExposedCaptainsChanged FEventCenterEventOneParamActor
---@field OnOtherCampCaptainLocChanged FEventCenterEventOneParamActor
---@field OnSoonExposeOtherCaptains FEventCenterEventOneParamFloat
---@field OnExposingOtherCaptains FEventCenterEventOneParamFloat
---@field OnIngameCommonShareClosed FEventCenterEventNoParam
---@field OnCampActorReady FEventCenterEventOneParamActor @notify camp actor ready. feishen, 20220114
---@field OnShowUIDelegate FEventCenterShowUIDelegate
---@field OnShowUIDelegateBySync FEventCenterShowUIDelegate
---@field OnShowOrHideWidgetDelegate FEventCenterShowOrHideWidgetDelegate
---@field OnCustomizeWidgetTouchDownDelegate FCustomizeWidgetTouchDownDelegate
---@field OnPCBottomMainBorderMouseEventDelegate FPCBottomMainBorderMouseEventDelegate
---@field OnShowCongratulationsGetItemUIDelegate FEventCenterShowCongratulationsGetItemUIDelegate
---@field OnPostCircleInfoChanged FEventCenterEventCircleInfo
---@field OnObjectPosUIMgrCreated FEventCenterEventNoParam
---@field OnDragBackpackItem FEventCenterOnDragBackpackItem
---@field OnOperateBackpackItem FEventCenterOnOperateBackpackItem
---@field OnDynamicUILoaded FOnDynamicUILoaded
---@field OnGenderPrivacy FEventCenterEventNoParam
---@field OnClientChangeWeaponInspectDelegate FOnClientChangeWeaponInspectDelegate
---@field OnEntireMapAddPlayerIconDelegate FOnEntireMapAddPlayerIconDelegate
---@field OnActionMappingChanged FOnActionMappingChanged
---@field OnCurrUseItemChanged FEventCenterEventOneParamDefineID
---@field OnAvatarSourceDownloadFinished FAvatarSourceDownloadFinished
---@field UAEUserWidgetCreated FEventCenterOnUAEUserWidgetCreated
---@field OnPlayerEnterVehicle FEventCenterVehicleSeatDelegate
---@field OnPlayerLeaveVehicle FEventCenterVehicleSeatDelegate
---@field OnPlayerChangeVehicleSeat FEventCenterVehicleSeatDelegate
---@field OnClickButtonWidgetAddOrRemove FClickButtonWidgetAddOrRemove
---@field OnGISButtonWidgetAddOrRemove FGISButtonWidgetAddOrRemove
---@field OnSkillUILoadFinished FEventCenterOnSkillUILoadFinished
---@field OnSkillUIUnLoad FEventCenterOnSkillUIUnLoad
---@field OnPlayRingEffects FEventCenterOnPlayRingEffects
---@field OnTeamAssemableDisplayInfoListChange FEventCenterOnTeamAssemableDisplayInfoListChange
---@field OnEscapeTeamAssemableFinished FEventCenterOnEscapeTeamAssemableFinished
---@field OnSwitchPreciseInteraction FOnSwitchInteractionMode
---@field OnEventCenterOnHideLoadingUI FEventCenterOnHideLoadingUI
---@field OnEventCenterEventOnPlayerControllerPlayerUIDChange FEventCenterEventOnPlayerControllerPlayerUIDChange
---@field NotifyHintUICreate FNotifyHintUICreate
---@field OnAvatarMaterialEffectChange FEventCenterEventAvatarMaterialEffectChange
---@field OnRegisterSceneDisplayDirector FEventCenterEventOneParamActor
---@field OnAvatarDestroyDelegate FEventAvatarDestroy
---@field OnEventCenterDyingWeaponActive FEventCenterDyingWeaponActive
---@field OnGalaxyFaceRenderFinished FEventCenterGalaxyFaceRenderFinished
---@field OnReplaceSuitSkin FEventCenterEventOneParamActor
---@field OnLargeAircraft FEventCenterEventNoParam
local USTExtraClientEventCenter = {}

---@param PropOwner UObject
---@param PropName string
---@param Listener UObject
---@param CallBackName string
function USTExtraClientEventCenter:RegisterNetPropChangeEvent(PropOwner, PropName, Listener, CallBackName) end

---@param PropOwner UObject
---@param PropName string
---@param Listener UObject
---@param CallBackName string
function USTExtraClientEventCenter:UnRegisterNetPropChangeEvent(PropOwner, PropName, Listener, CallBackName) end

---@param PropOwner UObject
---@param PropName string
---@param Listener UObject
function USTExtraClientEventCenter:UnRegisterAllNetPropChangeEvent(PropOwner, PropName, Listener) end

---@param PropOwner UObject
---@param PropName string
function USTExtraClientEventCenter:PostNetPropChangeEvent(PropOwner, PropName) end

function USTExtraClientEventCenter:ClearEventCenterData() end

function USTExtraClientEventCenter:PostIngameShareUIClosedEvent() end

---@param invertedIndex number
---@param time number
---@param status ECircleStatus
function USTExtraClientEventCenter:PostCircleInfoChanged(invertedIndex, time, status) end

---@param bShow boolean
---@param UIName string
---@param OwnerActor UObject
function USTExtraClientEventCenter:ShowUIByName(bShow, UIName, OwnerActor) end
