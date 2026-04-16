---@meta

---@class FFollowCandidateSortData
FFollowCandidateSortData = {}


---@class USTCharacterFollowComp: UActorComponent
---@field CanFollowDist number @可以跟随的 距离 厘米*
---@field QuitFollowAngleInput number @退出跟随角度 *
---@field QuitFollowDist number @退出跟随距离 厘米*
---@field PointDensityTimeInterval number @取点的时间间隔 *
---@field DistThrehold number @容忍距离  平方厘米  策划不用管*
---@field IsEnableAutoFollow boolean @启用这个模块 *
---@field PawnOwner ASTExtraBaseCharacter
---@field TargetOps ULuaArrayHelper<UTargetKeyOperation>
local USTCharacterFollowComp = {}

---@param _TempPawn APawn
function USTCharacterFollowComp:InitializeOwner(_TempPawn) end

---@param InterrupteReason number
function USTCharacterFollowComp:SetInterruptAutoFollowByInput(InterrupteReason) end

---@param previousTarget APawn
function USTCharacterFollowComp:SelectedPickedTargetChangeNotifyHUD(previousTarget) end

---@param previousTarget APawn
function USTCharacterFollowComp:FollowingTargetChangeNotifyHUD(previousTarget) end

function USTCharacterFollowComp:FollowingState_ActOnUnsatisfied() end

---@param DeltaTime number
function USTCharacterFollowComp:FollowingState_ActOnSatisfied(DeltaTime) end

---@return boolean
function USTCharacterFollowComp:FollowingState_IsConditionSatisfied() end

function USTCharacterFollowComp:WaitingConfirmState_ActOnUnsatisfied() end

---@param DeltaTime number
function USTCharacterFollowComp:WaitingConfirmState_ActOnSatisfied(DeltaTime) end

---@return boolean
function USTCharacterFollowComp:WaitingConfirmState_IsConditionSatisfied() end

---@return boolean
function USTCharacterFollowComp:PlayerConfirmToFollow() end

---@return boolean
function USTCharacterFollowComp:PlayerStopFollow() end
