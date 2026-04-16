---@meta

---@class EInterpCurveMode
---@field CIM_Linear number @Linear
---@field CIM_CurveAuto number @Curve Auto
---@field CIM_Constant number @Constant
---@field CIM_CurveUser number @Curve User
---@field CIM_CurveBreak number @Curve Break
---@field CIM_CurveAutoClamped number @Curve Auto Clamped
EInterpCurveMode = {}


---@class EPixelFormat
---@field PF_Unknown number
---@field PF_A32B32G32R32F number
---@field PF_B8G8R8A8 number @UNORM (0..1), corresponds to FColor.  Unpacks as rgba in the shader.
---@field PF_G8 number @UNORM red (0..1)
---@field PF_G16 number
---@field PF_DXT1 number
---@field PF_DXT3 number
---@field PF_DXT5 number
---@field PF_UYVY number
---@field PF_FloatRGB number @Same as PF_FloatR11G11B10
---@field PF_FloatRGBA number @RGBA 16 bit signed FP format.  Use FFloat16Color on the CPU.
---@field PF_DepthStencil number @A depth+stencil format with platform-specific implementation, for use with render targets.
---@field PF_ShadowDepth number @A depth format with platform-specific implementation, for use with render targets.
---@field PF_R32_FLOAT number
---@field PF_G16R16 number
---@field PF_G16R16F number
---@field PF_G16R16F_FILTER number
---@field PF_G32R32F number
---@field PF_A2B10G10R10 number
---@field PF_A16B16G16R16 number
---@field PF_D24 number
---@field PF_R16F number
---@field PF_R16F_FILTER number
---@field PF_BC5 number
---@field PF_V8U8 number @SNORM red, green (-1..1). Not supported on all RHI e.g. Metal
---@field PF_A1 number
---@field PF_FloatR11G11B10 number @A low precision floating point format, unsigned.  Use FFloat3Packed on the CPU.
---@field PF_A8 number
---@field PF_R32_UINT number
---@field PF_R32_SINT number
---@field PF_PVRTC2 number
---@field PF_PVRTC4 number
---@field PF_R16_UINT number
---@field PF_R16_SINT number
---@field PF_R16G16B16A16_UINT number
---@field PF_R16G16B16A16_SINT number
---@field PF_R5G6B5_UNORM number
---@field PF_R8G8B8A8 number
---@field PF_A8R8G8B8 number @Only used for legacy loading; do NOT use!
---@field PF_BC4 number @High precision single channel block compressed, equivalent to a single channel BC5, 8 bytes per 4x4 block.
---@field PF_R8G8 number @UNORM red, green (0..1).
---@field PF_ATC_RGB number @ATITC format.
---@field PF_ATC_RGBA_E number @ATITC format.
---@field PF_ATC_RGBA_I number @ATITC format.
---@field PF_X24_G8 number @Used for creating SRVs to alias a DepthStencil buffer to read Stencil.  Don't use for creating textures.
---@field PF_ETC1 number
---@field PF_ETC2_RGB number
---@field PF_ETC2_RGBA number
---@field PF_R32G32B32A32_UINT number
---@field PF_R16G16_UINT number
---@field PF_ASTC_4x4 number @8.00 bpp
---@field PF_ASTC_6x6 number @3.56 bpp
---@field PF_ASTC_8x8 number @2.00 bpp
---@field PF_ASTC_10x10 number @1.28 bpp
---@field PF_ASTC_12x12 number @0.89 bpp
---@field PF_BC6H number
---@field PF_BC7 number
---@field PF_R8_UINT number
---@field PF_L8 number
---@field PF_XGXR8 number
---@field PF_R8G8B8A8_UINT number
---@field PF_R8G8B8A8_SNORM number @SNORM (-1..1), corresponds to FFixedRGBASigned8.
EPixelFormat = {}


---@class EUnit
---@field Micrometers number @Scalar distance/length unit.
---@field Millimeters number
---@field Centimeters number
---@field Meters number
---@field Kilometers number
---@field Inches number
---@field Feet number
---@field Yards number
---@field Miles number
---@field Lightyears number
---@field Degrees number @Angular units
---@field Radians number
---@field MetersPerSecond number @Speed units
---@field KilometersPerHour number
---@field MilesPerHour number
---@field Celsius number @Temperature units
---@field Farenheit number
---@field Kelvin number
---@field Micrograms number @Mass units
---@field Milligrams number
---@field Grams number
---@field Kilograms number
---@field MetricTons number
---@field Ounces number
---@field Pounds number
---@field Stones number
---@field Newtons number @Force units
---@field PoundsForce number
---@field KilogramsForce number
---@field Hertz number @Frequency units
---@field Kilohertz number
---@field Megahertz number
---@field Gigahertz number
---@field RevolutionsPerMinute number
---@field Bytes number @Data Size units
---@field Kilobytes number
---@field Megabytes number
---@field Gigabytes number
---@field Terabytes number
---@field Lumens number @Luminous flux units
---@field Milliseconds number @Time units
---@field Seconds number
---@field Minutes number
---@field Hours number
---@field Days number
---@field Months number
---@field Years number
---@field Multiplier number @Arbitrary multiplier
---@field Percentage number @Percentage
---@field Unspecified number @Symbolic entry, not specifiable on meta data.
EUnit = {}


---@class EAutomationEventType
---@field Info number
---@field Warning number
---@field Error number
EAutomationEventType = {}


---@class FGuid
---@field A number
---@field B number
---@field C number
---@field D number
FGuid = {}


---@class FVector
---@field X number
---@field Y number
---@field Z number
FVector = {}


---@class FVector4
---@field X number
---@field Y number
---@field Z number
---@field W number
FVector4 = {}


---@class FVector2D
---@field X number
---@field Y number
FVector2D = {}


---@class FTwoVectors
---@field v1 FVector
---@field v2 FVector
FTwoVectors = {}


---@class FPlane
---@field W number
FPlane = {}


---@class FRotator
---@field Pitch number @Pitch (degrees) around Y axis
---@field Yaw number @Yaw (degrees) around Z axis
---@field Roll number @Roll (degrees) around X axis
FRotator = {}


---@class FQuat
---@field X number
---@field Y number
---@field Z number
---@field W number
FQuat = {}


---@class FPackedNormal
---@field X number
---@field Y number
---@field Z number
---@field W number
FPackedNormal = {}


---@class FPackedRGB10A2N
---@field Packed number
FPackedRGB10A2N = {}


---@class FPackedRGBA16N
---@field XY number
---@field ZW number
FPackedRGBA16N = {}


---@class FIntPoint
---@field X number
---@field Y number
FIntPoint = {}


---@class FIntVector
---@field X number
---@field Y number
---@field Z number
FIntVector = {}


---@class FColor
---@field B number
---@field G number
---@field R number
---@field A number
FColor = {}


---@class FLinearColor
---@field R number
---@field G number
---@field B number
---@field A number
FLinearColor = {}


---@class FBox
---@field Min FVector
---@field Max FVector
---@field IsValid number
FBox = {}


---@class FBox2D
---@field Min FVector2D
---@field Max FVector2D
---@field bIsValid number
FBox2D = {}


---@class FBoxSphereBounds
---@field Origin FVector
---@field BoxExtent FVector
---@field SphereRadius number
FBoxSphereBounds = {}


---@class FOrientedBox
---@field Center FVector
---@field AxisX FVector
---@field AxisY FVector
---@field AxisZ FVector
---@field ExtentX number
---@field ExtentY number
---@field ExtentZ number
FOrientedBox = {}


---@class FMatrix
---@field XPlane FPlane
---@field YPlane FPlane
---@field ZPlane FPlane
---@field WPlane FPlane
FMatrix = {}


---@class FInterpCurvePointFloat
---@field InVal number
---@field OutVal number
---@field ArriveTangent number
---@field LeaveTangent number
---@field InterpMode EInterpCurveMode
FInterpCurvePointFloat = {}


---@class FInterpCurveFloat
---@field Points ULuaArrayHelper<FInterpCurvePointFloat>
---@field bIsLooped boolean
---@field LoopKeyOffset number
FInterpCurveFloat = {}


---@class FInterpCurvePointVector2D
---@field InVal number
---@field OutVal FVector2D
---@field ArriveTangent FVector2D
---@field LeaveTangent FVector2D
---@field InterpMode EInterpCurveMode
FInterpCurvePointVector2D = {}


---@class FInterpCurveVector2D
---@field Points ULuaArrayHelper<FInterpCurvePointVector2D>
---@field bIsLooped boolean
---@field LoopKeyOffset number
FInterpCurveVector2D = {}


---@class FInterpCurvePointVector
---@field InVal number
---@field OutVal FVector
---@field ArriveTangent FVector
---@field LeaveTangent FVector
---@field InterpMode EInterpCurveMode
FInterpCurvePointVector = {}


---@class FInterpCurveVector
---@field Points ULuaArrayHelper<FInterpCurvePointVector>
---@field bIsLooped boolean
---@field LoopKeyOffset number
FInterpCurveVector = {}


---@class FInterpCurvePointQuat
---@field InVal number
---@field OutVal FQuat
---@field ArriveTangent FQuat
---@field LeaveTangent FQuat
---@field InterpMode EInterpCurveMode
FInterpCurvePointQuat = {}


---@class FInterpCurveQuat
---@field Points ULuaArrayHelper<FInterpCurvePointQuat>
---@field bIsLooped boolean
---@field LoopKeyOffset number
FInterpCurveQuat = {}


---@class FInterpCurvePointTwoVectors
---@field InVal number
---@field OutVal FTwoVectors
---@field ArriveTangent FTwoVectors
---@field LeaveTangent FTwoVectors
---@field InterpMode EInterpCurveMode
FInterpCurvePointTwoVectors = {}


---@class FInterpCurveTwoVectors
---@field Points ULuaArrayHelper<FInterpCurvePointTwoVectors>
---@field bIsLooped boolean
---@field LoopKeyOffset number
FInterpCurveTwoVectors = {}


---@class FInterpCurvePointLinearColor
---@field InVal number
---@field OutVal FLinearColor
---@field ArriveTangent FLinearColor
---@field LeaveTangent FLinearColor
---@field InterpMode EInterpCurveMode
FInterpCurvePointLinearColor = {}


---@class FInterpCurveLinearColor
---@field Points ULuaArrayHelper<FInterpCurvePointLinearColor>
---@field bIsLooped boolean
---@field LoopKeyOffset number
FInterpCurveLinearColor = {}


---@class FTransform
---@field Rotation FQuat
---@field Translation FVector
---@field Scale3D FVector
FTransform = {}


---@class FRandomStream
---@field InitialSeed number
---@field Seed number
FRandomStream = {}


---@class FDateTime
FDateTime = {}


---@class FTimespan
FTimespan = {}


---@class FSoftObjectPath
---@field AssetPathName string @Asset path, patch to a top level object in a package
---@field SubPathString string @Optional FString for subobject within an asset
FSoftObjectPath = {}


---@class FSoftClassPath
FSoftClassPath = {}


---@class FPrimaryAssetType
---@field Name string @The Type of this object, by default it's base class's name
FPrimaryAssetType = {}


---@class FPrimaryAssetId
---@field PrimaryAssetType FPrimaryAssetType @The Type of this object, by default it's base class's name
---@field PrimaryAssetName string @The Name of this object, by default it's short name
FPrimaryAssetId = {}


---@class FFallbackStruct
FFallbackStruct = {}


---@class FFloatRangeBound
---@field Type ERangeBoundTypes
---@field Value number
FFloatRangeBound = {}


---@class FFloatRange
---@field LowerBound FFloatRangeBound
---@field UpperBound FFloatRangeBound
FFloatRange = {}


---@class FInt32RangeBound
---@field Type ERangeBoundTypes
---@field Value number
FInt32RangeBound = {}


---@class FInt32Range
---@field LowerBound FInt32RangeBound
---@field UpperBound FInt32RangeBound
FInt32Range = {}


---@class FFloatInterval
---@field Min number
---@field Max number
FFloatInterval = {}


---@class FInt32Interval
---@field Min number
---@field Max number
FInt32Interval = {}


---@class FAutomationEvent
---@field Type EAutomationEventType
---@field Message string
---@field Context string
---@field Filename string
---@field LineNumber number
---@field Timestamp FDateTime
FAutomationEvent = {}


---@class UObject
local UObject = {}

---Executes some portion of the ubergraph.
---@param EntryPoint number
function UObject:ExecuteUbergraph(EntryPoint) end
