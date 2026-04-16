---@meta

---@class FDetectWorldInfoSkillQueryResult
---@field Actor AActor
FDetectWorldInfoSkillQueryResult = {}


---@class UDetectWorldInfoSkill: UPersistEffectWithState
---@field bOpenCircleDetect boolean @是否开启毒圈检测
---@field bOpenVehicleDetect boolean @是否开启载具检测
---@field VehicleDetectRange number @载具检测范围
---@field VehicleScanCircleMapMarkID number @载具扫描圈地图标记ID
---@field VehicleMapMarkID number @载具地图标记ID
---@field VehicleSceneMarkID number @载具场景标记ID
---@field bOpenAirDropDetect boolean @是否开启空投检测
---@field AirDropMapMarkID number @空投地图标记ID
---@field bOpenSignalGunDetect boolean @是否开启信号枪检测
---@field SignalGunClassArray ULuaArrayHelper<AActor> @信号枪类数组
---@field SignalGunDetectRange number @信号枪检测范围
---@field SignalGunMapMarkID number @信号枪地图标记ID
---@field SignalGunSceneMarkID number @信号枪场景标记ID
---@field bOpenMilitaryBoxDetect boolean @是否开启军事物资箱检测
---@field MilitaryBoxClassArray ULuaArrayHelper<AActor> @军事物资箱类数组
---@field MilitaryBoxDetectRange number @军事物资箱检测范围
---@field MilitaryBoxMapMarkID number @军事物资箱地图标记ID
---@field MilitaryBoxSceneMarkID number @军事物资箱场景标记ID
local UDetectWorldInfoSkill = {}

---@param Center FVector
---@param Range number
---@param ExpectedClass UClass
---@param OutQueryResult ULuaArrayHelper<FDetectWorldInfoSkillQueryResult>
function UDetectWorldInfoSkill:GetAllActorsByClass(Center, Range, ExpectedClass, OutQueryResult) end

---@return FVector
function UDetectWorldInfoSkill:DetectNextCircle() end

---检测范围内的载具
---@param Origin FVector
---@param Range number
function UDetectWorldInfoSkill:DetectVehicles(Origin, Range) end

---判断载具是否合法的条件判断函数（蓝图可实现）
---@param Vehicle ASTExtraVehicleBase
---@return boolean
function UDetectWorldInfoSkill:IsVehicleValid(Vehicle) end

---检测范围内的信号枪
---@param Origin FVector
---@param Range number
function UDetectWorldInfoSkill:DetectSignalGuns(Origin, Range) end

---检测范围内的军事物资箱
---@param Origin FVector
---@param Range number
function UDetectWorldInfoSkill:DetectMilitaryBoxes(Origin, Range) end
