---@meta

--- 带物品图标的数量滑动条UI类定义
local UGC_ItemCountSlider_Open_UIBP = nil

--- 构造函数，UI创建时自动调用
--- 功能: 执行初始化并设置默认参数
function UGC_ItemCountSlider_Open_UIBP:Construct() end

--- 开放化接口：InitUI（统一入口）
--- 功能: 初始化并显示控件
---@param ItemData number|FItemDefineID @品ID(number)或物品定义结构体(FItemDefineID)
---@param MaxCount number @品最大数量
---@param DefaultCount number @认选择数量（可选，默认为0）
---@param OnValueChangedCallback function @量变化回调函数（可选），参数为当前数量
function UGC_ItemCountSlider_Open_UIBP:InitUI(ItemData, MaxCount, DefaultCount, OnValueChangedCallback) end

--- 设置当前选择数量并更新UI
--- 功能: 将数量限制在[0, MaxCount]范围内，更新数量文本显示和滑动条位置
---@param Count number @设置的数量
function UGC_ItemCountSlider_Open_UIBP:SetCurrentCount(Count) end

--- 获取当前选择的数量
---@return number
function UGC_ItemCountSlider_Open_UIBP:GetCurrentCount() end

---异步加载Common_Item控件
---功能：通过UGCBackpackSystemV2外部接口异步创建Common_Item控件并挂到CanvasPanel_CommonItem容器
function UGC_ItemCountSlider_Open_UIBP:LoadCommonItemWidget() end