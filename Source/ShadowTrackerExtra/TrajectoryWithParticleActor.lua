---@meta

---@class ETrajectoryMoveState
---@field ETMS_Empty number
---@field ETMS_StayInit number
---@field ETMS_Forward number
---@field ETMS_StayTar number
---@field ETMS_Reverse number
ETrajectoryMoveState = {}


---@class ATrajectoryWithParticleActor: AActor
---@field CurInitPos FVector
---@field CurLifeTimer number
---@field CurStayTimer number
---@field CurMoveState ETrajectoryMoveState
---@field bShowStatus boolean
---@field DestoryPawnState ULuaArrayHelper<EPawnState>
---@field TempHiddenPawnState ULuaArrayHelper<EPawnState>
---@field BackPawnState ULuaArrayHelper<EPawnState>
---@field InitMaxStayTime number
---@field TarMaxStayTime number
---@field InStayRange number
---@field LifeTotalTime number
---@field MaxEffectDistance number
---@field MoveSpeed number
---@field MovementSmoothSpeed number
---@field MovementSmoothAlpha number
---@field bOpenBufferMove boolean
---@field LastRepLoc FVector
local ATrajectoryWithParticleActor = {}

---@param InPlayerCharacter ASTExtraPlayerCharacter
function ATrajectoryWithParticleActor:SetTarjectorInitData(InPlayerCharacter) end

---@param NextState ETrajectoryMoveState
function ATrajectoryWithParticleActor:HandleSwitchMoveState(NextState) end

---@return boolean
function ATrajectoryWithParticleActor:IsNeedDestory() end

---@return boolean
function ATrajectoryWithParticleActor:IsNeedBack() end

---@return boolean
function ATrajectoryWithParticleActor:IsInStayTarState() end

---@return boolean
function ATrajectoryWithParticleActor:IsInStayInitState() end

---@param OldState ETrajectoryMoveState
function ATrajectoryWithParticleActor:OnRep_TrajectoryMoveState(OldState) end

function ATrajectoryWithParticleActor:OnRep_ShowStatus() end
