---@meta

---@class FOnTreasureBoxBeOpened : ULuaMulticastDelegate
FOnTreasureBoxBeOpened = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Box: ATreasureBox, PC: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTreasureBoxBeOpened:Add(Callback, Obj) end

---触发 Lua 广播
---@param Box ATreasureBox
---@param PC APlayerController
function FOnTreasureBoxBeOpened:Broadcast(Box, PC) end


---@class ATreasureBox: AUAENetActor, IInteractorInterface, IScopeInteractionInterface
---@field GeneratorGroupName string
---@field DeadInventoryBoxTemplate APlayerTombBox
---@field WrapperBoxName string
---@field TlogID number
---@field bRecordAllPlayerPickUpData boolean
---@field bCheckHasInteractiveMesh boolean
---@field bOpened boolean
---@field OnTreasureBoxBeOpened FOnTreasureBoxBeOpened
local ATreasureBox = {}

---@param DataList ULuaArrayHelper<FAirDropBoxGenerateWrapperItemData>
---@param BoxLoc FVector
function ATreasureBox:GenerateWrappersBox(DataList, BoxLoc) end

---@param SelfRef AActor
function ATreasureBox:OnPickUpDataEmptyOnServer(SelfRef) end

---@return boolean
function ATreasureBox:IsAlreadyOpened() end

---@param PC APlayerController
function ATreasureBox:MarkBoxOpened(PC) end
