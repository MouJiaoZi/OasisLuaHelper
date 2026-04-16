---@meta

---@class EProjectileSplitType
---@field Fan number @扇形
---@field Cone number @锥形
---@field CustomFunc number @自定义方向
EProjectileSplitType = {}


---@class EProjectileSplitDirectionType
---@field ForwardDirection number @生成后向前移动
---@field ReflectedDirection number @生成后沿击中面反射方向移动
EProjectileSplitDirectionType = {}


---@class FSplitProjectileRingData
---@field Radius FFloatGetter
FSplitProjectileRingData = {}


---@class FSplitProjectileFanData
---@field FanAngle FFloatGetter
FSplitProjectileFanData = {}


---@class FSplitProjectileConeData
---@field ConeAngle FFloatGetter
FSplitProjectileConeData = {}


---暂时只考虑发射时一个子弹分裂成多个子弹
---@class UProjectileActionEffect_Split: UProjectileActionEffectBase
---@field ProjectileTemplate AUniversalProjectileCore
---@field MaxSplitTimes FIntGetter
---@field ProjectileNum FIntGetter
---@field SplitDirectionType EProjectileSplitDirectionType
---@field SubProjectileParamsOverride FSubProjectileParamsOverride
---@field SplitType EProjectileSplitType
---@field RingData FSplitProjectileRingData
---@field FanData FSplitProjectileFanData
---@field ConeData FSplitProjectileConeData
local UProjectileActionEffect_Split = {}

---@param Owner AActor
---@param InTransform FTransform
function UProjectileActionEffect_Split:SpawnCustomFunc(Owner, InTransform) end
