---@meta

---这是个载具技能Handle管理组件 实现目的： 就是为了不用频繁添加组件， 可以动态的添加一些功能组件，在DS上添加 然后把对应的功能组件同步到客户端 功能关键点: UVehicleSkillBaseHandle 这个就是功能基础Handle 成员变量SkillHandleArray保存添加的VehicleSkillHandle 得益于UE4的 ReplicateSubObject机制， 以及UObject的相关同步机制 当触发AddSkillHandle函数 将对应的VehicleSkillHandle，添加到SkillHandleArray中去， 然后在ReplicateSubobjects里面遍历SkillHandleArray，对SkillHandleArray里面的Handle进行同步 客户端同步收到对应的Handle之后， 会在Handle里面的进行反向注册， 然后注册到VehicleSkillManager的SkillHandleArray 这里有个点 这个Handle不是网络触发后马上注册到SkillHandle 而是先加到ClientWaitApply(AddToWaitApply函数里面触发)里面， 然后在Component的Tick函数里面添加到SkillHandleArray里面 主要是这些点 函数实现里面仍然保留了几个原生的Requse的Rpc 做备份使用 还有些 上车 下车 换座 ，物品相关逻辑 上车的时候 会检查是否有对应的技能相关物品 如果有的话 那就触发 下车的时候 就会判断技能有效性 当前做的动物技能 并下车的时候 并没有进行Handle的删除，因为要保留一些状态 比如CD数据之类的，只是做了状态的Disable
---@class UVehicleSkillManagerComponent: UVehicleComponent
---@field SkillHandleArray ULuaArrayHelper<UVehicleSkillBaseHandle>
---@field ClientWaitApply ULuaArrayHelper<UVehicleSkillBaseHandle>
---@field CheckItemSkillHandleList ULuaArrayHelper<FItemDefineID>
---@field bEnterVehicleCheckSkillItem boolean
local UVehicleSkillManagerComponent = {}

---@param DeltaTime number
function UVehicleSkillManagerComponent:NativeVehicleTick(DeltaTime) end

---@param Skillid number
function UVehicleSkillManagerComponent:InitVehicleSkill(Skillid) end

---@param Skillid number
function UVehicleSkillManagerComponent:ReqUseVehicleSkill(Skillid) end

---@param SkillID number
---@param Result number
function UVehicleSkillManagerComponent:RspUseVehicleSkill(SkillID, Result) end

---@param SkillID number
---@param Result number
function UVehicleSkillManagerComponent:MulticastUseVehicleSkill(SkillID, Result) end

---@param HandleInstanceID number
---@param Character ASTExtraBaseCharacter
function UVehicleSkillManagerComponent:UseVehicleSkillHandle(HandleInstanceID, Character) end

---@param SkillID number
function UVehicleSkillManagerComponent:ReqDisUseVehicleSkill(SkillID) end

---@param WaitApplyPersist UVehicleSkillBaseHandle
function UVehicleSkillManagerComponent:AddToWaitApply(WaitApplyPersist) end

---@param NewHandle UVehicleSkillBaseHandle
---@return boolean
function UVehicleSkillManagerComponent:AddSkillHandle(NewHandle) end

---@param RemoveHandle UVehicleSkillBaseHandle
---@param Reason number
function UVehicleSkillManagerComponent:RemoveSkillHandle(RemoveHandle, Reason) end

---@param VehicleSkillBaseHandle UVehicleSkillBaseHandle
function UVehicleSkillManagerComponent:RemoveReference(VehicleSkillBaseHandle) end

---@param VehicleSkillBaseHandle UVehicleSkillBaseHandle
function UVehicleSkillManagerComponent:AddReference(VehicleSkillBaseHandle) end

---@param ControlUI UVehicleControlPanelUI
---@param bDriver boolean
function UVehicleSkillManagerComponent:OnShowVehicleUI(ControlUI, bDriver) end

---@param IsLeanOut boolean
---@param Character ASTExtraPlayerCharacter
function UVehicleSkillManagerComponent:OnVehicleLeanOut(IsLeanOut, Character) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleSkillManagerComponent:OnServerEnterVehicle(Character, SeatType, IsSucc) end

---@param ItemID number
---@param HandleBase UItemHandleBase
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param CurHaveHandle UVehicleSkillBaseHandle
function UVehicleSkillManagerComponent:ProcessItemSkillHandle(ItemID, HandleBase, Character, SeatType, CurHaveHandle) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleSkillManagerComponent:OnServerExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleSkillManagerComponent:OnClientExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleSkillManagerComponent:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param ItemID FItemDefineID
---@return boolean
function UVehicleSkillManagerComponent:CheckVehicleCharacterHaveItem(ItemID) end

---@param NewItem UItemHandleBase
function UVehicleSkillManagerComponent:OnVehicleCharacterPickupItem(NewItem) end

---@param DropItem UItemHandleBase
function UVehicleSkillManagerComponent:OnVehicleCharacterDropItem(DropItem) end

function UVehicleSkillManagerComponent:OnClientChangeAvatarOverridePhysics() end

function UVehicleSkillManagerComponent:OnVehicleExplosion() end

---@param ItemHandle UBattleItemHandleBase
function UVehicleSkillManagerComponent:OnVehicleAvatarHandleEquipped(ItemHandle) end

function UVehicleSkillManagerComponent:OnVehicleAvatarDataCopied() end
