---@meta

---@class FTReuseCustomItemPool
---@field customItemList ULuaArrayHelper<UUserWidget>
---@field customLogicList ULuaArrayHelper<UUserWidget>
FTReuseCustomItemPool = {}


---@class FTReuseFakeItemPool
---@field fakeItemList ULuaArrayHelper<UBTReuseItem>
FTReuseFakeItemPool = {}


---@class FItemClearAllaaDelegate : ULuaSingleDelegate
FItemClearAllaaDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemClearAllaaDelegate:Bind(Callback, Obj) end

---执行委托
function FItemClearAllaaDelegate:Execute() end


---@class UBTReuseListNew: UUAEUserWidget
---@field itemUpdateDelegate FUpdateBTReuseNewDelegate
---@field customItemPool FTReuseCustomItemPool
---@field fakeItemPool FTReuseFakeItemPool
---@field ActivedFakeItemList ULuaArrayHelper<UBTReuseItem>
---@field customItemClass UUserWidget
---@field customLogicClass UUserWidget
---@field maxCustomItemNum number
---@field maxCustomLogicNum number
---@field createCustomItemSpan number
---@field defaultCustomItemSize FVector2D
local UBTReuseListNew = {}

---@param LogicPanel UPanelWidget
---@param LogicID number
---@param LogicItemNum number
function UBTReuseListNew:ModifyFakeItemToPanel(LogicPanel, LogicID, LogicItemNum) end

---@param LogicCount number
function UBTReuseListNew:ModifyLogicPanel(LogicCount) end

---@param ScrollBox UCustomScrollBox
function UBTReuseListNew:BindScrollEvent(ScrollBox) end

---@param force boolean
function UBTReuseListNew:RefreshList(force) end

---@param offset number
function UBTReuseListNew:RefreshListByOffset(offset) end

function UBTReuseListNew:RefreshListByMoveEnd() end

function UBTReuseListNew:ScrollEnd() end

---@param ScrollBox UCustomScrollBox
function UBTReuseListNew:DoScrollEnd(ScrollBox) end

function UBTReuseListNew:CreateLogicItemInner() end

function UBTReuseListNew:CreateLogicInner() end
