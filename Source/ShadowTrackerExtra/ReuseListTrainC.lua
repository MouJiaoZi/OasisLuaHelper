---@meta

---@class EReuseListTrainStyle
---@field Vertical number
---@field Horizontal number
---@field VerticalGrid number
---@field HorizontalGrid number
EReuseListTrainStyle = {}


---@class EReuseListTrainJumpStyle
---@field Middle number
---@field Begin number
---@field End number
EReuseListTrainJumpStyle = {}


---@class EReuseListTrainNotFullAlignStyle
---@field Start number
---@field Middle number
---@field End number
EReuseListTrainNotFullAlignStyle = {}


---@class EReuseListTrainGridAlign
---@field Default number
---@field Middle number
EReuseListTrainGridAlign = {}


---@class EReuseListTrainOverscrollState
---@field None number
---@field Top number
---@field Bottom number
EReuseListTrainOverscrollState = {}


---@class EReuseListTrainSortZOrder
---@field None number @无
---@field Ascend number @升序
---@field Descend number @降序
EReuseListTrainSortZOrder = {}


---@class UReuseListTrainC: UUserWidget
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
---@field bPreciseScroll boolean
---@field ItemWidth number
---@field ItemHeight number
---@field PaddingX number
---@field PaddingY number
---@field TitleSize number
---@field TitlePadding number
---@field AutoTitleSize boolean
---@field Style EReuseListTrainStyle
---@field ItemClass UUserWidget
---@field NotFullAlignStyle EReuseListTrainNotFullAlignStyle
---@field GridAlign EReuseListTrainGridAlign
---@field NotFullScrollBoxHitTestInvisible boolean
---@field UpdateForceLayoutPrepass boolean
---@field AutoSizeRuntime1 boolean
---@field NotFullScrollBoxVisibility1 ESlateVisibility
---@field OverscrollLength number
---@field OverscrollLooseness number
---@field SortZOrder EReuseListTrainSortZOrder
---@field bDisableDragListScroll boolean
---@field ItemCacheNum number
---@field DelayUpdateTimeLimitMS number
---@field UpdateForScroll boolean
local UReuseListTrainC = {}

---加载Item
---@param __ItemCount number
function UReuseListTrainC:Reload(__ItemCount) end

---刷新所有可见Item，相当于调用Item的OnUpdateItem
function UReuseListTrainC:Refresh() end

---单刷可见Item，相当于调用Item的OnUpdateItem
---@param __Idx number
function UReuseListTrainC:RefreshOne(__Idx) end

---带参数刷新所有可见Item，一般用于增量刷新，同Refresh
---@param _Param string
function UReuseListTrainC:RefreshParam(_Param) end

---带参数单刷可见Item，一般用于增量刷新，同RefreshOne
---@param __Idx number
---@param _Param string
function UReuseListTrainC:RefreshOneParam(__Idx, _Param) end

---滑动到顶
function UReuseListTrainC:ScrollToStart() end

---滑动到底
function UReuseListTrainC:ScrollToEnd() end

---滑动指定位置
---@param NewScrollOffset number
function UReuseListTrainC:SetScrollOffset(NewScrollOffset) end

---滑动指定位置，偏移值保护
---@param NewScrollOffset number
function UReuseListTrainC:SetScrollOffsetClamp(NewScrollOffset) end

---@return number
function UReuseListTrainC:GetScrollOffset() end

---是否滑动
---@param InScrollEnabled boolean
function UReuseListTrainC:SetScrollEnabled(InScrollEnabled) end

---是否精准滑动
---@param InScrollPrecise boolean
function UReuseListTrainC:SetScrollPrecise(InScrollPrecise) end

---@param InDragListScrollEnabled boolean
function UReuseListTrainC:SetDragListScrollEnabled(InDragListScrollEnabled) end

---定位到指定Item 下一帧执行
---@param __Idx number
---@param __Style EReuseListTrainJumpStyle
function UReuseListTrainC:JumpByIdxStyle(__Idx, __Style) end

---@param sz number
function UReuseListTrainC:SetTitleSize(sz) end

---@param As boolean
function UReuseListTrainC:SetTitleSlotAutoSize(As) end

---重设参数，以下参数在编辑器下都设置好了一般无需调用
---@param __ItemClass UUserWidget
---@param __Style EReuseListTrainStyle
---@param __ItemWidth number
---@param __ItemHeight number
---@param __PaddingX number
---@param __PaddingY number
function UReuseListTrainC:Reset(__ItemClass, __Style, __ItemWidth, __ItemHeight, __PaddingX, __PaddingY) end

---修改当前ItemClass，并调用Clear
---@param InItemClass UUserWidget
function UReuseListTrainC:SetItemClass(InItemClass) end

---@param ResultItemList ULuaArrayHelper<UUserWidget>
---@param OnlyVisible boolean
function UReuseListTrainC:GetAllItems(ResultItemList, OnlyVisible) end

---由于Item复用不可预知，该函数希望，干预NewItem尽量使用指定的 给每个Item打个标记，在OnUpdateItem调用
---@param __Idx number
---@param __Key string
function UReuseListTrainC:SetKeyNewItem(__Idx, __Key) end

---由于Item复用不可预知，该函数希望，干预NewItem尽量使用指定的 设置期望的Item标记，在OnBeforeNewItem调用
---@param __Key string
function UReuseListTrainC:SetDesiredKeyNewItem(__Key) end

---@param maxSize FVector2D
function UReuseListTrainC:ResetMaxSize(maxSize) end

function UReuseListTrainC:ClearMaxSize() end

---返回当前位置，可见Item的索引
---@param InViewAnchor number
function UReuseListTrainC:GetCurScrollDisplayItems(InViewAnchor) end

---获取内部Item的Class
function UReuseListTrainC:GetItemClass() end

function UReuseListTrainC:TestMem() end

---@param _JumpIdx number
---@param _JumpStyle EReuseListTrainJumpStyle
---@param _IncludePadding boolean
---@param _NotFixOffset boolean
---@return number
function UReuseListTrainC:GetJumpScrollOffset(_JumpIdx, _JumpStyle, _IncludePadding, _NotFixOffset) end

function UReuseListTrainC:OnTouchFinishCallback() end
