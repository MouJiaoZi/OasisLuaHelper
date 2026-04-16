---@meta

---@class FBTZombieModeLevelZombiePlan
---@field ID number
---@field PlanID number
---@field MonsterCount number
---@field MonsterID number
FBTZombieModeLevelZombiePlan = {}


---@class FBTZombieModeLabelOfMonster
---@field ID number
---@field Weight number
---@field Label number
---@field MonsterID number
FBTZombieModeLabelOfMonster = {}


---@class FMonsterTreasureBoxTableData
---@field ID number
---@field PathName string
---@field TotalHP number
---@field TotalTime number
---@field BrokenHPPropotion number
---@field DropBoxId number
---@field MetaData string
FMonsterTreasureBoxTableData = {}


---@class UMonsterTreasureBoxProbeComponent: UGameModeProbeComponent
---@field AllMonsterSpotGroups ULuaArrayHelper<UMonsterTreasureBoxGroupComponent>
---@field CurrentMonsterSpotGroups ULuaArrayHelper<UMonsterTreasureBoxGroupComponent>
---@field MonsterTreasureBoxTableDatas ULuaArrayHelper<FMonsterTreasureBoxTableData> @̬************
---@field ZombieModeLabelOfMonsters ULuaArrayHelper<FBTZombieModeLabelOfMonster>
---@field ZombieModeLevelZombiePlans ULuaArrayHelper<FBTZombieModeLevelZombiePlan>
---@field MaxLiveMonsterNum number
---@field NeedToUpdateMonsterSpotGroups ULuaArrayHelper<UMonsterTreasureBoxGroupComponent>
local UMonsterTreasureBoxProbeComponent = {}

function UMonsterTreasureBoxProbeComponent:InitialItemTable() end

---@param WaveNum number
---@param MonsterTreasureBoxNum number
---@param DistanceWeight number
---@param AngleWeight number
---@param MonsterRefeshPlanID number
function UMonsterTreasureBoxProbeComponent:RangeMonsterTreasureBoxGroups(WaveNum, MonsterTreasureBoxNum, DistanceWeight, AngleWeight, MonsterRefeshPlanID) end

---@param GroupSpotComponent UGroupSpotSceneComponent
function UMonsterTreasureBoxProbeComponent:RegisterGroupSpotComponent(GroupSpotComponent) end

function UMonsterTreasureBoxProbeComponent:GeneratorMonsterTreaseureBox() end

---@param id number
---@return FMonsterTreasureBoxTableData
function UMonsterTreasureBoxProbeComponent:GetMonsterTreasureBoxTableDataByID(id) end

---@param id number
---@return FBTZombieModeLabelOfMonster
function UMonsterTreasureBoxProbeComponent:GetZombieModeLabelOfMonsterTableDataByID(id) end

---@param Label number
function UMonsterTreasureBoxProbeComponent:GetZombieModeLabelOfMonsterTableDataByLabel(Label) end

---@param MonsterID number
function UMonsterTreasureBoxProbeComponent:GetZombieModeLabelOfMonsterTableDataByMonsterId(MonsterID) end

---@param id number
function UMonsterTreasureBoxProbeComponent:GetZombieModeLevelZombiePlanTableDataByID(id) end

---@param DeltaTime number
function UMonsterTreasureBoxProbeComponent:Update(DeltaTime) end
