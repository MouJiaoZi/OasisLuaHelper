---@meta

---@class FShownHouseInfo
---@field Distance number
---@field Pos FVector
FShownHouseInfo = {}


---@class FPCAirAttackClientFlySoundInfo
---@field SoundHandle FTimerHandle
---@field StartPosition FVector
---@field EndPosition FVector
---@field FlyTime number
---@field CurrentFlyTime number
---@field LifeTime number
---@field SoundIndex number
---@field AkEventIndex number
FPCAirAttackClientFlySoundInfo = {}


---@class UAirAttackCS: UTimerRegistComponent
---@field FlySoundDelayTime number
---@field bShowBlackIcon boolean
---@field bAirAttackMaterialize boolean
---@field ArtilleryShellExplosionEffectTemplete ASTExtraExplosionEffect
---@field ArtilleryShellExplosionEffectTempletePtr ASTExtraExplosionEffect
---@field bEnableLandscapeDeform boolean
---@field LandscapeDeformRadius number
---@field LandscapeDeformMaxDepth number
---@field LandscapeDeformAreaRadiusExtend number
---@field WhiteList ULuaArrayHelper<FVector>
---@field ArtilleryShellFlySoundDelayTime number
---@field ArtilleryShellExplosionDelayTime number
---@field ArtilleryShellExplosionDamageDelayTime number
---@field ArtilleryShellPath string
---@field bOptimizeMarkNum boolean
---@field bOptimizeMiniMarkNum boolean
---@field BlackWarningSoundRange number
---@field BlackIconIndex number
---@field IconRadius number
---@field CallBlackIconIndex number
---@field CallIconRadius number
---@field BlackCenterIconIndex number
---@field BlackCenterIconRadius number
---@field FilterHouseInterval number
---@field FilterHouseRange number
---@field MaxShownHouse number
---@field MinMapScale number
---@field MaxMapScale number
---@field CallBlackAirAttackShowIconDelayTime number
---@field BlackAirAttackShowIconDelayTime number
---@field ExplosionEffectTemplate ASTExtraExplosionEffect
---@field ExplosionEffectTemplatePtr ASTExtraExplosionEffect
---@field BombedHousePosArr ULuaArrayHelper<FVector>
---@field BombedHouseCenterArr ULuaArrayHelper<FVector>
---@field CallBlackAirAttackTimerRegister ULuaArrayHelper<FRegisterTimer>
---@field MiniMapCurrentLocalHouseInstanceCount number
---@field CurrentLocalHouseInstanceCount number
---@field CurrentLocalHouseCenterInstanceCount number
---@field bUsePCAirAttach boolean
---@field PCAirAttackHeight number
---@field PCAirAttackFlySubTime number
---@field FlySoundFlagIndex number
---@field PCAirAttachFlySoundInfoList ULuaArrayHelper<FPCAirAttackClientFlySoundInfo>
---@field PCAirAttachFlySoundTemplete AActor
local UAirAttackCS = {}

function UAirAttackCS:PlayBlackAirAttackWarningAudio() end

function UAirAttackCS:ShowBlackAirAttackIcon() end

---@param airattacktype EAirAttackInfo
---@param waveIndex number
---@param AirAttackMode EAirAttackMode
function UAirAttackCS:OnAirAttack(airattacktype, waveIndex, AirAttackMode) end

---@param AirAttackType EAirAttackInfo
---@param WaveIndex number
---@param AirAttackMode EAirAttackMode
---@param AirAttackAreaSrc FVector
function UAirAttackCS:OnCallBlackAirAttack(AirAttackType, WaveIndex, AirAttackMode, AirAttackAreaSrc) end

---@param MapUIScale number
function UAirAttackCS:OnMapUIScaleChanged(MapUIScale) end

---@param index number
function UAirAttackCS:AirAttackThrowBomb(index) end

---@param _Bomblocation FVector
function UAirAttackCS:DoBombExplosion(_Bomblocation) end

---@param bombLocation FVector
---@param DelayTime number
function UAirAttackCS:DoBombHarmAtLocation(bombLocation, DelayTime) end

function UAirAttackCS:OnRep_BombedHousePosArr() end

function UAirAttackCS:OnRep_BombedHouseCenterArr() end

---@param WaveIndex number
function UAirAttackCS:ShowCallBlackAirAttackIcon(WaveIndex) end

---@param AirAttackAreaSrc FVector
function UAirAttackCS:PlayCallBlackAirAttackWarningAudio(AirAttackAreaSrc) end

---@param WaveIndex number
function UAirAttackCS:CallBlackAirAttackThrowBomb(WaveIndex) end

---@param WaveIndex number
---@param bShown boolean
---@param AirAttackAreaSrc FVector
function UAirAttackCS:RefreshCallBlackAirAttackWarningCircle(WaveIndex, bShown, AirAttackAreaSrc) end

function UAirAttackCS:FilterBombHousePosInst() end

function UAirAttackCS:ShowAllBombHouse() end

function UAirAttackCS:ClearCenterMark() end

function UAirAttackCS:ClearFilteredMark() end

function UAirAttackCS:ShowCenterMark() end

function UAirAttackCS:FilterMiniMapBombHousePosInst() end

function UAirAttackCS:ShowAllBombedHouseInMiniMap() end
