---@meta

---Handles animation of skeletal mesh actors
---@class UMovieScenePESkillAnimTrack: UMovieSceneNameableTrack
---@field CheckType ETrackCheckNeedRunType
---@field ActiveConditions ULuaArrayHelper<UPESkillExtConditionBase>
---@field AnimationSections ULuaArrayHelper<UMovieSceneSection> @List of all animation sections
local UMovieScenePESkillAnimTrack = {}
