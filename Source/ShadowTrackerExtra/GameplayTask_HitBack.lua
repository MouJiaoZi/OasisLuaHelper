---@meta

---生效范围：DS
---@class UGameplayTask_HitBack: UUAEGameplayTask
---@field OnHitBackStart FOnHitBackStart @击退开始 Delegate (由于丢包或者信息同步不及时等情况，客户端Delegate可能不准确) 生效范围: 服务器 && 客户端
---@field OnHitBackEnd FOnHitBackEnd @击退结束 Delegate (由于丢包或者信息同步不及时等情况，客户端Delegate可能不准确) 生效范围: 服务器 && 客户端
---@field Direction FVector
---@field HitBackEffectCfg FOnHurtEffect_HitBack
local UGameplayTask_HitBack = {}

---@param HitBackDir FVector
---@param HitBackCfg FOnHurtEffect_HitBack
function UGameplayTask_HitBack:OnHitBackStartFunc(HitBackDir, HitBackCfg) end

---@param Reason EOnHitBackEndReason
function UGameplayTask_HitBack:OnHitBackEndFunc(Reason) end
