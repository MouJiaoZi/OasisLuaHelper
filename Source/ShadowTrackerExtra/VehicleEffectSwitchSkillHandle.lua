---@meta

---特效切换技能 预设一个特效列表，玩家可以在列表中的特效中进行切换
---@class UVehicleEffectSwitchSkillHandle: UVehicleSkillBaseHandle
---@field EffectsList ULuaArrayHelper<string>
---@field CurEffectIndex number
---@field LastEffectIndex number
---@field SwitchEffectCD number
---@field ButtonBrush FButtonStyle
---@field ButtonBrush_PC FButtonStyle
---@field ButtonText string
---@field ShowEffectConsiderSpeed boolean
---@field CheckSpeedInterval number
---@field CheckSpeedTimer number
---@field ShowEffectSpeedThreshold number
---@field ShouldShowEffect boolean
local UVehicleEffectSwitchSkillHandle = {}

---@param VehicleBase ASTExtraVehicleBase
function UVehicleEffectSwitchSkillHandle:HandleOnApplyVehicleSkillHandle(VehicleBase) end

---@param VehicleBase ASTExtraVehicleBase
---@param Reason number
function UVehicleEffectSwitchSkillHandle:HandleOnUnApplyVehicleSkillHandle(VehicleBase, Reason) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UVehicleEffectSwitchSkillHandle:OnVehicleAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleEffectSwitchSkillHandle:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleEffectSwitchSkillHandle:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param PreSeatType ESTExtraVehicleSeatType
---@param PreSeatIdx number
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleEffectSwitchSkillHandle:HandleOnSeatChanged(Character, PreSeatType, PreSeatIdx, SeatType, SeatIdx) end

function UVehicleEffectSwitchSkillHandle:OnRep_CurEffectIndex() end

function UVehicleEffectSwitchSkillHandle:BPOnRep_CurEffectIndex() end

---@return boolean
function UVehicleEffectSwitchSkillHandle:CheckCanChangeEffectIndex() end

---@return boolean
function UVehicleEffectSwitchSkillHandle:CheckShouldShowEffect() end

function UVehicleEffectSwitchSkillHandle:ReqChangeEffectIndex() end

---@param NewIndex number
function UVehicleEffectSwitchSkillHandle:SetCurEffectIndex(NewIndex) end

---@param EffectIndex number
function UVehicleEffectSwitchSkillHandle:MultiChangeEffectIndex(EffectIndex) end

---@return boolean
function UVehicleEffectSwitchSkillHandle:GetCurInCD() end

---@return number
function UVehicleEffectSwitchSkillHandle:GetCurCD() end

function UVehicleEffectSwitchSkillHandle:OnRep_ShouldShowEffect() end

---@param NewShouldShow boolean
function UVehicleEffectSwitchSkillHandle:SetShouldShowEffect(NewShouldShow) end
