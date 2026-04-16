---@meta

---ݼ߼ üܾǽɫϳɶӦģattachؾϣнɫ³ʱȥ̬ضӦװηݹ
---@class UVehicleKiteSkillHandle: UVehicleSkillBaseHandle
---@field ValidVehicleType ULuaArrayHelper<ESTExtraVehicleType>
---@field CheckItemValidInterval number
---@field CurCheckItemValidTimer number
local UVehicleKiteSkillHandle = {}

---@param Model ADecorateKite
function UVehicleKiteSkillHandle:SetKiteActorModel(Model) end

function UVehicleKiteSkillHandle:OnRep_KiteActorModel() end

function UVehicleKiteSkillHandle:CreateKiteActorModel() end

---@return boolean
function UVehicleKiteSkillHandle:CheckItemValid() end

function UVehicleKiteSkillHandle:OnItemInValid() end
