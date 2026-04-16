---@meta

---@class FCacheBulletHitInfo
---@field HitData FBulletHitInfoUploadData
---@field HitDetail FLocalShootHitData
FCacheBulletHitInfo = {}


---@class FCacheBulletHitInfoSplitGroup
FCacheBulletHitInfoSplitGroup = {}


---@class UBulletHitInfoUploadComponent: UWeaponLogicBaseComponent
---@field UploadInterval number
---@field bUnregisterTickOnInit boolean
---@field bCheckFlushOnShoot boolean @是否在添加射击数据时检查发送 一般武器不需要打开，当前车载喷火器由于是驾驶位武器，直接修改tick的控制逻辑过于复杂，这边额外的加一个检查
local UBulletHitInfoUploadComponent = {}

---@param Data FBulletHitInfoUploadData
---@param ShootData FLocalShootHitData
function UBulletHitInfoUploadComponent:AddHitData(Data, ShootData) end

---是否开启子弹上报的按碰撞与非碰撞的优化 http://tapd.oa.com/CJGame/prong/stories/view/1020386762863963117
---@param InUseSplit boolean
function UBulletHitInfoUploadComponent:ToggleBulletUploadSplit(InUseSplit) end

---控制射击时数据上报开关状态
---@param InUseSplit boolean
function UBulletHitInfoUploadComponent:ToggleBulletUpShootSplit(InUseSplit) end

function UBulletHitInfoUploadComponent:Flush() end

function UBulletHitInfoUploadComponent:PostAddUploadData() end

---@param HitData FBulletHitInfoUploadData
---@param HitDetail FLocalShootHitData
---@return boolean
function UBulletHitInfoUploadComponent:CheckAndCacheBulletHitData(HitData, HitDetail) end

function UBulletHitInfoUploadComponent:FlushCacheHitInfioList() end

function UBulletHitInfoUploadComponent:HandleOnWeaponStartFire() end

function UBulletHitInfoUploadComponent:HandleOnWeaponStopFire() end
