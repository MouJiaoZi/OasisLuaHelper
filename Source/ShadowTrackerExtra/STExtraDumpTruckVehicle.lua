---@meta

---@class ESTExtraDumpBoxState
---@field VWS_Normal number
---@field VWS_Raising number
---@field VWS_Raised number
---@field VWS_Lowering number
---@field VWS_StopRaising number
---@field VWS_StopLowering number
ESTExtraDumpBoxState = {}


---@class FDumpBoxStateData
---@field DumpBoxState ESTExtraDumpBoxState
---@field TargetAngle number
FDumpBoxStateData = {}


---@class ASTExtraDumpTruckVehicle: ASTExtraWheeledNWVehicle
---@field EnterVehicleOffset FVector
---@field DustEffectVelocity number
---@field MaxRaiseAngle number
---@field RaiseSpeed number
---@field StartEffectAngle number
---@field StartDumpAngle number
---@field FinishDumpTime number
---@field ContainerBoneName string
---@field GuardBoneName string
---@field RaiseCheckBoxExtent FVector
---@field RaiseCheckBoxOffset FTransform
---@field LowerCheckBoxExtent FVector
---@field LowerCheckBoxOffset FTransform
---@field CollisionCheckFailTipsID number
---@field ServerUpdateSoilMesh boolean
---@field ClientUpdateSoilMesh boolean
---@field ForceSimulatingWhenChangeSoil boolean
---@field UseDynamicSoilShapeIndex boolean
---@field SoilMeshMap ULuaArrayHelper<UStaticMesh>
---@field FireDamageAmount number
---@field FireDamageInterval number
---@field DamageTypeClass UDamageType
---@field FireDamageCheckBoxExtent FVector
---@field FireDamageCheckBoxOffset FTransform
---@field CanClimbToRoofMinZ number
---@field DumpBoxStateData FDumpBoxStateData
---@field MaxMoundCount number
---@field CurrentMoundCount number
---@field CurrentRaiseAngle number
---@field DumpTimer number
---@field IsDumpEffectActive boolean
---@field IsDumpBoxMoving boolean
---@field LeftDoorAnimating boolean
---@field RightDoorAnimating boolean
---@field IsDustEffectActive boolean
---@field InitialContainerTrans FTransform
---@field InitialGuardTrans FTransform
---@field CacheContainerTrans FTransform
---@field CacheGuardTrans FTransform
---@field CacheTransInitialized boolean
---@field SoilMeshShapeIndex number
---@field InitialSoilTrans FTransform
---@field FireDamageTimer number
---@field BackAudioStartTime number
---@field BackAudioMinTime number
---@field TurnRightAudioStartTime number
---@field TurnRightAudioMinTime number
---@field VoAudioMinSpeed number
---@field DumpMechineSfxLoop FSTExtraVehicleSfxLoop
---@field DustFallSfxLoop FSTExtraVehicleSfxLoop
---@field VoAudioSfxLoop FSTExtraVehicleSfxLoop
---@field VoBackSfxStartTimer number
---@field VoTurnRightSfxStartTimer number
---@field VoAudioSfxTimer number
local ASTExtraDumpTruckVehicle = {}

---@param SeatIndex number
---@return boolean
function ASTExtraDumpTruckVehicle:CanCharacterExitVehicle(SeatIndex) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraDumpTruckVehicle:TakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end

function ASTExtraDumpTruckVehicle:ReqRaiseDumpBox() end

function ASTExtraDumpTruckVehicle:ReqLowerDumpBox() end

---@return boolean
function ASTExtraDumpTruckVehicle:CanOperateDumpBox() end

---@return boolean
function ASTExtraDumpTruckVehicle:ShowRaiseDumpBoxButton() end

function ASTExtraDumpTruckVehicle:MultiClientAddMound() end

function ASTExtraDumpTruckVehicle:OnClientAddMound() end

---@param NewSoilMesh UStaticMeshComponent
function ASTExtraDumpTruckVehicle:SetBPSoilMesh(NewSoilMesh) end

---@param ShapeIndex number
function ASTExtraDumpTruckVehicle:UpdateSoilShape(ShapeIndex) end

function ASTExtraDumpTruckVehicle:UpdateSoilMesh() end

---@param NewMesh UStaticMesh
function ASTExtraDumpTruckVehicle:SetSoilStaticMesh(NewMesh) end

function ASTExtraDumpTruckVehicle:OnServerFinishDump() end

function ASTExtraDumpTruckVehicle:OnClientStartDumpEffect() end

function ASTExtraDumpTruckVehicle:OnClientStopDumpEffect() end

function ASTExtraDumpTruckVehicle:OnRep_DumpBoxStateData() end

---@param MoundCount number
function ASTExtraDumpTruckVehicle:SetCurrentMoundCount(MoundCount) end

function ASTExtraDumpTruckVehicle:OnRep_CurrentMoundCount() end

---@param DoorIndex number
function ASTExtraDumpTruckVehicle:PlayDoorAnim(DoorIndex) end

---@param DoorIndex number
function ASTExtraDumpTruckVehicle:EndDoorAnim(DoorIndex) end

---@return boolean
function ASTExtraDumpTruckVehicle:CanClimbToRoof() end

function ASTExtraDumpTruckVehicle:OnClientStartDustEffect() end

function ASTExtraDumpTruckVehicle:OnClientStopDustEffect() end
