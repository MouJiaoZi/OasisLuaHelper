---@meta

---命中校验用的导出的骨骼数据 在PreSave中获取
---@class FAcBoneGeomsData
---@field bIsValid boolean
---@field DataInfo string
---@field BoneGeoms ULuaMapHelper<string, FKAggregateGeom> @骨骼碰撞信息
---@field OrigPath string @导出信息时的源骨骼路径，方便进行对比
FAcBoneGeomsData = {}


---@class FShootVerifyConfig
---@field ClientMuzzleHeightMax number @客户端枪口的最大离脚底高度
---@field ClientPureMuzzleHeightMax number @只计算枪口高度时的最大高度
FShootVerifyConfig = {}


---射击受击反外挂Asset
---@class UShootVictimAntiCheatAsset: UObject
---@field BoneGeoms ULuaMapHelper<string, FKAggregateGeom> @骨骼碰撞信息
---@field OrigPath string @导出信息时的源骨骼路径，方便进行对比
local UShootVictimAntiCheatAsset = {}


---射击校验逻辑组件 Note: 新加的校验放到这里，方便进行管理
---@class UEntityAntiCheatComponent: UActorComponent
---@field bVerifyClientHitAndBullet boolean @是否开启被命中者和子弹位置之间的穿墙检测
---@field bVerifyClientMuzzle boolean @是否对客户端上报的枪口信息进行校验
---@field VictimShootVerify FShootVerifyConfig @被射击时的校验配置
---@field VictimCollision UPhysicsAsset @被攻击校验用的
---@field AcGeomData FAcBoneGeomsData @校验用的骨骼资源
local UEntityAntiCheatComponent = {}
