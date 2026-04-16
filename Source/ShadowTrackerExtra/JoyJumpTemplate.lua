---@meta

---@class EJumpJoyType
---@field None number
---@field Checkpoint number
---@field Scorepoint number
EJumpJoyType = {}


---@class FJumpRouteInfos
---@field Chance number
---@field RouteBPMap ULuaMapHelper<number, AActivityActorForClient>
---@field Route string
FJumpRouteInfos = {}


---@class FJoyJumpDelegate : ULuaSingleDelegate
FJoyJumpDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, PlayerController: ASTExtraPlayerController, BuffScore: number, SPScore: number, TotalTime: number, bIsSucceed: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FJoyJumpDelegate:Bind(Callback, Obj) end

---执行委托
---@param PlayerController ASTExtraPlayerController
---@param BuffScore number
---@param SPScore number
---@param TotalTime number
---@param bIsSucceed boolean
function FJoyJumpDelegate:Execute(PlayerController, BuffScore, SPScore, TotalTime, bIsSucceed) end


---@class AJoyJumpTemplate: AActivityActorForClient, ILuaInterface
---@field CachedCallBack ULuaMapHelper<number, FJoyJumpDelegate>
local AJoyJumpTemplate = {}

---@param BaseCharacter ASTExtraBaseCharacter
---@param callback FJoyJumpDelegate
function AJoyJumpTemplate:EntryWithCallBack(BaseCharacter, callback) end

---@param PlayerController ASTExtraPlayerController
---@param BuffScore number
---@param SPScore number
---@param TotalTime number
---@param bIsSucceed boolean
function AJoyJumpTemplate:CallBack(PlayerController, BuffScore, SPScore, TotalTime, bIsSucceed) end

---@param PlayerID number
---@param callback FJoyJumpDelegate
function AJoyJumpTemplate:AddCallBack(PlayerID, callback) end

---@return string
function AJoyJumpTemplate:GetLuaModule() end
