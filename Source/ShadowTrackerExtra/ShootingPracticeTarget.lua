---@meta

---@class FDestroyShootingPracticeTargetDelegate : ULuaSingleDelegate
FDestroyShootingPracticeTargetDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDestroyShootingPracticeTargetDelegate:Bind(Callback, Obj) end

---执行委托
function FDestroyShootingPracticeTargetDelegate:Execute() end


---@class AShootingPracticeTarget: AUAERegionActor
---@field MaxHealth number
---@field UpDownChangeSpeed number
---@field HorizontalMeshRelativeRot FRotator
---@field VerticalMeshRelativeRot FRotator
---@field ResetAndGetUpTimeAfterShootDown number
---@field CurHealth number
---@field bIsUp boolean
---@field bHasActivatedMove boolean
---@field MoveDatas ULuaArrayHelper<FSegamentData>
---@field DestroyShootingPracticeTargetDelegate FDestroyShootingPracticeTargetDelegate
local AShootingPracticeTarget = {}

---@param EventInstigator AController
function AShootingPracticeTarget:BPHandleHealthZero(EventInstigator) end

---@param bUp boolean
function AShootingPracticeTarget:SetUpOrDownOnServer(bUp) end

function AShootingPracticeTarget:ResetAndGetUpOnServer() end

function AShootingPracticeTarget:RPC_NetMulticast_NotifyBroken() end

---@param bUp boolean
function AShootingPracticeTarget:RPC_NetMulticast_SetUpOrDownOnServer(bUp) end

---@param bFromClientBeginPlay boolean
function AShootingPracticeTarget:HandleBroken(bFromClientBeginPlay) end

function AShootingPracticeTarget:OnRep_bIsUp() end

function AShootingPracticeTarget:OnRep_bHasActivatedMove() end

function AShootingPracticeTarget:OnRep_MoveDatas() end
