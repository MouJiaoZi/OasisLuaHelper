---@meta

---@class EEasingFunc
---@field Linear number @Simple linear interpolation.
---@field Step number @Simple step interpolation.
---@field SinusoidalIn number @Sinusoidal in interpolation.
---@field SinusoidalOut number @Sinusoidal out interpolation.
---@field SinusoidalInOut number @Sinusoidal in/out interpolation.
---@field EaseIn number @Smoothly accelerates, but does not decelerate into the target.  Ease amount controlled by BlendExp.
---@field EaseOut number @Immediately accelerates, but smoothly decelerates into the target.  Ease amount controlled by BlendExp.
---@field EaseInOut number @Smoothly accelerates and decelerates.  Ease amount controlled by BlendExp.
---@field ExpoIn number @Easing in using an exponential
---@field ExpoOut number @Easing out using an exponential
---@field ExpoInOut number @Easing in/out using an exponential method
---@field CircularIn number @Easing is based on a half circle.
---@field CircularOut number @Easing is based on an inverted half circle.
---@field CircularInOut number @Easing is based on two half circles.
EEasingFunc = {}


---Different methods for interpolating rotation between transforms
---@class ELerpInterpolationMode
---@field QuatInterp number @Shortest Path or Quaternion interpolation for the rotation.
---@field EulerInterp number @Rotor or Euler Angle interpolation.
---@field DualQuatInterp number @Dual quaternion interpolation, follows helix or screw-motion path between keyframes.
ELerpInterpolationMode = {}


---@class FFloatSpringState
FFloatSpringState = {}


---@class FVectorSpringState
FVectorSpringState = {}


---Provides different easing functions that can be used in blueprints
---@class FGetFromFixedRandomStream : ULuaSingleDelegate
FGetFromFixedRandomStream = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetFromFixedRandomStream:Bind(Callback, Obj) end

---执行委托
function FGetFromFixedRandomStream:Execute() end


---@class UKismetMathLibrary: UBlueprintFunctionLibrary
local UKismetMathLibrary = {}

---Returns a uniformly distributed random bool
---@return boolean
function UKismetMathLibrary:RandomBool() end

---Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g., Weight = .6 return value = True 60% of the time
---@param Weight number
---@return boolean
function UKismetMathLibrary:RandomBoolWithWeight(Weight) end

---Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g., Weight = .6 return value = True 60% of the time
---@param Weight number
---@param RandomStream FRandomStream
---@return boolean
function UKismetMathLibrary:RandomBoolWithWeightFromStream(Weight, RandomStream) end

---Returns the logical complement of the Boolean value (NOT A)
---@param A boolean
---@return boolean
function UKismetMathLibrary:Not_PreBool(A) end

---Returns true if the values are equal (A == B)
---@param A boolean
---@param B boolean
---@return boolean
function UKismetMathLibrary:EqualEqual_BoolBool(A, B) end

---Returns true if the values are not equal (A != B)
---@param A boolean
---@param B boolean
---@return boolean
function UKismetMathLibrary:NotEqual_BoolBool(A, B) end

---Returns the logical AND of two values (A AND B)
---@param A boolean
---@param B boolean
---@return boolean
function UKismetMathLibrary:BooleanAND(A, B) end

---Returns the logical NAND of two values (A AND B)
---@param A boolean
---@param B boolean
---@return boolean
function UKismetMathLibrary:BooleanNAND(A, B) end

---Returns the logical OR of two values (A OR B)
---@param A boolean
---@param B boolean
---@return boolean
function UKismetMathLibrary:BooleanOR(A, B) end

---Returns the logical eXclusive OR of two values (A XOR B)
---@param A boolean
---@param B boolean
---@return boolean
function UKismetMathLibrary:BooleanXOR(A, B) end

---Returns the logical Not OR of two values (A NOR B)
---@param A boolean
---@param B boolean
---@return boolean
function UKismetMathLibrary:BooleanNOR(A, B) end

---Multiplication (A * B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Multiply_ByteByte(A, B) end

---Division (A / B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Divide_ByteByte(A, B) end

---Modulo (A % B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Percent_ByteByte(A, B) end

---Addition (A + B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Add_ByteByte(A, B) end

---Subtraction (A - B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Subtract_ByteByte(A, B) end

---Returns the minimum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:BMin(A, B) end

---Returns the maximum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:BMax(A, B) end

---Returns true if A is less than B (A < B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Less_ByteByte(A, B) end

---Returns true if A is greater than B (A > B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Greater_ByteByte(A, B) end

---Returns true if A is less than or equal to B (A <= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:LessEqual_ByteByte(A, B) end

---Returns true if A is greater than or equal to B (A >= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:GreaterEqual_ByteByte(A, B) end

---Returns true if A is equal to B (A == B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:EqualEqual_ByteByte(A, B) end

---Returns true if A is not equal to B (A != B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:NotEqual_ByteByte(A, B) end

---Multiplication (A * B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Multiply_IntInt(A, B) end

---Division (A / B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Divide_IntInt(A, B) end

---Modulo (A % B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Percent_IntInt(A, B) end

---Addition (A + B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Add_IntInt(A, B) end

---Subtraction (A - B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Subtract_IntInt(A, B) end

---Returns true if A is less than B (A < B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Less_IntInt(A, B) end

---Returns true if A is greater than B (A > B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Greater_IntInt(A, B) end

---Returns true if A is less than or equal to B (A <= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:LessEqual_IntInt(A, B) end

---Returns true if A is greater than or equal to B (A >= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:GreaterEqual_IntInt(A, B) end

---Returns true if A is equal to B (A == B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:EqualEqual_IntInt(A, B) end

---Returns true if A is not equal to B (A != B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:NotEqual_IntInt(A, B) end

---Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller
---@param Value number
---@param Min number
---@param Max number
---@param InclusiveMin boolean
---@param InclusiveMax boolean
---@return boolean
function UKismetMathLibrary:InRange_IntInt(Value, Min, Max, InclusiveMin, InclusiveMax) end

---Bitwise AND (A & B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:And_IntInt(A, B) end

---Bitwise XOR (A ^ B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Xor_IntInt(A, B) end

---Bitwise OR (A | B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Or_IntInt(A, B) end

---Bitwise NOT (~A)
---@param A number
---@return number
function UKismetMathLibrary:Not_Int(A) end

---Bitwise LeftShift (A << N)
---@param A number
---@param N number
---@return number
function UKismetMathLibrary:LeftShift_Int(A, N) end

---Bitwise RightShift (A >> N)
---@param A number
---@param N number
---@return number
function UKismetMathLibrary:RightShift_Int(A, N) end

---Bitwise LeftShift (A << N)
---@param A number
---@param N number
---@return number
function UKismetMathLibrary:LeftShift_Int64(A, N) end

---Bitwise RightShift (A >> N)
---@param A number
---@param N number
---@return number
function UKismetMathLibrary:RightShift_Int64(A, N) end

---Sign (integer, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0)
---@param A number
---@return number
function UKismetMathLibrary:SignOfInteger(A) end

---Returns a uniformly distributed random number between 0 and Max - 1
---@param Max number
---@return number
function UKismetMathLibrary:RandomInteger(Max) end

---Return a random integer between Min and Max (>= Min and <= Max)
---@param Min number
---@param Max number
---@return number
function UKismetMathLibrary:RandomIntegerInRange(Min, Max) end

---Returns the minimum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Min(A, B) end

---Returns the maximum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Max(A, B) end

---Returns Value clamped to be between A and B (inclusive)
---@param Value number
---@param Min number
---@param Max number
---@return number
function UKismetMathLibrary:Clamp(Value, Min, Max) end

---Returns the absolute (positive) value of A
---@param A number
---@return number
function UKismetMathLibrary:Abs_Int(A) end

---Multiplication (A * B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Multiply_Int64Int64(A, B) end

---Division (A / B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Divide_Int64Int64(A, B) end

---Addition (A + B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Add_Int64Int64(A, B) end

---Subtraction (A - B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Subtract_Int64Int64(A, B) end

---Returns true if A is less than B (A < B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Less_Int64Int64(A, B) end

---Returns true if A is greater than B (A > B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Greater_Int64Int64(A, B) end

---Returns true if A is less than or equal to B (A <= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:LessEqual_Int64Int64(A, B) end

---Returns true if A is greater than or equal to B (A >= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:GreaterEqual_Int64Int64(A, B) end

---Returns true if A is equal to B (A == B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:EqualEqual_Int64Int64(A, B) end

---Returns true if A is not equal to B (A != B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:NotEqual_Int64Int64(A, B) end

---Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller
---@param Value number
---@param Min number
---@param Max number
---@param InclusiveMin boolean
---@param InclusiveMax boolean
---@return boolean
function UKismetMathLibrary:InRange_Int64Int64(Value, Min, Max, InclusiveMin, InclusiveMax) end

---Bitwise AND (A & B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:And_Int64Int64(A, B) end

---Bitwise XOR (A ^ B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Xor_Int64Int64(A, B) end

---Bitwise OR (A | B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Or_Int64Int64(A, B) end

---Bitwise NOT (~A)
---@param A number
---@return number
function UKismetMathLibrary:Not_Int64(A) end

---Sign (integer64, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0)
---@param A number
---@return number
function UKismetMathLibrary:SignOfInteger64(A) end

---Returns a uniformly distributed random number between 0 and Max - 1
---@param Max number
---@return number
function UKismetMathLibrary:RandomInteger64(Max) end

---Return a random integer64 between Min and Max (>= Min and <= Max)
---@param Min number
---@param Max number
---@return number
function UKismetMathLibrary:RandomInteger64InRange(Min, Max) end

---Returns the minimum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:MinInt64(A, B) end

---Returns the maximum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:MaxInt64(A, B) end

---Returns Value clamped to be between A and B (inclusive)
---@param Value number
---@param Min number
---@param Max number
---@return number
function UKismetMathLibrary:ClampInt64(Value, Min, Max) end

---Returns the absolute (positive) value of A
---@param A number
---@return number
function UKismetMathLibrary:Abs_Int64(A) end

---Multiplication (A * B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Multiply_UInt64UInt64(A, B) end

---Division (A / B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Divide_UInt64UInt64(A, B) end

---Addition (A + B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Add_UInt64UInt64(A, B) end

---Subtraction (A - B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Subtract_UInt64UInt64(A, B) end

---Returns true if A is less than B (A < B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Less_UInt64UInt64(A, B) end

---Returns true if A is greater than B (A > B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:Greater_UInt64UInt64(A, B) end

---Returns true if A is less than or equal to B (A <= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:LessEqual_UInt64UInt64(A, B) end

---Returns true if A is greater than or equal to B (A >= B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:GreaterEqual_UInt64UInt64(A, B) end

---Returns true if A is equal to B (A == B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:EqualEqual_UInt64UInt64(A, B) end

---Returns true if A is not equal to B (A != B)
---@param A number
---@param B number
---@return boolean
function UKismetMathLibrary:NotEqual_UInt64UInt64(A, B) end

---Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller
---@param Value number
---@param Min number
---@param Max number
---@param InclusiveMin boolean
---@param InclusiveMax boolean
---@return boolean
function UKismetMathLibrary:InRange_UInt64UInt64(Value, Min, Max, InclusiveMin, InclusiveMax) end

---Bitwise AND (A & B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:And_UInt64UInt64(A, B) end

---Bitwise XOR (A ^ B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Xor_UInt64UInt64(A, B) end

---Bitwise OR (A | B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Or_UInt64UInt64(A, B) end

---Bitwise NOT (~A)
---@param A number
---@return number
function UKismetMathLibrary:Not_UInt64(A) end

---Returns a uniformly distributed random number between 0 and Max - 1
---@param Max number
---@return number
function UKismetMathLibrary:RandomUInteger64(Max) end

---Return a random integer64 between Min and Max (>= Min and <= Max)
---@param Min number
---@param Max number
---@return number
function UKismetMathLibrary:RandomUInteger64InRange(Min, Max) end

---Returns the minimum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:MinUInt64(A, B) end

---Returns the maximum value of A and B
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:MaxUInt64(A, B) end

---Returns Value clamped to be between A and B (inclusive)
---@param Value number
---@param Min number
---@param Max number
---@return number
function UKismetMathLibrary:ClampUInt64(Value, Min, Max) end

---Power (Base to the Exp-th power)
---@param Base number
---@param Exp number
---@return number
function UKismetMathLibrary:MultiplyMultiply_FloatFloat(Base, Exp) end

---Multiplication (A * B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Multiply_FloatFloat(A, B) end

---Multiplication (A * B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Multiply_IntFloat(A, B) end

---Division (A / B)
---@param A number
---@param B number
---@return number
function UKismetMathLibrary:Divide_FloatFloat(A, B) end
