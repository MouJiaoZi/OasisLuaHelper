---@meta

---@class FWeaponEquipAnimDelegate : ULuaMulticastDelegate
FWeaponEquipAnimDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeaponResID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponEquipAnimDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeaponResID number
function FWeaponEquipAnimDelegate:Broadcast(WeaponResID) end


---@class FNotifyMeshUpdateFinished : ULuaSingleDelegate
FNotifyMeshUpdateFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyMeshUpdateFinished:Bind(Callback, Obj) end

---执行委托
function FNotifyMeshUpdateFinished:Execute() end


---@class FNotifyStateChanged : ULuaMulticastDelegate
FNotifyStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewState: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewState boolean
function FNotifyStateChanged:Broadcast(NewState) end


---@class AAvatarCapture: AActor
---@field WeaponAnimList ULuaMapHelper<number, FWeaponAnimAsset>
---@field DisplayWeaponAnimInfoMap ULuaMapHelper<number, FAvatarDisplayAnimData>
---@field WeaponAnimData FWeaponAnimAsset
---@field AnimBP UAnimInstance
---@field TargetTexture UTextureRenderTarget2D
---@field OnWeaponBlendAnim FWeaponEquipAnimDelegate
---@field ExcludeHiddenAvatarSlotList ULuaArrayHelper<EAvatarSlotType>
---@field bPC boolean
---@field PCLightChannelBit number
---@field NotifyPawnMeshUpdateFinished FNotifyMeshUpdateFinished
---@field NotifyWeaponMeshUpdateFinished FNotifyMeshUpdateFinished
---@field FNotifyStateChanged FNotifyStateChanged
---@field slotToSocket ULuaMapHelper<number, string>
---@field OBPlayerName string
---@field StMeshList ULuaArrayHelper<UStaticMeshComponent>
---@field SkMeshList ULuaArrayHelper<USkeletalMeshComponent>
---@field HideBoneNames ULuaArrayHelper<string>
---@field SkMeshResList ULuaArrayHelper<USkeletalMesh>
---@field WeaponAttachmentList ULuaArrayHelper<UMeshComponent>
---@field SkMeshUseOwnAnimBP ULuaMapHelper<UBattleItemHandleBase, FSocketMesh>
---@field IsCaptureEnabled boolean
---@field bUseNewDisplay boolean
---@field bCheckGender boolean
---@field NeedAdaptLocWeaponSubTypeList ULuaArrayHelper<number> @Avatar Display Opt End
local AAvatarCapture = {}

---@param IsEnable boolean
---@param PlayerPawn ASTExtraCharacter
function AAvatarCapture:DisplayAvatar(IsEnable, PlayerPawn) end

---@param PlayerPawn ASTExtraCharacter
---@param AvatarComp UCharacterAvatarComponent
---@return boolean
function AAvatarCapture:SetOBTarget(PlayerPawn, AvatarComp) end

---@param InPlayerOBInfo FPlayerOBInfo
function AAvatarCapture:SetTrainingRangePlayerOBInfo(InPlayerOBInfo) end

function AAvatarCapture:RenderCaptureScene() end

---@param AvatarComponent UCharacterAvatarComponent
---@param IsRefrsh boolean
function AAvatarCapture:EquipPlayerAvatar(AvatarComponent, IsRefrsh) end

function AAvatarCapture:ApplyAnimation() end

---@param PlayerKey number
function AAvatarCapture:EquipWeapon(PlayerKey) end

---@param SlotType number
---@param isEquipped boolean
function AAvatarCapture:RefreshAvatar(SlotType, isEquipped) end

---@param IsSkeletalMesh boolean
function AAvatarCapture:CreateWeapon(IsSkeletalMesh) end

---@param IsEnable boolean
function AAvatarCapture:SetEnable(IsEnable) end

---@param TargetWeaponID number
---@param AnimType EAvatarDisplayAnimType
function AAvatarCapture:GetWeaponAnimAsset(TargetWeaponID, AnimType) end

---@param TargetWeaponID number
function AAvatarCapture:GetWeaponAnimBP(TargetWeaponID) end

---@param InWeaponAvatarBPID number
---@param InWeaponAvatarID number
---@param InAdaptAvatarComp UCharacterAvatarComponent
function AAvatarCapture:RefreshWeaponAnimAdaptParam(InWeaponAvatarBPID, InWeaponAvatarID, InAdaptAvatarComp) end

---@param InAdaptAvatarComp UCharacterAvatarComponent
function AAvatarCapture:RefreshClothAdaptAnimParam(InAdaptAvatarComp) end

---@param InBattleItemHandleBase UBattleItemHandleBase
function AAvatarCapture:ApplyGripOrGunPointAnim(InBattleItemHandleBase) end

function AAvatarCapture:InitBGMat() end
