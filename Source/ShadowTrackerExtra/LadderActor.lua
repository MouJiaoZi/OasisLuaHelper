---@meta

---@class ELadderClimbState
---@field None number
---@field Up number
---@field Down number
---@field UpVaulted number
---@field UpCannotVault number
---@field DownJumped number
ELadderClimbState = {}


---@class ALadderActor: AUAERegionActor
---@field LadderStepCount number
---@field DefaultLadderUnitHeight number
local ALadderActor = {}

---@param CurState ELadderClimbState
---@param Character ASTExtraBaseCharacter
---@return ELadderClimbState
function ALadderActor:QueryJumpAndVaultState(CurState, Character) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function ALadderActor:QueryShouldStartOnGround(Character) end

---@param Character ASTExtraBaseCharacter
---@return FVector
function ALadderActor:GetClimbStartLocation(Character) end

---@return FVector
function ALadderActor:GetClimbGroundLocation() end

---@return FRotator
function ALadderActor:GetClimbRotation() end

---@param Character ASTExtraBaseCharacter
---@param OutDegree number
---@return boolean
function ALadderActor:CanPlayerStartClimb(Character, OutDegree) end

---@return number
function ALadderActor:GetTopLadderStepIndex() end

---@param StepIndex number
---@return FVector
function ALadderActor:FindStepLocationByIndex(StepIndex) end
