---@meta

---玩家伤害数据结构
---@class FPlayerDamageData
FPlayerDamageData = {}


---子阶段伤害数据结构
---@class FSubStageDamageData
FSubStageDamageData = {}


---玩家伤害统计组件 用于统计每个玩家造成的伤害、击杀等战斗数据
---@class UPlayerDamageStatsComponent: UGameModeBaseComponent
---@field PlayerDamageMap ULuaMapHelper<number, FPlayerDamageData> @存储所有玩家的伤害数据
---@field SubStageDamageData ULuaArrayHelper<FSubStageDamageData> @子阶段伤害数据
---@field DamageTypeCache ULuaMapHelper<number, string> @伤害类型名称缓存：DamageType指针 -> 伤害名称
---@field bStatsInitialized boolean @是否已初始化
---@field bRequireActiveSubStage boolean @当为 true 时，如果当前没有活动的子阶段（CurrentSubStageData 为空），则不执行统计逻辑
local UPlayerDamageStatsComponent = {}

---@param Controller APlayerController
function UPlayerDamageStatsComponent:PostLogin(Controller) end

---绑定PlayerController的伤害事件
---@param PlayerController ASTExtraPlayerController
function UPlayerDamageStatsComponent:BindDamageEvents(PlayerController) end

---解绑PlayerController的伤害事件
---@param PlayerController ASTExtraPlayerController
function UPlayerDamageStatsComponent:UnbindDamageEvents(PlayerController) end

---开始新子阶段
---@param SubStageName string
function UPlayerDamageStatsComponent:OnStartNewSubStage(SubStageName) end

---结束子阶段
---@param SubStageName string
function UPlayerDamageStatsComponent:OnEndSubStage(SubStageName) end

---清除指定玩家的伤害统计数据
---@param PlayerUID number
---@return boolean
function UPlayerDamageStatsComponent:ClearPlayerDamageStats(PlayerUID) end

---获取所有玩家的伤害数据
function UPlayerDamageStatsComponent:GetAllPlayerDamageData() end

---获取指定玩家的统计信息（JSON格式）
---@param PlayerUID number
---@param OutGlobalStats string
---@param OutSubStageStats string
---@param InExtraJSON string
---@param bFormatted boolean
---@return boolean
function UPlayerDamageStatsComponent:GetPlayerStatsJSON(PlayerUID, OutGlobalStats, OutSubStageStats, InExtraJSON, bFormatted) end

---清除所有统计数据
function UPlayerDamageStatsComponent:ClearAllStats() end

---打印所有统计数据（用于调试）
function UPlayerDamageStatsComponent:PrintAllStats() end

---处理PlayerController的伤害事件回调
---@param Damage number
---@param DamageType UDamageType
---@param EventInstigator AController
---@param DamagedActor AActor
---@param DamageCauser AActor
---@param DamageFlags EDamageEventFlags
function UPlayerDamageStatsComponent:OnInstigatedDamage(Damage, DamageType, EventInstigator, DamagedActor, DamageCauser, DamageFlags) end
