---@meta

---服务器时间索引信息
---@class FMc3IndexInfo
---@field SrvIndex number
---@field SrvInf number
FMc3IndexInfo = {}


---客户端上报的信息
---@class FMc3ClientInfo
---@field BackSrvInfo FMc3IndexInfo
---@field NowTime number
---@field NowLocation FVector_NetQuantize100
---@field MaxSpeed number
FMc3ClientInfo = {}


---移动策略3的运行状态维护
---@class FMc3RuntimeStates
FMc3RuntimeStates = {}
