---@meta

---@class ESwitchDSPrerequisiteType
---@field LongTimeNoInput number
---@field InTrafficSystem number
---@field LongTimeNoPlayerAroundMe number
---@field Moving number
---@field Driving number
---@field Interacting number
---@field Max number
ESwitchDSPrerequisiteType = {}


---组件设计为PC的组件，计算、更新自动切线所依赖的各类前置条件
---@class USwitchDSPrerequisitesComponent: UActorComponent
---@field SlowTickTimeInterval number
---@field TimeSecondsSinceLastSlowTick number
---@field LongTimeNoInputThresholdTimeSeconds number
---@field ReportClientLongTimeNoInputTimeInterval number
---@field ReportClientInputTimeInterval number
---@field InputTouchTimeStamp number
---@field bIsTouching boolean
---@field ReportClientLongTimeNoInputTimeStamp number
---@field ReceiveClientLongTimeNoInputTimeStamp number
---@field ReportClientInputTimeStamp number
---@field ReceiveClientInputTimeStamp number
---@field LongTimeNoPlayerAroundMeThresholdTimeSeconds number
---@field NoPlayerAroundMeTimeSeconds number
---@field LongTimeKeepMovingThresholdTimeSeconds number
---@field KeepMovingTimeSeconds number
local USwitchDSPrerequisitesComponent = {}

---@param DeltaTime number
function USwitchDSPrerequisitesComponent:TickLongTimeNoInput(DeltaTime) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function USwitchDSPrerequisitesComponent:InputTouchBegin(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function USwitchDSPrerequisitesComponent:InputTouchEnd(FingerIndex, Location, force) end

function USwitchDSPrerequisitesComponent:ServerReportClientLongTimeNoInput() end

function USwitchDSPrerequisitesComponent:ServerReportClientInput() end

---@param DeltaTime number
function USwitchDSPrerequisitesComponent:TickInTrafficSystem(DeltaTime) end

---@param DeltaTime number
function USwitchDSPrerequisitesComponent:TickLongTimeNoPlayerAroundMe(DeltaTime) end

---@param DeltaTime number
function USwitchDSPrerequisitesComponent:TickMoving(DeltaTime) end

---@param DeltaTime number
function USwitchDSPrerequisitesComponent:TickDriving(DeltaTime) end

---@param DeltaTime number
function USwitchDSPrerequisitesComponent:TickInteracting(DeltaTime) end
