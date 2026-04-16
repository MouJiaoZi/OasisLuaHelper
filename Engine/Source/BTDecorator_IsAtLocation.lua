---@meta

---Is At Location decorator node. A decorator node that checks if AI controlled pawn is at given location.
---@class UBTDecorator_IsAtLocation: UBTDecorator_BlackboardBase
---@field AcceptableRadius number @distance threshold to accept as being at location
---@field ParametrizedAcceptableRadius FAIDataProviderFloatValue
---@field GeometricDistanceType FAIDistanceType
---@field bUseParametrizedRadius number
---@field bUseNavAgentGoalLocation number @if moving to an actor and this actor is a nav agent, then we will move to their nav agent location
---@field bPathFindingBasedTest number @If true the result will be consistent with tests done while following paths. Set to false to use geometric distance as configured with DistanceType
local UBTDecorator_IsAtLocation = {}
