---@meta

---@class TargetLeafState
---@field Alive number
---@field Died number
---@field DeActive number
TargetLeafState = {}


---@class AAsianColorTargetLeaf: AAsianGameBaseTarget
---@field TeamIndex number
---@field ChildIndex number
---@field LeafState TargetLeafState
local AAsianColorTargetLeaf = {}

---@param Controller ASTExtraPlayerController
function AAsianColorTargetLeaf:DoInZeroHealth(Controller) end

function AAsianColorTargetLeaf:PostToParentActor() end

---@param PC ASTExtraPlayerController
function AAsianColorTargetLeaf:PostToParentActorWithController(PC) end

function AAsianColorTargetLeaf:ConfirmDiedByParentInServer() end

function AAsianColorTargetLeaf:ConfirmDeactiveByParentInServer() end

function AAsianColorTargetLeaf:ConfirmAliveByParentInServer() end

---@param state TargetLeafState
function AAsianColorTargetLeaf:BPConfirmStateActive(state) end

function AAsianColorTargetLeaf:OnRep_LeafState() end

---@param _LeafState TargetLeafState
function AAsianColorTargetLeaf:DoPerformance(_LeafState) end
