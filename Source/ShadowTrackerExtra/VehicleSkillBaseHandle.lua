---@meta

---@class EVehicleSkillState
---@field None number
---@field Enable number
---@field Disable number
EVehicleSkillState = {}


---@class FVehicleSkillAdditionalData
---@field Name string
---@field FloatData number
---@field StringData string
---@field IntData number
FVehicleSkillAdditionalData = {}


---@class FVehicleSkillData
---@field SkillID number
---@field IntArray ULuaArrayHelper<number>
---@field FloatArray ULuaArrayHelper<number>
FVehicleSkillData = {}


---这个实现 是参考UE4的 AbilitySystem 战斗组那边也有对应的实现就是PersistBaseComponent的那一套东西 为什么没有用PersistBaseComponent那套东西，是因为那边逻辑和Character有绑定，而且不方便载具这边做自己对应的函数 核心机制就是利用的UObject的值同步机制，实现相关的网络函数 就可以实现对应的UObject的值同步 这个Handle支持值同步 支持RPC，但是RPC前提也是你是Driver，只有主控才可以发RPC 这里面提供的功能变量 主要是 当前载具 SkillHandle对应的物品 CD--ClientCD(为了让客户端CD更平滑不依赖DS的同步) 当前Handle状态是否Enable的状态 UI路径相关功能 核心函数 主要是 OnApplyVehicleSkillHandle(OnApplyVehicleSkillHandle_BP蓝图事件) 当添加这个Handle到VehicleSkillmanger的时候调用， 客户端与DS都会调用这个函数 OnUnApplyVehicleSkillHandle(OnUnApplyVehicleSkillHandle_BP蓝图事件) 从VehicleSKillmanager上删除的时候调用，通用客户端与DS都会调用 Tick函数(NativeVehicleTick蓝图事件)
---@class UVehicleSkillBaseHandle: UObject
---@field bShouldNotifyOnNewPlayerEnter boolean
---@field bHaveApplyHandle boolean
---@field bHandleUnapplyHandle boolean
---@field bHaveDestoryedHandle boolean
---@field ClientCDTimeCounter number
---@field CurCDTime number
---@field SyncCDDiffBase number
---@field LastSyncCDTime number
---@field MaxCDTime number
---@field bCanMultiplyExist boolean
---@field AssociationItemID FItemDefineID
---@field SkillInstanceID number
---@field bEnableState boolean
---@field SkillID number
---@field ExtraUIPath string
---@field bOnlyDriver boolean
local UVehicleSkillBaseHandle = {}

---@return boolean
function UVehicleSkillBaseHandle:IsServer() end

---@return boolean
function UVehicleSkillBaseHandle:IsClient() end

---@return boolean
function UVehicleSkillBaseHandle:IsSimulateClient() end

---@return boolean
function UVehicleSkillBaseHandle:IsAutonomous() end

---@param Manager UVehicleSkillManagerComponent
function UVehicleSkillBaseHandle:InitHandle(Manager) end

function UVehicleSkillBaseHandle:ClientApply() end

---@param VehicleBase ASTExtraVehicleBase
---@return boolean
function UVehicleSkillBaseHandle:CanApplyVehicleSkillHandle(VehicleBase) end

---@param VehicleBase ASTExtraVehicleBase
---@return boolean
function UVehicleSkillBaseHandle:CanApplyVehicleSkillHandle_BP(VehicleBase) end

---@param VehicleBase ASTExtraVehicleBase
function UVehicleSkillBaseHandle:OnApplyVehicleSkillHandle(VehicleBase) end

---@param VehicleBase ASTExtraVehicleBase
function UVehicleSkillBaseHandle:OnApplyVehicleSkillHandle_BP(VehicleBase) end

---@param VehicleBase ASTExtraVehicleBase
---@param Reason number
function UVehicleSkillBaseHandle:OnUnApplyVehicleSkillHandle(VehicleBase, Reason) end

---@param VehicleBase ASTExtraVehicleBase
---@param Reason number
function UVehicleSkillBaseHandle:OnUnApplyVehicleSkillHandle_BP(VehicleBase, Reason) end

---@return string
function UVehicleSkillBaseHandle:ToString() end

---@param DeltaTime number
function UVehicleSkillBaseHandle:NativeVehicleTick(DeltaTime) end

---@return EVehicleSkillErrorCode
function UVehicleSkillBaseHandle:UseVehicleSkill() end

---@param Character ASTExtraBaseCharacter
---@return EVehicleSkillErrorCode
function UVehicleSkillBaseHandle:UseVehicleSkillWithCharacter(Character) end

---@param Result number
function UVehicleSkillBaseHandle:RspUseVehicleSkill(Result) end

---@param Result number
function UVehicleSkillBaseHandle:MulticastUseVehicleSkill(Result) end

---@return EVehicleSkillErrorCode
function UVehicleSkillBaseHandle:DisUseVehicleSkill() end

---@return string
function UVehicleSkillBaseHandle:GetExtraUIPath() end

---@param ControlUI UVehicleControlPanelUI
---@param bDriver boolean
function UVehicleSkillBaseHandle:ShowSkillHandleUI(ControlUI, bDriver) end

---@param ControlUI UVehicleControlPanelUI
function UVehicleSkillBaseHandle:RemoveSkillHandleUI(ControlUI) end

---@param Character ASTExtraPlayerCharacter
---@param HasSkill boolean
function UVehicleSkillBaseHandle:OnNewPlayerEnter(Character, HasSkill) end

---@param IsLeanOut boolean
---@param Character ASTExtraPlayerCharacter
function UVehicleSkillBaseHandle:OnVehicleLeanOut(IsLeanOut, Character) end

---@param Character ASTExtraPlayerCharacter
function UVehicleSkillBaseHandle:OnExitVehicle(Character) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleSkillBaseHandle:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param ItemHandle UBattleItemHandleBase
function UVehicleSkillBaseHandle:OnVehicleAvatarHandleEquipped(ItemHandle) end

function UVehicleSkillBaseHandle:OnVehicleAvatarDataCopied() end

function UVehicleSkillBaseHandle:OnVehicleExplosion() end

---@param NewInstanceID number
function UVehicleSkillBaseHandle:SetSkillInstanceID(NewInstanceID) end

function UVehicleSkillBaseHandle:OnRep_SkillInstanceID() end

function UVehicleSkillBaseHandle:OnRep_EnableState() end

---@param bCan boolean
function UVehicleSkillBaseHandle:SetEnableState(bCan) end

---@param NewTime number
function UVehicleSkillBaseHandle:SetCurCDTime(NewTime) end

function UVehicleSkillBaseHandle:OnRep_CurCDTime() end

---@return boolean
function UVehicleSkillBaseHandle:CheckItemValid() end
