---@meta

---Data needed for local vector fields.
---@class FGPUSpriteLocalVectorFieldInfo
---@field Transform FTransform @Local vector field transform.
---@field MinInitialRotation FRotator @Minimum initial rotation.
---@field MaxInitialRotation FRotator @Maximum initial rotation.
---@field RotationRate FRotator @Local vector field rotation rate.
---@field Intensity number @Local vector field intensity.
---@field Tightness number @Local vector field tightness.
---@field bIgnoreComponentTransform number
---@field bTileX number @Tile vector field in x axis?
---@field bTileY number @Tile vector field in y axis?
---@field bTileZ number @Tile vector field in z axis?
---@field bUseFixDT number @Use fix delta time in the simulation?
FGPUSpriteLocalVectorFieldInfo = {}


---The data needed by the runtime to simulate sprites.
---@class FGPUSpriteEmitterInfo
---@field SpawnModules ULuaArrayHelper<UParticleModule> @List of spawn modules that must be evaluated at runtime.
---@field LocalVectorField any @Local vector field info.
---@field VectorFieldScale FFloatDistribution @Per-particle vector field scale.
---@field DragCoefficient FFloatDistribution @Per-particle drag coefficient.
---@field PointAttractorStrength FFloatDistribution @Point attractor strength over time.
---@field Resilience FFloatDistribution @Damping factor applied to particle collisions.
---@field ConstantAcceleration FVector @Constant acceleration to apply to particles.
---@field PointAttractorPosition FVector @Point attractor position.
---@field PointAttractorRadiusSq number @Point attractor radius, squared.
---@field OrbitOffsetBase FVector @Amount by which to offset particles when they are spawned.
---@field OrbitOffsetRange FVector
---@field InvMaxSize FVector2D @One over the maximum size of a sprite particle.
---@field InvRotationRateScale number @The inverse scale to apply to rotation rate.
---@field MaxLifetime number @The maximum lifetime of particles in this emitter.
---@field MaxParticleCount number @The maximum number of particles expected for this emitter.
---@field ScreenAlignment EParticleScreenAlignment @The method for aligning the particle based on the camera.
---@field LockAxisFlag EParticleAxisLock @The method for locking the particles to a particular axis.
---@field bEnableCollision number @If true, collisions are enabled for this emitter.
---@field CollisionMode EParticleCollisionMode
---@field bRemoveHMDRoll number @If true, removes the HMD view roll (e.g. in VR)
---@field MinFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_Square
---@field MaxFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_FacingCameraPosition
---@field DynamicColor FRawDistributionVector @Dynamic color scale from the ColorOverLife module.
---@field DynamicAlpha FRawDistributionFloat @Dynamic alpha scale from the ColorOverLife module.
---@field DynamicColorScale FRawDistributionVector @Dynamic color scale from the ColorScaleOverLife module.
---@field DynamicAlphaScale FRawDistributionFloat @Dynamic alpha scale from the ColorScaleOverLife module.
---@field DynamicColorHDR FRawDistributionVector @Dynamic color scale from the ColorOverLife module.
---@field DynamicAlphaHDR FRawDistributionFloat @Dynamic alpha scale from the ColorOverLife module.
---@field DynamicColorScaleHDR FRawDistributionVector @Dynamic color scale from the ColorScaleOverLife module.
---@field DynamicAlphaScaleHDR FRawDistributionFloat @Dynamic alpha scale from the ColorScaleOverLife module.
FGPUSpriteEmitterInfo = {}


---The source data for runtime resources.
---@class FGPUSpriteResourceData
---@field QuantizedColorSamples ULuaArrayHelper<FColor> @Quantized color samples.
---@field QuantizedMiscSamples ULuaArrayHelper<FColor> @Quantized samples for misc curve attributes to be evaluated at runtime.
---@field QuantizedSimulationAttrSamples ULuaArrayHelper<FColor> @Quantized samples for simulation attributes.
---@field ColorScale FVector4 @Scale and bias to be applied to the color of sprites.
---@field ColorBias FVector4
---@field QuantizedColorSamplesHDR ULuaArrayHelper<FColor>
---@field ColorScaleHDR FVector4
---@field ColorBiasHDR FVector4
---@field MiscScale FVector4 @Scale and bias to be applied to the misc curve.
---@field MiscBias FVector4
---@field SimulationAttrCurveScale FVector4 @Scale and bias to be applied to the simulation attribute curves.
---@field SimulationAttrCurveBias FVector4
---@field SubImageSize FVector4 @Size of subimages. X:SubImageCountH Y:SubImageCountV Z:1/SubImageCountH W:1/SubImageCountV
---@field SizeBySpeed FVector4 @SizeBySpeed parameters. XY=SpeedScale ZW=MaxSpeedScale.
---@field ConstantAcceleration FVector @Constant acceleration to apply to particles.
---@field OrbitOffsetBase FVector @Offset at which to orbit.
---@field OrbitOffsetRange FVector
---@field OrbitFrequencyBase FVector @Frequency at which the particle orbits around each axis.
---@field OrbitFrequencyRange FVector
---@field OrbitPhaseBase FVector @Phase offset of orbit around each axis.
---@field OrbitPhaseRange FVector
---@field GlobalVectorFieldScale number @Scale to apply to global vector fields.
---@field GlobalVectorFieldTightness number @Tightness override value for the global vector fields.
---@field PerParticleVectorFieldScale number @Scale to apply to per-particle vector field scale.
---@field PerParticleVectorFieldBias number @Bias to apply to per-particle vector field scale.
---@field DragCoefficientScale number @Scale to apply to per-particle drag coefficient.
---@field DragCoefficientBias number @Bias to apply to per-particle drag coefficient.
---@field ResilienceScale number @Scale to apply to per-particle damping factor.
---@field ResilienceBias number @Bias to apply to per-particle damping factor.
---@field CollisionRadiusScale number @Scale to apply to per-particle size for collision.
---@field CollisionRadiusBias number @Bias to apply to per-particle size for collision.
---@field CollisionTimeBias number @Bias applied to relative time upon collision.
---@field CollisionRandomSpread number @Control on reflection's random distribution spread.
---@field CollisionRandomDistribution number @Control on reflection's random distribution when colliding. (1=uniform distribution)
---@field OneMinusFriction number @One minus the coefficient of friction applied to particles upon collision.
---@field RotationRateScale number @Scale to apply to per-particle rotation rate.
---@field CameraMotionBlurAmount number @How much to stretch sprites based on camera motion blur.
---@field ScreenAlignment EParticleScreenAlignment @Screen alignment for particles.
---@field LockAxisFlag EParticleAxisLock @The method for locking the particles to a particular axis.
---@field PivotOffset FVector2D @Pivot offset in UV space for placing the verts of each particle.
---@field bRemoveHMDRoll number @If true, removes the HMD view roll (e.g. in VR)
---@field MinFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_Square
---@field MaxFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_FacingCameraPosition
FGPUSpriteResourceData = {}


---@class UParticleModuleTypeDataGpu: UParticleModuleTypeDataBase
---@field EmitterInfo any @Information for runtime simulation.
---@field ResourceData any @Data used to initialize runtime resources.
---@field CameraMotionBlurAmount number @TEMP: How much to stretch sprites based on camera motion blur.
---@field bClearExistingParticlesOnInit number @When true, all existing partilces are cleared when the emitter is initialized.
local UParticleModuleTypeDataGpu = {}
