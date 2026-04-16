---@meta

---运动器组件
---@class UUGCMotionComponent: UActorComponent
---@field ConfigDataList ULuaArrayHelper<FUGCMotionConfigData>
---@field RunningDataList ULuaArrayHelper<FUGCMobileMotionDataGroup>
---@field SyncData_Net FUGCMobileMotionSyncData_Net
---@field MotionMachineList ULuaArrayHelper<UUGCMobileMotionMachine>
---@field SimpleEditorTest boolean
---@field bMotionAuthority boolean
---@field bInitRunData boolean
---@field SyncDataVersionTime number
---@field bStarted boolean
---@field LastRepWorldTime number
local UUGCMotionComponent = {}

---@return boolean
function UUGCMotionComponent:Moveable() end

---@return boolean
function UUGCMotionComponent:IsMoving() end

---@param bForceStart boolean
function UUGCMotionComponent:StartPlayMotionMachine(bForceStart) end

---开始运行特定运动器
---生效范围S
---@param ConfigID number @运动器索引，默认参数-1(所有运动器)
function UUGCMotionComponent:StartMotion(ConfigID) end

---停止特定运动器
---生效范围S
---@param ConfigID number @运动器索引，默认参数-1(所有运动器)
function UUGCMotionComponent:PauseMotion(ConfigID) end

---重置特定运动器
---生效范围S
---@param ConfigID number @运动器索引，默认参数-1(所有运动器)
function UUGCMotionComponent:ResetMotion(ConfigID) end

---@param SyncData FUGCMobileMotionSyncData
---@param bContainAutoStart boolean
function UUGCMotionComponent:GetSyncData(SyncData, bContainAutoStart) end

---@param SyncData FUGCMobileMotionSyncData
function UUGCMotionComponent:ApplySyncData(SyncData) end

---@param SyncData FUGCMobileMotionSyncData_Net
function UUGCMotionComponent:GetSyncData_Net(SyncData) end

---@param SyncData FUGCMobileMotionSyncData_Net
function UUGCMotionComponent:ApplySyncData_Net(SyncData) end

---@param SyncData FUGCMobileMotionStartData
function UUGCMotionComponent:ApplyStartData(SyncData) end

---@param Event number
function UUGCMotionComponent:ReceiveEvent(Event) end

---@param InitWorldTime number
function UUGCMotionComponent:InitRunData(InitWorldTime) end

---@return number
function UUGCMotionComponent:GetMotionWorldTime() end

---@param DataIndex number
---@param EssentialData FUGCMobileMotionEssentialData
function UUGCMotionComponent:SetEssentialData(DataIndex, EssentialData) end

---@param WorldTime number
---@param DeltaTime number
function UUGCMotionComponent:TickWorldTime(WorldTime, DeltaTime) end

---@param Event number
function UUGCMotionComponent:HandleEvent(Event) end

---@param OutInstantaneous FTransform
---@param OutNextInterval FTransform
---@param TargetComponent USceneComponent
---@param WorldTime number
---@return boolean
function UUGCMotionComponent:GetInstantaneousDeltaTransform(OutInstantaneous, OutNextInterval, TargetComponent, WorldTime) end

---@param Target AActor
function UUGCMotionComponent:SetMotionStatusOnActor(Target) end

---@param SyncData FUGCMobileMotionSyncData
function UUGCMotionComponent:ClientCheckMotionSyncData(SyncData) end

---@return boolean
function UUGCMotionComponent:NeedSync() end

function UUGCMotionComponent:OnSync() end

function UUGCMotionComponent:OnRep_SyncData() end
