---@meta

---@class ANewFakePlayerAIController: AFakePlayerAIController
---@field LastRandomWayPoint AActor
---@field CurRandomWayPoint AActor
---@field CanEquipGrenadeNum number
---@field nowEquipGrenadeNum number
---@field CanEquipEscapeProjectileNum number
---@field nowEquipEscapeProjectileNum number
---@field CanhaveMedicalCapacity number
---@field nowMedicalCapacity number
---@field CanhaveMeatCapacity number
---@field nowMeatCapacity number
---@field MaxWeaponAIFullVaule number
---@field NowWeaponFullVaue number
---@field MaxEquipWeaponFullVaue number
---@field nowWeaponList ULuaArrayHelper<number>
---@field CanHaveWeaponPartsVaules number
---@field NowWeaponPartsVaules number
---@field CanHaveMaterialsVaules number
---@field NowMaterialsVaules number
---@field isHasMeleeWeapon boolean
---@field MaxEquipAIFullVaule number
---@field BackPackFullVaule number
---@field HeadFullVaule number
---@field BodyFullVaule number
---@field Bullet9Num number
---@field Bullet7PointNum number
---@field Bullet5PointNum number
---@field BulletPoint12Num number
---@field BulletPoint45Num number
---@field BulletPoint300Num number
---@field ArrowNum number
---@field CanHaveBountyNum number
---@field NowHaveBountyNum number
---@field CanHaveGunMasterPartNum number
---@field NowHaveGunMasterPartNum number
---@field CanHaveGoldBarNum number
---@field NowHaveGoldBarNum number
---@field CanHaveDisguiseCandyNum number
---@field NowHaveDisguiseCandyNum number
---@field AutoOpenDoorRange number
---@field CurHardPointAreaID number
---@field bRunFightingBehaviorTreeWhenProcessInFighting boolean @是否在战斗状态时 Possess, 执行战斗行为树
---@field bAIHighThrow boolean
---@field AIDebugInfo ULuaArrayHelper<string>
local ANewFakePlayerAIController = {}

---@param NewPawn APawn
function ANewFakePlayerAIController:SetCurAttackMeEnemy(NewPawn) end

---@param HitPlayer AActor
---@param bNeedJudgeCamp boolean
function ANewFakePlayerAIController:CallShowMedicBulletHitTips(HitPlayer, bNeedJudgeCamp) end
