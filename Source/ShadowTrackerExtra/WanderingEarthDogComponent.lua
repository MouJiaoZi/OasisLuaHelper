---@meta

---流浪地球机械狗，挂在玩家蓝图上
---@class UWanderingEarthDogComponent: UActorComponent
---@field bHaveDog boolean @是否有机械狗
---@field DogLocation FVector @机械股坐标，用于没有机械狗Pawn时UI显示
local UWanderingEarthDogComponent = {}

---@param InUIOperateType number
function UWanderingEarthDogComponent:ServerTryOperatePetDog(InUIOperateType) end

---@param bShow boolean
function UWanderingEarthDogComponent:ServerSetDogIconVisibility(bShow) end

---@param bShow boolean
function UWanderingEarthDogComponent:SetDogIconVisibility(bShow) end

---@param InPetDog ACharacter
function UWanderingEarthDogComponent:SetPetDog(InPetDog) end

---@return boolean
function UWanderingEarthDogComponent:HavePetDog() end

function UWanderingEarthDogComponent:OnRep_DogChange() end

---@param InUIOperateType number
function UWanderingEarthDogComponent:TryOperatePetDog(InUIOperateType) end
