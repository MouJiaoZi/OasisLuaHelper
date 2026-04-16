---@meta

---Gundam Model Show. feishen, 20200216
---@class EGundamModelStatus
---@field EGundamModelStatus_None number @未知状态
---@field EGundamModelStatus_Stand number @静止站立状态
---@field EGundamModelStatus_Launching number @发射状态
---@field EGundamModelStatus_Destroyed number @销毁状态
EGundamModelStatus = {}


---@class AGundamBaseActor: AActor
---@field Status EGundamModelStatus
---@field DelayPlayBGM number
---@field DelayLaunching number
---@field DelayForbidGundamCollision number
---@field DelayDestroy number
---@field TickFreq number
---@field HasForbidGundamCollision boolean
local AGundamBaseActor = {}

function AGundamBaseActor:OnRep_GundamModelStatusType() end

function AGundamBaseActor:BPLaunchingAnimation() end

function AGundamBaseActor:BPForbidGundamCollision() end

function AGundamBaseActor:BPLaunchingBGM() end

function AGundamBaseActor:NotifyClientPlayLaunchingAnimation() end

function AGundamBaseActor:NotifyClientPlayBGM() end

function AGundamBaseActor:NotifyClientForbidGundamCollision() end
