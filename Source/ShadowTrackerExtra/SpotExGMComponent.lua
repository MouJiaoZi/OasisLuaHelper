---@meta

---单个SpotEx文件的点位数据
---@class FSpotExPointInfo
---@field Location FVector @点位生成位置
---@field GroupLocation FVector @点位组位置
---@field Rotation FRotator @点位旋转
---@field SpotType number @点位类型
---@field GroupType number @组类型
---@field SpotTag string @点位标签
---@field SpotPercent number @点位概率
FSpotExPointInfo = {}


---已加载的SpotEx文件信息
---@class FLoadedSpotExInfo
---@field FilePath string @SpotEx文件路径
---@field ShortName string @文件短名称（用于显示）
---@field PointCount number @点位数量
---@field DrawColor FLinearColor @绘制颜色
---@field bIsDrawing boolean @是否正在绘制
---@field Points ULuaArrayHelper<FSpotExPointInfo> @点位列表
FLoadedSpotExInfo = {}


---待接收的SpotEx数据（客户端用于累积分批数据）
---@class FPendingSpotExData
FPendingSpotExData = {}


---@class FOnSpotExLoadComplete : ULuaMulticastDelegate
FOnSpotExLoadComplete = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FilePath: string, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSpotExLoadComplete:Add(Callback, Obj) end

---触发 Lua 广播
---@param FilePath string
---@param bSuccess boolean
function FOnSpotExLoadComplete:Broadcast(FilePath, bSuccess) end


---SpotEx GM组件 - 用于GM面板管理和可视化SpotEx点位信息 提供SpotEx文件的加载、管理、可视化功能（使用InstancedStaticMesh渲染）
---@class USpotExGMComponent: UCustomGMComponentBase
---@field OnSpotExLoadComplete FOnSpotExLoadComplete @SpotEx加载完成时触发
---@field LoadedSpotExList ULuaArrayHelper<FLoadedSpotExInfo> @已加载的SpotEx列表
---@field PointDrawSize number @点位绘制大小
---@field VisualizationActorClass ASpotExVisualizationActor @可视化Actor类（支持Blueprint派生）
---@field bInstancedHighlightEnabled boolean @是否开启Highlight
---@field bHighlightIgnoreDepth boolean @Highlight是否穿墙渲染（忽略深度遮挡）
---@field bShowDebugInfo boolean @是否显示调试信息
---@field TempSpotDataSerialize FUAESpotDataSerialize
local USpotExGMComponent = {}

---加载SpotEx文件并添加到管理列表
---@param SpotExFilePath string
---@param DrawColor FLinearColor
---@return boolean
function USpotExGMComponent:LoadAndAddSpotEx(SpotExFilePath, DrawColor) end

---移除已加载的SpotEx文件
---@param SpotExFilePath string
---@return boolean
function USpotExGMComponent:RemoveSpotEx(SpotExFilePath) end

---清空所有已加载的SpotEx
function USpotExGMComponent:ClearAllSpotEx() end

---检查SpotEx是否已加载
---@param SpotExFilePath string
---@return boolean
function USpotExGMComponent:IsSpotExLoaded(SpotExFilePath) end

---设置指定SpotEx的绘制状态
---@param SpotExFilePath string
---@param bShouldDraw boolean
function USpotExGMComponent:SetSpotExDrawing(SpotExFilePath, bShouldDraw) end

---设置所有SpotEx的绘制状态
---@param bShouldDraw boolean
function USpotExGMComponent:SetAllSpotExDrawing(bShouldDraw) end

---设置指定SpotEx的绘制颜色
---@param SpotExFilePath string
---@param NewColor FLinearColor
function USpotExGMComponent:SetSpotExDrawColor(SpotExFilePath, NewColor) end

---设置Highlight是否穿墙渲染
---@param bIgnoreDepth boolean
function USpotExGMComponent:SetHighlightIgnoreDepth(bIgnoreDepth) end

---设置是否显示调试信息
---@param bShow boolean
function USpotExGMComponent:SetShowDebugInfo(bShow) end

---[Client->Server] 请求加载SpotEx
---@param FilePath string
---@param DrawColor FLinearColor
function USpotExGMComponent:ServerRPC_RequestLoadSpotEx(FilePath, DrawColor) end

---[Server->Client] 分批发送SpotEx点位数据
---@param FilePath string
---@param BatchIndex number
---@param TotalBatches number
---@param BatchData ULuaArrayHelper<FSpotExPointInfo>
---@param TotalPointCount number
---@param DrawColor FLinearColor
function USpotExGMComponent:ClientRPC_ReceiveSpotExBatch(FilePath, BatchIndex, TotalBatches, BatchData, TotalPointCount, DrawColor) end
