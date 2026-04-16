---@meta

---@class AAvatarCopyPose: AUAERegionActor
---@field bLogicVis boolean
---@field bClientShow boolean
local AAvatarCopyPose = {}

function AAvatarCopyPose:InitializeMasterComp() end

---@return boolean
function AAvatarCopyPose:IsRenderAllHandle() end

function AAvatarCopyPose:OnRep_LogicVis() end

---@param InLogicVis boolean
function AAvatarCopyPose:SetLogicVis(InLogicVis) end

---@param InVis boolean
function AAvatarCopyPose:ShowAvatar(InVis) end
