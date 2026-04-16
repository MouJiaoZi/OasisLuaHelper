---@meta

---@class FOnEquipDelegate : ULuaMulticastDelegate
FOnEquipDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsSimulate: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEquipDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsSimulate boolean
function FOnEquipDelegate:Broadcast(bIsSimulate) end


---@class FHandleGetOwnerActorDelegate : ULuaMulticastDelegate
FHandleGetOwnerActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHandleGetOwnerActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerActor AActor
function FHandleGetOwnerActorDelegate:Broadcast(OwnerActor) end


---@class FOnBulletTrackShootDelegate : ULuaSingleDelegate
FOnBulletTrackShootDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletTrackShootDelegate:Bind(Callback, Obj) end

---执行委托
function FOnBulletTrackShootDelegate:Execute() end


---@class FOnPostGetDataFromWeaponEntity : ULuaSingleDelegate
FOnPostGetDataFromWeaponEntity = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostGetDataFromWeaponEntity:Bind(Callback, Obj) end

---执行委托
function FOnPostGetDataFromWeaponEntity:Execute() end


---@class FOnPostGetAccessoriesFactorsFromWeaponEntity : ULuaSingleDelegate
FOnPostGetAccessoriesFactorsFromWeaponEntity = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostGetAccessoriesFactorsFromWeaponEntity:Bind(Callback, Obj) end

---执行委托
function FOnPostGetAccessoriesFactorsFromWeaponEntity:Execute() end


---@class UBulletTrackComponent: UWeaponLogicBaseComponent
---@field OnEquipDelegate FOnEquipDelegate
---@field HandleGetOwnerActorDelegate FHandleGetOwnerActorDelegate
---@field OnBulletTrackShootDelegate FOnBulletTrackShootDelegate
---@field OnPostGetDataFromWeaponEntity FOnPostGetDataFromWeaponEntity
---@field OnPostGetAccessoriesFactorsFromWeaponEntity FOnPostGetAccessoriesFactorsFromWeaponEntity
---@field CurRecoilValue number
---@field VerticalRecoilTarget number
---@field HorizontalRecoilTarget number
---@field VerticalRecoveryTarget number
---@field CurVerticalRecovery number
---@field PoseRecoilFactor number
---@field AccessoriesVRecoilFactor number
---@field AccessoriesVRecoilFactorModifier number
---@field VerticalRecoilFactorModifier number
---@field AccessoriesHRecoilFactor number
---@field AccessoriesHRecoilFactorModifier number
---@field AccessoriesAllRecoilFactorModifier number
---@field HorizontalRecoilFactorModifier number
---@field AccessoriesRecoveryFactor number
---@field BlockRecovery boolean
---@field LastCalcHRecoilTargetTime number
---@field LastHorizontalRecoilTarget number
---@field LastVerticalRecoilTarget number
---@field LastVerticalRecoveryTarget number
---@field CurDeviationValue number
---@field AccessoriesDeviationFactor number
---@field AccessoriesFinalDeviationFactor number
---@field CacheShootingRecoilAcc FVector
---@field CacheLastShootingRecoil FVector
---@field DeviationFactorModifier number
---@field ShootBursts number
---@field BurstEmptyHandler FTimerHandle
---@field BlockPostFireRecovery boolean
---@field PostFirePitchCaptured boolean
---@field PostFireStartPitch number
---@field PostFireRecoveryPitch number
---@field LastPostFireRecoveryPitch number
---@field UseTss number
---@field LogIntervalTmp number
---@field bHasGetWeaponEntityData boolean
---@field DeviationInfo_NoTss FSDeviation
---@field bNeedGetDataFromWeaponEntity boolean
---@field AccVerticalRecoilTarget number
---@field AccDetPitch number
---@field StartRecordAnimFrame boolean
---@field LastAnimFrame number
---@field AccAnimFrameCounter number
---@field RecoilInfo_NoTss FSRecoilInfo
local UBulletTrackComponent = {}

---@param OwnerActor AActor
function UBulletTrackComponent:HandleGetOwnerActor(OwnerActor) end

function UBulletTrackComponent:OnWeaponShoot() end

function UBulletTrackComponent:OnWeaponStopFire() end

function UBulletTrackComponent:OnWeaponStartFire() end

function UBulletTrackComponent:OnAiWeaponShoot() end

function UBulletTrackComponent:OnAiWeaponStopFire() end

function UBulletTrackComponent:OnAiWeaponStartFire() end

---@return number
function UBulletTrackComponent:GetCurDeviation() end

---@return FVector
function UBulletTrackComponent:GetCurRecoilInfo() end

function UBulletTrackComponent:GetDataFromWeaponEntity() end

function UBulletTrackComponent:GetDataFromWeaponEntityNew() end

function UBulletTrackComponent:GetAccessoriesFactorsFromWeaponEntity() end

function UBulletTrackComponent:ReloadTssData() end

---@param DeltaTime number
function UBulletTrackComponent:OnUpdate(DeltaTime) end

---@param DeltaTime number
function UBulletTrackComponent:UpdateKickBack(DeltaTime) end

---@param RecoilInfo FSRecoilInfo
---@param Curve FVector
function UBulletTrackComponent:CalculateRecoilTarget(RecoilInfo, Curve) end

---@param RecoilInfo FSRecoilInfo
---@param Curve FVector
function UBulletTrackComponent:CalculateRecoveryTarget(RecoilInfo, Curve) end

---@param RecoilInfo FSRecoilInfo
---@param DelataTime number
function UBulletTrackComponent:UpdateRecoilTarget(RecoilInfo, DelataTime) end

---@param RecoilInfo FSRecoilInfo
---@param DelataTime number
function UBulletTrackComponent:UpdateRecoveryTarget(RecoilInfo, DelataTime) end

---@param RecoilInfo FSRecoilInfo
---@param DeltaTime number
function UBulletTrackComponent:UpdateRecoilValue(RecoilInfo, DeltaTime) end

---@param RecoilInfo FSRecoilInfo
function UBulletTrackComponent:UpdateRecoilFactor(RecoilInfo) end

function UBulletTrackComponent:OnPostFire() end

---@param DeviationInfo FSDeviation
function UBulletTrackComponent:CalcDeviationTarget(DeviationInfo) end

function UBulletTrackComponent:CaptureShootPitch() end

function UBulletTrackComponent:CapturePostFirePitch() end

---@param Recoilinfo FSRecoilInfo
---@param DeltaTime number
function UBulletTrackComponent:UpdatePostFireRecovery(Recoilinfo, DeltaTime) end

---@return string
function UBulletTrackComponent:GetWeaponInfo() end

function UBulletTrackComponent:CheckComponentTick() end

---@return boolean
function UBulletTrackComponent:IsWeaponOwnerSupportBulletTrack() end

---@return ENetRole
function UBulletTrackComponent:GetWeaponOwnerBulletTrackTickRole() end

---@param OutData FStartFireBulletTrackData
function UBulletTrackComponent:GetStartFireBulletTrackData(OutData) end

---@return string
function UBulletTrackComponent:GetStartFireBulletTrackExtraInfo() end

---@param Pitch number
---@param Yaw number
function UBulletTrackComponent:DoAddPitchAndYawInput(Pitch, Yaw) end

---@param Pitch number
---@param Yaw number
function UBulletTrackComponent:PostAddPitchAndYawInput(Pitch, Yaw) end

---@param DeltaTime number
function UBulletTrackComponent:RecoverSwitchDeviation(DeltaTime) end
