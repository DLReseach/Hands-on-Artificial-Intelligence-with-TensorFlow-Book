î
Ň&ľ&
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
Č
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%ˇŃ8"
data_formatstringNHWC"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
7
Less
x"T
y"T
z
"
Ttype:
2		
!
LoopCond	
input


output

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
Ó
MaxPool

input"T
output"T"
Ttype0:
2
	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
ResizeBilinear
images"T
size
resized_images"
Ttype:

2	"
align_cornersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
-
Rsqrt
x"T
y"T"
Ttype:	
2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
¸
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.4.02
b'unknown'š

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shape: *
_class
loc:@global_step*
_output_shapes
: *
shared_name *
dtype0	*
	container 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 

PlaceholderPlaceholder*&
shape:˙˙˙˙˙˙˙˙˙ Ŕ*
dtype0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ Ŕ
T
	map/ShapeShapePlaceholder*
_output_shapes
:*
T0*
out_type0
a
map/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
c
map/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
map/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

map/strided_sliceStridedSlice	map/Shapemap/strided_slice/stackmap/strided_slice/stack_1map/strided_slice/stack_2*

begin_mask *
T0*
_output_shapes
: *
Index0*
ellipsis_mask *
shrink_axis_mask*
new_axis_mask *
end_mask 
ş
map/TensorArrayTensorArrayV3map/strided_slice*
dynamic_size( *
tensor_array_name *
_output_shapes

:: *
element_shape:*
clear_after_read(*
dtype0
g
map/TensorArrayUnstack/ShapeShapePlaceholder*
_output_shapes
:*
T0*
out_type0
t
*map/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,map/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ě
$map/TensorArrayUnstack/strided_sliceStridedSlicemap/TensorArrayUnstack/Shape*map/TensorArrayUnstack/strided_slice/stack,map/TensorArrayUnstack/strided_slice/stack_1,map/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
T0*
_output_shapes
: *
Index0*
ellipsis_mask *
shrink_axis_mask*
new_axis_mask *
end_mask 
d
"map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"map/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ä
map/TensorArrayUnstack/rangeRange"map/TensorArrayUnstack/range/start$map/TensorArrayUnstack/strided_slice"map/TensorArrayUnstack/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
ć
>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map/TensorArraymap/TensorArrayUnstack/rangePlaceholdermap/TensorArray:1*
_class
loc:@Placeholder*
T0*
_output_shapes
: 
K
	map/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
ź
map/TensorArray_1TensorArrayV3map/strided_slice*
dynamic_size( *
tensor_array_name *
_output_shapes

:: *
element_shape:*
clear_after_read(*
dtype0

map/while/EnterEnter	map/Const*
is_constant( *
T0*
_output_shapes
: *
parallel_iterations
*'

frame_namemap/while/while_context
§
map/while/Enter_1Entermap/TensorArray_1:1*
is_constant( *
T0*
_output_shapes
: *
parallel_iterations
*'

frame_namemap/while/while_context
n
map/while/MergeMergemap/while/Entermap/while/NextIteration*
T0*
_output_shapes
: : *
N
t
map/while/Merge_1Mergemap/while/Enter_1map/while/NextIteration_1*
T0*
_output_shapes
: : *
N
¨
map/while/Less/EnterEntermap/strided_slice*
is_constant(*
T0*
_output_shapes
: *
parallel_iterations
*'

frame_namemap/while/while_context
^
map/while/LessLessmap/while/Mergemap/while/Less/Enter*
T0*
_output_shapes
: 
F
map/while/LoopCondLoopCondmap/while/Less*
_output_shapes
: 

map/while/SwitchSwitchmap/while/Mergemap/while/LoopCond*"
_class
loc:@map/while/Merge*
T0*
_output_shapes
: : 

map/while/Switch_1Switchmap/while/Merge_1map/while/LoopCond*$
_class
loc:@map/while/Merge_1*
T0*
_output_shapes
: : 
S
map/while/IdentityIdentitymap/while/Switch:1*
T0*
_output_shapes
: 
W
map/while/Identity_1Identitymap/while/Switch_1:1*
T0*
_output_shapes
: 
ˇ
!map/while/TensorArrayReadV3/EnterEntermap/TensorArray*
is_constant(*
T0*
_output_shapes
:*
parallel_iterations
*'

frame_namemap/while/while_context
ä
#map/while/TensorArrayReadV3/Enter_1Enter>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
T0*
_output_shapes
: *
parallel_iterations
*'

frame_namemap/while/while_context
ż
map/while/TensorArrayReadV3TensorArrayReadV3!map/while/TensorArrayReadV3/Entermap/while/Identity#map/while/TensorArrayReadV3/Enter_1*
dtype0*$
_output_shapes
: Ŕ
o
map/while/ExpandDims/dimConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 

map/while/ExpandDims
ExpandDimsmap/while/TensorArrayReadV3map/while/ExpandDims/dim*
T0*

Tdim0*(
_output_shapes
: Ŕ

map/while/control_dependencyIdentitymap/while/ExpandDims*'
_class
loc:@map/while/ExpandDims*
T0*(
_output_shapes
: Ŕ
}
map/while/stackConst^map/while/Identity*%
valueB"    <           *
dtype0*
_output_shapes
:

map/while/stack_1Const^map/while/Identity*%
valueB"˙˙˙˙d   @  ˙˙˙˙*
dtype0*
_output_shapes
:

map/while/SliceSlicemap/while/control_dependencymap/while/stackmap/while/stack_1*
T0*'
_output_shapes
:dŔ*
Index0
r
map/while/SqueezeSqueezemap/while/Slice*
squeeze_dims
 *
T0*#
_output_shapes
:dŔ

map/while/control_dependency_1Identitymap/while/Squeeze*$
_class
loc:@map/while/Squeeze*
T0*#
_output_shapes
:dŔ
y
map/while/ShapeConst^map/while/Identity*!
valueB"d   @     *
dtype0*
_output_shapes
:
n
map/while/ConstConst^map/while/Identity*
valueB: *
dtype0*
_output_shapes
:
v
map/while/ProdProdmap/while/Shapemap/while/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
{
map/while/Const_1Const^map/while/Identity*!
valueB"          *
dtype0*
_output_shapes
:

map/while/MeanMeanmap/while/control_dependency_1map/while/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
h
map/while/SquareSquaremap/while/control_dependency_1*
T0*#
_output_shapes
:dŔ
{
map/while/Const_2Const^map/while/Identity*!
valueB"          *
dtype0*
_output_shapes
:
{
map/while/Mean_1Meanmap/while/Squaremap/while/Const_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
M
map/while/Square_1Squaremap/while/Mean*
T0*
_output_shapes
: 
[
map/while/subSubmap/while/Mean_1map/while/Square_1*
T0*
_output_shapes
: 
F
map/while/ReluRelumap/while/sub*
T0*
_output_shapes
: 
G
map/while/SqrtSqrtmap/while/Relu*
T0*
_output_shapes
: 
X
map/while/Cast_1Castmap/while/Prod*

DstT0*

SrcT0*
_output_shapes
: 
K
map/while/RsqrtRsqrtmap/while/Cast_1*
T0*
_output_shapes
: 
^
map/while/MaximumMaximummap/while/Sqrtmap/while/Rsqrt*
T0*
_output_shapes
: 
r
map/while/SubSubmap/while/control_dependency_1map/while/Mean*
T0*#
_output_shapes
:dŔ
h
map/while/divRealDivmap/while/Submap/while/Maximum*
T0*#
_output_shapes
:dŔ
q
map/while/ExpandDims_1/dimConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 

map/while/ExpandDims_1
ExpandDimsmap/while/divmap/while/ExpandDims_1/dim*
T0*

Tdim0*'
_output_shapes
:dŔ
t
map/while/sizeConst^map/while/Identity*
valueB"@   @   *
dtype0*
_output_shapes
:

map/while/ResizeBilinearResizeBilinearmap/while/ExpandDims_1map/while/size*
T0*&
_output_shapes
:@@*
align_corners( 
y
map/while/Squeeze_1Squeezemap/while/ResizeBilinear*
squeeze_dims
 *
T0*"
_output_shapes
:@@
ó
3map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap/TensorArray_1*&
_class
loc:@map/while/Squeeze_1*
_output_shapes
:*'

frame_namemap/while/while_context*
is_constant(*
T0*
parallel_iterations


-map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33map/while/TensorArrayWrite/TensorArrayWriteV3/Entermap/while/Identitymap/while/Squeeze_1map/while/Identity_1*&
_class
loc:@map/while/Squeeze_1*
T0*
_output_shapes
: 
f
map/while/add/yConst^map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
map/while/addAddmap/while/Identitymap/while/add/y*
T0*
_output_shapes
: 
X
map/while/NextIterationNextIterationmap/while/add*
T0*
_output_shapes
: 
z
map/while/NextIteration_1NextIteration-map/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
I
map/while/ExitExitmap/while/Switch*
T0*
_output_shapes
: 
M
map/while/Exit_1Exitmap/while/Switch_1*
T0*
_output_shapes
: 

&map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map/TensorArray_1map/while/Exit_1*$
_class
loc:@map/TensorArray_1*
_output_shapes
: 

 map/TensorArrayStack/range/startConst*$
_class
loc:@map/TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 

 map/TensorArrayStack/range/deltaConst*$
_class
loc:@map/TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
ć
map/TensorArrayStack/rangeRange map/TensorArrayStack/range/start&map/TensorArrayStack/TensorArraySizeV3 map/TensorArrayStack/range/delta*$
_class
loc:@map/TensorArray_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

(map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map/TensorArray_1map/TensorArrayStack/rangemap/while/Exit_1*$
_class
loc:@map/TensorArray_1*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
element_shape:@@
f
Reshape/shapeConst*%
valueB"˙˙˙˙@   @      *
dtype0*
_output_shapes
:

ReshapeReshape(map/TensorArrayStack/TensorArrayGatherV3Reshape/shape*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*
Tshape0
Š
.conv2d/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@conv2d/kernel*%
valueB"             *
dtype0*
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst* 
_class
loc:@conv2d/kernel*
valueB
 *OSž*
dtype0*
_output_shapes
: 

,conv2d/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@conv2d/kernel*
valueB
 *OS>*
dtype0*
_output_shapes
: 
đ
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*

seed *&
_output_shapes
: *
seed2 *
dtype0
Ň
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*
_output_shapes
: 
ě
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
Ţ
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 
ł
conv2d/kernel
VariableV2*
shape: * 
_class
loc:@conv2d/kernel*&
_output_shapes
: *
shared_name *
dtype0*
	container 
Ó
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(

conv2d/kernel/readIdentityconv2d/kernel* 
_class
loc:@conv2d/kernel*
T0*&
_output_shapes
: 

conv2d/bias/Initializer/zerosConst*
_class
loc:@conv2d/bias*
valueB *    *
dtype0*
_output_shapes
: 

conv2d/bias
VariableV2*
shape: *
_class
loc:@conv2d/bias*
_output_shapes
: *
shared_name *
dtype0*
	container 
ś
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
n
conv2d/bias/readIdentityconv2d/bias*
_class
loc:@conv2d/bias*
T0*
_output_shapes
: 
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ĺ
conv2d/Conv2DConv2DReshapeconv2d/kernel/read*
strides
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
data_formatNHWC*
T0*
paddingSAME*
use_cudnn_on_gpu(

conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ *
data_formatNHWC
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@ 
Ľ
*batch_normalization/gamma/Initializer/onesConst*,
_class"
 loc:@batch_normalization/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
ł
batch_normalization/gamma
VariableV2*
shape: *,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: *
shared_name *
dtype0*
	container 
í
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

batch_normalization/gamma/readIdentitybatch_normalization/gamma*,
_class"
 loc:@batch_normalization/gamma*
T0*
_output_shapes
: 
¤
*batch_normalization/beta/Initializer/zerosConst*+
_class!
loc:@batch_normalization/beta*
valueB *    *
dtype0*
_output_shapes
: 
ą
batch_normalization/beta
VariableV2*
shape: *+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
shared_name *
dtype0*
	container 
ę
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(

batch_normalization/beta/readIdentitybatch_normalization/beta*+
_class!
loc:@batch_normalization/beta*
T0*
_output_shapes
: 
˛
1batch_normalization/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@batch_normalization/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
ż
batch_normalization/moving_mean
VariableV2*
shape: *2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: *
shared_name *
dtype0*
	container 

&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
Ş
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
T0*
_output_shapes
: 
š
4batch_normalization/moving_variance/Initializer/onesConst*6
_class,
*(loc:@batch_normalization/moving_variance*
valueB *  ?*
dtype0*
_output_shapes
: 
Ç
#batch_normalization/moving_variance
VariableV2*
shape: *6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: *
shared_name *
dtype0*
	container 

*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
ś
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*6
_class,
*(loc:@batch_normalization/moving_variance*
T0*
_output_shapes
: 
Ţ
"batch_normalization/FusedBatchNormFusedBatchNormconv2d/Relubatch_normalization/gamma/readbatch_normalization/beta/read$batch_normalization/moving_mean/read(batch_normalization/moving_variance/read*
epsilon%o:*
T0*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@@ : : : : *
data_formatNHWC*
is_training( 
^
batch_normalization/ConstConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ń
max_pooling2d/MaxPoolMaxPool"batch_normalization/FusedBatchNorm*
strides
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙   *
data_formatNHWC*
ksize
*
T0*
paddingVALID
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_1/kernel*%
valueB"          @   *
dtype0*
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *ŤŞŞ˝*
dtype0*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_1/kernel*
valueB
 *ŤŞŞ=*
dtype0*
_output_shapes
: 
ö
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*

seed *&
_output_shapes
: @*
seed2 *
dtype0
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
ć
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @
ˇ
conv2d_1/kernel
VariableV2*
shape: @*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @*
shared_name *
dtype0*
	container 
Ű
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(

conv2d_1/kernel/readIdentityconv2d_1/kernel*"
_class
loc:@conv2d_1/kernel*
T0*&
_output_shapes
: @

conv2d_1/bias/Initializer/zerosConst* 
_class
loc:@conv2d_1/bias*
valueB@*    *
dtype0*
_output_shapes
:@

conv2d_1/bias
VariableV2*
shape:@* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@*
shared_name *
dtype0*
	container 
ž
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
conv2d_1/bias/readIdentityconv2d_1/bias* 
_class
loc:@conv2d_1/bias*
T0*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
×
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/kernel/read*
strides
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
data_formatNHWC*
T0*
paddingSAME*
use_cudnn_on_gpu(

conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_1/bias/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @*
data_formatNHWC
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙  @
Š
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ˇ
batch_normalization_1/gamma
VariableV2*
shape:@*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:@*
shared_name *
dtype0*
	container 
ő
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(

 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*.
_class$
" loc:@batch_normalization_1/gamma*
T0*
_output_shapes
:@
¨
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
valueB@*    *
dtype0*
_output_shapes
:@
ľ
batch_normalization_1/beta
VariableV2*
shape:@*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:@*
shared_name *
dtype0*
	container 
ň
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*-
_class#
!loc:@batch_normalization_1/beta*
T0*
_output_shapes
:@
ś
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
Ă
!batch_normalization_1/moving_mean
VariableV2*
shape:@*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:@*
shared_name *
dtype0*
	container 

(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
°
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
T0*
_output_shapes
:@
˝
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@
Ë
%batch_normalization_1/moving_variance
VariableV2*
shape:@*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:@*
shared_name *
dtype0*
	container 

,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
ź
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
T0*
_output_shapes
:@
ę
$batch_normalization_2/FusedBatchNormFusedBatchNormconv2d_2/Relu batch_normalization_1/gamma/readbatch_normalization_1/beta/read&batch_normalization_1/moving_mean/read*batch_normalization_1/moving_variance/read*
epsilon%o:*
T0*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙  @:@:@:@:@*
data_formatNHWC*
is_training( 
`
batch_normalization_2/ConstConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ő
max_pooling2d_2/MaxPoolMaxPool$batch_normalization_2/FusedBatchNorm*
strides
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
ksize
*
T0*
paddingVALID
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_2/kernel*%
valueB"      @   @   *
dtype0*
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *:Í˝*
dtype0*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_2/kernel*
valueB
 *:Í=*
dtype0*
_output_shapes
: 
ö
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*

seed *&
_output_shapes
:@@*
seed2 *
dtype0
Ú
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*
_output_shapes
: 
ô
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_2/kernel*
T0*&
_output_shapes
:@@
ć
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_2/kernel*
T0*&
_output_shapes
:@@
ˇ
conv2d_2/kernel
VariableV2*
shape:@@*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:@@*
shared_name *
dtype0*
	container 
Ű
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(

conv2d_2/kernel/readIdentityconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
T0*&
_output_shapes
:@@

conv2d_2/bias/Initializer/zerosConst* 
_class
loc:@conv2d_2/bias*
valueB@*    *
dtype0*
_output_shapes
:@

conv2d_2/bias
VariableV2*
shape:@* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@*
shared_name *
dtype0*
	container 
ž
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
t
conv2d_2/bias/readIdentityconv2d_2/bias* 
_class
loc:@conv2d_2/bias*
T0*
_output_shapes
:@
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ů
conv2d_3/Conv2DConv2Dmax_pooling2d_2/MaxPoolconv2d_2/kernel/read*
strides
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
T0*
paddingSAME*
use_cudnn_on_gpu(

conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_2/bias/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC
a
conv2d_3/ReluReluconv2d_3/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Š
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
ˇ
batch_normalization_2/gamma
VariableV2*
shape:@*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@*
shared_name *
dtype0*
	container 
ő
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(

 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*.
_class$
" loc:@batch_normalization_2/gamma*
T0*
_output_shapes
:@
¨
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
valueB@*    *
dtype0*
_output_shapes
:@
ľ
batch_normalization_2/beta
VariableV2*
shape:@*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@*
shared_name *
dtype0*
	container 
ň
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*-
_class#
!loc:@batch_normalization_2/beta*
T0*
_output_shapes
:@
ś
3batch_normalization_2/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
Ă
!batch_normalization_2/moving_mean
VariableV2*
shape:@*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@*
shared_name *
dtype0*
	container 

(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
°
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*4
_class*
(&loc:@batch_normalization_2/moving_mean*
T0*
_output_shapes
:@
˝
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@
Ë
%batch_normalization_2/moving_variance
VariableV2*
shape:@*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@*
shared_name *
dtype0*
	container 

,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
ź
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*8
_class.
,*loc:@batch_normalization_2/moving_variance*
T0*
_output_shapes
:@
ę
$batch_normalization_3/FusedBatchNormFusedBatchNormconv2d_3/Relu batch_normalization_2/gamma/readbatch_normalization_2/beta/read&batch_normalization_2/moving_mean/read*batch_normalization_2/moving_variance/read*
epsilon%o:*
T0*G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@:@:@:@:@*
data_formatNHWC*
is_training( 
`
batch_normalization_3/ConstConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ő
max_pooling2d_3/MaxPoolMaxPool$batch_normalization_3/FusedBatchNorm*
strides
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
ksize
*
T0*
paddingVALID
­
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_3/kernel*%
valueB"      @      *
dtype0*
_output_shapes
:

.conv2d_3/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *ď[q˝*
dtype0*
_output_shapes
: 

.conv2d_3/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_3/kernel*
valueB
 *ď[q=*
dtype0*
_output_shapes
: 
÷
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_3/kernel*

seed *'
_output_shapes
:@*
seed2 *
dtype0
Ú
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*
_output_shapes
: 
ő
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_3/kernel*
T0*'
_output_shapes
:@
ç
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_3/kernel*
T0*'
_output_shapes
:@
š
conv2d_3/kernel
VariableV2*
shape:@*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@*
shared_name *
dtype0*
	container 
Ü
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(

conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
T0*'
_output_shapes
:@

conv2d_3/bias/Initializer/zerosConst* 
_class
loc:@conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes	
:

conv2d_3/bias
VariableV2*
shape:* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ż
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
u
conv2d_3/bias/readIdentityconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
T0*
_output_shapes	
:
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ú
conv2d_4/Conv2DConv2Dmax_pooling2d_3/MaxPoolconv2d_3/kernel/read*
strides
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
T0*
paddingSAME*
use_cudnn_on_gpu(

conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_3/bias/read*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC
b
conv2d_4/ReluReluconv2d_4/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
,batch_normalization_3/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_3/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
š
batch_normalization_3/gamma
VariableV2*
shape:*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ö
"batch_normalization_3/gamma/AssignAssignbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

 batch_normalization_3/gamma/readIdentitybatch_normalization_3/gamma*.
_class$
" loc:@batch_normalization_3/gamma*
T0*
_output_shapes	
:
Ş
,batch_normalization_3/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_3/beta*
valueB*    *
dtype0*
_output_shapes	
:
ˇ
batch_normalization_3/beta
VariableV2*
shape:*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ó
!batch_normalization_3/beta/AssignAssignbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

batch_normalization_3/beta/readIdentitybatch_normalization_3/beta*-
_class#
!loc:@batch_normalization_3/beta*
T0*
_output_shapes	
:
¸
3batch_normalization_3/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ĺ
!batch_normalization_3/moving_mean
VariableV2*
shape:*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes	
:*
shared_name *
dtype0*
	container 

(batch_normalization_3/moving_mean/AssignAssign!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ą
&batch_normalization_3/moving_mean/readIdentity!batch_normalization_3/moving_mean*4
_class*
(&loc:@batch_normalization_3/moving_mean*
T0*
_output_shapes	
:
ż
6batch_normalization_3/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_3/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Í
%batch_normalization_3/moving_variance
VariableV2*
shape:*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes	
:*
shared_name *
dtype0*
	container 

,batch_normalization_3/moving_variance/AssignAssign%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
˝
*batch_normalization_3/moving_variance/readIdentity%batch_normalization_3/moving_variance*8
_class.
,*loc:@batch_normalization_3/moving_variance*
T0*
_output_shapes	
:
ď
$batch_normalization_4/FusedBatchNormFusedBatchNormconv2d_4/Relu batch_normalization_3/gamma/readbatch_normalization_3/beta/read&batch_normalization_3/moving_mean/read*batch_normalization_3/moving_variance/read*
epsilon%o:*
T0*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
data_formatNHWC*
is_training( 
`
batch_normalization_4/ConstConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ö
max_pooling2d_4/MaxPoolMaxPool$batch_normalization_4/FusedBatchNorm*
strides
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
ksize
*
T0*
paddingVALID
­
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:

.conv2d_4/kernel/Initializer/random_uniform/minConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *ŤŞ*˝*
dtype0*
_output_shapes
: 

.conv2d_4/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@conv2d_4/kernel*
valueB
 *ŤŞ*=*
dtype0*
_output_shapes
: 
ř
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_4/kernel*

seed *(
_output_shapes
:*
seed2 *
dtype0
Ú
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_4/kernel*
T0*
_output_shapes
: 
ö
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*"
_class
loc:@conv2d_4/kernel*
T0*(
_output_shapes
:
č
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*"
_class
loc:@conv2d_4/kernel*
T0*(
_output_shapes
:
ť
conv2d_4/kernel
VariableV2*
shape:*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:*
shared_name *
dtype0*
	container 
Ý
conv2d_4/kernel/AssignAssignconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(

conv2d_4/kernel/readIdentityconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
T0*(
_output_shapes
:

conv2d_4/bias/Initializer/zerosConst* 
_class
loc:@conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes	
:

conv2d_4/bias
VariableV2*
shape:* 
_class
loc:@conv2d_4/bias*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ż
conv2d_4/bias/AssignAssignconv2d_4/biasconv2d_4/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
u
conv2d_4/bias/readIdentityconv2d_4/bias* 
_class
loc:@conv2d_4/bias*
T0*
_output_shapes	
:
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ú
conv2d_5/Conv2DConv2Dmax_pooling2d_4/MaxPoolconv2d_4/kernel/read*
strides
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
T0*
paddingSAME*
use_cudnn_on_gpu(

conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_4/bias/read*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC
b
conv2d_5/ReluReluconv2d_5/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
,batch_normalization_4/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_4/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
š
batch_normalization_4/gamma
VariableV2*
shape:*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ö
"batch_normalization_4/gamma/AssignAssignbatch_normalization_4/gamma,batch_normalization_4/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

 batch_normalization_4/gamma/readIdentitybatch_normalization_4/gamma*.
_class$
" loc:@batch_normalization_4/gamma*
T0*
_output_shapes	
:
Ş
,batch_normalization_4/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_4/beta*
valueB*    *
dtype0*
_output_shapes	
:
ˇ
batch_normalization_4/beta
VariableV2*
shape:*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ó
!batch_normalization_4/beta/AssignAssignbatch_normalization_4/beta,batch_normalization_4/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

batch_normalization_4/beta/readIdentitybatch_normalization_4/beta*-
_class#
!loc:@batch_normalization_4/beta*
T0*
_output_shapes	
:
¸
3batch_normalization_4/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_4/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ĺ
!batch_normalization_4/moving_mean
VariableV2*
shape:*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes	
:*
shared_name *
dtype0*
	container 

(batch_normalization_4/moving_mean/AssignAssign!batch_normalization_4/moving_mean3batch_normalization_4/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ą
&batch_normalization_4/moving_mean/readIdentity!batch_normalization_4/moving_mean*4
_class*
(&loc:@batch_normalization_4/moving_mean*
T0*
_output_shapes	
:
ż
6batch_normalization_4/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_4/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Í
%batch_normalization_4/moving_variance
VariableV2*
shape:*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes	
:*
shared_name *
dtype0*
	container 

,batch_normalization_4/moving_variance/AssignAssign%batch_normalization_4/moving_variance6batch_normalization_4/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
˝
*batch_normalization_4/moving_variance/readIdentity%batch_normalization_4/moving_variance*8
_class.
,*loc:@batch_normalization_4/moving_variance*
T0*
_output_shapes	
:
ď
$batch_normalization_5/FusedBatchNormFusedBatchNormconv2d_5/Relu batch_normalization_4/gamma/readbatch_normalization_4/beta/read&batch_normalization_4/moving_mean/read*batch_normalization_4/moving_variance/read*
epsilon%o:*
T0*L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::*
data_formatNHWC*
is_training( 
`
batch_normalization_5/ConstConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
Ö
max_pooling2d_5/MaxPoolMaxPool$batch_normalization_5/FusedBatchNorm*
strides
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
ksize
*
T0*
paddingVALID
d
flatten/ShapeShapemax_pooling2d_5/MaxPool*
_output_shapes
:*
T0*
out_type0
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*

begin_mask *
T0*
_output_shapes
: *
Index0*
ellipsis_mask *
shrink_axis_mask*
new_axis_mask *
end_mask 
b
flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*
_output_shapes
:*

axis *
N

flatten/ReshapeReshapemax_pooling2d_5/MaxPoolflatten/Reshape/shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
Ť
,batch_normalization_5/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_5/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
š
batch_normalization_5/gamma
VariableV2*
shape:*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ö
"batch_normalization_5/gamma/AssignAssignbatch_normalization_5/gamma,batch_normalization_5/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

 batch_normalization_5/gamma/readIdentitybatch_normalization_5/gamma*.
_class$
" loc:@batch_normalization_5/gamma*
T0*
_output_shapes	
:
Ş
,batch_normalization_5/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_5/beta*
valueB*    *
dtype0*
_output_shapes	
:
ˇ
batch_normalization_5/beta
VariableV2*
shape:*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ó
!batch_normalization_5/beta/AssignAssignbatch_normalization_5/beta,batch_normalization_5/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

batch_normalization_5/beta/readIdentitybatch_normalization_5/beta*-
_class#
!loc:@batch_normalization_5/beta*
T0*
_output_shapes	
:
¸
3batch_normalization_5/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_5/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
Ĺ
!batch_normalization_5/moving_mean
VariableV2*
shape:*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes	
:*
shared_name *
dtype0*
	container 

(batch_normalization_5/moving_mean/AssignAssign!batch_normalization_5/moving_mean3batch_normalization_5/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ą
&batch_normalization_5/moving_mean/readIdentity!batch_normalization_5/moving_mean*4
_class*
(&loc:@batch_normalization_5/moving_mean*
T0*
_output_shapes	
:
ż
6batch_normalization_5/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_5/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
Í
%batch_normalization_5/moving_variance
VariableV2*
shape:*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes	
:*
shared_name *
dtype0*
	container 

,batch_normalization_5/moving_variance/AssignAssign%batch_normalization_5/moving_variance6batch_normalization_5/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
˝
*batch_normalization_5/moving_variance/readIdentity%batch_normalization_5/moving_variance*8
_class.
,*loc:@batch_normalization_5/moving_variance*
T0*
_output_shapes	
:
j
%batch_normalization_6/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Ł
#batch_normalization_6/batchnorm/addAdd*batch_normalization_5/moving_variance/read%batch_normalization_6/batchnorm/add/y*
T0*
_output_shapes	
:
y
%batch_normalization_6/batchnorm/RsqrtRsqrt#batch_normalization_6/batchnorm/add*
T0*
_output_shapes	
:

#batch_normalization_6/batchnorm/mulMul%batch_normalization_6/batchnorm/Rsqrt batch_normalization_5/gamma/read*
T0*
_output_shapes	
:

%batch_normalization_6/batchnorm/mul_1Mulflatten/Reshape#batch_normalization_6/batchnorm/mul*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

%batch_normalization_6/batchnorm/mul_2Mul&batch_normalization_5/moving_mean/read#batch_normalization_6/batchnorm/mul*
T0*
_output_shapes	
:

#batch_normalization_6/batchnorm/subSubbatch_normalization_5/beta/read%batch_normalization_6/batchnorm/mul_2*
T0*
_output_shapes	
:
Ť
%batch_normalization_6/batchnorm/add_1Add%batch_normalization_6/batchnorm/mul_1#batch_normalization_6/batchnorm/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
dropout/IdentityIdentity%batch_normalization_6/batchnorm/add_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *7˝*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *7=*
dtype0*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*

seed * 
_output_shapes
:
*
seed2 *
dtype0
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:

Ľ
dense/kernel
VariableV2*
shape:
*
_class
loc:@dense/kernel* 
_output_shapes
:
*
shared_name *
dtype0*
	container 
É
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0* 
_output_shapes
:


dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes	
:


dense/bias
VariableV2*
shape:*
_class
loc:@dense/bias*
_output_shapes	
:*
shared_name *
dtype0*
	container 
ł
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
l
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
T0*
_output_shapes	
:

dense/MatMulMatMuldropout/Identitydense/kernel/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"       *
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *:Íž*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *:Í>*
dtype0*
_output_shapes
: 
ě
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*

seed *
_output_shapes
:	 *
seed2 *
dtype0
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
: 
é
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	 
Ű
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	 
§
dense_1/kernel
VariableV2*
shape:	 *!
_class
loc:@dense_1/kernel*
_output_shapes
:	 *
shared_name *
dtype0*
	container 
Đ
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
|
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes
:	 

dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB *    *
dtype0*
_output_shapes
: 

dense_1/bias
VariableV2*
shape: *
_class
loc:@dense_1/bias*
_output_shapes
: *
shared_name *
dtype0*
	container 
ş
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
q
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes
: 

dense_2/MatMulMatMuldense/BiasAdddense_1/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
transpose_a( *
transpose_b( 

dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
data_formatNHWC
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"       *
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
valueB
 *JQÚž*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *JQÚ>*
dtype0*
_output_shapes
: 
ë
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*

seed *
_output_shapes

: *
seed2 *
dtype0
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes
: 
č
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

: 
Ú
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

: 
Ľ
dense_2/kernel
VariableV2*
shape
: *!
_class
loc:@dense_2/kernel*
_output_shapes

: *
shared_name *
dtype0*
	container 
Ď
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
{
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

: 

dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:

dense_2/bias
VariableV2*
shape:*
_class
loc:@dense_2/bias*
_output_shapes
:*
shared_name *
dtype0*
	container 
ş
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:

dense_3/MatMulMatMuldense_2/BiasAdddense_2/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

dense_3/BiasAddBiasAdddense_3/MatMuldense_2/bias/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC
Z
SqueezeSqueezedense_3/BiasAdd*
squeeze_dims
 *
T0*
_output_shapes
:
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_fadd61a33f32441081d628c2330f0c98/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ë
save/SaveV2/tensor_namesConst*
valueB)Bbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:)
ľ
save/SaveV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
Ľ	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/gammabatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/gamma!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/betabatch_normalization_3/gamma!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebatch_normalization_4/betabatch_normalization_4/gamma!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancebatch_normalization_5/betabatch_normalization_5/gamma!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernelconv2d_4/biasconv2d_4/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelglobal_step*7
dtypes-
+2)	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*
_output_shapes
:*

axis *
N
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
|
save/RestoreV2/tensor_namesConst*-
value$B"Bbatch_normalization/beta*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/AssignAssignbatch_normalization/betasave/RestoreV2*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(

save/RestoreV2_1/tensor_namesConst*.
value%B#Bbatch_normalization/gamma*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save/Assign_1Assignbatch_normalization/gammasave/RestoreV2_1*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

save/RestoreV2_2/tensor_namesConst*4
value+B)Bbatch_normalization/moving_mean*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ě
save/Assign_2Assignbatch_normalization/moving_meansave/RestoreV2_2*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(

save/RestoreV2_3/tensor_namesConst*8
value/B-B#batch_normalization/moving_variance*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save/Assign_3Assign#batch_normalization/moving_variancesave/RestoreV2_3*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(

save/RestoreV2_4/tensor_namesConst*/
value&B$Bbatch_normalization_1/beta*
dtype0*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save/Assign_4Assignbatch_normalization_1/betasave/RestoreV2_4*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_5/tensor_namesConst*0
value'B%Bbatch_normalization_1/gamma*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save/Assign_5Assignbatch_normalization_1/gammasave/RestoreV2_5*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_6/tensor_namesConst*6
value-B+B!batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save/Assign_6Assign!batch_normalization_1/moving_meansave/RestoreV2_6*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_7/tensor_namesConst*:
value1B/B%batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Ř
save/Assign_7Assign%batch_normalization_1/moving_variancesave/RestoreV2_7*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_8/tensor_namesConst*/
value&B$Bbatch_normalization_2/beta*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save/Assign_8Assignbatch_normalization_2/betasave/RestoreV2_8*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_9/tensor_namesConst*0
value'B%Bbatch_normalization_2/gamma*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save/Assign_9Assignbatch_normalization_2/gammasave/RestoreV2_9*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_10/tensor_namesConst*6
value-B+B!batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ň
save/Assign_10Assign!batch_normalization_2/moving_meansave/RestoreV2_10*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_11/tensor_namesConst*:
value1B/B%batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Ú
save/Assign_11Assign%batch_normalization_2/moving_variancesave/RestoreV2_11*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(

save/RestoreV2_12/tensor_namesConst*/
value&B$Bbatch_normalization_3/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
Ĺ
save/Assign_12Assignbatch_normalization_3/betasave/RestoreV2_12*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_13/tensor_namesConst*0
value'B%Bbatch_normalization_3/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Ç
save/Assign_13Assignbatch_normalization_3/gammasave/RestoreV2_13*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_14/tensor_namesConst*6
value-B+B!batch_normalization_3/moving_mean*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Ó
save/Assign_14Assign!batch_normalization_3/moving_meansave/RestoreV2_14*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_15/tensor_namesConst*:
value1B/B%batch_normalization_3/moving_variance*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Ű
save/Assign_15Assign%batch_normalization_3/moving_variancesave/RestoreV2_15*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_16/tensor_namesConst*/
value&B$Bbatch_normalization_4/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
Ĺ
save/Assign_16Assignbatch_normalization_4/betasave/RestoreV2_16*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_17/tensor_namesConst*0
value'B%Bbatch_normalization_4/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
Ç
save/Assign_17Assignbatch_normalization_4/gammasave/RestoreV2_17*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_18/tensor_namesConst*6
value-B+B!batch_normalization_4/moving_mean*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
Ó
save/Assign_18Assign!batch_normalization_4/moving_meansave/RestoreV2_18*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_19/tensor_namesConst*:
value1B/B%batch_normalization_4/moving_variance*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
Ű
save/Assign_19Assign%batch_normalization_4/moving_variancesave/RestoreV2_19*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_20/tensor_namesConst*/
value&B$Bbatch_normalization_5/beta*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
Ĺ
save/Assign_20Assignbatch_normalization_5/betasave/RestoreV2_20*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_21/tensor_namesConst*0
value'B%Bbatch_normalization_5/gamma*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
Ç
save/Assign_21Assignbatch_normalization_5/gammasave/RestoreV2_21*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_22/tensor_namesConst*6
value-B+B!batch_normalization_5/moving_mean*
dtype0*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
Ó
save/Assign_22Assign!batch_normalization_5/moving_meansave/RestoreV2_22*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(

save/RestoreV2_23/tensor_namesConst*:
value1B/B%batch_normalization_5/moving_variance*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
Ű
save/Assign_23Assign%batch_normalization_5/moving_variancesave/RestoreV2_23*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
r
save/RestoreV2_24/tensor_namesConst* 
valueBBconv2d/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
Ś
save/Assign_24Assignconv2d/biassave/RestoreV2_24*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
t
save/RestoreV2_25/tensor_namesConst*"
valueBBconv2d/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
ś
save/Assign_25Assignconv2d/kernelsave/RestoreV2_25*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
t
save/RestoreV2_26/tensor_namesConst*"
valueBBconv2d_1/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
Ş
save/Assign_26Assignconv2d_1/biassave/RestoreV2_26*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
v
save/RestoreV2_27/tensor_namesConst*$
valueBBconv2d_1/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/Assign_27Assignconv2d_1/kernelsave/RestoreV2_27*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
t
save/RestoreV2_28/tensor_namesConst*"
valueBBconv2d_2/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
Ş
save/Assign_28Assignconv2d_2/biassave/RestoreV2_28*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
v
save/RestoreV2_29/tensor_namesConst*$
valueBBconv2d_2/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/Assign_29Assignconv2d_2/kernelsave/RestoreV2_29*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
t
save/RestoreV2_30/tensor_namesConst*"
valueBBconv2d_3/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save/Assign_30Assignconv2d_3/biassave/RestoreV2_30*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
v
save/RestoreV2_31/tensor_namesConst*$
valueBBconv2d_3/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
ť
save/Assign_31Assignconv2d_3/kernelsave/RestoreV2_31*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
t
save/RestoreV2_32/tensor_namesConst*"
valueBBconv2d_4/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
Ť
save/Assign_32Assignconv2d_4/biassave/RestoreV2_32*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
v
save/RestoreV2_33/tensor_namesConst*$
valueBBconv2d_4/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
ź
save/Assign_33Assignconv2d_4/kernelsave/RestoreV2_33*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
q
save/RestoreV2_34/tensor_namesConst*
valueBB
dense/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
Ľ
save/Assign_34Assign
dense/biassave/RestoreV2_34*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
s
save/RestoreV2_35/tensor_namesConst*!
valueBBdense/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save/Assign_35Assigndense/kernelsave/RestoreV2_35*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
s
save/RestoreV2_36/tensor_namesConst*!
valueBBdense_1/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_36Assigndense_1/biassave/RestoreV2_36*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
u
save/RestoreV2_37/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save/Assign_37Assigndense_1/kernelsave/RestoreV2_37*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
s
save/RestoreV2_38/tensor_namesConst*!
valueBBdense_2/bias*
dtype0*
_output_shapes
:
k
"save/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_38Assigndense_2/biassave/RestoreV2_38*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
u
save/RestoreV2_39/tensor_namesConst*#
valueBBdense_2/kernel*
dtype0*
_output_shapes
:
k
"save/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
°
save/Assign_39Assigndense_2/kernelsave/RestoreV2_39*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
r
save/RestoreV2_40/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
k
"save/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
dtypes
2	*
_output_shapes
:
˘
save/Assign_40Assignglobal_stepsave/RestoreV2_40*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
Ç
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_cc72b085174247a9bcb43a17b6f75a96/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
í
save_1/SaveV2/tensor_namesConst*
valueB)Bbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/gammaB!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbatch_normalization_3/betaBbatch_normalization_3/gammaB!batch_normalization_3/moving_meanB%batch_normalization_3/moving_varianceBbatch_normalization_4/betaBbatch_normalization_4/gammaB!batch_normalization_4/moving_meanB%batch_normalization_4/moving_varianceBbatch_normalization_5/betaBbatch_normalization_5/gammaB!batch_normalization_5/moving_meanB%batch_normalization_5/moving_varianceBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBglobal_step*
dtype0*
_output_shapes
:)
ˇ
save_1/SaveV2/shape_and_slicesConst*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:)
­	
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/gammabatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/gamma!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_3/betabatch_normalization_3/gamma!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebatch_normalization_4/betabatch_normalization_4/gamma!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancebatch_normalization_5/betabatch_normalization_5/gamma!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernelconv2d_4/biasconv2d_4/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernelglobal_step*7
dtypes-
+2)	

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*
_output_shapes
:*

axis *
N

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
~
save_1/RestoreV2/tensor_namesConst*-
value$B"Bbatch_normalization/beta*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/AssignAssignbatch_normalization/betasave_1/RestoreV2*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/RestoreV2_1/tensor_namesConst*.
value%B#Bbatch_normalization/gamma*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save_1/Assign_1Assignbatch_normalization/gammasave_1/RestoreV2_1*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/RestoreV2_2/tensor_namesConst*4
value+B)Bbatch_normalization/moving_mean*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save_1/Assign_2Assignbatch_normalization/moving_meansave_1/RestoreV2_2*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/RestoreV2_3/tensor_namesConst*8
value/B-B#batch_normalization/moving_variance*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ř
save_1/Assign_3Assign#batch_normalization/moving_variancesave_1/RestoreV2_3*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/RestoreV2_4/tensor_namesConst*/
value&B$Bbatch_normalization_1/beta*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Ć
save_1/Assign_4Assignbatch_normalization_1/betasave_1/RestoreV2_4*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/RestoreV2_5/tensor_namesConst*0
value'B%Bbatch_normalization_1/gamma*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save_1/Assign_5Assignbatch_normalization_1/gammasave_1/RestoreV2_5*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/RestoreV2_6/tensor_namesConst*6
value-B+B!batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save_1/Assign_6Assign!batch_normalization_1/moving_meansave_1/RestoreV2_6*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/RestoreV2_7/tensor_namesConst*:
value1B/B%batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Ü
save_1/Assign_7Assign%batch_normalization_1/moving_variancesave_1/RestoreV2_7*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/RestoreV2_8/tensor_namesConst*/
value&B$Bbatch_normalization_2/beta*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ć
save_1/Assign_8Assignbatch_normalization_2/betasave_1/RestoreV2_8*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(

save_1/RestoreV2_9/tensor_namesConst*0
value'B%Bbatch_normalization_2/gamma*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save_1/Assign_9Assignbatch_normalization_2/gammasave_1/RestoreV2_9*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(

 save_1/RestoreV2_10/tensor_namesConst*6
value-B+B!batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ö
save_1/Assign_10Assign!batch_normalization_2/moving_meansave_1/RestoreV2_10*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(

 save_1/RestoreV2_11/tensor_namesConst*:
value1B/B%batch_normalization_2/moving_variance*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Ţ
save_1/Assign_11Assign%batch_normalization_2/moving_variancesave_1/RestoreV2_11*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(

 save_1/RestoreV2_12/tensor_namesConst*/
value&B$Bbatch_normalization_3/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
É
save_1/Assign_12Assignbatch_normalization_3/betasave_1/RestoreV2_12*
T0*-
_class#
!loc:@batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_13/tensor_namesConst*0
value'B%Bbatch_normalization_3/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Ë
save_1/Assign_13Assignbatch_normalization_3/gammasave_1/RestoreV2_13*
T0*.
_class$
" loc:@batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_14/tensor_namesConst*6
value-B+B!batch_normalization_3/moving_mean*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
×
save_1/Assign_14Assign!batch_normalization_3/moving_meansave_1/RestoreV2_14*
T0*4
_class*
(&loc:@batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_15/tensor_namesConst*:
value1B/B%batch_normalization_3/moving_variance*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
ß
save_1/Assign_15Assign%batch_normalization_3/moving_variancesave_1/RestoreV2_15*
T0*8
_class.
,*loc:@batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_16/tensor_namesConst*/
value&B$Bbatch_normalization_4/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
É
save_1/Assign_16Assignbatch_normalization_4/betasave_1/RestoreV2_16*
T0*-
_class#
!loc:@batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_17/tensor_namesConst*0
value'B%Bbatch_normalization_4/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
Ë
save_1/Assign_17Assignbatch_normalization_4/gammasave_1/RestoreV2_17*
T0*.
_class$
" loc:@batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_18/tensor_namesConst*6
value-B+B!batch_normalization_4/moving_mean*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
×
save_1/Assign_18Assign!batch_normalization_4/moving_meansave_1/RestoreV2_18*
T0*4
_class*
(&loc:@batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_19/tensor_namesConst*:
value1B/B%batch_normalization_4/moving_variance*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
ß
save_1/Assign_19Assign%batch_normalization_4/moving_variancesave_1/RestoreV2_19*
T0*8
_class.
,*loc:@batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_20/tensor_namesConst*/
value&B$Bbatch_normalization_5/beta*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
É
save_1/Assign_20Assignbatch_normalization_5/betasave_1/RestoreV2_20*
T0*-
_class#
!loc:@batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_21/tensor_namesConst*0
value'B%Bbatch_normalization_5/gamma*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
Ë
save_1/Assign_21Assignbatch_normalization_5/gammasave_1/RestoreV2_21*
T0*.
_class$
" loc:@batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_22/tensor_namesConst*6
value-B+B!batch_normalization_5/moving_mean*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
×
save_1/Assign_22Assign!batch_normalization_5/moving_meansave_1/RestoreV2_22*
T0*4
_class*
(&loc:@batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(

 save_1/RestoreV2_23/tensor_namesConst*:
value1B/B%batch_normalization_5/moving_variance*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
ß
save_1/Assign_23Assign%batch_normalization_5/moving_variancesave_1/RestoreV2_23*
T0*8
_class.
,*loc:@batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
t
 save_1/RestoreV2_24/tensor_namesConst* 
valueBBconv2d/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
Ş
save_1/Assign_24Assignconv2d/biassave_1/RestoreV2_24*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
v
 save_1/RestoreV2_25/tensor_namesConst*"
valueBBconv2d/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save_1/Assign_25Assignconv2d/kernelsave_1/RestoreV2_25*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
v
 save_1/RestoreV2_26/tensor_namesConst*"
valueBBconv2d_1/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save_1/Assign_26Assignconv2d_1/biassave_1/RestoreV2_26*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
x
 save_1/RestoreV2_27/tensor_namesConst*$
valueBBconv2d_1/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_27/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/Assign_27Assignconv2d_1/kernelsave_1/RestoreV2_27*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
v
 save_1/RestoreV2_28/tensor_namesConst*"
valueBBconv2d_2/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_28/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save_1/Assign_28Assignconv2d_2/biassave_1/RestoreV2_28*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
x
 save_1/RestoreV2_29/tensor_namesConst*$
valueBBconv2d_2/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_29/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/Assign_29Assignconv2d_2/kernelsave_1/RestoreV2_29*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
v
 save_1/RestoreV2_30/tensor_namesConst*"
valueBBconv2d_3/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_30/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
Ż
save_1/Assign_30Assignconv2d_3/biassave_1/RestoreV2_30*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
x
 save_1/RestoreV2_31/tensor_namesConst*$
valueBBconv2d_3/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_31/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
ż
save_1/Assign_31Assignconv2d_3/kernelsave_1/RestoreV2_31*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
v
 save_1/RestoreV2_32/tensor_namesConst*"
valueBBconv2d_4/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_32/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
dtypes
2*
_output_shapes
:
Ż
save_1/Assign_32Assignconv2d_4/biassave_1/RestoreV2_32*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
x
 save_1/RestoreV2_33/tensor_namesConst*$
valueBBconv2d_4/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_33/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save_1/Assign_33Assignconv2d_4/kernelsave_1/RestoreV2_33*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
s
 save_1/RestoreV2_34/tensor_namesConst*
valueBB
dense/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_34/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save_1/Assign_34Assign
dense/biassave_1/RestoreV2_34*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
u
 save_1/RestoreV2_35/tensor_namesConst*!
valueBBdense/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_35/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
dtypes
2*
_output_shapes
:
˛
save_1/Assign_35Assigndense/kernelsave_1/RestoreV2_35*
T0*
_class
loc:@dense/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(
u
 save_1/RestoreV2_36/tensor_namesConst*!
valueBBdense_1/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_36/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes
:
Ź
save_1/Assign_36Assigndense_1/biassave_1/RestoreV2_36*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
w
 save_1/RestoreV2_37/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_37/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
dtypes
2*
_output_shapes
:
ľ
save_1/Assign_37Assigndense_1/kernelsave_1/RestoreV2_37*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	 *
use_locking(
u
 save_1/RestoreV2_38/tensor_namesConst*!
valueBBdense_2/bias*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_38/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes
:
Ź
save_1/Assign_38Assigndense_2/biassave_1/RestoreV2_38*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
w
 save_1/RestoreV2_39/tensor_namesConst*#
valueBBdense_2/kernel*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_39/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save_1/Assign_39Assigndense_2/kernelsave_1/RestoreV2_39*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
t
 save_1/RestoreV2_40/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
m
$save_1/RestoreV2_40/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
dtypes
2	*
_output_shapes
:
Ś
save_1/Assign_40Assignglobal_stepsave_1/RestoreV2_40*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
global_step

global_step:0"Ą
trainable_variables
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0

batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0

batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:0

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
`
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:0

batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:0

batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
`
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:0

batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:0

batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
`
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:0

batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02.batch_normalization_4/gamma/Initializer/ones:0

batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02.batch_normalization_4/beta/Initializer/zeros:0

batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02.batch_normalization_5/gamma/Initializer/ones:0

batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02.batch_normalization_5/beta/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0"ý
while_contextëč
ĺ
map/while/while_context
*map/while/LoopCond:02map/while/Merge:0:map/while/Identity:0Bmap/while/Exit:0Bmap/while/Exit_1:0J¸
map/TensorArray:0
@map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
map/TensorArray_1:0
map/strided_slice:0
map/while/Cast_1:0
map/while/Const:0
map/while/Const_1:0
map/while/Const_2:0
map/while/Enter:0
map/while/Enter_1:0
map/while/Exit:0
map/while/Exit_1:0
map/while/ExpandDims/dim:0
map/while/ExpandDims:0
map/while/ExpandDims_1/dim:0
map/while/ExpandDims_1:0
map/while/Identity:0
map/while/Identity_1:0
map/while/Less/Enter:0
map/while/Less:0
map/while/LoopCond:0
map/while/Maximum:0
map/while/Mean:0
map/while/Mean_1:0
map/while/Merge:0
map/while/Merge:1
map/while/Merge_1:0
map/while/Merge_1:1
map/while/NextIteration:0
map/while/NextIteration_1:0
map/while/Prod:0
map/while/Relu:0
map/while/ResizeBilinear:0
map/while/Rsqrt:0
map/while/Shape:0
map/while/Slice:0
map/while/Sqrt:0
map/while/Square:0
map/while/Square_1:0
map/while/Squeeze:0
map/while/Squeeze_1:0
map/while/Sub:0
map/while/Switch:0
map/while/Switch:1
map/while/Switch_1:0
map/while/Switch_1:1
#map/while/TensorArrayReadV3/Enter:0
%map/while/TensorArrayReadV3/Enter_1:0
map/while/TensorArrayReadV3:0
5map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/map/while/TensorArrayWrite/TensorArrayWriteV3:0
map/while/add/y:0
map/while/add:0
map/while/control_dependency:0
 map/while/control_dependency_1:0
map/while/div:0
map/while/size:0
map/while/stack:0
map/while/stack_1:0
map/while/sub:0i
@map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%map/while/TensorArrayReadV3/Enter_1:0-
map/strided_slice:0map/while/Less/Enter:08
map/TensorArray:0#map/while/TensorArrayReadV3/Enter:0L
map/TensorArray_1:05map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Rmap/while/Enter:0Rmap/while/Enter_1:0"-
	variables--
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0

batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:0

batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:0
¨
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
ˇ
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:0

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:0
°
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
ż
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0
q
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:0
`
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:0

batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:0

batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:0
°
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:025batch_normalization_2/moving_mean/Initializer/zeros:0
ż
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:028batch_normalization_2/moving_variance/Initializer/ones:0
q
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:0
`
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:0

batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign"batch_normalization_3/gamma/read:02.batch_normalization_3/gamma/Initializer/ones:0

batch_normalization_3/beta:0!batch_normalization_3/beta/Assign!batch_normalization_3/beta/read:02.batch_normalization_3/beta/Initializer/zeros:0
°
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign(batch_normalization_3/moving_mean/read:025batch_normalization_3/moving_mean/Initializer/zeros:0
ż
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign,batch_normalization_3/moving_variance/read:028batch_normalization_3/moving_variance/Initializer/ones:0
q
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:0
`
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:0

batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign"batch_normalization_4/gamma/read:02.batch_normalization_4/gamma/Initializer/ones:0

batch_normalization_4/beta:0!batch_normalization_4/beta/Assign!batch_normalization_4/beta/read:02.batch_normalization_4/beta/Initializer/zeros:0
°
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign(batch_normalization_4/moving_mean/read:025batch_normalization_4/moving_mean/Initializer/zeros:0
ż
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign,batch_normalization_4/moving_variance/read:028batch_normalization_4/moving_variance/Initializer/ones:0

batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign"batch_normalization_5/gamma/read:02.batch_normalization_5/gamma/Initializer/ones:0

batch_normalization_5/beta:0!batch_normalization_5/beta/Assign!batch_normalization_5/beta/read:02.batch_normalization_5/beta/Initializer/zeros:0
°
#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign(batch_normalization_5/moving_mean/read:025batch_normalization_5/moving_mean/Initializer/zeros:0
ż
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign,batch_normalization_5/moving_variance/read:028batch_normalization_5/moving_variance/Initializer/ones:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0" 
legacy_init_op


group_deps*
serving_defaults
8
images.
Placeholder:0˙˙˙˙˙˙˙˙˙ Ŕ
output
	Squeeze:0tensorflow/serving/predict*
predictionss
8
images.
Placeholder:0˙˙˙˙˙˙˙˙˙ Ŕ
output
	Squeeze:0tensorflow/serving/predict