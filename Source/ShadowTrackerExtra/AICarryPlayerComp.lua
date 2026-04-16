---@meta

---@class FOnAICarryPlayerEvent : ULuaSingleDelegate
FOnAICarryPlayerEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAICarryPlayerEvent:Bind(Callback, Obj) end

---执行委托
function FOnAICarryPlayerEvent:Execute() end


---AI背负玩家
---@class UAICarryPlayerComp: UAIAbilityComponent
---@field ReplaceAnimDataList_BeCarriedPawnByAI_Armed ULuaArrayHelper<FCarryReplaceCharAnimData>
---@field ReplaceAnimDataList_BeCarriedPawnByAI_Unarmed ULuaArrayHelper<FCarryReplaceCharAnimData>
---@field CarrySomeoneSkillTemplate AUTSkill
---@field PutDownSkillTemplate AUTSkill
---@field BeCarriedSkillTemplate AUTSkill
---@field PutDownPhaseID number
---@field OnAICarryPlayerStart FOnAICarryPlayerEvent
---@field OnAICarryPlayerFinish FOnAICarryPlayerEvent
---@field SelfPawnPtr ASTExtraCharacter
---@field TeammateBreakAwayMap ULuaMapHelper<ASTExtraBaseCharacter, number>
local UAICarryPlayerComp = {}

---背负玩家
---@param CarriedPawn ASTExtraBaseCharacter
function UAICarryPlayerComp:ServerCarryPlayer(CarriedPawn) end

---放下背负玩家
---@param PutDownLocation FVector
function UAICarryPlayerComp:ServerPutDownPlayer(PutDownLocation) end

---成功放下背负玩家
function UAICarryPlayerComp:PutDownSuccessfully() end

---中断背负
---@param bIsCarrier boolean
function UAICarryPlayerComp:UnilateralInterruption(bIsCarrier) end

---是否正在背负玩家
---@return boolean
function UAICarryPlayerComp:IsCarryingPlayer() end

---玩家主动脱离背负
function UAICarryPlayerComp:ServerPlayerBreakAway() end

---玩家是否在背负CD中
---@param CarriedPawn ASTExtraBaseCharacter
---@return boolean
function UAICarryPlayerComp:IsInBreakAwayCD(CarriedPawn) end
