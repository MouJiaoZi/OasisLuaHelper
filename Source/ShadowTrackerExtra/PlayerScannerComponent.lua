---@meta

---@class FPSCDebugEvent
---@field CurrentRad number
---@field ScannedPlayers ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field Center FVector
---@field RadIncreament number
FPSCDebugEvent = {}


---@class FPSCOnDebugEvent : ULuaMulticastDelegate
FPSCOnDebugEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DebugData: FPSCDebugEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPSCOnDebugEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param DebugData FPSCDebugEvent
function FPSCOnDebugEvent:Broadcast(DebugData) end


---@class UPlayerScannerComponent: USceneComponent
---@field TotalLifeTime number
---@field PerScanCDTime number
---@field ScanAtStart boolean
---@field bAutoStart boolean
---@field InitialScanRad number
---@field ScanRad number
---@field MapTypeID number
---@field MapTypeIDDuration number
---@field PlayerTypeID number
---@field PlayerTypeIDDuration number
---@field OnDebugEvent FPSCOnDebugEvent
---@field TlogStatisticsID number
local UPlayerScannerComponent = {}

---@param Data FPSCDebugEvent
function UPlayerScannerComponent:OnDebugDataEvent(Data) end

---@param CenterLocation FVector
---@param Rad number
function UPlayerScannerComponent:OnStartScan(CenterLocation, Rad) end

---@param PlayerPawns ULuaArrayHelper<ASTExtraPlayerCharacter>
function UPlayerScannerComponent:OnPlayerScanned(PlayerPawns) end

function UPlayerScannerComponent:StartScan() end

function UPlayerScannerComponent:DoScan() end

function UPlayerScannerComponent:StopScan() end

---@param PlayerPawn ASTExtraPlayerCharacter
function UPlayerScannerComponent:TlogStatistics(PlayerPawn) end
