---@meta

---单个指令的类型
---@class FAiDevGmConfig
---@field CmdStr string
---@field DefaultParam string @默认参数
---@field DisplayName string
---@field bIsLocalCall string @是否是本地指令
---@field bNeedParam boolean @需要参数
---@field CategoryName string @分类名称
---@field CmdType number @指令类型
---@field TemplateType number @指令模板类型
---@field TemplateConfig string @指令模板配置
FAiDevGmConfig = {}


---@class UGmListFetch: UObject
local UGmListFetch = {}

---LUA实现刷新逻辑
function UGmListFetch:LuaRefreshGmList() end


---单个GM按钮
---@class UAiGmBtn: UUserWidget
local UAiGmBtn = {}

---被点击
function UAiGmBtn:OnSelect() end


---GM分页
---@class UAiGmCategory: UUserWidget
---@field bIsSelected boolean @是否为被选中的
local UAiGmCategory = {}

---被点击
function UAiGmCategory:OnSelect() end

---显示是否为当前选中的
function UAiGmCategory:ShowIsCurSelected() end


---@class UAiDevGm: UUserWidget
---@field PageSize number @单个页面的按钮数量
---@field CategoryWidClass UAiGmCategory @标签按钮的UI类型
---@field ConfigList ULuaArrayHelper<FAiDevGmConfig> @加载的所有的GM指令的列表
---@field GmBtns ULuaArrayHelper<UAiGmBtn> @GM按钮
---@field CategoryBtns ULuaMapHelper<string, UAiGmCategory> @标签按钮
local UAiDevGm = {}

---执行指令
---@param InCmd string
function UAiDevGm:DoCommand(InCmd) end

---关闭自身
function UAiDevGm:DoClose() end

---选中指令
---@param InIdx number
function UAiDevGm:OnGmSelected(InIdx) end

function UAiDevGm:OnPageChangeUp() end

function UAiDevGm:OnPageChangeDown() end

---手动输入
function UAiDevGm:OnGotoManual() end

---显示头顶信息
function UAiDevGm:OnBtnShowDetail() end

function UAiDevGm:OnBtnShowPlayerList() end

function UAiDevGm:OnBtnShowPlayerInfo() end

---选中分类
---@param InTag string
function UAiDevGm:OnGmCategory(InTag) end

function UAiDevGm:LaunchWikiUrl() end


---单个的监控目标
---@class UAiDevSingle: UUserWidget
---@field Limit FVector4
---@field UIOffset FVector2D @投影完成后的UI偏移
---@field WidgetAlign FVector2D @卡片的中心方式
---@field LocationOffset FVector @换算世界位置前应用的偏移
local UAiDevSingle = {}


---AI调试用，强制显示所有的角色信息
---@class UAiDevWidget: UUserWidget
---@field PawnInfoClass UAiDevSingle @每个人物信息的UI蓝图类
---@field InfoWidgets ULuaMapHelper<number, UAiDevSingle> @PlayerKey对应的信息挂件
local UAiDevWidget = {}

---显示AI调试用的GM面板
---@param InContex APlayerController
function UAiDevWidget:ShowAiDebugUI(InContex) end

---隐藏AI调试用的GM面板
function UAiDevWidget:HideAiDebugUI() end

---@param InInfo string
function UAiDevWidget:UpdateDeliveryInfo(InInfo) end

---@param Msg string
function UAiDevWidget:AddFeedBackMsg(Msg) end

---成功获取了GM列表
function UAiDevWidget:OnGmListRefreshed() end

---需要生成某些GM
function UAiDevWidget:DoGmListRefreshed() end

---接入游戏结束
function UAiDevWidget:OnGameStateEnd() end

---@param MapName string
function UAiDevWidget:OnPreLoadMap(MapName) end

---@param Character ASTExtraCharacter
function UAiDevWidget:OnChacacterInited(Character) end

---@param Character ASTExtraCharacter
function UAiDevWidget:OnChacacterDestroyed(Character) end

function UAiDevWidget:OnBtnVisInfoClick() end

function UAiDevWidget:OnGmButtonClose() end

---@param bShow boolean
function UAiDevWidget:OnBtnVisGMButton(bShow) end

function UAiDevWidget:OnGmButtonClick() end
