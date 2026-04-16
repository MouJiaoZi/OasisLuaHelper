---@meta

---@class FOnButtonClickedWithIndexEvent : ULuaMulticastDelegate
FOnButtonClickedWithIndexEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, key: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnButtonClickedWithIndexEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param key number
function FOnButtonClickedWithIndexEvent:Broadcast(key) end


---@class UNewButton: UButton
---@field IndexKey number
---@field UseCustomAkEvent boolean
---@field UsePostInPlayerLoc boolean
---@field UsePostInCustomLoc boolean
---@field CustomPostLoc FVector
---@field ClickSound EButtonClickSoundTypes
---@field OnClickedWithIndex FOnButtonClickedWithIndexEvent
---@field OnHoveredWithIndex FOnButtonClickedWithIndexEvent
---@field OnUnhoveredWithIndex FOnButtonClickedWithIndexEvent
local UNewButton = {}

---@param inSoundType EButtonClickSoundTypes
function UNewButton:SetClickSound(inSoundType) end

function UNewButton:TriggerClickLogicAndPlaySound() end

---@return FVector
function UNewButton:GetPostSoundLoction() end
