---@meta

---怪物AI数据获取组件，每个怪物都可以创建一个BP继承这个组件，个性化实现接口，挂载到Pawn上
---@class UAIDataCollectorComponent: UActorComponent
local UAIDataCollectorComponent = {}

---@param AIFakePlayer AActor
---@param DataKey string
---@return number
function UAIDataCollectorComponent:GetFloatValue(AIFakePlayer, DataKey) end

---@param AIFakePlayer AActor
---@param DataKey string
---@return string
function UAIDataCollectorComponent:GetStringValue(AIFakePlayer, DataKey) end

---@param AIFakePlayer AActor
---@param DataKey string
---@return number
function UAIDataCollectorComponent:GetIntValue(AIFakePlayer, DataKey) end

---@param AIFakePlayer AActor
---@param DataKey string
---@return boolean
function UAIDataCollectorComponent:GetBoolValue(AIFakePlayer, DataKey) end

---@param AIFakePlayer AActor
---@param CommandName string
---@param Parameters ULuaMapHelper<string, string>
function UAIDataCollectorComponent:ExecuteAICommand(AIFakePlayer, CommandName, Parameters) end
