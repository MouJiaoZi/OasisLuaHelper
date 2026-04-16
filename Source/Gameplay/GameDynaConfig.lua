---@meta

---Currently supported dynamic config types.
---@class EDynaConfigEnum
---@field GameModeProperty number
---@field ConsoleVariable number
---@field ConsoleVariableByControlChannel number
---@field SecurityScheme number
---@field None number
EDynaConfigEnum = {}


---How does a dynamic config execute on the network.
---@class EDynaConfigNetExecutionPolicy
---@field Both number
---@field ServerOnly number
---@field ClientOnly number
EDynaConfigNetExecutionPolicy = {}


---Outer type of a dynamic config
---@class EDynaConfigOwner
---@field None number
---@field GameMode number
---@field GameState number
---@field GameInstance number
---@field PlayerController number
EDynaConfigOwner = {}


---Dynamic configuration data unit
---@class FDynaConfigInfo
---@field ConfigName string
---@field CVarHash number
---@field Type EDynaConfigEnum
---@field Value number
---@field Policy EDynaConfigNetExecutionPolicy
---@field Owner EDynaConfigOwner
FDynaConfigInfo = {}


---Replication helper struct, will be replicated from server to client
---@class FDynaConfigRep
FDynaConfigRep = {}


---@class FClientEndPlayDelegate : ULuaSingleDelegate
FClientEndPlayDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientEndPlayDelegate:Bind(Callback, Obj) end

---执行委托
function FClientEndPlayDelegate:Execute() end
