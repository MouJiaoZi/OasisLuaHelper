---@meta

---@class DragonBoatMatchState
---@field NoteReady number
---@field Standby number
---@field InMatch number
---@field Win number
---@field End number
---@field TimeOut number
DragonBoatMatchState = {}


---龙舟
---@class ASTExtraDragonBoatVehicle: ASTExtraAmphibiousVehicle
---@field bIsDragonBoost boolean @是否是敲鼓加速
---@field CurBoostGasNum number @当前氮气 大小 ,0到1之间
---@field DragonBoatBoostFactor number
---@field MaxDragonBoatBoostTime number
---@field DragonBoatDrumViewRot FRotator
---@field CameraRelativeBoatRot FRotator
---@field CameraRelativeBoatLoc FVector
---@field MatchInfoLeftTime number
---@field IsWinAward boolean
---@field pathNodeIndexList ULuaArrayHelper<number>
---@field MatchState DragonBoatMatchState
---@field matchGroup number
---@field GiveWinnerAward boolean
local ASTExtraDragonBoatVehicle = {}

---龙舟*********************
function ASTExtraDragonBoatVehicle:OnRep_DragonBoost() end

---@param NewState boolean
function ASTExtraDragonBoatVehicle:SetDragonBoost(NewState) end

function ASTExtraDragonBoatVehicle:OnRep_CurBoostGasNum() end

---判断角色是否在鼓位 (只有主控端有效) 非主控端无法精准判断
---@param Character ASTExtraBaseCharacter
---@return boolean
function ASTExtraDragonBoatVehicle:IsInDragonBoatDrumSeat(Character) end

function ASTExtraDragonBoatVehicle:OnRep_MatchState() end

function ASTExtraDragonBoatVehicle:OnRep_MatchInfoLeftTime() end

---@param LeftTime number
function ASTExtraDragonBoatVehicle:SetMatchInfoLifeTime(LeftTime) end

function ASTExtraDragonBoatVehicle:OnRep_IsWinAward() end

---@param NewState boolean
function ASTExtraDragonBoatVehicle:SetWinAward(NewState) end

---@param NewGroup number
function ASTExtraDragonBoatVehicle:SetMatchGroup(NewGroup) end

function ASTExtraDragonBoatVehicle:OnRep_PathNodeIndexList() end

---@param NodeIndex number
function ASTExtraDragonBoatVehicle:AddPathNode(NodeIndex) end

function ASTExtraDragonBoatVehicle:ResetPathNodeList() end

---@param awardEffect UParticleSystemComponent
---@param winEffect UParticleSystemComponent
function ASTExtraDragonBoatVehicle:SetHaveAwardEffect(awardEffect, winEffect) end

---@param NewState DragonBoatMatchState
function ASTExtraDragonBoatVehicle:SetMatchState(NewState) end
