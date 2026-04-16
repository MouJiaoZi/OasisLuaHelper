---@meta

---AI开火节点
---@class UBTTask_Mob_StartFire: UBTTask_BlackboardBase
---@field WeaponShotType EAIWeaponShootType @AI只支持定点射击，射击模式去掉不再起作用 UPROPERTY(EditAnywhere, meta = (DisplayName = "射击模式"), Category = Config) TEnumAsByte<EShootWeaponShootMode> ShootMode = SWST_TargetDirection;
---@field SingleShootIntervalMin number
---@field SingleShootIntervalMax number
---@field bUpdateShootTargetLocWhenAuto boolean
---@field AimRadius number
---@field Duration number
---@field bFinishTaskWhenJudgeMustReload boolean
local UBTTask_Mob_StartFire = {}
