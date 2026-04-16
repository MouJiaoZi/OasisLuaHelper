---@meta

---This file contains a number of helper structures that can be used to process state-machine- related data in C++. This includes relevancy, state weights, animation time etc.
---@class FCachedAnimStateData
---@field StateMachineName string @Name of StateMachine State is in
---@field StateName string @Name of State to Cache
FCachedAnimStateData = {}


---@class FCachedAnimStateArray
---@field States ULuaArrayHelper<FCachedAnimStateData> @Array of states
FCachedAnimStateArray = {}


---@class FCachedAnimAssetPlayerData
---@field StateMachineName string @Name of StateMachine State is in
---@field StateName string @Name of State to Cache
FCachedAnimAssetPlayerData = {}


---@class FCachedAnimRelevancyData
---@field StateMachineName string @Name of StateMachine State is in
---@field StateName string @Name of State to Cache
FCachedAnimRelevancyData = {}


---@class FCachedAnimTransitionData
---@field StateMachineName string @Name of StateMachine State is in
---@field FromStateName string @Name of From State to Cache
---@field ToStateName string @Name of To State to Cache
FCachedAnimTransitionData = {}
