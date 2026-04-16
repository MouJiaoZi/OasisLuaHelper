---@meta

---@class FActorPointWithWeight
---@field Weight number @Default is 1.0f.
FActorPointWithWeight = {}


---@class FAIWayPointPathInfo
---@field bEnable boolean
---@field LevelsToBeLoaded ULuaArrayHelper<string> @The name of Level which will be loaded for this Path.
---@field PathOutlinePoints ULuaArrayHelper<FActorPointWithWeight> @The Outline Of this Path. Is is valid when "bUsingPathOutlineToSelectBestPath" is true.
FAIWayPointPathInfo = {}


---@class FOnAIWayPointPathSelectorSelectedNewPath : ULuaMulticastDelegate
FOnAIWayPointPathSelectorSelectedNewPath = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AIWayPointPathSelector: AAIWayPointPathSelectorBase, BestFirstWayPoint: AAIWayPointActor, IndexOfSelectedPath: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAIWayPointPathSelectorSelectedNewPath:Add(Callback, Obj) end

---触发 Lua 广播
---@param AIWayPointPathSelector AAIWayPointPathSelectorBase
---@param BestFirstWayPoint AAIWayPointActor
---@param IndexOfSelectedPath number
function FOnAIWayPointPathSelectorSelectedNewPath:Broadcast(AIWayPointPathSelector, BestFirstWayPoint, IndexOfSelectedPath) end


---@class UAIWayPointPathSelectorTypeBase: UObject
local UAIWayPointPathSelectorTypeBase = {}

---Should Call this function after calling the GetBestWayPoint().
---@return number
function UAIWayPointPathSelectorTypeBase:GetCurrentIndexOfSelectedPath() end


---@class UUAIWayPointPathSelectorType_CircleBestPath: UAIWayPointPathSelectorTypeBase
---@field bUsingPathOutlineToSelectBestPath boolean @True: Will use the PathOutlinePoints to calculate the best Path for the specified White Circle. False: Will use the StartWayPointActor to select the best Path for the specified White Circle. Select the StartWayPointActor which is nearest to the WhiteCircle.
---@field CircleWeight number
---@field GravitationCoefficient number
---@field Paths ULuaArrayHelper<FAIWayPointPathInfo> @The path infos.
---@field bPreLoadLevelsOfAllPaths boolean
local UUAIWayPointPathSelectorType_CircleBestPath = {}

function UUAIWayPointPathSelectorType_CircleBestPath:Reset() end


---@class AAIWayPointPathSelector: AAIWayPointPathSelectorBase
---@field OnAIWayPointPathSelectorSelectedNewPath FOnAIWayPointPathSelectorSelectedNewPath
local AAIWayPointPathSelector = {}
