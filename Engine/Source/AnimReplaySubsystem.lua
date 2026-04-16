---@meta

---UAnimReplaySubsystem GameInstance-level subsystem for managing multiple concurrent animation recording sessions and serializing/deserializing .animreplay files. NOTE: This UCLASS must be outside preprocessor blocks for UHT compatibility. All recording functionality is compiled out when ENABLE_ANIM_DEBUG_RECORDING == 0; the class still exists but ShouldCreateSubsystem() returns false.
---@class UAnimReplaySubsystem: UGameInstanceSubsystem
local UAnimReplaySubsystem = {}
