---@meta

---@class ASTExtraBombDrone: ASTExtraUAVVehicle
---@field ExplosionRadius number @实际爆炸半径，用于UI显示
---@field UIDefaultRadius number
---@field BombProjectileClass AEliteProjectile
---@field SpawnOffsetZ number
---@field SpawnRotation FRotator
---@field MaxBombCount number @最大装弹量
---@field LaunchBombInterval number @投弹CD
---@field BombSpawnBones ULuaArrayHelper<string> @弹体生成位置骨骼
---@field LaunchCompleteDestroySelfTime number @投弹完毕后迟延销毁时间
---@field CurrentBombCount number
---@field LaunchBombTimer number
---@field LaunchBombTimerPercent number
---@field ReplicatedIsAiming boolean @服务器同步下来的瞄准状态，给回放和观战使用
local ASTExtraBombDrone = {}

---@param HealthState ESTExtraVehicleHealthState
function ASTExtraBombDrone:ClientOnVehicleHealthStateChangedNativeEvent(HealthState) end

function ASTExtraBombDrone:TryLaunchBomb() end

function ASTExtraBombDrone:ReqLaunchBomb() end

function ASTExtraBombDrone:RspLaunchBomb() end

---@param OutPosition FVector2D
---@param OutScale FVector2D
function ASTExtraBombDrone:GetUIPredictOffset(OutPosition, OutScale) end

function ASTExtraBombDrone:OnRep_CurrentBombCount() end

---@return boolean
function ASTExtraBombDrone:IsAiming() end

---@param NewIsAiming boolean
function ASTExtraBombDrone:SetIsAiming(NewIsAiming) end

---@param NewBombCount number
function ASTExtraBombDrone:SetBombCount(NewBombCount) end

---@param NewIsAiming boolean
function ASTExtraBombDrone:SendIsAimingToServer(NewIsAiming) end

function ASTExtraBombDrone:OnRep_ReplicatedIsAiming() end
