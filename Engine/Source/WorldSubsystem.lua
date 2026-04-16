---@meta

---UWorldSubsystem Base class for auto instanced and initialized systems that share the lifetime of a UWorld
---@class UWorldSubsystem: USubsystem
local UWorldSubsystem = {}


---UTickableWorldSubsystem Base class for auto instanced and initialized systems that share the lifetime of a UWorld and are ticking along with it
---@class UTickableWorldSubsystem: UWorldSubsystem, FTickableGameObject
local UTickableWorldSubsystem = {}
