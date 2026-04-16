---@meta

---错误类型
---@class ESaStateErrorType
---@field ESSET_None number
---@field ESSET_PoseSwitch number
---@field ESSET_Vault number @姿态切换
---@field ESSET_SwitchWeapon number @攀爬
---@field ESSET_OpenDoor number @切换武器
---@field ESSET_Rescue number @开关门
---@field ESSET_Picth number @救援
---@field ESSET_Pick number @探头
---@field ESSET_Throw number @拾取物体
---@field ESSET_UseItem number @丢弃物体
---@field ESSET_GrenadeSwitch number @使用物体
---@field ESSET_GrenadeThrow number @切换手雷
---@field ESSET_MeleeAttack number @扔手雷
---@field ESSET_EnterVehicle number @近战
---@field ESSET_ExitVehicle number @上车
---@field ESSET_BadPickUp number @下车
---@field ESSET_DriveTurnOver number @长时间未拾取
---@field ESSET_DriveUnderWater number @开翻车
---@field ESSET_DriveFreqHit number @开车入水
---@field ESSET_DriveStuck number @开车频繁碰撞
---@field ESSET_Max number @开车卡住
ESaStateErrorType = {}


---错误配置
---@class FSaStateReportConfig
---@field ReportThres number @填写值应小于32,可减小ReportDuration来提高频率
---@field ReportCoolDown number
---@field ReportDuration number
FSaStateReportConfig = {}


---超参数错误采集 玩家数据也在这里 这两个都是超参数的通用逻辑，不太可能分开配
---@class UModelStator_SaStat: UModelStatorBase
---@field ReportConfig ULuaMapHelper<ESaStateErrorType, FSaStateReportConfig> @个别的上报配置 没有配置的话走DefaultReportConfig
---@field DefaultReportConfig FSaStateReportConfig @通用的上报配置
---@field SoundSearchTimeThres number @听到声音后判定是否索敌成功的时间
---@field SoundSearchSucTimeSpan number @听到声音后判定索敌成功后，统计击杀和伤害的时间 如果可见的话会一直更新，知道不可见后经过这个时间才会结束统计
---@field HitDataLookBackTime number @命中数据等待更新的时间长度
---@field HitDistanceTimeThres number @钢枪距离的统计时间差
---@field BadPickUpTime number @长时间没有拾取物资的时间
local UModelStator_SaStat = {}
