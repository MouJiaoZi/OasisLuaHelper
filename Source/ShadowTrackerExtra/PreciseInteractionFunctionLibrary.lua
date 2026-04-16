---@meta

---@class UPreciseInteractionFunctionLibrary: UBlueprintFunctionLibrary
local UPreciseInteractionFunctionLibrary = {}

---@param SelfWrapper FInteractBehaviorWrapper
---@param MergedWrapper FInteractBehaviorWrapper
function UPreciseInteractionFunctionLibrary:MergeInteractBehaviorWrapper(SelfWrapper, MergedWrapper) end

---@param PlayerController APlayerController
---@param Interactor UObject
---@param TargetObject UObject
---@param AreaIndicator UObject
---@param DataOrigin EInteractionDataOrigin
function UPreciseInteractionFunctionLibrary:EnterPreciseInteract(PlayerController, Interactor, TargetObject, AreaIndicator, DataOrigin) end

---@param PlayerController APlayerController
---@param Interactor UObject
---@param TargetObject UObject
---@param AreaIndicator UObject
---@param DataOrigin EInteractionDataOrigin
function UPreciseInteractionFunctionLibrary:LeavePreciseInteract(PlayerController, Interactor, TargetObject, AreaIndicator, DataOrigin) end

---进入范围交互
---@param PlayerController APlayerController
---@param Interactor UObject
---@param TargetObject UObject
---@param AreaIndicator UObject
---@param DataOrigin EInteractionDataOrigin
function UPreciseInteractionFunctionLibrary:EnterScopeInteract(PlayerController, Interactor, TargetObject, AreaIndicator, DataOrigin) end

---退出范围交互 Tips: 当TargetObject和AreaIndicator都为空时，会清空交互行为拥有者记录在范围交互组件中的所有交互行为记录；反之则会检索交互行为记录的数组中是否有{Interactor, TargetObject, AreaIndicator}元素，有则删除指定元素。
---@param PlayerController APlayerController
---@param Interactor UObject
---@param TargetObject UObject
---@param AreaIndicator UObject
---@param DataOrigin EInteractionDataOrigin
function UPreciseInteractionFunctionLibrary:LeaveScopeInteract(PlayerController, Interactor, TargetObject, AreaIndicator, DataOrigin) end

---刷新交互行为拥有者保存在范围交互组件内的信息 Tips: 假如当前交互行为拥有者在范围交互组件中的存储内容是 {Interactor, {TargetA, TargetB}, {AreaA, AreaB}} 此时调用当前函数参数为{Interactor, {TargetC}, {AreaC}} 则会将范围交互组件中保存的{TargetA, TargetB}以及{AreaA, AreaB}删除
---@param PlayerController APlayerController
---@param Interactor UObject
---@param TargetObjects ULuaArrayHelper<UObject>
---@param AreaIndicators ULuaArrayHelper<UObject>
---@param DataOrigin EInteractionDataOrigin
function UPreciseInteractionFunctionLibrary:UpdateScopeInteractMultiTarget(PlayerController, Interactor, TargetObjects, AreaIndicators, DataOrigin) end

---当前是否为范围交互模式
---@param WorldContextObject UObject
---@return boolean
function UPreciseInteractionFunctionLibrary:IsScopeInteractionMode(WorldContextObject) end

---在范围交互模式下显示状态UI
---@param WorldContextObject UObject
---@param UIName string
function UPreciseInteractionFunctionLibrary:ShowStateUI(WorldContextObject, UIName) end

---在范围交互模式下隐藏状态UI
---@param WorldContextObject UObject
---@param UIName string
function UPreciseInteractionFunctionLibrary:HideStateUI(WorldContextObject, UIName) end

---当前游戏模式是否在范围交互黑名单中（UGCMobile 或 UGCPC），黑名单模式下范围交互全部功能应禁用
---@param WorldContextObject UObject
---@return boolean
function UPreciseInteractionFunctionLibrary:ShouldDisablePreciseInteraction(WorldContextObject) end
