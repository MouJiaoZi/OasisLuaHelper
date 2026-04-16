---@meta

---@class ASTExtraConcertButterfly: AUAERegionActor
---@field ForwardSpeed number
---@field PawnDetectRadius number
---@field UpSpeed number
---@field RotateSpeed number
---@field RotateRadius number
---@field CurAngle number
---@field CenterLocation FVector
---@field ForwardVector FVector
---@field FlyingToPawnTime number
---@field RotateDir number
---@field ButterflyID number
local ASTExtraConcertButterfly = {}

function ASTExtraConcertButterfly:OnRep_AttachToPawn() end

function ASTExtraConcertButterfly:OnCatchedByClientNet() end

---@param Param ULuaArrayHelper<FUAEBlackboardParameter>
---@param InController APlayerController
function ASTExtraConcertButterfly:OnServerReceiveCatched(Param, InController) end

---@param CatchedPlayer AActor
function ASTExtraConcertButterfly:HandleCatchedByNet(CatchedPlayer) end

function ASTExtraConcertButterfly:OnRep_RotateDir() end
