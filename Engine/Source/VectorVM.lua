---@meta

---@class EVectorVMBaseTypes
---@field Float number
---@field Int number
---@field Bool number
---@field Num number
EVectorVMBaseTypes = {}


---@class EVectorVMOperandLocation
---@field Register number
---@field Constant number
---@field Num number
EVectorVMOperandLocation = {}


---@class EVectorVMOp
---@field done number
---@field add number
---@field sub number
---@field mul number
---@field div number
---@field mad number
---@field lerp number
---@field rcp number
---@field rsq number
---@field sqrt number
---@field neg number
---@field abs number
---@field exp number
---@field exp2 number
---@field log number
---@field log2 number
---@field sin number
---@field cos number
---@field tan number
---@field asin number
---@field acos number
---@field atan number
---@field atan2 number
---@field ceil number
---@field floor number
---@field fmod number
---@field frac number
---@field trunc number
---@field clamp number
---@field min number
---@field max number
---@field pow number
---@field round number
---@field sign number
---@field step number
---@field random number
---@field noise number
---@field cmplt number
---@field cmple number
---@field cmpgt number
---@field cmpge number
---@field cmpeq number
---@field cmpneq number
---@field select number
---@field addi number
---@field subi number
---@field muli number
---@field clampi number
---@field mini number
---@field maxi number
---@field absi number
---@field negi number
---@field signi number
---@field randomi number
---@field cmplti number
---@field cmplei number
---@field cmpgti number
---@field cmpgei number
---@field cmpeqi number
---@field cmpneqi number
---@field bit_and number
---@field bit_or number
---@field bit_xor number
---@field bit_not number
---@field logic_and number
---@field logic_or number
---@field logic_xor number
---@field logic_not number
---@field f2i number
---@field i2f number
---@field f2b number
---@field b2f number
---@field i2b number
---@field b2i number
---@field inputdata_32bit number
---@field inputdata_noadvance_32bit number
---@field outputdata_32bit number
---@field acquireindex number
---@field external_func_call number
---@field exec_index number @Returns the index of each instance in the current execution context.
---@field noise2D number
---@field noise3D number
---@field enter_stat_scope number @Utility ops for hooking into the stats system for performance analysis.
---@field exit_stat_scope number
---@field NumOpcodes number
EVectorVMOp = {}


---@class FVMExternalFunction : ULuaSingleDelegate
FVMExternalFunction = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FVectorVMContext) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVMExternalFunction:Bind(Callback, Obj) end

---执行委托
---@param Param1 FVectorVMContext
function FVMExternalFunction:Execute(Param1) end
