---@meta

---CG35 亲卫寻敌节点 使用UTeamSightSenseComponent组件做小组寻敌，组内寻敌互斥
---@class UBTService_FindEnemyWithTeammate: UBTService
---@field bCheckVisibility boolean
---@field TraceEndOffset FVector
---@field bChooseNearDeathPlayer boolean
---@field bChoosePlayerHiddenOnVehicle boolean
---@field SensedRadius number
---@field CannotChooseNearDeathPlayerTime number
---@field TeammateActor FBlackboardKeySelector
---@field MainAI FBlackboardKeySelector
local UBTService_FindEnemyWithTeammate = {}
