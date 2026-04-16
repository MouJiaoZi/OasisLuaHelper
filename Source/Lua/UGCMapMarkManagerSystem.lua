---@meta

---小地图声音图标类型枚举
---@class EVoiceVisualizationFlag
---@field CharacterMove number @脚步
---@field WeaponShot number @武器
---@field Explosion number @爆炸
---@field Vehicle number @载具
---@field Glass number @破窗
---@field ParachuteClose number @降落伞关闭
---@field Dynamic number @其它
---@field AllVoiceFlag number @全部
EVoiceVisualizationFlag = {}


---地图标记管理器系统接口库
---@class UGCMapMarkManagerSystem
UGCMapMarkManagerSystem = {}

---添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget）
---必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理）
---生效范围：服务器
---@param WidgetClassPath string @控件类路径，Widget 需继承自 MapUIMarkBaseWidget
---@param RangeType EMarkDispatchRange @标记同步范围
---@param RangeRad number @标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
---@param OwnerPlayerState PlayerState @同步相关性 PlayerState，主要用于仅同步自身或者队友同步，非必传
---@return number @标记 ID
function UGCMapMarkManagerSystem.AddCustomMark(WidgetClassPath, RangeType, RangeRad, OwnerPlayerState) end

---添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget）
---必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理）
---生效范围：客户端
---@param WidgetClassPath string @控件类路径，Widget 需继承自 MapUIMarkBaseWidget
---@param RangeRad number @标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
---@return number @标记 ID
function UGCMapMarkManagerSystem.AddLocalCustomMark(WidgetClassPath, RangeRad) end

---添加一个玩家 Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget）
---生效范围：服务器
---@param WidgetClassPath string @控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget
---@param RangeType EMarkDispatchRange @标记同步范围
---@param RangeRad number @标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
---@param OwnerPlayerState PlayerState @标记目标 PlayerState
---@return number @标记 ID
function UGCMapMarkManagerSystem.AddPlayerMark(WidgetClassPath, RangeType, RangeRad, OwnerPlayerState) end

---添加一个玩家Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget）
---生效范围：客户端
---@param WidgetClassPath string @控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget
---@param OwnerPlayerState PlayerState @标记目标 PlayerState
---@param RangeRad number @标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
---@return number @标记 ID
function UGCMapMarkManagerSystem.AddLocalPlayerMark(WidgetClassPath, RangeRad, OwnerPlayerState) end

---移除一个标记，此接口的调用者同传入的 InstanceID 匹配。
---生效范围：服务器&客户端
---@param InstanceID number @标记 ID
function UGCMapMarkManagerSystem.RemoveMark(InstanceID) end

---更新标记位置，此接口的调用者同传入的 InstanceID 匹配。
---生效范围：服务器&客户端
---@param InstanceID number @标记 ID
---@param MarkLocation Vector @新 Location
---@param bNeedPrintLog boolean @是否输出日志
function UGCMapMarkManagerSystem.UpdateMarkLocation(InstanceID, MarkLocation, bNeedPrintLog) end

---更新标记旋转，此接口的调用者同传入的 InstanceID 匹配。
---生效范围：服务器&客户端
---@param InstanceID number @标记 ID
---@param NewRotation Rotator @新 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建，结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
function UGCMapMarkManagerSystem.UpdateMarkRotation(InstanceID, NewRotation) end

---获取标记位置，此接口的调用者同传入的 InstanceID 匹配。
---生效范围：服务器&客户端
---@param InstanceID number @标记 ID
---@return Vector @标记点 Location
function UGCMapMarkManagerSystem.GetMarkLocation(InstanceID) end

---获取标记旋转，此接口的调用者同传入的 InstanceID 匹配。
---调用此接口来更新通过 UGCMapMarkManagerSystem.Add[Local]CustomMark 创建的小地图标记控件时，须确保该控件的 Rotate Widget to Angle 选项已勾选。
---生效范围：服务器&客户端
---@param InstanceID number @标记 ID
---@return Rotator @标记点 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
function UGCMapMarkManagerSystem.GetMarkRotation(InstanceID) end

---获取标记 Owner，此接口的调用者同传入的 InstanceID 匹配。
---生效范围：服务器&客户端
---@param InstanceID number @标记 ID
---@return PlayerState @标记点对应的 PlayerState
function UGCMapMarkManagerSystem.GetMarkOwner(InstanceID) end

---在地图上画图
---生效范围：客户端
---@param WorldCorners FVector[] @世界坐标点，按顺序绘制，1个点画圆，2个点画直线，3个点或以上画多边形
---@param MarkColor FColor @图像颜色
---@param RadiusOrLineWidth number @半径或直线宽度
---@param bRecolorOrBlending boolean @覆盖颜色或Alpha混合
---@param AddMarkFlag EAddMarkFlag @生效地图类型
function UGCMapMarkManagerSystem.MakeMapMarkGraph(WorldCorners, MarkColor, RadiusOrLineWidth, bRecolorOrBlending, AddMarkFlag) end

---清除地图上的图案
---生效范围：客户端
---@param ClearMarkFlag EAddMarkFlag @生效地图类型
function UGCMapMarkManagerSystem.ClearMapMarkGraph(ClearMarkFlag) end

---开关小地图上的指定类型音效图标
---生效范围：服务端&客户端
---@param InFlag EVoiceVisualizationFlag @指定音效类型
---@param bIsEnable boolean @开关控制
function UGCMapMarkManagerSystem.SetVoiceVisualization(InFlag, bIsEnable) end

---获取小地图上指定类型音效图标的开关状态
---生效范围：服务端&客户端
---@param InFlag EVoiceVisualizationFlag @指定音效类型
---@return boolean @是否开启
function UGCMapMarkManagerSystem.IsVoiceVisualizationFlagEnable(InFlag) end

---获取和平原生小地图标点位置
---生效范围：客户端
---@param PlayerState ASTExtraPlayerState @玩家状态
---@return Vector @标记点位置
function UGCMapMarkManagerSystem.GetMapMarkLocation(PlayerState) end

---根据地图ID修改右上角地图
---生效范围：客户端
---@param MapID number @地图ID
function UGCMapMarkManagerSystem.ChangeMapByMapID(MapID) end

---请求绘制引导线
---生效范围：客户端
---@param Params FGuidePathDrawParams @绘制参数
---@param OnResult FOnGuidePathResult @结果回调
---@return number @请求ID
function UGCMapMarkManagerSystem.DrawGuidePathToTarget(Params, OnResult) end