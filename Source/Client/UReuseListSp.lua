---@meta

---@class EReuseListSpStyle
---@field Vertical number
---@field Horizontal number
EReuseListSpStyle = {}


---@class EReuseListSpNotFullAlignStyle
---@field Start number
---@field Middle number
---@field End number
EReuseListSpNotFullAlignStyle = {}


---@class EReuseListSpOverscrollState
---@field None number
---@field Top number
---@field Bottom number
EReuseListSpOverscrollState = {}


---@class UReuseListSp: UUserWidget
---@field OnUpdateItemParam FOnUpdateItemParamDelegate @带参数更新数据回调
---@field OnUpdateItem FOnUpdateItemDelegate @更新数据回调
---@field OnPreUpdateItem FOnPreUpdateItemDelegate @更新数据前回调
---@field OnCreateItem FOnCreateItemDelegate @当创建Item时回调
---@field OnScrollItem FOnScrollItemDelegate @当滑动Item有切换Item时回调
---@field OnReleaseItem FOnReleaseItemDelegate @当释放Item时回调，会重复通知
---@field OnOverscrollState FOnOverscrollStateDelegate @过卷状态改变时回调
---@field OnTouchFinish FOnTouchFinishDelegate @Touch结束后回调
---@field OnDoJumpFinish FOnDoJumpFinishDelegate @Touch结束后回调
---@field ScrollBoxStyle FScrollBoxStyle
---@field ScrollBoxClipping EWidgetClipping
---@field ScrollBarStyle FScrollBarStyle
---@field ScrollBarVisibility ESlateVisibility
---@field ScrollBarThickness FVector2D
---@field bScrollEnabled boolean
---@field bPreciseScroll boolean
---@field bDisableDragListScroll boolean
---@field ItemSize number
---@field ItemPadding number
---@field Style EReuseListSpStyle
---@field ItemClass UUserWidget
---@field OtherItemClass ULuaMapHelper<string, UUserWidget>
---@field PreviewCount number
---@field NotFullAlignStyle EReuseListSpNotFullAlignStyle
---@field UpdateForceLayoutPrepass boolean
---@field NotFullScrollBoxHitTestInvisible boolean
---@field AutoAdjustItemSize boolean
---@field AlwaysAdjustItem boolean
---@field ItemPoolMaxNum number
---@field JumpNumOneFrame number
---@field OverscrollLength number
---@field OverscrollLooseness number
---@field ContentGreaterView boolean
---@field IsRefreshAfterApplySkin boolean
---@field IsSupportItemSize0 boolean
---@field CurItemClass UUserWidget
local UReuseListSp = {}

---加载Item
---@param __ItemCount number
function UReuseListSp:Reload(__ItemCount) end

---刷新所有可见Item，相当于调用Item的OnUpdateItem
---@param InImm boolean
function UReuseListSp:Refresh(InImm) end

---单刷可见Item，相当于调用Item的OnUpdateItem
---@param __Idx number
---@param InImm boolean
function UReuseListSp:RefreshOne(__Idx, InImm) end

---立即调用可见Item的OnUpdateItem
---@param Idx number
function UReuseListSp:UpdateOne(Idx) end

---带参数刷新所有可见Item，一般用于增量刷新
---@param InParam string
function UReuseListSp:RefreshParam(InParam) end

---带参数单刷可见Item，一般用于增量刷新
---@param InIdx number
---@param InParam string
function UReuseListSp:RefreshOneParam(InIdx, InParam) end

function UReuseListSp:ScrollToStart() end

function UReuseListSp:ScrollToEnd() end

---置底
---@param InStop boolean
function UReuseListSp:PinEnd(InStop) end

---@param NewScrollOffset number
function UReuseListSp:SetScrollOffset(NewScrollOffset) end

---@return number
function UReuseListSp:GetScrollOffset() end

---@param InScrollEnabled boolean
function UReuseListSp:SetScrollEnabled(InScrollEnabled) end

---@param InScrollPrecise boolean
function UReuseListSp:SetScrollPrecise(InScrollPrecise) end

---@param InDragListScrollEnabled boolean
function UReuseListSp:SetDragListScrollEnabled(InDragListScrollEnabled) end

---定位到指定Item
---@param InIdx number
function UReuseListSp:JumpByIdx(InIdx) end

---@param InIdx number
function UReuseListSp:JumpByIdxImm(InIdx) end

---@param InIdx number
---@return boolean
function UReuseListSp:JumpClampImm(InIdx) end

---Item是否显示
---@param InIdx number
---@param InOffsetBegin number
---@param InOffsetEnd number
---@return boolean
function UReuseListSp:ItemIsShow(InIdx, InOffsetBegin, InOffsetEnd) end

---清理缓存，非必要不调用
function UReuseListSp:ClearCache() end

---@param __ItemClass UUserWidget
---@param __Style EReuseListSpStyle
---@param __ItemSize number
---@param __ItemPadding number
function UReuseListSp:Reset(__ItemClass, __Style, __ItemSize, __ItemPadding) end

---清理特殊尺寸
function UReuseListSp:ClearSpecialSize() end

---手动设置特殊尺寸
---@param __Idx number
---@param __Size number
function UReuseListSp:AddSpecialSize(__Idx, __Size) end

---@param clampLength number
function UReuseListSp:AddOne(clampLength) end

---设置当前Item类Key，在OnPreUpdateItem调用
---@param StrName string
function UReuseListSp:SetCurItemClass(StrName) end

---设置Item类，在OnPreUpdateItem调用
---@param ItemClass UUserWidget
function UReuseListSp:SetItemClass(ItemClass) end

---重置为默认Item类，在OnPreUpdateItem调用
function UReuseListSp:ResetCurItemClassToDefault() end

---返回所有Item指针
---@param ResultItemList ULuaArrayHelper<UUserWidget>
---@param OnlyVisible boolean
function UReuseListSp:GetAllItems(ResultItemList, OnlyVisible) end

---返回当前位置，可见Item的索引
---@param InViewAnchor number
---@return number
function UReuseListSp:GetCurScrollDisplayItems(InViewAnchor) end

---给每个Item设置一个关键值，用于对象池查找优先复用，在OnUpdateItem里调用
---@param __Idx number
---@param __Key string
function UReuseListSp:SetKeyNewItem(__Idx, __Key) end

---设置期望的关键值，用于对象池查找优先复用，在OnPreUpdateItem里调用
---@param __Key string
function UReuseListSp:SetDesiredKeyNewItem(__Key) end

function UReuseListSp:OnTouchFinishCallback() end
