---@meta

---@class ESmartPhotographerModifierDevice
---@field LowDevice number @低端机
---@field MiddleDevice number @中端机
---@field HighDevice number @高端机
---@field SuperDevice number @超高端机
ESmartPhotographerModifierDevice = {}


---@class ESmartPhotographerMode
---@field Photo number
---@field Video number
ESmartPhotographerMode = {}


---@class FCameraMoveSettings
FCameraMoveSettings = {}


---@class ACamMaster: AActor
local ACamMaster = {}


---@class UCameraModifier_SmartPhotographer: UCameraModifier
---@field CurrentPhotographerMode ESmartPhotographerMode
---@field TouchInputSpeed FVector2D
---@field FreeCameraInputSpeed FVector2D
---@field LimitRotationPitch FVector2D
---@field CameraModifyData FCameraModifyData
---@field bHideEnemy boolean
---@field bHideTeammate boolean
---@field bHideSelf boolean
---@field bHideActor boolean
---@field HideActorTag ULuaArrayHelper<string>
---@field HideActorClass ULuaArrayHelper<AActor>
---@field bHideActorComp boolean
---@field HideCompTag ULuaArrayHelper<string>
---@field HideCompActorClass ULuaArrayHelper<AActor>
---@field SpecialClassNameSet ULuaSetHelper<string>
---@field IgnoreHideActors ULuaSetHelper<AActor>
local UCameraModifier_SmartPhotographer = {}

---@param NewMode ESmartPhotographerMode
function UCameraModifier_SmartPhotographer:SetPhotographerMode(NewMode) end

function UCameraModifier_SmartPhotographer:ResetCameraRotationModifyData() end

function UCameraModifier_SmartPhotographer:UpdateCameraModifyData() end

function UCameraModifier_SmartPhotographer:UpdateCameraModifyDataBluePrint() end

---@param NewLength number
function UCameraModifier_SmartPhotographer:SetCameraTargetLength(NewLength) end

---@param WorldContextObject UObject
---@param Photographer UCameraModifier_SmartPhotographer
function UCameraModifier_SmartPhotographer:SayGoodbyeToSmartPhotographer(WorldContextObject, Photographer) end

---@param WorldContextObject UObject
---@param InClass UCameraModifier_SmartPhotographer
---@param bIncludeSuper boolean
---@return boolean
function UCameraModifier_SmartPhotographer:IsSmartPhotographerExist(WorldContextObject, InClass, bIncludeSuper) end

---@param AddedLength number
---@param bEnable boolean
function UCameraModifier_SmartPhotographer:SetCameraTargetLengthInVehicle(AddedLength, bEnable) end

---@param VierTarget AActor
---@return boolean
function UCameraModifier_SmartPhotographer:CheckViewTargetIsSpecialActor(VierTarget) end

---@param Camera APlayerCameraManager
function UCameraModifier_SmartPhotographer:ReceiveAddedToCamera(Camera) end

---@param Camera APlayerCameraManager
function UCameraModifier_SmartPhotographer:ReceiveRemovedFromCamera(Camera) end

function UCameraModifier_SmartPhotographer:ReceivePlayerTouchBegin() end

function UCameraModifier_SmartPhotographer:ReceivePlayerTouchEnd() end

---@param NewTarget AActor
---@param PrevTarget AActor
function UCameraModifier_SmartPhotographer:HandlePlayerPreViewTargetChange(NewTarget, PrevTarget) end

---@param PrevViewTarget AActor
---@param NewViewTarget AActor
function UCameraModifier_SmartPhotographer:OnViewTargetChanged(PrevViewTarget, NewViewTarget) end

function UCameraModifier_SmartPhotographer:HidePawns() end

---@param bNewHidden boolean
function UCameraModifier_SmartPhotographer:HideActors(bNewHidden) end

---@param InActor AActor
---@param bIgnore boolean
function UCameraModifier_SmartPhotographer:SetActorIgnoreHide(InActor, bIgnore) end

function UCameraModifier_SmartPhotographer:GetIgnoreHideActorList() end


---@class UCameraModifier_HidingPhotographer: UCameraModifier
---@field HidingTagName string
---@field bHideSelf boolean
---@field bHideEnemy boolean
---@field bHideTeammate boolean
---@field bHideActor boolean
---@field HideActorTag ULuaArrayHelper<string>
---@field DeviceForHideActorTag ULuaMapHelper<ESmartPhotographerModifierDevice, string>
---@field HideActorClass ULuaArrayHelper<AActor>
---@field bHideHUD boolean
---@field AlreadyHiddenActors ULuaSetHelper<AActor>
---@field IgnoreHideActors ULuaSetHelper<AActor>
---@field HidenCharacterCache ULuaSetHelper<AActor>
---@field PendingHideActors ULuaSetHelper<AActor>
local UCameraModifier_HidingPhotographer = {}

---@param InActor AActor
function UCameraModifier_HidingPhotographer:AddActorIgnoreHide(InActor) end

---@param InActor AActor
function UCameraModifier_HidingPhotographer:RemoveActorIgnoreHide(InActor) end

---@param WorldContextObject UObject
---@param Photographer UCameraModifier_HidingPhotographer
function UCameraModifier_HidingPhotographer:SayGoodbyeToHidingPhotographer(WorldContextObject, Photographer) end

---@param bShowPawns boolean
function UCameraModifier_HidingPhotographer:HidePawns(bShowPawns) end

---@param bVisible boolean
function UCameraModifier_HidingPhotographer:HideUIandHUD(bVisible) end

---@param bHidden boolean
function UCameraModifier_HidingPhotographer:HideActors(bHidden) end

---@param InSpawnActor AActor
function UCameraModifier_HidingPhotographer:HandleActorSpawn(InSpawnActor) end
