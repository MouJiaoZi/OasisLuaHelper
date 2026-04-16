---@meta

---@class ESimulationSpace
---@field ComponentSpace number @Simulate in component space. Moving the entire skeletal mesh will have no affect on velocities
---@field WorldSpace number @Simulate in world space. Moving the skeletal mesh will generate velocity changes
---@field RootBoneSpace number @Simulate in root bone space. Moving the entire skeletal mesh and individually modifying the root bone will have no affect on velocities
---@field ActorSpace number
ESimulationSpace = {}
