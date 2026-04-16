---@meta

---这个类是对gameplaytask，或者静态方法的封装，只在sequence轨道使用，不直接在代码里调用 如果是类似picker这种代码里也要用，时间轴也要用的，先封装成gameplaytask，这边去包一层
---@class UPESkillTaskBase: UMovieScenePESkillTask
---@field bIsActive boolean
local UPESkillTaskBase = {}

---@return boolean
function UPESkillTaskBase:IsActive() end

function UPESkillTaskBase:OnActivate_BP() end

function UPESkillTaskBase:OnDeactivate_BP() end
