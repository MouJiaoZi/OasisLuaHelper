---@meta

---处理物理模拟之后 做一些操作  比如说轮胎印
---@class FAnimalModelPostPhysxTick
FAnimalModelPostPhysxTick = {}


---@class AAnimActorModel: AActor
---@field AnimalType ESTExtraVehicleAnimalType
---@field AttachSocketName string
---@field bNeedAttachOtherAnimalModel boolean
---@field AttachOtherAnimalSocketName string
---@field bShowMesh boolean
---@field bClientCanShow boolean
---@field ClientShowWeightScore number
---@field MaxFollowSpeed number
---@field OverMaxSpeedInterpSpeed number
---@field RotationInterpSpeed number
---@field bEnableCheckVisiblity boolean
---@field bCurCheckVisiblity boolean
---@field IgnoreAnimalOverlapTag string
---@field OverlapBoxExtent FVector
---@field OverlapBoxOffset FVector
---@field TickVisiblityInterval number
---@field CurTickVisiblityCounter number
---@field bCheckRoll boolean
---@field MaxVisiblityRoll number
---@field bCheckPitch boolean
---@field MaxVisiblityPitch number
---@field TestPointCheckPercent number
---@field OverLapTestChannel ECollisionChannel
---@field bCheckSeaLevel boolean
---@field CheckFireWorkSocket string
---@field bEnablePostPhysXTickClient boolean
---@field YawOffsetConfig number
---@field LastTargetPos FVector
---@field PostPhysXTick FAnimalModelPostPhysxTick
local AAnimActorModel = {}

---@param Flag boolean
function AAnimActorModel:SetMeshShow(Flag) end

function AAnimActorModel:OnRep_ShowMesh() end

---@param Flag boolean
---@param Reason number
function AAnimActorModel:SetClientCanShow(Flag, Reason) end

---@param SkillHandle UVehicleAnimalSkillHandle
function AAnimActorModel:SetAnimalSkillHandle(SkillHandle) end

function AAnimActorModel:OnRep_AnimalSkillHandle() end

---@param VehicleBase ASTExtraVehicleBase
---@param SkillManager UVehicleSkillManagerComponent
function AAnimActorModel:OnAttachModelToVehicle(VehicleBase, SkillManager) end

---@param VehicleBase ASTExtraVehicleBase
---@param SkillManager UVehicleSkillManagerComponent
function AAnimActorModel:OnRemoveModelFromVehicle(VehicleBase, SkillManager) end

---@param bNewVisibility boolean
---@param bPropagateToChildren boolean
---@param bForceNoPropagate boolean
function AAnimActorModel:SetAnimalMeshVisible(bNewVisibility, bPropagateToChildren, bForceNoPropagate) end

---@return string
function AAnimActorModel:ToString() end

function AAnimActorModel:PlaySkillAnim() end

---@param DeltaTime number
---@param YawOffset number
function AAnimActorModel:FollowVehicle(DeltaTime, YawOffset) end

---@param DeltaTime number
function AAnimActorModel:TickVisiblity(DeltaTime) end

---@return boolean
function AAnimActorModel:CheckVisiblityInternal() end

---@param DeltaTime number
function AAnimActorModel:PostPhysicsTick(DeltaTime) end
