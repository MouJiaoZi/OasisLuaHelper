---@meta

---@class ESTExtraVehicleAnimalType
---@field NONE number
---@field Animal_SnowLeopard number
---@field Animal_Capybara number
---@field Animal_Owl number
---@field Animal_Panda number
ESTExtraVehicleAnimalType = {}


---ؾ߶＼ܻ
---@class UVehicleAnimalSkillHandle: UVehicleSkillBaseHandle
---@field AnimalType ESTExtraVehicleAnimalType
---@field ApplySkillSeatIndex number
---@field AttachAnimalType ULuaArrayHelper<ESTExtraVehicleAnimalType>
---@field bUsingSkill boolean
---@field ValidVehicleType ULuaArrayHelper<ESTExtraVehicleType>
---@field ModelScaleUAZ number
---@field ModelScaleDacia number
---@field SkillEffectContinueTime number
---@field SeatImageBrush FSlateBrush
---@field CheckItemValidInterval number
---@field CurCheckItemValidTimer number
local UVehicleAnimalSkillHandle = {}

---@param bUse boolean
function UVehicleAnimalSkillHandle:SetUsingSkill(bUse) end

function UVehicleAnimalSkillHandle:OnRep_UsingSkill() end

---@param Model AAnimActorModel
function UVehicleAnimalSkillHandle:SetAnimalActorModel(Model) end

function UVehicleAnimalSkillHandle:OnRep_AnimalActorModel() end

---@return string
function UVehicleAnimalSkillHandle:ToString() end

function UVehicleAnimalSkillHandle:CreateAnimalActorModel() end

function UVehicleAnimalSkillHandle:OnRep_ActivityActor() end

---@param NewActivityActor AActivityBaseActor
function UVehicleAnimalSkillHandle:SetActivityActor(NewActivityActor) end

---@param Vehicle ASTExtraVehicleBase
---@param CheckActor AActivityBaseActor
---@param Radius number
---@param OverLapTestChannel ECollisionChannel
---@return boolean
function UVehicleAnimalSkillHandle:CheckOwlActorLocValid(Vehicle, CheckActor, Radius, OverLapTestChannel) end

---@return boolean
function UVehicleAnimalSkillHandle:CheckItemValid() end

function UVehicleAnimalSkillHandle:OnItemInValid() end

function UVehicleAnimalSkillHandle:OnVisibiltyInValid() end
