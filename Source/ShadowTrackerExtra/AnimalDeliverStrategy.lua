---@meta

---@class ESortStrategy
---@field ESortStrategy_Max number @队伍中最大值
---@field ESortStrategy_Min number @队伍中最小值
---@field ESortStrategy_Average number @队伍的平均值
---@field ESortStrategy_Total number @队伍的总和值
ESortStrategy = {}


---@class ESelectStrategy
---@field ESelectStrategy_Forward number @评分由小到大
---@field ESelectStrategy_Reverse number @评分由大到小
ESelectStrategy = {}


---@class EAnimalDeliverStrategy
---@field EAnimalDeliverStrategy_Team number
---@field EAnimalDeliverStrategy_Individual number
EAnimalDeliverStrategy = {}


---动物送快递策略
---@class UAnimalDeliverStrategy: UObject
---@field Priority number @策略优先级， 0是最高的, 255是最低的
---@field SortStrategy ESortStrategy
---@field SelectStrategy ESelectStrategy
local UAnimalDeliverStrategy = {}


---未驯服过年兽
---@class UAnimalDeliverStrategy_NotHandleAnimal: UAnimalDeliverStrategy
local UAnimalDeliverStrategy_NotHandleAnimal = {}


---未送过快递
---@class UAnimalDeliverStrategy_NotDeliverAnimal: UAnimalDeliverStrategy
---@field AnimalType EAnimalType
local UAnimalDeliverStrategy_NotDeliverAnimal = {}


---击杀数
---@class UAnimalDeliverStrategy_KillNum: UAnimalDeliverStrategy
local UAnimalDeliverStrategy_KillNum = {}


---温暖分
---@class UAnimalDeliverStrategy_WarmScore: UAnimalDeliverStrategy
local UAnimalDeliverStrategy_WarmScore = {}


---年兽温暖分高
---@class UAnimalDeliverStrategy_YearBeastWarmScore: UAnimalDeliverStrategy
local UAnimalDeliverStrategy_YearBeastWarmScore = {}


---送快递规则
---@class UAnimalDeliverConfiguration: UObject
---@field TeamDeliverStrategies ULuaArrayHelper<UAnimalDeliverStrategy>
---@field IndividualDeliverStrategies ULuaArrayHelper<UAnimalDeliverStrategy>
local UAnimalDeliverConfiguration = {}
