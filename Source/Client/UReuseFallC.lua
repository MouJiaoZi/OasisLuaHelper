---@meta

---@class EReuseFallOverscrollState
---@field RFOS_None number
---@field RFOS_Top number
---@field RFOS_Bottom number
EReuseFallOverscrollState = {}


---@class UReuseFallC: UUserWidget
---@field OnBeforeNewItem FOnBeforeNewItemDelegate @创建Item前回调
---@field OnAfterNewItem FOnAfterNewItemDelegate @创建Item后回调
---@field OnUpdateItem FOnUpdateItemDelegate @更新数据回调
---@field OnCreateItem FOnCreateItemDelegate @当创建Item时回调
---@field OnOverscrollState FOnOverscrollStateDelegate @过卷状态改变时回调
---@field OnTouchFinish FOnTouchFinishDelegate @Touch结束后回调
---@field ScrollBoxStyle FScrollBoxStyle
---@field ScrollBoxClipping EWidgetClipping
---@field ScrollBarStyle FScrollBarStyle
---@field ScrollBarVisibility ESlateVisibility
---@field ScrollBarThickness FVector2D
---@field bScrollEnabled boolean
---@field bPreciseScroll boolean
---@field ColumnNum number
---@field ItemHeight number
---@field ItemPaddingX number
---@field ItemPaddingY number
---@field OverscrollLength number
---@field OverscrollLooseness number
---@field ItemClass UUserWidget
---@field OtherItemClass ULuaMapHelper<string, UUserWidget>
---@field PreviewCount number
---@field ItemPoolMaxNum number
---@field TopSpaceReserved number
---@field BottomSpaceReserved number
---@field UpdateForceLayoutPrepass boolean
---@field AdjustItemSize boolean
---@field AlwaysAdjustItem boolean
---@field CurItemClass UUserWidget
local UReuseFallC = {}

---加载Item
---@param __ItemCount number
function UReuseFallC:Reload(__ItemCount) end

---刷新所有可见Item，相当于调用Item的OnUpdateItem
function UReuseFallC:Refresh() end

---单刷可见Item，相当于调用Item的OnUpdateItem
---@param __Idx number
function UReuseFallC:RefreshOne(__Idx) end

function UReuseFallC:ScrollToStart() end

function UReuseFallC:ScrollToEnd() end

---@param NewScrollOffset number
function UReuseFallC:SetScrollOffset(NewScrollOffset) end

---@return number
function UReuseFallC:GetScrollOffset() end

---@param InScrollEnabled boolean
function UReuseFallC:SetScrollEnabled(InScrollEnabled) end

---@param InScrollPrecise boolean
function UReuseFallC:SetScrollPrecise(InScrollPrecise) end

---设置当前Item类Key，在OnBeforeNewItem调用
---@param StrName string
---@return boolean
function UReuseFallC:SetCurItemClass(StrName) end

---重置为默认Item类，在OnBeforeNewItem调用
function UReuseFallC:ResetCurItemClassToDefault() end

---@param __Idx number
---@param __Size number
function UReuseFallC:AddSpecialSize(__Idx, __Size) end

---@param __Map ULuaMapHelper<number, number>
function UReuseFallC:AddSpecialSizeMap(__Map) end

---@param __Idx number
---@param bImmediate boolean
function UReuseFallC:JumpByIdx(__Idx, bImmediate) end

---给每个Item设置一个关键值，用于对象池查找优先复用，在OnUpdateItem里调用
---@param __Idx number
---@param __Key string
function UReuseFallC:SetKeyNewItem(__Idx, __Key) end

---设置期望的关键值，用于对象池查找优先复用，在OnPreUpdateItem里调用
---@param __Key string
function UReuseFallC:SetDesiredKeyNewItem(__Key) end

---@param ResultItemList ULuaArrayHelper<UUserWidget>
---@param OnlyVisible boolean
function UReuseFallC:GetAllItems(ResultItemList, OnlyVisible) end

---获取可见区域的Item索引，显示区域底部可调整
---@param InBottomOffset number
function UReuseFallC:GetVisibleItemIdx(InBottomOffset) end

function UReuseFallC:OnTouchFinishCallback() end
