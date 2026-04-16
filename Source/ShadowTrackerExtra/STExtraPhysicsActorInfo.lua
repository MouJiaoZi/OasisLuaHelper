---@meta

---@class ETakeDamageDirByPhysics
---@field Normal number @实际方向，不会修改
---@field UseAttackerCentreStandard number @改为攻击者中心水平方向
---@field UseAttackedCentreStandard number @改为受击者中心水平方向
---@field UseAttackerHeadTiltUp number @改为斜向攻击者头顶高度点
---@field UseAttackedHeadTiltUp number @改为斜向受击者头顶高度点
---@field UseAttackedTiltFoot number @改为斜向受击者的脚底点
ETakeDamageDirByPhysics = {}


---@class EApplyImpactPhysicsForcesDir
---@field Normal number @实际方向，不会修改
---@field UseBumpedImpactPointCentre number @改为被碰撞者中心,方向不变
---@field UseBumpedImpactPointCentreAndDirAlterStandard number @改为被碰撞者中心水平方向
---@field UseBumpedImpactPointCentreAndDirStandard number @改为被碰撞者中心,从碰撞者指向被碰撞者水平方向
EApplyImpactPhysicsForcesDir = {}
