---@meta

---@class EPESkillAttachType
---@field AttachToSkillOwner number @SkillOwner
EPESkillAttachType = {}


---@class UMovieScenePESkillAttachSection: UMovieSceneSection
---@field AttachType EPESkillAttachType
---@field AttachPos FMeshSocketSelector
---@field AttachScaleRule EPEAttachScaleRule
---@field OwnerSkillGuid FGuid
local UMovieScenePESkillAttachSection = {}
