---@meta

---@class FOnFixWeaponRemoteControlledDelegate : ULuaMulticastDelegate
FOnFixWeaponRemoteControlledDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter, bControl: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFixWeaponRemoteControlledDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
---@param bControl boolean
function FOnFixWeaponRemoteControlledDelegate:Broadcast(Character, bControl) end


---固定武器功能基类
---@class UWeaponFunctionModule_FixWeapon: UWeaponFunctionModuleBase
---@field OnFixWeaponRemoteControlledDelegate FOnFixWeaponRemoteControlledDelegate
---@field OwnerWeaponMeshTag string
---@field OwnerWeaponMainCameraTag string
---@field OwnerWeaponScopeCameraTag string
---@field bShouldCostBulletOnServer boolean
---@field bUseMainWeaponCamera boolean
---@field bLimitPitch boolean
---@field MinPitch number
---@field MaxPitch number
---@field bUseLoopWeaponFireAnim boolean
---@field CustomUIName string
---@field CustomFireBtnImagePath string
---@field WeaponIconPath string
local UWeaponFunctionModule_FixWeapon = {}

---生效范围：服务器 远程操控所属的武器
---@param Character ASTExtraBaseCharacter
---@param bControl boolean
function UWeaponFunctionModule_FixWeapon:RemoteControlWeaponOnServer(Character, bControl) end

---生效范围：客户端 切换武器上的视角摄像头，主端通过RPC到DS并广播给模拟端
---@param bUseMainCamera boolean
function UWeaponFunctionModule_FixWeapon:ChangeWeaponCameraOnClient(bUseMainCamera) end

---生效范围：客户端 主摄像头是否激活
---@return boolean
function UWeaponFunctionModule_FixWeapon:IsWeaponMainCameraActive() end

---@param bUseMainCamera boolean
function UWeaponFunctionModule_FixWeapon:RPC_Server_ChangeWeaponCamera(bUseMainCamera) end

function UWeaponFunctionModule_FixWeapon:OnRep_UseWeaponCamera() end

function UWeaponFunctionModule_FixWeapon:OnRep_WeaponOwnerPawn() end

function UWeaponFunctionModule_FixWeapon:ClientHandleChangeWeaponOwnerPawn() end

---@param Action EWeaponAction
function UWeaponFunctionModule_FixWeapon:HandleWeaponEffectAction(Action) end

function UWeaponFunctionModule_FixWeapon:HandleReplayOrObChangeViewTarget() end

---@param Data FSACData
function UWeaponFunctionModule_FixWeapon:PreHandleBulletHitDataArrayOnServer(Data) end

---@param Num number
function UWeaponFunctionModule_FixWeapon:HitCostBulletOnServer(Num) end
