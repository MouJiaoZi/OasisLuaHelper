---@meta

---@class EReuseMapContentType
---@field Auto number
---@field Custom number
EReuseMapContentType = {}


---@class EReuseMapOverDragType
---@field Circle number
---@field Rect number
---@field RectContent number
EReuseMapOverDragType = {}


---@class UReuseMapC: UUserWidget
---@field OnUpdateItem FOnUpdateItemDelegate
---@field OnCreateItem FOnCreateItemDelegate
---@field OnDragBegin FOnDragBeginDelegate
---@field OnDragEnd FOnDragEndDelegate
---@field OnDragging FOnDraggingDelegate
---@field OnTick FOnTickDelegate
---@field ItemClass UUserWidget
---@field ContentType EReuseMapContentType
---@field OverDragType EReuseMapOverDragType
---@field IsPreciseDrag number
---@field UseMouseCapture number
---@field CanvasClipping EWidgetClipping
---@field DelayUpdateTimeLimitMS number
---@field OverDragInertial number
local UReuseMapC = {}

---@param InIdx number
---@param InPos FVector2D
---@param InSize FVector2D
function UReuseMapC:SetItemData(InIdx, InPos, InSize) end

---@param InIdx number
function UReuseMapC:RemoveItemData(InIdx) end

function UReuseMapC:RemoveAllItemData() end

---@param InIdx number
---@param InPos FVector2D
---@return boolean
function UReuseMapC:SetItemPosition(InIdx, InPos) end

---@param InIdx number
---@param OutPos FVector2D
---@return boolean
function UReuseMapC:GetItemPosition(InIdx, OutPos) end

---@param InIdx number
---@param InSize FVector2D
---@return boolean
function UReuseMapC:SetItemSize(InIdx, InSize) end

---@param InIdx number
---@param OutSize FVector2D
---@return boolean
function UReuseMapC:GetItemSize(InIdx, OutSize) end

---@param InIdx number
---@return boolean
function UReuseMapC:ItemIsShow(InIdx) end

function UReuseMapC:GetShowItemIdx() end

---@param InOffset FVector2D
function UReuseMapC:SetOffset(InOffset) end

---@param InOffsetDelta FVector2D
function UReuseMapC:AddOffset(InOffsetDelta) end

---@return FVector2D
function UReuseMapC:GetOffset() end

---@return FVector2D
function UReuseMapC:GetOffsetFromCenter() end

---@param InIdx number
---@return number
function UReuseMapC:GetItemDistanceToCenter(InIdx) end

---@param InSpeed number
---@param InAngle number
function UReuseMapC:SetMove(InSpeed, InAngle) end

function UReuseMapC:Refresh() end

---@param InIndex number
function UReuseMapC:RefreshOne(InIndex) end

---@param InIndex number
function UReuseMapC:JumpIdx(InIndex) end

---@param ResultItemList ULuaArrayHelper<UUserWidget>
---@param OnlyVisible boolean
function UReuseMapC:GetAllItems(ResultItemList, OnlyVisible) end

---@param InType EReuseMapContentType
function UReuseMapC:SetContentType(InType) end

---@param InSize FVector2D
function UReuseMapC:SetContentSize(InSize) end

function UReuseMapC:ComputeContent() end
