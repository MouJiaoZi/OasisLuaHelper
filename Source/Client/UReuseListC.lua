---@meta

---@class EReuseListStyle
---@field Vertical number
---@field Horizontal number
---@field VerticalGrid number
---@field HorizontalGrid number
EReuseListStyle = {}


---@class EReuseListJumpStyle
---@field Middle number
---@field Begin number
---@field End number
EReuseListJumpStyle = {}


---@class EReuseListNotFullAlignStyle
---@field Start number
---@field Middle number
---@field End number
EReuseListNotFullAlignStyle = {}


---@class EReuseListGridAlign
---@field Default number
---@field Middle number
EReuseListGridAlign = {}


---@class EReuseListOverscrollState
---@field None number
---@field Top number
---@field Bottom number
EReuseListOverscrollState = {}


---@class EReuseListSortZOrder
---@field None number @无
---@field Ascend number @升序
---@field Descend number @降序
EReuseListSortZOrder = {}


---@class UReuseListC: UUserWidget
---@field OnUpdateItemParam FOnUpdateItemParamDelegate @带参数更新数据回调
---@field OnBeforeNewItem FOnBeforeNewItemDelegate @创建Item前回调
---@field OnAfterNewItem FOnAfterNewItemDelegate @创建Item后回调
---@field OnUpdateItem FOnUpdateItemDelegate @更新数据回调
---@field OnScrollItem FOnScrollItemDelegate @当滑动Item有切换Item时回调
---@field OnPreScrollItem FOnScrollItemDelegate @当滑动Item有切换Item时回调（在UpdateItem前）
---@field OnCreateItem FOnCreateItemDelegate @当创建Item时回调
---@field OnDoReload FOnDoReloadDelegate @调用DoReload时回调
---@field OnOverscrollState FOnOverscrollStateDelegate @过卷状态改变时回调
---@field OnTouchFinish FOnTouchFinishDelegate @Touch结束后回调
---@field ScrollBoxStyle FScrollBoxStyle
---@field ScrollBoxClipping EWidgetClipping
---@field ScrollBoxVisibility ESlateVisibility
---@field ScrollBarStyle FScrollBarStyle
---@field ScrollBarVisibility ESlateVisibility
---@field ScrollBarThickness FVector2D
---@field bScrollEnabled boolean
---@field bScrollDisableHandled boolean
---@field bPreciseScroll boolean
---@field ItemWidth number
---@field ItemHeight number
---@field PaddingX number
---@field PaddingY number
---@field TitleSize number
---@field TitlePadding number
---@field AutoTitleSize boolean
---@field Style EReuseListStyle
---@field ItemClass UUserWidget
---@field NotFullAlignStyle EReuseListNotFullAlignStyle
---@field GridAlign EReuseListGridAlign
---@field NotFullScrollBoxHitTestInvisible boolean
---@field UpdateForceLayoutPrepass boolean
---@field AutoSizeRuntime1 boolean
---@field NotFullScrollBoxVisibility1 ESlateVisibility
---@field OverscrollLength number
---@field OverscrollLooseness number
---@field SortZOrder EReuseListSortZOrder
---@field bDisableDragListScroll boolean
---@field ItemCacheNum number
---@field DelayUpdateTimeLimitMS number
---@field UpdateForScroll boolean
---@field AutoClipReuse boolean
local UReuseListC = {}

---加载Item
---@param __ItemCount number
function UReuseListC:Reload(__ItemCount) end

---刷新所有可见Item，相当于调用Item的OnUpdateItem
function UReuseListC:Refresh() end

---单刷可见Item，相当于调用Item的OnUpdateItem
---@param __Idx number
function UReuseListC:RefreshOne(__Idx) end

---带参数刷新所有可见Item，一般用于增量刷新，同Refresh
---@param _Param string
function UReuseListC:RefreshParam(_Param) end

---带参数单刷可见Item，一般用于增量刷新，同RefreshOne
---@param __Idx number
---@param _Param string
function UReuseListC:RefreshOneParam(__Idx, _Param) end

---滑动到顶
function UReuseListC:ScrollToStart() end

---滑动到底
function UReuseListC:ScrollToEnd() end

---滑动指定位置
---@param NewScrollOffset number
function UReuseListC:SetScrollOffset(NewScrollOffset) end

---滑动指定位置，偏移值保护
---@param NewScrollOffset number
function UReuseListC:SetScrollOffsetClamp(NewScrollOffset) end

---@return number
function UReuseListC:GetScrollOffset() end

---是否滑动
---@param InScrollEnabled boolean
function UReuseListC:SetScrollEnabled(InScrollEnabled) end

---禁止滑动时是否Handle
---@param InScrollDisableHandled boolean
function UReuseListC:SetScrollDisableHandled(InScrollDisableHandled) end

---是否精准滑动
---@param InScrollPrecise boolean
function UReuseListC:SetScrollPrecise(InScrollPrecise) end

---@param InDragListScrollEnabled boolean
function UReuseListC:SetDragListScrollEnabled(InDragListScrollEnabled) end

---定位到指定Item 下一帧执行
---@param __Idx number
---@param __Style EReuseListJumpStyle
function UReuseListC:JumpByIdxStyle(__Idx, __Style) end

---@param sz number
function UReuseListC:SetTitleSize(sz) end

---@param As boolean
function UReuseListC:SetTitleSlotAutoSize(As) end

---重设参数，以下参数在编辑器下都设置好了一般无需调用
---@param __ItemClass UUserWidget
---@param __Style EReuseListStyle
---@param __ItemWidth number
---@param __ItemHeight number
---@param __PaddingX number
---@param __PaddingY number
function UReuseListC:Reset(__ItemClass, __Style, __ItemWidth, __ItemHeight, __PaddingX, __PaddingY) end

---修改当前ItemClass，并调用Clear
---@param InItemClass UUserWidget
function UReuseListC:SetItemClass(InItemClass) end

---@param ResultItemList ULuaArrayHelper<UUserWidget>
---@param OnlyVisible boolean
function UReuseListC:GetAllItems(ResultItemList, OnlyVisible) end

---由于Item复用不可预知，该函数希望，干预NewItem尽量使用指定的 给每个Item打个标记，在OnUpdateItem调用
---@param __Idx number
---@param __Key string
function UReuseListC:SetKeyNewItem(__Idx, __Key) end

---由于Item复用不可预知，该函数希望，干预NewItem尽量使用指定的 设置期望的Item标记，在OnBeforeNewItem调用
---@param __Key string
function UReuseListC:SetDesiredKeyNewItem(__Key) end

---@param maxSize FVector2D
function UReuseListC:ResetMaxSize(maxSize) end

function UReuseListC:ClearMaxSize() end

---返回当前位置，可见Item的索引
---@param InViewAnchor number
function UReuseListC:GetCurScrollDisplayItems(InViewAnchor) end

---获取内部Item的Class
function UReuseListC:GetItemClass() end

function UReuseListC:TestMem() end

---@param _JumpIdx number
---@param _JumpStyle EReuseListJumpStyle
---@param _IncludePadding boolean
---@param _NotFixOffset boolean
---@return number
function UReuseListC:GetJumpScrollOffset(_JumpIdx, _JumpStyle, _IncludePadding, _NotFixOffset) end

function UReuseListC:OnTouchFinishCallback() end
