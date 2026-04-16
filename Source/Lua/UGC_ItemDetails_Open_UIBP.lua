---@meta

---物品详情面板UI类定义
local UGC_ItemDetails_Open_UIBP = nil

---异步加载Common_Item控件
---功能：通过UGCBackpackSystemV2外部接口异步创建Common_Item控件并挂到CanvasPanel_CommonItem容器
function UGC_ItemDetails_Open_UIBP:LoadCommonItemWidget() end

---向后兼容接口：SetData
---功能：兼容原始 UGC_PropsDetails_GameTips_UIBP / Depot_PropsDetails_Tips_UIBP 的调用方式
---  原始调用链: BackpackInner:ShowItemInfo → TipWidget:SetData({SelectData})
---  SelectData 结构: {ItemDefineID, DataType, ItemIdx(可选), WeakWidget(可选), ItemID(补充)}
---@param ItemDatas table @物品数据数组，如 {SelectData}
function UGC_ItemDetails_Open_UIBP:SetData(ItemDatas) end

---开放化接口：InitUI（统一入口）
---功能：初始化并显示物品详情面板
---  InParams.ItemDatas table                     @物品数据列表（必选），详见InParams结构注释中的ItemDatas字段说明
---  InParams.CustomWidgetPaths table              @自定义扩展控件路径列表 {path1, path2, ...}（可选）
---  InParams.bSelected boolean                    @是否当前选中的物品（可选，默认false）
---@param InParams table @合并参数表，包含物品数据和配置项
function UGC_ItemDetails_Open_UIBP:InitUI(InParams) end