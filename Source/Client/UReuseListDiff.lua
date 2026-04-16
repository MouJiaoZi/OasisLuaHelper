---@meta

---@class EReuseListDiffStyle
---@field Vertical number
---@field Horizontal number
EReuseListDiffStyle = {}


---@class EReuseListDiffNotFullAlignStyle
---@field Start number
---@field Middle number
---@field End number
EReuseListDiffNotFullAlignStyle = {}


---@class UReuseListDiff: UUserWidget
---@field OnUpdateItem FOnUpdateItemDelegate
---@field OnPreUpdateItem FOnPreUpdateItemDelegate
---@field OnCreateItem FOnCreateItemDelegate
---@field ScrollBoxStyle FScrollBoxStyle
---@field ScrollBarStyle FScrollBarStyle
---@field ScrollBarVisibility ESlateVisibility
---@field ScrollBarThickness FVector2D
---@field ItemSize number
---@field ItemPadding number
---@field Style EReuseListDiffStyle
---@field ItemClass UUserWidget
---@field ItemClassMap ULuaMapHelper<string, UUserWidget>
---@field PreviewCount number
---@field NotFullAlignStyle EReuseListDiffNotFullAlignStyle
---@field NotFullScrollBoxHitTestInvisible boolean
---@field AutoAdjustItemSize boolean
---@field ItemPoolMaxNum number
---@field OneBlockItemNum number
---@field NeedReleaseBlock boolean
---@field CacheNum number
---@field CurItemClass UUserWidget
local UReuseListDiff = {}

---@param __ItemCount number
function UReuseListDiff:Reload(__ItemCount) end

function UReuseListDiff:Refresh() end

---@param __Idx number
function UReuseListDiff:RefreshOne(__Idx) end

function UReuseListDiff:ScrollToStart() end

function UReuseListDiff:ScrollToEnd() end

---@param NewScrollOffset number
function UReuseListDiff:SetScrollOffset(NewScrollOffset) end

---@return number
function UReuseListDiff:GetScrollOffset() end

---@param InScrollEnabled boolean
function UReuseListDiff:SetScrollEnabled(InScrollEnabled) end

---@param __Idx number
function UReuseListDiff:JumpByIdx(__Idx) end

---@param __ItemClass UUserWidget
---@param __Style EReuseListDiffStyle
---@param __ItemSize number
---@param __ItemPadding number
function UReuseListDiff:Reset(__ItemClass, __Style, __ItemSize, __ItemPadding) end

function UReuseListDiff:ClearDiffSize() end

---@param __Idx number
---@param __Size number
function UReuseListDiff:AddDiffSize(__Idx, __Size) end

---@param StrName string
function UReuseListDiff:SetCurItemClass(StrName) end

function UReuseListDiff:ResetCurItemClassToDefault() end

---@param __OneBlockItemNum number
function UReuseListDiff:SetOneBlockItemNum(__OneBlockItemNum) end

---@param __NeedReleaseBlock boolean
function UReuseListDiff:SetNeedReleaseBlock(__NeedReleaseBlock) end

---@param __CacheNum number
function UReuseListDiff:SetCacheNum(__CacheNum) end
