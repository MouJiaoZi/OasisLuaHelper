---@meta

---@class UArtToolsFunctionLibrary: UBlueprintFunctionLibrary
local UArtToolsFunctionLibrary = {}

---Returns the View Matrix, Projection Matrix and the View x Projection Matrix for a given view
---@param DesiredView FMinimalViewInfo
---@param ViewMatrix FMatrix
---@param ProjectionMatrix FMatrix
---@param ViewProjectionMatrix FMatrix
function UArtToolsFunctionLibrary:GetViewProjectionMatrix(DesiredView, ViewMatrix, ProjectionMatrix, ViewProjectionMatrix) end

---@param M FMatrix
---@param V FVector
---@return FVector4
function UArtToolsFunctionLibrary:Matrix_TransformPosition(M, V) end

---@param FrustumComponent UDrawFrustumComponent
---@param EndDistance number
function UArtToolsFunctionLibrary:UpdateDrawCameraFrustumEndDistance(FrustumComponent, EndDistance) end
