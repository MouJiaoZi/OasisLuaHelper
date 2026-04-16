---@meta

---@class FSTExtraAnimFM_HorseSubAnimReplace
---@field CurrentWeaponAnimUID FHorseWeaponAnimTypeConfig
---@field bCurrentNeedScopeSubAnim boolean
FSTExtraAnimFM_HorseSubAnimReplace = {}


---为减少马这边 FM 的数量 将弓箭 Accumulate 相关参数也放到此 FM
---@class FSTExtraAnimFM_Horse_ADS
---@field b_IsLocalScoping_ADS boolean
---@field e_WeaponState_ADS EFreshWeaponStateType
---@field f_AccmulateFMRate_ADS number
---@field b_AccmulateFMRate_ADS boolean
---@field b_AccmulateFMRateReal_ADS boolean
---@field b_AccmulateFMRateMax_ADS boolean
---@field AimAnimBSParam_ADS FRotator
---@field f_ScopeAimRotation FRotator
---@field f_IsAccmulateRateThrshold number
FSTExtraAnimFM_Horse_ADS = {}


---@class FRefreshFMHorseAnimDelegate : ULuaMulticastDelegate
FRefreshFMHorseAnimDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsNeedRefresh: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRefreshFMHorseAnimDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsNeedRefresh boolean
function FRefreshFMHorseAnimDelegate:Broadcast(bIsNeedRefresh) end


---@class USTExtraAnimFM_VehicleHorse: UAnimFunctionModule_ObjInstance
---@field bIsDriver boolean
---@field bIsAimLimit boolean
---@field bHoldingWeapon boolean
---@field b_WeaponState_EQ_Reload boolean
---@field b_IsLocalScoping boolean
---@field AimAnimBSParam FRotator
---@field AimAnimBSParam_Limit FRotator
---@field bIsCastingSill boolean
---@field f_IdleNeckBlendWeight number
---@field bIsMovementAdditive boolean
---@field bIsFalseIK boolean
---@field bIsFalseLeftHandIK boolean
---@field bDisableBasePoseHandBolting boolean
---@field DriverTagName string
---@field PassengerTagName string
---@field SwitchPoseTransTime number @movement 和 AO 切换时可以有过渡表现
---@field b_MovementChanged boolean
---@field b_AimOffsetChanged boolean
---@field PassengerYawAreaUseBasePose_Max number
---@field PassengerYawAreaUseBasePose_Min number
local USTExtraAnimFM_VehicleHorse = {}

function USTExtraAnimFM_VehicleHorse:OnHorseAnimNeedRefresh() end

---@param Character ASTExtraPlayerCharacter
---@param NewSeatType ESTExtraVehicleSeatType
function USTExtraAnimFM_VehicleHorse:OnHorseSeatChanged(Character, NewSeatType) end

function USTExtraAnimFM_VehicleHorse:NeedUpdateAnim() end

---@return boolean
function USTExtraAnimFM_VehicleHorse:GetCurrentMeshIsNewFPP() end


---@class USTExtraAnimFM_Horse_Grenade: UAnimFunctionModule_ObjInstance
---@field bIsHoldGrenade boolean
---@field bIsGrenadeTypeHigh boolean
---@field bDisableChangeAnimBase boolean
---@field b_GrenadeAimChanged boolean
---@field SwitchGrenadeAimTransTime number
local USTExtraAnimFM_Horse_Grenade = {}

---@param bIsNeed boolean
function USTExtraAnimFM_Horse_Grenade:SetNeedRefreshGrenadeAnim(bIsNeed) end

---@param OwnerCharacter ASTExtraBaseCharacter
---@param OwnWeapon ASTExtraWeapon
---@param bIsBind boolean
function USTExtraAnimFM_Horse_Grenade:BindGrenadeThrowDelegate(OwnerCharacter, OwnWeapon, bIsBind) end
