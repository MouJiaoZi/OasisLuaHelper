---@meta

---Crowd manager is responsible for handling crowds using Detour (Recast library) Agents will respect navmesh for all steering and avoidance updates, but it's slower than AvoidanceManager solution (RVO, cares only about agents) All agents will operate on the same navmesh data, which will be picked from navigation system defaults (UNavigationSystem::SupportedAgents[0]) To use it, you have to add CrowdFollowingComponent to your agent (usually: replace class of PathFollowingComponent in AIController by adding those lines in controller's constructor ACrowdAIController::ACrowdAIController(const FObjectInitializer& ObjectInitializer) : Super(ObjectInitializer.SetDefaultSubobjectClass<UCrowdFollowingComponent>(TEXT("PathFollowingComponent"))) or simply add both components and switch move requests between them) Actors that should be avoided, but are not being simulated by crowd (like players) should implement CrowdAgentInterface AND register/unregister themselves with crowd manager: UCrowdManager* CrowdManager = UCrowdManager::GetCurrent(this); if (CrowdManager) { CrowdManager->RegisterAgent(this); } Check flags in CrowdDebugDrawing namespace (CrowdManager.cpp) for debugging options.
---@class FCrowdAvoidanceConfig
---@field VelocityBias number
---@field DesiredVelocityWeight number
---@field CurrentVelocityWeight number
---@field SideBiasWeight number
---@field ImpactTimeWeight number
---@field ImpactTimeRange number
---@field CustomPatternIdx number
---@field AdaptiveDivisions number
---@field AdaptiveRings number
---@field AdaptiveDepth number
FCrowdAvoidanceConfig = {}


---@class FCrowdAvoidanceSamplingPattern
---@field Angles ULuaArrayHelper<number>
---@field Radii ULuaArrayHelper<number>
FCrowdAvoidanceSamplingPattern = {}


---@class FOnCreatedCrowdManager : ULuaSingleDelegate
FOnCreatedCrowdManager = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCreatedCrowdManager:Bind(Callback, Obj) end

---执行委托
function FOnCreatedCrowdManager:Execute() end


---@class UCrowdManager: UCrowdManagerBase
---@field AvoidanceConfig ULuaArrayHelper<FCrowdAvoidanceConfig> @obstacle avoidance params
---@field SamplingPatterns ULuaArrayHelper<FCrowdAvoidanceSamplingPattern> @obstacle avoidance params
---@field MaxAgents number @max number of agents supported by crowd
---@field MaxAgentRadius number @max radius of agent that can be added to crowd
---@field MaxAvoidedAgents number @max number of neighbor agents for velocity avoidance
---@field MaxAvoidedWalls number @max number of wall segments for velocity avoidance
---@field NavmeshCheckInterval number @how often should agents check their position after moving off navmesh?
---@field PathOptimizationInterval number @how often should agents try to optimize their paths?
---@field SeparationDirClamp number @clamp separation force to left/right when neighbor is behind (dot between forward and dirToNei, -1 = disabled)
---@field PathOffsetRadiusMultiplier number @agent radius multiplier for offsetting path around corners
---@field bResolveCollisions number @should crowd simulation resolve collisions between agents? if not, this will be handled by their movement components
local UCrowdManager = {}
