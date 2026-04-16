---@meta

---@class FRaceVehicleRecordConfig
---@field RecordID number
---@field MapID number
---@field TrackID number
---@field Level number
---@field Filepath string
FRaceVehicleRecordConfig = {}


---@class FCarMusic_TabRes_Wrapper
---@field Rows ULuaArrayHelper<FCarMusic_TabRes>
FCarMusic_TabRes_Wrapper = {}


---@class FVehicleCreateEvent : ULuaMulticastDelegate
FVehicleCreateEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, vehicle: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleCreateEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param vehicle ASTExtraVehicleBase
function FVehicleCreateEvent:Broadcast(vehicle) end


---@class FVehicleDestroyEvent : ULuaMulticastDelegate
FVehicleDestroyEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, vehicle: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDestroyEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param vehicle ASTExtraVehicleBase
function FVehicleDestroyEvent:Broadcast(vehicle) end


---@class AVehicleDataMgr: AActor
---@field VehiclesDataMap ULuaArrayHelper<ASTExtraVehicleBase>
---@field uavDataMap ULuaArrayHelper<ASTExtraVehicleBase>
---@field ReportInterval number
---@field NextVehicleGenerateUID number
---@field NextVehicleGenerateSkillHandleInstanceID number
---@field CurSpawnVehicleInBigWorldNum number
---@field CurPreBufferVehicleInBigWorldNum number
---@field CarMusicTableAvatarID2Rows ULuaMapHelper<number, FCarMusic_TabRes_Wrapper>
---@field VehiclesWaitingForCarMusicTable ULuaArrayHelper<ASTExtraVehicleBase>
---@field AllRaceVehicleRecordConfig ULuaArrayHelper<FRaceVehicleRecordConfig>
---@field fCheckVehicleNoEtryRegionTimer number
---@field fCheckVehicleNoEntryRegionTime number
---@field fCheckVehicleNoEntryTagTimer number
---@field fCheckVehicleNoEntryTagTime number
---@field bOpenCheckVehicleNoEntryByTag boolean
---@field CheckVehicleNoEntryTagOffset FVector
---@field fCheckVehicleNoEntryTagDistance number
---@field VehicleNoEnterComponentRegionArr ULuaArrayHelper<UVehicleNoEntryRegionComponent>
---@field VehicleInApplyRegion ULuaArrayHelper<ASTExtraVehicleBase>
---@field fCheckVehicleSupplyRegionTimer number
---@field fCheckVehicleSupplyRegionTime number
---@field VehicleSupplyRegionArr ULuaArrayHelper<UVehicleSupplyRegionComponent>
---@field CachedSmokeGrenadeList ULuaArrayHelper<AActor>
local AVehicleDataMgr = {}

---@param vehicle ASTExtraVehicleBase
function AVehicleDataMgr:RegisterVehicle(vehicle) end

---@param vehicle ASTExtraVehicleBase
function AVehicleDataMgr:UnRegisterVehicle(vehicle) end

---@param uav ASTExtraVehicleBase
function AVehicleDataMgr:RegisterUAV(uav) end

---@param uav ASTExtraVehicleBase
function AVehicleDataMgr:UnRegisterUAV(uav) end

---@param VehicleType ESTExtraVehicleType
function AVehicleDataMgr:GetVehiclesByType(VehicleType) end

---@return number
function AVehicleDataMgr:GenerateVehicleSkillHandleInstanceID() end

---@param Vehicle ASTExtraVehicleBase
function AVehicleDataMgr:OnSpawnVehicleInBigwWorld(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
function AVehicleDataMgr:OnDestroyVehicleInBigWorld(Vehicle) end

---@return boolean
function AVehicleDataMgr:CanSpawnVehicleInBigWorld() end

---@return number
function AVehicleDataMgr:CanSpawnVehicleNumInBigWorld() end

---@param PreBufferNum number
---@return boolean
function AVehicleDataMgr:AllocSpawnVehiclePreBufferInBigWorld(PreBufferNum) end

---@param PreBufferNum number
function AVehicleDataMgr:ReleaseSpawnVehiclePreBufferInBigWorld(PreBufferNum) end

---@return boolean
function AVehicleDataMgr:CanSpawnVehicleFromPreBufferInBigWorld() end

---@param Vehicle ASTExtraVehicleBase
---@return boolean
function AVehicleDataMgr:OnSpawnVehicleFromPreBufferInBigWorld(Vehicle) end

---@return boolean
function AVehicleDataMgr:CheckUAVNumValid() end

function AVehicleDataMgr:DestroyAllVehicle() end

---@return string
function AVehicleDataMgr:GetNumVehicleInfo() end

function AVehicleDataMgr:InitializeTableData_RaceVehicleRecordConfig() end

---@param MapID number
---@param TrackID number
---@param Level number
function AVehicleDataMgr:GetRaceVehicleRecord(MapID, TrackID, Level) end

---@param actor USceneComponent
function AVehicleDataMgr:AddNoFreezeOn(actor) end

---@param actor USceneComponent
function AVehicleDataMgr:RemoveNoFreezeOn(actor) end

---@param PlayerKey number
function AVehicleDataMgr:OnTlogPreEnd(PlayerKey) end

---@param skinid number
---@return number
function AVehicleDataMgr:GetVehicleSkin_ValueWeight(skinid) end

---@param VehicleLoc FVector
---@param Vehicle ASTExtraVehicleBase
---@return boolean
function AVehicleDataMgr:CanSpawnVehicleInAssignLoc(VehicleLoc, Vehicle) end

---@param VehicleLoc FVector
---@return boolean
function AVehicleDataMgr:CanSpawnVehicleInAssignLocByTag(VehicleLoc) end

---@param vehicleSpaceCheck UVehicleNoEntryRegionComponent
function AVehicleDataMgr:RegisterVehicleNoEntryComponent(vehicleSpaceCheck) end

---@param vehicleSpaceCheck UVehicleNoEntryRegionComponent
function AVehicleDataMgr:UnRegisterVehicleNoEntryComponent(vehicleSpaceCheck) end

---@param DeltaTime number
function AVehicleDataMgr:TickCheckVehicleSupplyRegion(DeltaTime) end

---@param VehicleLoc FVector
---@param Vehicle ASTExtraVehicleBase
---@param VehicleSupplyData FVehicleSupplyData
---@return boolean
function AVehicleDataMgr:JudgeVehicleInApplyRegion(VehicleLoc, Vehicle, VehicleSupplyData) end

---@param vehicleSpaceCheck UVehicleSupplyRegionComponent
function AVehicleDataMgr:RegisterVehicleSupplyComponent(vehicleSpaceCheck) end

---@param vehicleSpaceCheck UVehicleSupplyRegionComponent
function AVehicleDataMgr:UnRegisterVehiclApplyComponent(vehicleSpaceCheck) end

---@param NewInterval number
function AVehicleDataMgr:CheckVehicleAdapterInterval(NewInterval) end
