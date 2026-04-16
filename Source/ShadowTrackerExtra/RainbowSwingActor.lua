---@meta

---@class ERainbowSwingStateType
---@field Normal number
---@field Follow number
---@field Prepare number
---@field Shoot number
ERainbowSwingStateType = {}


---@class ERainbowSwingMeshHiddenType
---@field NoHidden number
---@field LeftHidden number
---@field RightHidden number
---@field BothHidden number
ERainbowSwingMeshHiddenType = {}


---@class ARainbowSwingActor: AActivityBaseActor, IRainbowSwingInterface
---@field RelationCount number
---@field bCanShowFollowButton boolean
---@field bIsShootingSwing boolean
---@field CurrentHiddenType ERainbowSwingMeshHiddenType
---@field CurrentSignTransform FTransform
---@field StateNameMap ULuaMapHelper<ERainbowSwingStateType, string>
local ARainbowSwingActor = {}

function ARainbowSwingActor:ResetSwing() end

function ARainbowSwingActor:DeleteSwing() end

---@return boolean
function ARainbowSwingActor:CheckCanDelete() end

---@param CurrnetActor AActor
---@param OtherSideActor AActor
---@param BuildingType ERainbowSwingBuildType
function ARainbowSwingActor:HandleAddSwing(CurrnetActor, OtherSideActor, BuildingType) end

function ARainbowSwingActor:HandleDeleteSwing() end

---@return boolean
function ARainbowSwingActor:CheckCanEnterShoot() end

---@return boolean
function ARainbowSwingActor:CheckCanEnterFollow() end

---@param bEnter boolean
function ARainbowSwingActor:EnterShootState(bEnter) end

---@param bEnter boolean
function ARainbowSwingActor:EnterFollowState(bEnter) end

---@param bEnter boolean
function ARainbowSwingActor:NotifyOtherSwingToFollow(bEnter) end

---@param type ERainbowSwingBuildType
---@param ALeftSwing ARainbowSwingActor
---@param ARightSwing ARainbowSwingActor
---@return boolean
function ARainbowSwingActor:SetSwingRelationship(type, ALeftSwing, ARightSwing) end

---@param type ERainbowSwingBuildType
---@return boolean
function ARainbowSwingActor:ClearSwingRelationship(type) end

---@return boolean
function ARainbowSwingActor:IsNeedFollowState() end

---@param NewHiddenType ERainbowSwingMeshHiddenType
---@param bIsHidden boolean
function ARainbowSwingActor:ResetCurrentHiddenType(NewHiddenType, bIsHidden) end

function ARainbowSwingActor:ResetSignTransform() end

function ARainbowSwingActor:ClearSignTransform() end

---@return number
function ARainbowSwingActor:GetCurrentShootCount() end

function ARainbowSwingActor:OnRep_CurrentHiddenType() end

---@param Type ERainbowSwingMeshHiddenType
function ARainbowSwingActor:SetSwingHiddenType(Type) end

function ARainbowSwingActor:OnRep_CurrentSignTransform() end

---@param Transform FTransform
function ARainbowSwingActor:SetSignTransform(Transform) end
