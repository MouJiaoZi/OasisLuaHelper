---@meta

---成就展示Actor 继承自 ALobbyItemShowActor，可被 ModelController.IdxToItemModel 管理 负责展示成就模型和特效，支持拖拽旋转 由 Lua 层的 AchievementDisplayMgr 管理
---@class AAchievementDisplayActor: AActor
---@field AchievementID string
---@field DragRotationSpeed number
---@field EffectScale number
---@field EffectOffset FVector
local AAchievementDisplayActor = {}

---设置模型（同步，资源需提前加载）
---@param InMesh UStaticMesh
function AAchievementDisplayActor:SetStaticMesh(InMesh) end

---设置特效（同步，资源需提前加载）
---@param InParticle UParticleSystem
function AAchievementDisplayActor:SetParticleEffect(InParticle) end

---设置是否允许拖拽旋转
---@param bEnabled boolean
function AAchievementDisplayActor:SetDragEnabled(bEnabled) end

---重置旋转到初始状态
function AAchievementDisplayActor:ResetRotation() end

---播放特效
function AAchievementDisplayActor:PlayEffect() end

---停止特效
function AAchievementDisplayActor:StopEffect() end

---设置模型缩放
---@param InScale number
function AAchievementDisplayActor:SetModelScale(InScale) end

---设置模型三轴缩放
---@param InScaleX number
---@param InScaleY number
---@param InScaleZ number
function AAchievementDisplayActor:SetModelScale3D(InScaleX, InScaleY, InScaleZ) end

---设置模型偏移
---@param InOffset FVector
function AAchievementDisplayActor:SetModelOffset(InOffset) end

---设置特效缩放
---@param InScale number
function AAchievementDisplayActor:SetEffectScale(InScale) end

---设置特效偏移
---@param InOffset FVector
function AAchievementDisplayActor:SetEffectOffset(InOffset) end
