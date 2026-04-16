---@meta

---血钻武器特效子系统 从 WeaponFunctionModule_BloodDiamondWeaponFX 移植的功能 用于管理血钻武器的粒子特效显示
---@class UAvatarSubSystem_PistolEffect: UAvatarSubSystem, IBloodDiamondDataInterface
---@field BloodDiamondCnt number @血钻数量
---@field bInvisibleInFPP boolean @是否在第一人称时隐藏
---@field InvisibleGameplayTags FGameplayTagContainer @在这些GameplayTag状态下隐藏特效
local UAvatarSubSystem_PistolEffect = {}

---更新血钻数量（服务器端）
function UAvatarSubSystem_PistolEffect:UpdateBloodDiamondCnt() end

---尝试创建武器特效（客户端）
---@param SlotID number
---@param bEquip boolean
function UAvatarSubSystem_PistolEffect:TryCreateWeaponFX(SlotID, bEquip) end

---血钻数量复制回调
function UAvatarSubSystem_PistolEffect:OnRep_BloodDiamondCnt() end

---尝试加载并创建武器特效
function UAvatarSubSystem_PistolEffect:TryLoadAndCreateWeaponFX() end

---武器特效加载完成回调
function UAvatarSubSystem_PistolEffect:OnWeaponFXLoaded() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarSubSystem_PistolEffect:OnAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---更新武器特效组件
function UAvatarSubSystem_PistolEffect:UpdateWeaponFXComp() end
