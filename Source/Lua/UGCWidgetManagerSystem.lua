---@meta

---UI控件管理器系统接口库
---@class UGCWidgetManagerSystem
UGCWidgetManagerSystem = {}

---异步创建一个控件，返回控件实例
---@param WidgetClassPath string|FSoftObjectPath @控件类路径
---@param OnCreatedCallback fun(Widget:UUserWidget) @创建完成回调
function UGCWidgetManagerSystem.CreateWidgetAsync(WidgetClassPath, OnCreatedCallback) end

---创建一个控件，返回控件实例
---@param WidgetClass UClass @控件蓝图类
---@return UUserWidget @控件实例
function UGCWidgetManagerSystem.CreateWidget(WidgetClass) end

---销毁一个控件
---@param Widget UUserWidget @控件实例
function UGCWidgetManagerSystem.DestroyWidget(Widget) end

---添加一个控件到指定 UI 挂点槽位
---@param Widget UUserWidget @控件实例
---@param SlotName string @控件槽位名称，默认为 UI.UISlot.MainUISlot_Low
---@param ZOrder number @控件层级，默认为 0
---@param AnchorData FAnchorData @控件锚点，默认为 { Anchors = { Minimum = Vector2D.New(0, 0), Maximum = Vector2D.New(1, 1) } }
function UGCWidgetManagerSystem.AddToSlot(Widget, SlotName, ZOrder, AnchorData) end

---从 UI 挂点槽位移除控件
---@param Widget UUserWidget @控件实例
function UGCWidgetManagerSystem.RemoveFromSlot(Widget) end

---异步加载并设置当前的 WidgetLayout，同时只能设置一个，旧的 WidgetLayout 会被卸载。传入 “Default” 可卸载 WidgetLayout 回到默认状态。（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏）
---@param LayoutPath string @WidgetLayout 引用路径
function UGCWidgetManagerSystem.SetWidgetLayout(LayoutPath) end

---显示一个控件，需要控件已经挂载到挂点槽上
---@param Widget UUserWidget @控件实例
function UGCWidgetManagerSystem.ShowWidget(Widget) end

---隐藏一个控件
---@param Widget UUserWidget @控件实例
function UGCWidgetManagerSystem.HideWidget(Widget) end

---判断一个控件是否已经挂载在 UI 挂点上
---@param Widget UUserWidget @控件实例
---@return boolean @是否已经挂载
function UGCWidgetManagerSystem.IsWidgetAddedToSlot(Widget) end

---判断一个控件是否可见
---@param Widget UUserWidget @控件实例
---@return boolean @是否可见
function UGCWidgetManagerSystem.IsWidgetVisible(Widget) end

---获取子控件，可用于获取 UMG 蓝图里的子控件
---@param Widget UUserWidget @控件实例
---@param SubWidgetName string @子控件名称
---@return UWidget @子控件实例
function UGCWidgetManagerSystem.GetSubWidget(Widget, SubWidgetName) end

---获取指定类别的所有控件，可筛选只获取已被添加到挂点的控件
---生效范围：客户端
---@param WidgetClass UClass @控件类（UUserWidget）
---@param bAddedToSlotOnly boolean @是否只获取已添加到挂点的控件
---@return UUserWidget[] @控件实例列表
function UGCWidgetManagerSystem.GetAllWidgetsOfClass(WidgetClass, bAddedToSlotOnly) end

---获取主 UI 面板实例（MainControlPanelTochButton）
---生效范围：客户端
---@return UserWidget
function UGCWidgetManagerSystem.GetMainUI() end

---获取主控制 UI 面板实例（MainControlBaseUI）
---生效范围：客户端
---@return UserWidget
function UGCWidgetManagerSystem.GetMainControlUI() end

---获取射击相关UI面板实例（ShootingUIPanel）
---生效范围：客户端
---@return UserWidget
function UGCWidgetManagerSystem.GetShootingUIPanel() end

---获取技能相关UI面板实例（SkillRootPanel_BP）
---生效范围：客户端
---@return UserWidget
function UGCWidgetManagerSystem.GetSkillRootPanel() end

---获取通过WidgetLayout加载的自定义UserWidget
---生效范围：客户端
---@param WidgetLayoutPath string @控件 ClassPath, 控件需继承自 UUserWidgetLayout
---@param UserWidgetName string @控件 Name
---@return UserWidget
function UGCWidgetManagerSystem.GetUserWidgetByWidgetLayout(WidgetLayoutPath, UserWidgetName) end

---【废弃】请使用 UGCWidgetManagerSystem.ShowWidget
---SubWidgetHiddenLayer为控件减少隐藏层数（主要用于屏蔽玩法中不需要的和平 UI，HiddenLayer>=1，UI 会强制隐藏）
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.ShowWidget()
---@param Widget UserWidget
function UGCWidgetManagerSystem.SubWidgetHiddenLayer(Widget) end

---设置摇杆是否可见
---生效范围：客户端
---@param IsVisibility boolean @是否可见（true 为显示，false 为隐藏）
function UGCWidgetManagerSystem.SetVirtualJoystickVisibility(IsVisibility) end

---设置准星是否可见
---生效范围：客户端
---@param IsVisibility boolean @是否可见（true 为显示，false 为隐藏，在没有被隐藏的情况下禁止将其显示）
function UGCWidgetManagerSystem.SetCrosshairVisibility(IsVisibility) end

---弹出分享界面
---生效范围：客户端
---@param CloseCallBack function @关闭分享界面回调函数
---@return bool @分享调用是否成功
function UGCWidgetManagerSystem.Share(CloseCallBack) end

---把自定义 UI 挂到和平 UI 上并应用自定义布局
---生效范围：客户端
---@param Widget UserWidget
function UGCWidgetManagerSystem.AddChildToTochButton(Widget) end

---加载大厅聊天框 UI
---生效范围：客户端
function UGCWidgetManagerSystem.LoadLobbyChatFrameUI() end

---添加对象位置 UI,头顶 UI（类似血条，玩家名）
---生效范围：服务器&客户端
---@param Actor Actor @需要添加位置 UI 的 Actor 对象
---@param WidgetClassPath string @控件 ClassPath 控件需继承自 UObjectPositionWidget
---@param Offset FVector @偏移量
---@param SizeAutoContent boolean @大小适配
---@param OutViewHide boolean @控件离开镜头后是否隐藏（比如在背后）
---@param BeOcclusionHide boolean @被遮挡后是否隐藏
---@param ShowSelf boolean @是否显示自己的
---@return number @实例 Index
function UGCWidgetManagerSystem.AddObjectPositionUI(Actor, WidgetClassPath, Offset, SizeAutoContent, OutViewHide, BeOcclusionHide, ShowSelf) end

---添加对象位置 UI,头顶 UI（类似血条，玩家名），自定义版本，提供更多参数配置。（ObjectPosUIInfo 可在蓝图中添加参数使用带有默认值的版本）
---生效范围：服务器&客户端
---@param Actor Actor @需要添加位置 UI 的 Actor 对象
---@param WidgetClassPath string @控件 ClassPath 控件需继承自 UObjectPositionWidget
---@param ObjectPosUIInfo FObjectPosUIInfo @配置属性结构体，可以在蓝图中定义该变量传入
---@return number @实例 Index
function UGCWidgetManagerSystem.AddObjectPositionUI_Custom(Actor, WidgetClassPath, ObjectPosUIInfo) end

---移除对象位置 UI
---生效范围：服务器&客户端
---@param WorldContent UObject @世界中对象
---@param InstanceIndex number @实例 Index
function UGCWidgetManagerSystem.RemoveObjectPositionUI(WorldContent, InstanceIndex) end

---根据 InstanceIndex 获取 Widget 实例（Add 之后不能立刻获取到，Widget 有可能还在加载）
---生效范围：客户端
---@param WorldContent UObject @世界中对象
---@param InstanceIndex number @实例 Index
---@return UObjectPositionWidget @Widget 实例
function UGCWidgetManagerSystem.GetObjectPositionUI(WorldContent, InstanceIndex) end

---设置玩家状态 UI 可见性
---生效范围：客户端
---@param bVisible boolean @是否显示（true 为显示，false 为隐藏）
---@return number @实际修改的控件数量
function UGCWidgetManagerSystem.SetPlayerStateUIVisibility(bVisible) end

---在屏幕中间上方显示 Tips 内容
---生效范围：客户端
---@param TipsContent string @Tips 文字内容
function UGCWidgetManagerSystem.ShowTipsUI(TipsContent) end

---在屏幕中间上方显示 Tips 内容，从DS发起，在传入的PC所属的客户端显示
---生效范围：服务器
---@param TipsContent string @Tips 文字内容
---@param PlayerController PlayerController @玩家控制器
function UGCWidgetManagerSystem.ShowTipsUIByServer(TipsContent, PlayerController) end

---获取全局观战 UI，仅全局观战模式下生效
---生效范围：客户端
---@return UserWidget
function UGCWidgetManagerSystem.GetGlobalOBUI() end

---修改右上角地图
---生效范围：客户端
---@param MapPath string @地图文件路径
---@param MapCentre FVector @地图中心点坐标
---@param MapSize number @地图实际大小
---@param MapScale number @地图缩放比
function UGCWidgetManagerSystem.ChangeMap(MapPath, MapCentre, MapSize, MapScale) end

---根据地图ID修改右上角地图
---生效范围：客户端
---@param MapID number @地图ID
function UGCWidgetManagerSystem.ChangeMapByMapID(MapID) end

---将世界坐标转换为控件坐标
---生效范围：客户端
---@param WorldLocation FVector @世界坐标
---@return FVector2D @控件坐标
function UGCWidgetManagerSystem.ProjectWorldLocationToWidgetPosition(WorldLocation) end

---获取 Canvas 插槽
---生效范围：客户端
---@param Widget UUserWidget @控件实例
---@return UCanvasPanelSlot @ Canvas 插槽实例
function UGCWidgetManagerSystem.SlotAsCanvasSlot(Widget) end

---获取 Overlay 插槽
---生效范围：客户端
---@param Widget UUserWidget @控件实例
---@return UOverlaySlot @Overlay 插槽实例
function UGCWidgetManagerSystem.SlotAsOverlaySlot(Widget) end

---获取 HorizontalBox 插槽
---生效范围：客户端
---@param Widget UUserWidget @控件实例
---@return UVerticalBoxSlot @HorizontalBox 插槽实例
function UGCWidgetManagerSystem.SlotAsVerticalBoxSlot(Widget) end

---获取视口缩放比例
---生效范围：客户端
---@return number @缩放比例
function UGCWidgetManagerSystem.GetViewportScale() end

---获取视口尺寸
---生效范围：客户端
---@return FVector2D @视口尺寸
function UGCWidgetManagerSystem.GetViewportSize() end

---获取视口 Widget 几何信息
---生效范围：客户端
---@return FGeometry @几何信息
function UGCWidgetManagerSystem.GetViewportWidgetGeometry() end

---绝对坐标转本地坐标
---生效范围：客户端
---@param Geometry FGeometry @控件几何信息
---@param AbsoluteCoordinate FVector2D @绝对坐标
---@return FVector2D @本地坐标
function UGCWidgetManagerSystem.AbsoluteToLocal(Geometry, AbsoluteCoordinate) end

---本地坐标转绝对坐标
---生效范围：客户端
---@param Geometry FGeometry @控件几何信息
---@param LocalCoordinate FVector2D @本地坐标
---@return FVector2D @绝对坐标
function UGCWidgetManagerSystem.LocalToAbsolute(Geometry, LocalCoordinate) end

---获取控件的本地尺寸
---生效范围：客户端
---@param Geometry FGeometry @控件几何信息
---@return FVector2D @本地尺寸
function UGCWidgetManagerSystem.GetLocalSize(Geometry) end

---获取控件的绝对尺寸
---生效范围：客户端
---@param Geometry FGeometry @控件几何信息
---@return FVector2D @绝对尺寸
function UGCWidgetManagerSystem.GetAbsoluteSize(Geometry) end

---获取控件的绝对位置
---生效范围：客户端
---@param Geometry FGeometry @控件几何信息
---@return FVector2D @绝对位置
function UGCWidgetManagerSystem.GetAbsolutePosition(Geometry) end

---【废弃】请使用 UGCWidgetManagerSystem.GetSubWidget
---通过控件名获取某一控件的子控件
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.GetSubWidget()
---@param Widget UserWidget
---@param UserWidgetName string @控件 Name
---@return UserWidget
function UGCWidgetManagerSystem.GetWidgetFromName(Widget, UserWidgetName) end

---【废弃】请使用 UGCWidgetManagerSystem.SetWidgetLayout
---可视化设置主 UI 控件是否可见（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏）
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.SetWidgetLayout()
---@param WidgetLayoutPath string @控件 ClassPath, 控件需继承自 UUserWidgetLayout
function UGCWidgetManagerSystem.LoadMainUIWidgetLayoutByPath(WidgetLayoutPath) end

---【废弃】请使用 UGCWidgetManagerSystem.SetWidgetLayout
---可视化设置主 UI 控件是否可见（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏）
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.SetWidgetLayout()
---@param WidgetLayoutPath string @控件 ClassPath, 控件需继承自 UUserWidgetLayout
function UGCWidgetManagerSystem.UnloadMainUIWidgetLayoutByPath(WidgetLayoutPath) end

---【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot()
---把自定义 UI 挂到和平 UI 挂点上
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot()
---@param WidgetPath string @控件 ClassPath
---@param UISlotName string @挂点标识
---@param ZOrder number @层级
---@param AnchorData FAnchorData @控件布局信息
---@return PromiseFuture @PromiseFuture对象
function UGCWidgetManagerSystem.AddChildToUISlotByPath(WidgetPath, UISlotName, ZOrder, AnchorData) end

---【废弃】请使用 UGCWidgetManagerSystem.AddToSlot
---把自定义 UI 挂到和平 UI 挂点上
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.AddToSlot()
---@param Widget UserWidget @UI
---@param UISlotName string @挂点标识
---@param ZOrder number @层级
---@param AnchorData FAnchorData @控件布局信息
function UGCWidgetManagerSystem.AddChildToUISlotByWidget(Widget, UISlotName, ZOrder, AnchorData) end

---【废弃】请使用 UGCWidgetManagerSystem.HideWidget
---为控件添加隐藏层数（主要用于屏蔽玩法中不需要的和平 UI，HiddenLayer>=1，UI 会强制隐藏）
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.HideWidget()
---@param Widget UserWidget
function UGCWidgetManagerSystem.AddWidgetHiddenLayer(Widget) end

---【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot()
---添加新 UI，将会自动完成 AddViewport 显示
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot()
---@param WidgetClassPath string @Widget 路径
---@param IsAdaptation boolean @是否屏幕适配
---@return UserWidget
function UGCWidgetManagerSystem.AddNewUI(WidgetClassPath, IsAdaptation) end

---【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync
---创建新控件
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.CreateWidgetAsync()
---@param WidgetClassPath string @Widget 路径
---@return UserWidget
function UGCWidgetManagerSystem.CreateNewWidget(WidgetClassPath) end

---【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync
---异步创建新控件，并绑定回调
---生效范围：客户端
---@deprecated @UGCWidgetManagerSystem.CreateWidgetAsync()
---@param WidgetClassPath string @Widget 路径
---@param InCreatedDelegate ULuaSingleDelegate @回调
function UGCWidgetManagerSystem.CreateNewWidgetAsync(WidgetClassPath, InCreatedDelegate) end