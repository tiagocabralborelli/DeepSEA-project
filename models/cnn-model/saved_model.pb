��
�(�(
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( ""
Ttype:
2	"
Tidxtype0:
2	
�
DenseBincount
input"Tidx
size"Tidx
weights"T
output"T"
Tidxtype:
2	"
Ttype:
2	"
binary_outputbool( 
$
DisableCopyOnRead
resource�
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
�
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0���������"
value_indexint(0���������"+

vocab_sizeint���������(0���������"
	delimiterstring	"
offsetint �
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
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
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48Ў
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
z
Variable/AssignAssignVariableOpVariableasset_path_initializer*&
 _has_manual_control_dependencies(*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
F
ConstConst*
_output_shapes
: *
dtype0*
valueB B 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
�
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_2/bias/*
dtype0*
shape:
*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:
*
dtype0
�
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_2/bias/*
dtype0*
shape:
*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:
*
dtype0
�
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_2/kernel/*
dtype0*
shape:	�
*&
shared_nameAdam/v/dense_2/kernel
�
)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_2/kernel/*
dtype0*
shape:	�
*&
shared_nameAdam/m/dense_2/kernel
�
)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/v/4_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/4_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/v/4_conv/bias
v
&Adam/v/4_conv/bias/Read/ReadVariableOpReadVariableOpAdam/v/4_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/4_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/4_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/m/4_conv/bias
v
&Adam/m/4_conv/bias/Read/ReadVariableOpReadVariableOpAdam/m/4_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/4_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/4_conv/kernel/*
dtype0*
shape:	��*%
shared_nameAdam/v/4_conv/kernel
�
(Adam/v/4_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/v/4_conv/kernel*$
_output_shapes
:	��*
dtype0
�
Adam/m/4_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/4_conv/kernel/*
dtype0*
shape:	��*%
shared_nameAdam/m/4_conv/kernel
�
(Adam/m/4_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/m/4_conv/kernel*$
_output_shapes
:	��*
dtype0
�
Adam/v/3_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/3_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/v/3_conv/bias
v
&Adam/v/3_conv/bias/Read/ReadVariableOpReadVariableOpAdam/v/3_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/3_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/3_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/m/3_conv/bias
v
&Adam/m/3_conv/bias/Read/ReadVariableOpReadVariableOpAdam/m/3_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/3_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/3_conv/kernel/*
dtype0*
shape:	��*%
shared_nameAdam/v/3_conv/kernel
�
(Adam/v/3_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/v/3_conv/kernel*$
_output_shapes
:	��*
dtype0
�
Adam/m/3_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/3_conv/kernel/*
dtype0*
shape:	��*%
shared_nameAdam/m/3_conv/kernel
�
(Adam/m/3_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/m/3_conv/kernel*$
_output_shapes
:	��*
dtype0
�
Adam/v/2_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/2_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/v/2_conv/bias
v
&Adam/v/2_conv/bias/Read/ReadVariableOpReadVariableOpAdam/v/2_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/2_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/2_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/m/2_conv/bias
v
&Adam/m/2_conv/bias/Read/ReadVariableOpReadVariableOpAdam/m/2_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/2_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/2_conv/kernel/*
dtype0*
shape:	��*%
shared_nameAdam/v/2_conv/kernel
�
(Adam/v/2_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/v/2_conv/kernel*$
_output_shapes
:	��*
dtype0
�
Adam/m/2_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/2_conv/kernel/*
dtype0*
shape:	��*%
shared_nameAdam/m/2_conv/kernel
�
(Adam/m/2_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/m/2_conv/kernel*$
_output_shapes
:	��*
dtype0
�
Adam/v/1_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/v/1_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/v/1_conv/bias
v
&Adam/v/1_conv/bias/Read/ReadVariableOpReadVariableOpAdam/v/1_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/1_conv/biasVarHandleOp*
_output_shapes
: *#

debug_nameAdam/m/1_conv/bias/*
dtype0*
shape:�*#
shared_nameAdam/m/1_conv/bias
v
&Adam/m/1_conv/bias/Read/ReadVariableOpReadVariableOpAdam/m/1_conv/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/1_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/1_conv/kernel/*
dtype0*
shape:	2�*%
shared_nameAdam/v/1_conv/kernel
�
(Adam/v/1_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/v/1_conv/kernel*#
_output_shapes
:	2�*
dtype0
�
Adam/m/1_conv/kernelVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/1_conv/kernel/*
dtype0*
shape:	2�*%
shared_nameAdam/m/1_conv/kernel
�
(Adam/m/1_conv/kernel/Read/ReadVariableOpReadVariableOpAdam/m/1_conv/kernel*#
_output_shapes
:	2�*
dtype0
�
Adam/v/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *.

debug_name Adam/v/embedding_2/embeddings/*
dtype0*
shape
:2*.
shared_nameAdam/v/embedding_2/embeddings
�
1Adam/v/embedding_2/embeddings/Read/ReadVariableOpReadVariableOpAdam/v/embedding_2/embeddings*
_output_shapes

:2*
dtype0
�
Adam/m/embedding_2/embeddingsVarHandleOp*
_output_shapes
: *.

debug_name Adam/m/embedding_2/embeddings/*
dtype0*
shape
:2*.
shared_nameAdam/m/embedding_2/embeddings
�
1Adam/m/embedding_2/embeddings/Read/ReadVariableOpReadVariableOpAdam/m/embedding_2/embeddings*
_output_shapes

:2*
dtype0
�

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*?
shared_name0.hash_table_../Exp1/Data/Vocabulary.txt_-2_-1_2*
value_dtype0	
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0
�
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape:	�
*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�
*
dtype0
�
4_conv/biasVarHandleOp*
_output_shapes
: *

debug_name4_conv/bias/*
dtype0*
shape:�*
shared_name4_conv/bias
h
4_conv/bias/Read/ReadVariableOpReadVariableOp4_conv/bias*
_output_shapes	
:�*
dtype0
�
4_conv/kernelVarHandleOp*
_output_shapes
: *

debug_name4_conv/kernel/*
dtype0*
shape:	��*
shared_name4_conv/kernel
u
!4_conv/kernel/Read/ReadVariableOpReadVariableOp4_conv/kernel*$
_output_shapes
:	��*
dtype0
�
3_conv/biasVarHandleOp*
_output_shapes
: *

debug_name3_conv/bias/*
dtype0*
shape:�*
shared_name3_conv/bias
h
3_conv/bias/Read/ReadVariableOpReadVariableOp3_conv/bias*
_output_shapes	
:�*
dtype0
�
3_conv/kernelVarHandleOp*
_output_shapes
: *

debug_name3_conv/kernel/*
dtype0*
shape:	��*
shared_name3_conv/kernel
u
!3_conv/kernel/Read/ReadVariableOpReadVariableOp3_conv/kernel*$
_output_shapes
:	��*
dtype0
�
2_conv/biasVarHandleOp*
_output_shapes
: *

debug_name2_conv/bias/*
dtype0*
shape:�*
shared_name2_conv/bias
h
2_conv/bias/Read/ReadVariableOpReadVariableOp2_conv/bias*
_output_shapes	
:�*
dtype0
�
2_conv/kernelVarHandleOp*
_output_shapes
: *

debug_name2_conv/kernel/*
dtype0*
shape:	��*
shared_name2_conv/kernel
u
!2_conv/kernel/Read/ReadVariableOpReadVariableOp2_conv/kernel*$
_output_shapes
:	��*
dtype0
�
1_conv/biasVarHandleOp*
_output_shapes
: *

debug_name1_conv/bias/*
dtype0*
shape:�*
shared_name1_conv/bias
h
1_conv/bias/Read/ReadVariableOpReadVariableOp1_conv/bias*
_output_shapes	
:�*
dtype0
�
1_conv/kernelVarHandleOp*
_output_shapes
: *

debug_name1_conv/kernel/*
dtype0*
shape:	2�*
shared_name1_conv/kernel
t
!1_conv/kernel/Read/ReadVariableOpReadVariableOp1_conv/kernel*#
_output_shapes
:	2�*
dtype0
�
embedding_2/embeddingsVarHandleOp*
_output_shapes
: *'

debug_nameembedding_2/embeddings/*
dtype0*
shape
:2*'
shared_nameembedding_2/embeddings
�
*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
_output_shapes

:2*
dtype0
�
*serving_default_text_vectorization_2_inputPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCall*serving_default_text_vectorization_2_input
hash_tableConst_1ConstConst_2embedding_2/embeddings1_conv/kernel1_conv/bias2_conv/kernel2_conv/bias3_conv/kernel3_conv/bias4_conv/kernel4_conv/biasdense_2/kerneldense_2/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_214595
a
ReadVariableOpReadVariableOpVariable^Variable/Assign*
_output_shapes
: *
dtype0
�
StatefulPartitionedCall_1StatefulPartitionedCallReadVariableOp
hash_table*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__initializer_214833
:
NoOpNoOp^StatefulPartitionedCall_1^Variable/Assign
�[
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*�Z
value�ZB�Z B�Z
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
$
	keras_api
_lookup_layer* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op*
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_random_generator* 
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias
 6_jit_compiled_convolution_op*
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator* 
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op*
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M_random_generator* 
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
 V_jit_compiled_convolution_op*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias*
R
0
$1
%2
43
54
D5
E6
T7
U8
c9
d10*
R
0
$1
%2
43
54
D5
E6
T7
U8
c9
d10*
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

jtrace_0
ktrace_1* 

ltrace_0
mtrace_1* 
/
n	capture_1
o	capture_2
p	capture_3* 
�
q
_variables
r_iterations
s_learning_rate
t_index_dict
u
_momentums
v_velocities
w_update_step_xla*

xserving_default* 
* 
#
y	keras_api
zlookup_table* 

0*

0*
* 
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
jd
VARIABLE_VALUEembedding_2/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUE1_conv/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE1_conv/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

40
51*

40
51*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUE2_conv/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE2_conv/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

D0
E1*

D0
E1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUE3_conv/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE3_conv/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

T0
U1*

T0
U1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUE4_conv/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUE4_conv/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

c0
d1*

c0
d1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

�0*
* 
* 
/
n	capture_1
o	capture_2
p	capture_3* 
/
n	capture_1
o	capture_2
p	capture_3* 
/
n	capture_1
o	capture_2
p	capture_3* 
/
n	capture_1
o	capture_2
p	capture_3* 
* 
* 
* 
�
r0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
]
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10*
]
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10*
* 
/
n	capture_1
o	capture_2
p	capture_3* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
hb
VARIABLE_VALUEAdam/m/embedding_2/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/embedding_2/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/1_conv/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/1_conv/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/1_conv/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/1_conv/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/2_conv/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/2_conv/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/2_conv/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/2_conv/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/3_conv/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/3_conv/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/3_conv/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/3_conv/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/4_conv/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/4_conv/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/4_conv/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/4_conv/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*

�	_filename* 

�trace_0* 

�trace_0* 

�trace_0* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

�	capture_0* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_2/embeddings1_conv/kernel1_conv/bias2_conv/kernel2_conv/bias3_conv/kernel3_conv/bias4_conv/kernel4_conv/biasdense_2/kerneldense_2/bias	iterationlearning_rateAdam/m/embedding_2/embeddingsAdam/v/embedding_2/embeddingsAdam/m/1_conv/kernelAdam/v/1_conv/kernelAdam/m/1_conv/biasAdam/v/1_conv/biasAdam/m/2_conv/kernelAdam/v/2_conv/kernelAdam/m/2_conv/biasAdam/v/2_conv/biasAdam/m/3_conv/kernelAdam/v/3_conv/kernelAdam/m/3_conv/biasAdam/v/3_conv/biasAdam/m/4_conv/kernelAdam/v/4_conv/kernelAdam/m/4_conv/biasAdam/v/4_conv/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotalcountConst_3*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_215091
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding_2/embeddings1_conv/kernel1_conv/bias2_conv/kernel2_conv/bias3_conv/kernel3_conv/bias4_conv/kernel4_conv/biasdense_2/kerneldense_2/bias	iterationlearning_rateAdam/m/embedding_2/embeddingsAdam/v/embedding_2/embeddingsAdam/m/1_conv/kernelAdam/v/1_conv/kernelAdam/m/1_conv/biasAdam/v/1_conv/biasAdam/m/2_conv/kernelAdam/v/2_conv/kernelAdam/m/2_conv/biasAdam/v/2_conv/biasAdam/m/3_conv/kernelAdam/v/3_conv/kernelAdam/m/3_conv/biasAdam/v/3_conv/biasAdam/m/4_conv/kernelAdam/v/4_conv/kernelAdam/m/4_conv/biasAdam/v/4_conv/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotalcount*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_215211ҿ

�
�
B__inference_1_conv_layer_call_and_return_conditional_losses_214636

inputsB
+conv1d_expanddims_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:	2�*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:	2��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:����������2
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_214092
text_vectorization_2_input`
\sequential_2_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handlea
]sequential_2_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	=
9sequential_2_text_vectorization_2_string_lookup_2_equal_y@
<sequential_2_text_vectorization_2_string_lookup_2_selectv2_t	B
0sequential_2_embedding_2_embedding_lookup_214025:2V
?sequential_2_1_conv_conv1d_expanddims_1_readvariableop_resource:	2�B
3sequential_2_1_conv_biasadd_readvariableop_resource:	�W
?sequential_2_2_conv_conv1d_expanddims_1_readvariableop_resource:	��B
3sequential_2_2_conv_biasadd_readvariableop_resource:	�W
?sequential_2_3_conv_conv1d_expanddims_1_readvariableop_resource:	��B
3sequential_2_3_conv_biasadd_readvariableop_resource:	�W
?sequential_2_4_conv_conv1d_expanddims_1_readvariableop_resource:	��B
3sequential_2_4_conv_biasadd_readvariableop_resource:	�F
3sequential_2_dense_2_matmul_readvariableop_resource:	�
B
4sequential_2_dense_2_biasadd_readvariableop_resource:

identity��*sequential_2/1_conv/BiasAdd/ReadVariableOp�6sequential_2/1_conv/Conv1D/ExpandDims_1/ReadVariableOp�*sequential_2/2_conv/BiasAdd/ReadVariableOp�6sequential_2/2_conv/Conv1D/ExpandDims_1/ReadVariableOp�*sequential_2/3_conv/BiasAdd/ReadVariableOp�6sequential_2/3_conv/Conv1D/ExpandDims_1/ReadVariableOp�*sequential_2/4_conv/BiasAdd/ReadVariableOp�6sequential_2/4_conv/Conv1D/ExpandDims_1/ReadVariableOp�+sequential_2/dense_2/BiasAdd/ReadVariableOp�*sequential_2/dense_2/MatMul/ReadVariableOp�)sequential_2/embedding_2/embedding_lookup�Osequential_2/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2t
3sequential_2/text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
;sequential_2/text_vectorization_2/StringSplit/StringSplitV2StringSplitV2text_vectorization_2_input<sequential_2/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
Asequential_2/text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Csequential_2/text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Csequential_2/text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
;sequential_2/text_vectorization_2/StringSplit/strided_sliceStridedSliceEsequential_2/text_vectorization_2/StringSplit/StringSplitV2:indices:0Jsequential_2/text_vectorization_2/StringSplit/strided_slice/stack:output:0Lsequential_2/text_vectorization_2/StringSplit/strided_slice/stack_1:output:0Lsequential_2/text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Csequential_2/text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_2/text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential_2/text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential_2/text_vectorization_2/StringSplit/strided_slice_1StridedSliceCsequential_2/text_vectorization_2/StringSplit/StringSplitV2:shape:0Lsequential_2/text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Nsequential_2/text_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Nsequential_2/text_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
dsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastDsequential_2/text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
fsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastFsequential_2/text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
msequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSizehsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
rsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
psequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatervsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0{sequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
msequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCasttsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
nsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
lsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxhsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
nsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
lsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2usequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0wsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
lsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulqsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0psequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
psequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumjsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
psequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumjsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0tsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
vsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
psequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapehsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0sequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
psequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
vsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountysequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0tsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ysequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
ksequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
fsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0tsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
osequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
ksequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
fsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2xsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0lsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0tsequential_2/text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Osequential_2/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2\sequential_2_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleDsequential_2/text_vectorization_2/StringSplit/StringSplitV2:values:0]sequential_2_text_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
7sequential_2/text_vectorization_2/string_lookup_2/EqualEqualDsequential_2/text_vectorization_2/StringSplit/StringSplitV2:values:09sequential_2_text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:����������
:sequential_2/text_vectorization_2/string_lookup_2/SelectV2SelectV2;sequential_2/text_vectorization_2/string_lookup_2/Equal:z:0<sequential_2_text_vectorization_2_string_lookup_2_selectv2_tXsequential_2/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
:sequential_2/text_vectorization_2/string_lookup_2/IdentityIdentityCsequential_2/text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:����������
>sequential_2/text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
6sequential_2/text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������       �
Esequential_2/text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor?sequential_2/text_vectorization_2/RaggedToTensor/Const:output:0Csequential_2/text_vectorization_2/string_lookup_2/Identity:output:0Gsequential_2/text_vectorization_2/RaggedToTensor/default_value:output:0Fsequential_2/text_vectorization_2/StringSplit/strided_slice_1:output:0Dsequential_2/text_vectorization_2/StringSplit/strided_slice:output:0*
Tindex0	*
Tshape0	*
T0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
)sequential_2/embedding_2/embedding_lookupResourceGather0sequential_2_embedding_2_embedding_lookup_214025Nsequential_2/text_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*C
_class9
75loc:@sequential_2/embedding_2/embedding_lookup/214025*,
_output_shapes
:����������2*
dtype0�
2sequential_2/embedding_2/embedding_lookup/IdentityIdentity2sequential_2/embedding_2/embedding_lookup:output:0*
T0*,
_output_shapes
:����������2e
#sequential_2/embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
!sequential_2/embedding_2/NotEqualNotEqualNsequential_2/text_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0,sequential_2/embedding_2/NotEqual/y:output:0*
T0	*(
_output_shapes
:����������t
)sequential_2/1_conv/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_2/1_conv/Conv1D/ExpandDims
ExpandDims;sequential_2/embedding_2/embedding_lookup/Identity:output:02sequential_2/1_conv/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
6sequential_2/1_conv/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?sequential_2_1_conv_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:	2�*
dtype0m
+sequential_2/1_conv/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_2/1_conv/Conv1D/ExpandDims_1
ExpandDims>sequential_2/1_conv/Conv1D/ExpandDims_1/ReadVariableOp:value:04sequential_2/1_conv/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:	2��
sequential_2/1_conv/Conv1DConv2D.sequential_2/1_conv/Conv1D/ExpandDims:output:00sequential_2/1_conv/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
"sequential_2/1_conv/Conv1D/SqueezeSqueeze#sequential_2/1_conv/Conv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

����������
*sequential_2/1_conv/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_1_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/1_conv/BiasAddBiasAdd+sequential_2/1_conv/Conv1D/Squeeze:output:02sequential_2/1_conv/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������~
sequential_2/1_conv/ReluRelu$sequential_2/1_conv/BiasAdd:output:0*
T0*-
_output_shapes
:������������
sequential_2/dropout_6/IdentityIdentity&sequential_2/1_conv/Relu:activations:0*
T0*-
_output_shapes
:�����������t
)sequential_2/2_conv/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_2/2_conv/Conv1D/ExpandDims
ExpandDims(sequential_2/dropout_6/Identity:output:02sequential_2/2_conv/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
6sequential_2/2_conv/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?sequential_2_2_conv_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0m
+sequential_2/2_conv/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_2/2_conv/Conv1D/ExpandDims_1
ExpandDims>sequential_2/2_conv/Conv1D/ExpandDims_1/ReadVariableOp:value:04sequential_2/2_conv/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
sequential_2/2_conv/Conv1DConv2D.sequential_2/2_conv/Conv1D/ExpandDims:output:00sequential_2/2_conv/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
"sequential_2/2_conv/Conv1D/SqueezeSqueeze#sequential_2/2_conv/Conv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

����������
*sequential_2/2_conv/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_2_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/2_conv/BiasAddBiasAdd+sequential_2/2_conv/Conv1D/Squeeze:output:02sequential_2/2_conv/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������~
sequential_2/2_conv/ReluRelu$sequential_2/2_conv/BiasAdd:output:0*
T0*-
_output_shapes
:������������
sequential_2/dropout_7/IdentityIdentity&sequential_2/2_conv/Relu:activations:0*
T0*-
_output_shapes
:�����������t
)sequential_2/3_conv/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_2/3_conv/Conv1D/ExpandDims
ExpandDims(sequential_2/dropout_7/Identity:output:02sequential_2/3_conv/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
6sequential_2/3_conv/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?sequential_2_3_conv_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0m
+sequential_2/3_conv/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_2/3_conv/Conv1D/ExpandDims_1
ExpandDims>sequential_2/3_conv/Conv1D/ExpandDims_1/ReadVariableOp:value:04sequential_2/3_conv/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
sequential_2/3_conv/Conv1DConv2D.sequential_2/3_conv/Conv1D/ExpandDims:output:00sequential_2/3_conv/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
"sequential_2/3_conv/Conv1D/SqueezeSqueeze#sequential_2/3_conv/Conv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

����������
*sequential_2/3_conv/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_3_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/3_conv/BiasAddBiasAdd+sequential_2/3_conv/Conv1D/Squeeze:output:02sequential_2/3_conv/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������~
sequential_2/3_conv/ReluRelu$sequential_2/3_conv/BiasAdd:output:0*
T0*-
_output_shapes
:������������
sequential_2/dropout_8/IdentityIdentity&sequential_2/3_conv/Relu:activations:0*
T0*-
_output_shapes
:�����������t
)sequential_2/4_conv/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%sequential_2/4_conv/Conv1D/ExpandDims
ExpandDims(sequential_2/dropout_8/Identity:output:02sequential_2/4_conv/Conv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
6sequential_2/4_conv/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?sequential_2_4_conv_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0m
+sequential_2/4_conv/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_2/4_conv/Conv1D/ExpandDims_1
ExpandDims>sequential_2/4_conv/Conv1D/ExpandDims_1/ReadVariableOp:value:04sequential_2/4_conv/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
sequential_2/4_conv/Conv1DConv2D.sequential_2/4_conv/Conv1D/ExpandDims:output:00sequential_2/4_conv/Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
"sequential_2/4_conv/Conv1D/SqueezeSqueeze#sequential_2/4_conv/Conv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

����������
*sequential_2/4_conv/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_4_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_2/4_conv/BiasAddBiasAdd+sequential_2/4_conv/Conv1D/Squeeze:output:02sequential_2/4_conv/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������~
sequential_2/4_conv/ReluRelu$sequential_2/4_conv/BiasAdd:output:0*
T0*-
_output_shapes
:������������
>sequential_2/global_average_pooling1d_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
,sequential_2/global_average_pooling1d_2/MeanMean&sequential_2/4_conv/Relu:activations:0Gsequential_2/global_average_pooling1d_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_2/dense_2/MatMulMatMul5sequential_2/global_average_pooling1d_2/Mean:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
sequential_2/dense_2/SoftmaxSoftmax%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������
u
IdentityIdentity&sequential_2/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp+^sequential_2/1_conv/BiasAdd/ReadVariableOp7^sequential_2/1_conv/Conv1D/ExpandDims_1/ReadVariableOp+^sequential_2/2_conv/BiasAdd/ReadVariableOp7^sequential_2/2_conv/Conv1D/ExpandDims_1/ReadVariableOp+^sequential_2/3_conv/BiasAdd/ReadVariableOp7^sequential_2/3_conv/Conv1D/ExpandDims_1/ReadVariableOp+^sequential_2/4_conv/BiasAdd/ReadVariableOp7^sequential_2/4_conv/Conv1D/ExpandDims_1/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*^sequential_2/embedding_2/embedding_lookupP^sequential_2/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : : : 2X
*sequential_2/1_conv/BiasAdd/ReadVariableOp*sequential_2/1_conv/BiasAdd/ReadVariableOp2p
6sequential_2/1_conv/Conv1D/ExpandDims_1/ReadVariableOp6sequential_2/1_conv/Conv1D/ExpandDims_1/ReadVariableOp2X
*sequential_2/2_conv/BiasAdd/ReadVariableOp*sequential_2/2_conv/BiasAdd/ReadVariableOp2p
6sequential_2/2_conv/Conv1D/ExpandDims_1/ReadVariableOp6sequential_2/2_conv/Conv1D/ExpandDims_1/ReadVariableOp2X
*sequential_2/3_conv/BiasAdd/ReadVariableOp*sequential_2/3_conv/BiasAdd/ReadVariableOp2p
6sequential_2/3_conv/Conv1D/ExpandDims_1/ReadVariableOp6sequential_2/3_conv/Conv1D/ExpandDims_1/ReadVariableOp2X
*sequential_2/4_conv/BiasAdd/ReadVariableOp*sequential_2/4_conv/BiasAdd/ReadVariableOp2p
6sequential_2/4_conv/Conv1D/ExpandDims_1/ReadVariableOp6sequential_2/4_conv/Conv1D/ExpandDims_1/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp2V
)sequential_2/embedding_2/embedding_lookup)sequential_2/embedding_2/embedding_lookup2�
Osequential_2/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Osequential_2/text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:&"
 
_user_specified_name214025:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_user_specified_nametable_handle:_ [
#
_output_shapes
:���������
4
_user_specified_nametext_vectorization_2_input
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_214823

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_3_conv_layer_call_and_return_conditional_losses_214247

inputsC
+conv1d_expanddims_1_readvariableop_resource:	��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_214230

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:�����������*
dtype0*
seed2-*
seed���)[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentitydropout/SelectV2:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_214710

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:�����������*
dtype0*
seed2.*
seed���)[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentitydropout/SelectV2:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_214378

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:�����������a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214803

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
B__inference_3_conv_layer_call_and_return_conditional_losses_214740

inputsC
+conv1d_expanddims_1_readvariableop_resource:	��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_7_layer_call_fn_214698

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_214378f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
W
;__inference_global_average_pooling1d_2_layer_call_fn_214797

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214098i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
;
__inference__creator_214827
identity��
hash_table�

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*?
shared_name0.hash_table_../Exp1/Data/Vocabulary.txt_-2_-1_2*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: /
NoOpNoOp^hash_table*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
,__inference_embedding_2_layer_call_fn_214603

inputs	
unknown:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_214158t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:����������: 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214599:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_214264

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:�����������*
dtype0*
seed2-*
seed���)[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentitydropout/SelectV2:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_6_layer_call_fn_214646

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_214367f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_214389

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:�����������a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_7_layer_call_fn_214693

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_214230u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_1_conv_layer_call_and_return_conditional_losses_214179

inputsB
+conv1d_expanddims_1_readvariableop_resource:	2�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:	2�*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:	2��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:����������2
 
_user_specified_nameinputs
�
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_214367

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:�����������a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
-
__inference__destroyer_214837
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
B__inference_2_conv_layer_call_and_return_conditional_losses_214688

inputsC
+conv1d_expanddims_1_readvariableop_resource:	��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
B__inference_4_conv_layer_call_and_return_conditional_losses_214281

inputsC
+conv1d_expanddims_1_readvariableop_resource:	��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
C__inference_dense_2_layer_call_and_return_conditional_losses_214298

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_4_conv_layer_call_and_return_conditional_losses_214792

inputsC
+conv1d_expanddims_1_readvariableop_resource:	��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_4_conv_layer_call_fn_214776

inputs
unknown:	��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_4_conv_layer_call_and_return_conditional_losses_214281u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214772:&"
 
_user_specified_name214770:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_214658

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:�����������*
dtype0*
seed2.*
seed���)[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentitydropout/SelectV2:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_embedding_2_layer_call_and_return_conditional_losses_214158

inputs	)
embedding_lookup_214153:2
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_214153inputs*
Tindices0	**
_class 
loc:@embedding_lookup/214153*,
_output_shapes
:����������2*
dtype0w
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:����������2v
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*,
_output_shapes
:����������25
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:����������: 2$
embedding_lookupembedding_lookup:&"
 
_user_specified_name214153:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_dense_2_layer_call_fn_214812

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_214298o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214808:&"
 
_user_specified_name214806:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_2_conv_layer_call_fn_214672

inputs
unknown:	��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_2_conv_layer_call_and_return_conditional_losses_214213u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214668:&"
 
_user_specified_name214666:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_214196

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:�����������*
dtype0*
seed2-*
seed���)[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentitydropout/SelectV2:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_8_layer_call_fn_214745

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_214264u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
r
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214098

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
F
*__inference_dropout_8_layer_call_fn_214750

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_214389f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_1_conv_layer_call_fn_214620

inputs
unknown:	2�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_1_conv_layer_call_and_return_conditional_losses_214179u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214616:&"
 
_user_specified_name214614:T P
,
_output_shapes
:����������2
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_214438
text_vectorization_2_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:2 
	unknown_4:	2�
	unknown_5:	�!
	unknown_6:	��
	unknown_7:	�!
	unknown_8:	��
	unknown_9:	�"

unknown_10:	��

unknown_11:	�

unknown_12:	�


unknown_13:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_214305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214434:&"
 
_user_specified_name214432:&"
 
_user_specified_name214430:&"
 
_user_specified_name214428:&"
 
_user_specified_name214426:&
"
 
_user_specified_name214424:&	"
 
_user_specified_name214422:&"
 
_user_specified_name214420:&"
 
_user_specified_name214418:&"
 
_user_specified_name214416:&"
 
_user_specified_name214414:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_user_specified_name214406:_ [
#
_output_shapes
:���������
4
_user_specified_nametext_vectorization_2_input
�
c
*__inference_dropout_6_layer_call_fn_214641

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_214196u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_214762

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:�����������*
dtype0*
seed2.*
seed���)[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentitydropout/SelectV2:output:0*
T0*-
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
Ń
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_214403
text_vectorization_2_inputS
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	$
embedding_2_214353:2"
conv_214358:	2�
conv_214360:	�#
conv_214369:	��
conv_214371:	�#
conv_214380:	��
conv_214382:	�#
conv_214391:	��
conv_214393:	�!
dense_2_214397:	�

dense_2_214399:

identity��1_conv/StatefulPartitionedCall�2_conv/StatefulPartitionedCall�3_conv/StatefulPartitionedCall�4_conv/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2text_vectorization_2_input/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSize[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
itext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumrtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:����������
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������       �
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
Tindex0	*
Tshape0	*
T0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2_214353*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_214158X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
embedding_2/NotEqualNotEqualAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*(
_output_shapes
:�����������
1_conv/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv_214358conv_214360*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_1_conv_layer_call_and_return_conditional_losses_214179�
dropout_6/PartitionedCallPartitionedCall'1_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_214367�
2_conv/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv_214369conv_214371*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_2_conv_layer_call_and_return_conditional_losses_214213�
dropout_7/PartitionedCallPartitionedCall'2_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_214378�
3_conv/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv_214380conv_214382*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_3_conv_layer_call_and_return_conditional_losses_214247�
dropout_8/PartitionedCallPartitionedCall'3_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_214389�
4_conv/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0conv_214391conv_214393*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_4_conv_layer_call_and_return_conditional_losses_214281�
*global_average_pooling1d_2/PartitionedCallPartitionedCall'4_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214098�
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_2_214397dense_2_214399*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_214298w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^1_conv/StatefulPartitionedCall^2_conv/StatefulPartitionedCall^3_conv/StatefulPartitionedCall^4_conv/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCallC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : : : 2@
1_conv/StatefulPartitionedCall1_conv/StatefulPartitionedCall2@
2_conv/StatefulPartitionedCall2_conv/StatefulPartitionedCall2@
3_conv/StatefulPartitionedCall3_conv/StatefulPartitionedCall2@
4_conv/StatefulPartitionedCall4_conv/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2�
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:&"
 
_user_specified_name214399:&"
 
_user_specified_name214397:&"
 
_user_specified_name214393:&"
 
_user_specified_name214391:&"
 
_user_specified_name214382:&
"
 
_user_specified_name214380:&	"
 
_user_specified_name214371:&"
 
_user_specified_name214369:&"
 
_user_specified_name214360:&"
 
_user_specified_name214358:&"
 
_user_specified_name214353:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_user_specified_nametable_handle:_ [
#
_output_shapes
:���������
4
_user_specified_nametext_vectorization_2_input
�
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_214715

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:�����������a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_215211
file_prefix9
'assignvariableop_embedding_2_embeddings:27
 assignvariableop_1_1_conv_kernel:	2�-
assignvariableop_2_1_conv_bias:	�8
 assignvariableop_3_2_conv_kernel:	��-
assignvariableop_4_2_conv_bias:	�8
 assignvariableop_5_3_conv_kernel:	��-
assignvariableop_6_3_conv_bias:	�8
 assignvariableop_7_4_conv_kernel:	��-
assignvariableop_8_4_conv_bias:	�4
!assignvariableop_9_dense_2_kernel:	�
.
 assignvariableop_10_dense_2_bias:
'
assignvariableop_11_iteration:	 +
!assignvariableop_12_learning_rate: C
1assignvariableop_13_adam_m_embedding_2_embeddings:2C
1assignvariableop_14_adam_v_embedding_2_embeddings:2?
(assignvariableop_15_adam_m_1_conv_kernel:	2�?
(assignvariableop_16_adam_v_1_conv_kernel:	2�5
&assignvariableop_17_adam_m_1_conv_bias:	�5
&assignvariableop_18_adam_v_1_conv_bias:	�@
(assignvariableop_19_adam_m_2_conv_kernel:	��@
(assignvariableop_20_adam_v_2_conv_kernel:	��5
&assignvariableop_21_adam_m_2_conv_bias:	�5
&assignvariableop_22_adam_v_2_conv_bias:	�@
(assignvariableop_23_adam_m_3_conv_kernel:	��@
(assignvariableop_24_adam_v_3_conv_kernel:	��5
&assignvariableop_25_adam_m_3_conv_bias:	�5
&assignvariableop_26_adam_v_3_conv_bias:	�@
(assignvariableop_27_adam_m_4_conv_kernel:	��@
(assignvariableop_28_adam_v_4_conv_kernel:	��5
&assignvariableop_29_adam_m_4_conv_bias:	�5
&assignvariableop_30_adam_v_4_conv_bias:	�<
)assignvariableop_31_adam_m_dense_2_kernel:	�
<
)assignvariableop_32_adam_v_dense_2_kernel:	�
5
'assignvariableop_33_adam_m_dense_2_bias:
5
'assignvariableop_34_adam_v_dense_2_bias:
#
assignvariableop_35_total: #
assignvariableop_36_count: 
identity_38��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*�
value�B�&B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp'assignvariableop_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_1_conv_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_1_conv_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_2_conv_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_2_conv_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_3_conv_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_3_conv_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_4_conv_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_4_conv_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_2_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_2_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_iterationIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp!assignvariableop_12_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_adam_m_embedding_2_embeddingsIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp1assignvariableop_14_adam_v_embedding_2_embeddingsIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_1_conv_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_1_conv_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_m_1_conv_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_v_1_conv_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_m_2_conv_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_v_2_conv_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp&assignvariableop_21_adam_m_2_conv_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_v_2_conv_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_m_3_conv_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_v_3_conv_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_m_3_conv_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_v_3_conv_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_m_4_conv_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_v_4_conv_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_m_4_conv_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_v_4_conv_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_m_dense_2_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_v_dense_2_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_m_dense_2_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_v_dense_2_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_38Identity_38:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%%!

_user_specified_namecount:%$!

_user_specified_nametotal:3#/
-
_user_specified_nameAdam/v/dense_2/bias:3"/
-
_user_specified_nameAdam/m/dense_2/bias:5!1
/
_user_specified_nameAdam/v/dense_2/kernel:5 1
/
_user_specified_nameAdam/m/dense_2/kernel:2.
,
_user_specified_nameAdam/v/4_conv/bias:2.
,
_user_specified_nameAdam/m/4_conv/bias:40
.
_user_specified_nameAdam/v/4_conv/kernel:40
.
_user_specified_nameAdam/m/4_conv/kernel:2.
,
_user_specified_nameAdam/v/3_conv/bias:2.
,
_user_specified_nameAdam/m/3_conv/bias:40
.
_user_specified_nameAdam/v/3_conv/kernel:40
.
_user_specified_nameAdam/m/3_conv/kernel:2.
,
_user_specified_nameAdam/v/2_conv/bias:2.
,
_user_specified_nameAdam/m/2_conv/bias:40
.
_user_specified_nameAdam/v/2_conv/kernel:40
.
_user_specified_nameAdam/m/2_conv/kernel:2.
,
_user_specified_nameAdam/v/1_conv/bias:2.
,
_user_specified_nameAdam/m/1_conv/bias:40
.
_user_specified_nameAdam/v/1_conv/kernel:40
.
_user_specified_nameAdam/m/1_conv/kernel:=9
7
_user_specified_nameAdam/v/embedding_2/embeddings:=9
7
_user_specified_nameAdam/m/embedding_2/embeddings:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_2/bias:.
*
(
_user_specified_namedense_2/kernel:+	'
%
_user_specified_name4_conv/bias:-)
'
_user_specified_name4_conv/kernel:+'
%
_user_specified_name3_conv/bias:-)
'
_user_specified_name3_conv/kernel:+'
%
_user_specified_name2_conv/bias:-)
'
_user_specified_name2_conv/kernel:+'
%
_user_specified_name1_conv/bias:-)
'
_user_specified_name1_conv/kernel:62
0
_user_specified_nameembedding_2/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
G__inference_embedding_2_layer_call_and_return_conditional_losses_214611

inputs	)
embedding_lookup_214606:2
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_214606inputs*
Tindices0	**
_class 
loc:@embedding_lookup/214606*,
_output_shapes
:����������2*
dtype0w
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*,
_output_shapes
:����������2v
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*,
_output_shapes
:����������25
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:����������: 2$
embedding_lookupembedding_lookup:&"
 
_user_specified_name214606:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_2_conv_layer_call_and_return_conditional_losses_214213

inputsC
+conv1d_expanddims_1_readvariableop_resource:	��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*1
_output_shapes
:������������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:	��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:	���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*-
_output_shapes
:�����������*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������V
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:�����������g
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_2_layer_call_fn_214473
text_vectorization_2_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:2 
	unknown_4:	2�
	unknown_5:	�!
	unknown_6:	��
	unknown_7:	�!
	unknown_8:	��
	unknown_9:	�"

unknown_10:	��

unknown_11:	�

unknown_12:	�


unknown_13:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_214403o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214469:&"
 
_user_specified_name214467:&"
 
_user_specified_name214465:&"
 
_user_specified_name214463:&"
 
_user_specified_name214461:&
"
 
_user_specified_name214459:&	"
 
_user_specified_name214457:&"
 
_user_specified_name214455:&"
 
_user_specified_name214453:&"
 
_user_specified_name214451:&"
 
_user_specified_name214449:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_user_specified_name214441:_ [
#
_output_shapes
:���������
4
_user_specified_nametext_vectorization_2_input
�
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_214767

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:�����������a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�!
__inference__traced_save_215091
file_prefix?
-read_disablecopyonread_embedding_2_embeddings:2=
&read_1_disablecopyonread_1_conv_kernel:	2�3
$read_2_disablecopyonread_1_conv_bias:	�>
&read_3_disablecopyonread_2_conv_kernel:	��3
$read_4_disablecopyonread_2_conv_bias:	�>
&read_5_disablecopyonread_3_conv_kernel:	��3
$read_6_disablecopyonread_3_conv_bias:	�>
&read_7_disablecopyonread_4_conv_kernel:	��3
$read_8_disablecopyonread_4_conv_bias:	�:
'read_9_disablecopyonread_dense_2_kernel:	�
4
&read_10_disablecopyonread_dense_2_bias:
-
#read_11_disablecopyonread_iteration:	 1
'read_12_disablecopyonread_learning_rate: I
7read_13_disablecopyonread_adam_m_embedding_2_embeddings:2I
7read_14_disablecopyonread_adam_v_embedding_2_embeddings:2E
.read_15_disablecopyonread_adam_m_1_conv_kernel:	2�E
.read_16_disablecopyonread_adam_v_1_conv_kernel:	2�;
,read_17_disablecopyonread_adam_m_1_conv_bias:	�;
,read_18_disablecopyonread_adam_v_1_conv_bias:	�F
.read_19_disablecopyonread_adam_m_2_conv_kernel:	��F
.read_20_disablecopyonread_adam_v_2_conv_kernel:	��;
,read_21_disablecopyonread_adam_m_2_conv_bias:	�;
,read_22_disablecopyonread_adam_v_2_conv_bias:	�F
.read_23_disablecopyonread_adam_m_3_conv_kernel:	��F
.read_24_disablecopyonread_adam_v_3_conv_kernel:	��;
,read_25_disablecopyonread_adam_m_3_conv_bias:	�;
,read_26_disablecopyonread_adam_v_3_conv_bias:	�F
.read_27_disablecopyonread_adam_m_4_conv_kernel:	��F
.read_28_disablecopyonread_adam_v_4_conv_kernel:	��;
,read_29_disablecopyonread_adam_m_4_conv_bias:	�;
,read_30_disablecopyonread_adam_v_4_conv_bias:	�B
/read_31_disablecopyonread_adam_m_dense_2_kernel:	�
B
/read_32_disablecopyonread_adam_v_dense_2_kernel:	�
;
-read_33_disablecopyonread_adam_m_dense_2_bias:
;
-read_34_disablecopyonread_adam_v_dense_2_bias:
)
read_35_disablecopyonread_total: )
read_36_disablecopyonread_count: 
savev2_const_3
identity_75��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
Read/DisableCopyOnReadDisableCopyOnRead-read_disablecopyonread_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp-read_disablecopyonread_embedding_2_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:2z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_1_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_1_conv_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:	2�*
dtype0r

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:	2�h

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*#
_output_shapes
:	2�x
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_1_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_1_conv_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_2_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_2_conv_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0s

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��i

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*$
_output_shapes
:	��x
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_2_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_2_conv_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_3_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_3_conv_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0t
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*$
_output_shapes
:	��x
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_3_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_3_conv_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_4_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_4_conv_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0t
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*$
_output_shapes
:	��x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_4_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_4_conv_bias^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_dense_2_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
{
Read_10/DisableCopyOnReadDisableCopyOnRead&read_10_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp&read_10_disablecopyonread_dense_2_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:
x
Read_11/DisableCopyOnReadDisableCopyOnRead#read_11_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp#read_11_disablecopyonread_iteration^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_12/DisableCopyOnReadDisableCopyOnRead'read_12_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp'read_12_disablecopyonread_learning_rate^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_13/DisableCopyOnReadDisableCopyOnRead7read_13_disablecopyonread_adam_m_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp7read_13_disablecopyonread_adam_m_embedding_2_embeddings^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_14/DisableCopyOnReadDisableCopyOnRead7read_14_disablecopyonread_adam_v_embedding_2_embeddings"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp7read_14_disablecopyonread_adam_v_embedding_2_embeddings^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:2�
Read_15/DisableCopyOnReadDisableCopyOnRead.read_15_disablecopyonread_adam_m_1_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp.read_15_disablecopyonread_adam_m_1_conv_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:	2�*
dtype0t
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:	2�j
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*#
_output_shapes
:	2��
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_v_1_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_v_1_conv_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*#
_output_shapes
:	2�*
dtype0t
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*#
_output_shapes
:	2�j
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*#
_output_shapes
:	2��
Read_17/DisableCopyOnReadDisableCopyOnRead,read_17_disablecopyonread_adam_m_1_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp,read_17_disablecopyonread_adam_m_1_conv_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_18/DisableCopyOnReadDisableCopyOnRead,read_18_disablecopyonread_adam_v_1_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp,read_18_disablecopyonread_adam_v_1_conv_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_19/DisableCopyOnReadDisableCopyOnRead.read_19_disablecopyonread_adam_m_2_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp.read_19_disablecopyonread_adam_m_2_conv_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0u
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*$
_output_shapes
:	���
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_v_2_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_v_2_conv_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0u
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*$
_output_shapes
:	���
Read_21/DisableCopyOnReadDisableCopyOnRead,read_21_disablecopyonread_adam_m_2_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp,read_21_disablecopyonread_adam_m_2_conv_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead,read_22_disablecopyonread_adam_v_2_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp,read_22_disablecopyonread_adam_v_2_conv_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_23/DisableCopyOnReadDisableCopyOnRead.read_23_disablecopyonread_adam_m_3_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp.read_23_disablecopyonread_adam_m_3_conv_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0u
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*$
_output_shapes
:	���
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_v_3_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_v_3_conv_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0u
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*$
_output_shapes
:	���
Read_25/DisableCopyOnReadDisableCopyOnRead,read_25_disablecopyonread_adam_m_3_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp,read_25_disablecopyonread_adam_m_3_conv_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_26/DisableCopyOnReadDisableCopyOnRead,read_26_disablecopyonread_adam_v_3_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp,read_26_disablecopyonread_adam_v_3_conv_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_27/DisableCopyOnReadDisableCopyOnRead.read_27_disablecopyonread_adam_m_4_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp.read_27_disablecopyonread_adam_m_4_conv_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0u
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*$
_output_shapes
:	���
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_v_4_conv_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_v_4_conv_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*$
_output_shapes
:	��*
dtype0u
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*$
_output_shapes
:	��k
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*$
_output_shapes
:	���
Read_29/DisableCopyOnReadDisableCopyOnRead,read_29_disablecopyonread_adam_m_4_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp,read_29_disablecopyonread_adam_m_4_conv_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_30/DisableCopyOnReadDisableCopyOnRead,read_30_disablecopyonread_adam_v_4_conv_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp,read_30_disablecopyonread_adam_v_4_conv_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_m_dense_2_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_v_dense_2_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_adam_m_dense_2_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_34/DisableCopyOnReadDisableCopyOnRead-read_34_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp-read_34_disablecopyonread_adam_v_dense_2_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:
t
Read_35/DisableCopyOnReadDisableCopyOnReadread_35_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOpread_35_disablecopyonread_total^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_36/DisableCopyOnReadDisableCopyOnReadread_36_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOpread_36_disablecopyonread_count^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*�
value�B�&B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0savev2_const_3"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *4
dtypes*
(2&	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_74Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_75IdentityIdentity_74:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_75Identity_75:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:?&;

_output_shapes
: 
!
_user_specified_name	Const_3:%%!

_user_specified_namecount:%$!

_user_specified_nametotal:3#/
-
_user_specified_nameAdam/v/dense_2/bias:3"/
-
_user_specified_nameAdam/m/dense_2/bias:5!1
/
_user_specified_nameAdam/v/dense_2/kernel:5 1
/
_user_specified_nameAdam/m/dense_2/kernel:2.
,
_user_specified_nameAdam/v/4_conv/bias:2.
,
_user_specified_nameAdam/m/4_conv/bias:40
.
_user_specified_nameAdam/v/4_conv/kernel:40
.
_user_specified_nameAdam/m/4_conv/kernel:2.
,
_user_specified_nameAdam/v/3_conv/bias:2.
,
_user_specified_nameAdam/m/3_conv/bias:40
.
_user_specified_nameAdam/v/3_conv/kernel:40
.
_user_specified_nameAdam/m/3_conv/kernel:2.
,
_user_specified_nameAdam/v/2_conv/bias:2.
,
_user_specified_nameAdam/m/2_conv/bias:40
.
_user_specified_nameAdam/v/2_conv/kernel:40
.
_user_specified_nameAdam/m/2_conv/kernel:2.
,
_user_specified_nameAdam/v/1_conv/bias:2.
,
_user_specified_nameAdam/m/1_conv/bias:40
.
_user_specified_nameAdam/v/1_conv/kernel:40
.
_user_specified_nameAdam/m/1_conv/kernel:=9
7
_user_specified_nameAdam/v/embedding_2/embeddings:=9
7
_user_specified_nameAdam/m/embedding_2/embeddings:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_2/bias:.
*
(
_user_specified_namedense_2/kernel:+	'
%
_user_specified_name4_conv/bias:-)
'
_user_specified_name4_conv/kernel:+'
%
_user_specified_name3_conv/bias:-)
'
_user_specified_name3_conv/kernel:+'
%
_user_specified_name2_conv/bias:-)
'
_user_specified_name2_conv/kernel:+'
%
_user_specified_name1_conv/bias:-)
'
_user_specified_name1_conv/kernel:62
0
_user_specified_nameembedding_2/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
__inference__initializer_214833!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identity��,text_file_init/InitializeTableFromTextFileV2�
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_index���������*
offset*
value_index���������G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: Q
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2:,(
&
_user_specified_nametable_handle: 

_output_shapes
: 
�
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_214663

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:�����������a

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_3_conv_layer_call_fn_214724

inputs
unknown:	��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_3_conv_layer_call_and_return_conditional_losses_214247u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214720:&"
 
_user_specified_name214718:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_214595
text_vectorization_2_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:2 
	unknown_4:	2�
	unknown_5:	�!
	unknown_6:	��
	unknown_7:	�!
	unknown_8:	��
	unknown_9:	�"

unknown_10:	��

unknown_11:	�

unknown_12:	�


unknown_13:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_214092o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name214591:&"
 
_user_specified_name214589:&"
 
_user_specified_name214587:&"
 
_user_specified_name214585:&"
 
_user_specified_name214583:&
"
 
_user_specified_name214581:&	"
 
_user_specified_name214579:&"
 
_user_specified_name214577:&"
 
_user_specified_name214575:&"
 
_user_specified_name214573:&"
 
_user_specified_name214571:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_user_specified_name214563:_ [
#
_output_shapes
:���������
4
_user_specified_nametext_vectorization_2_input
��
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_214305
text_vectorization_2_inputS
Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handleT
Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value	0
,text_vectorization_2_string_lookup_2_equal_y3
/text_vectorization_2_string_lookup_2_selectv2_t	$
embedding_2_214159:2"
conv_214180:	2�
conv_214182:	�#
conv_214214:	��
conv_214216:	�#
conv_214248:	��
conv_214250:	�#
conv_214282:	��
conv_214284:	�!
dense_2_214299:	�

dense_2_214301:

identity��1_conv/StatefulPartitionedCall�2_conv/StatefulPartitionedCall�3_conv/StatefulPartitionedCall�4_conv/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�#embedding_2/StatefulPartitionedCall�Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2g
&text_vectorization_2/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_2/StringSplit/StringSplitV2StringSplitV2text_vectorization_2_input/text_vectorization_2/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_2/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_2/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_2/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_2/StringSplit/strided_sliceStridedSlice8text_vectorization_2/StringSplit/StringSplitV2:indices:0=text_vectorization_2/StringSplit/strided_slice/stack:output:0?text_vectorization_2/StringSplit/strided_slice/stack_1:output:0?text_vectorization_2/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_2/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_2/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_2/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_2/StringSplit/strided_slice_1StridedSlice6text_vectorization_2/StringSplit/StringSplitV2:shape:0?text_vectorization_2/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_2/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_2/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_2/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/SizeSize[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
: �
etext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Size:output:0ntext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
atext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
itext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
ctext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincountDenseBincountltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*

Tidx0*
T0	*#
_output_shapes
:����������
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumrtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/DenseBincount:output:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_2/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2LookupTableFindV2Otext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_table_handle7text_vectorization_2/StringSplit/StringSplitV2:values:0Ptext_vectorization_2_string_lookup_2_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
*text_vectorization_2/string_lookup_2/EqualEqual7text_vectorization_2/StringSplit/StringSplitV2:values:0,text_vectorization_2_string_lookup_2_equal_y*
T0*#
_output_shapes
:����������
-text_vectorization_2/string_lookup_2/SelectV2SelectV2.text_vectorization_2/string_lookup_2/Equal:z:0/text_vectorization_2_string_lookup_2_selectv2_tKtext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
-text_vectorization_2/string_lookup_2/IdentityIdentity6text_vectorization_2/string_lookup_2/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_2/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_2/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������       �
8text_vectorization_2/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_2/RaggedToTensor/Const:output:06text_vectorization_2/string_lookup_2/Identity:output:0:text_vectorization_2/RaggedToTensor/default_value:output:09text_vectorization_2/StringSplit/strided_slice_1:output:07text_vectorization_2/StringSplit/strided_slice:output:0*
Tindex0	*
Tshape0	*
T0	*(
_output_shapes
:����������*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2_214159*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_214158X
embedding_2/NotEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R �
embedding_2/NotEqualNotEqualAtext_vectorization_2/RaggedToTensor/RaggedTensorToTensor:result:0embedding_2/NotEqual/y:output:0*
T0	*(
_output_shapes
:�����������
1_conv/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0conv_214180conv_214182*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_1_conv_layer_call_and_return_conditional_losses_214179�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall'1_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_214196�
2_conv/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv_214214conv_214216*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_2_conv_layer_call_and_return_conditional_losses_214213�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall'2_conv/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_214230�
3_conv/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv_214248conv_214250*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_3_conv_layer_call_and_return_conditional_losses_214247�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall'3_conv/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_214264�
4_conv/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0conv_214282conv_214284*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_4_conv_layer_call_and_return_conditional_losses_214281�
*global_average_pooling1d_2/PartitionedCallPartitionedCall'4_conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *_
fZRX
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214098�
dense_2/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_2/PartitionedCall:output:0dense_2_214299dense_2_214301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_214298w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^1_conv/StatefulPartitionedCall^2_conv/StatefulPartitionedCall^3_conv/StatefulPartitionedCall^4_conv/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCallC^text_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : : : : : 2@
1_conv/StatefulPartitionedCall1_conv/StatefulPartitionedCall2@
2_conv/StatefulPartitionedCall2_conv/StatefulPartitionedCall2@
3_conv/StatefulPartitionedCall3_conv/StatefulPartitionedCall2@
4_conv/StatefulPartitionedCall4_conv/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2�
Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2Btext_vectorization_2/string_lookup_2/None_Lookup/LookupTableFindV2:&"
 
_user_specified_name214301:&"
 
_user_specified_name214299:&"
 
_user_specified_name214284:&"
 
_user_specified_name214282:&"
 
_user_specified_name214250:&
"
 
_user_specified_name214248:&	"
 
_user_specified_name214216:&"
 
_user_specified_name214214:&"
 
_user_specified_name214182:&"
 
_user_specified_name214180:&"
 
_user_specified_name214159:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_user_specified_nametable_handle:_ [
#
_output_shapes
:���������
4
_user_specified_nametext_vectorization_2_input"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
]
text_vectorization_2_input?
,serving_default_text_vectorization_2_input:0���������;
dense_20
StatefulPartitionedCall:0���������
tensorflow/serving/predict2,

asset_path_initializer:0Vocabulary.txt:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
;
	keras_api
_lookup_layer"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_random_generator"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias
 6_jit_compiled_convolution_op"
_tf_keras_layer
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator"
_tf_keras_layer
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses
M_random_generator"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
 V_jit_compiled_convolution_op"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias"
_tf_keras_layer
n
0
$1
%2
43
54
D5
E6
T7
U8
c9
d10"
trackable_list_wrapper
n
0
$1
%2
43
54
D5
E6
T7
U8
c9
d10"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
jtrace_0
ktrace_12�
-__inference_sequential_2_layer_call_fn_214438
-__inference_sequential_2_layer_call_fn_214473�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0zktrace_1
�
ltrace_0
mtrace_12�
H__inference_sequential_2_layer_call_and_return_conditional_losses_214305
H__inference_sequential_2_layer_call_and_return_conditional_losses_214403�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0zmtrace_1
�
n	capture_1
o	capture_2
p	capture_3B�
!__inference__wrapped_model_214092text_vectorization_2_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zn	capture_1zo	capture_2zp	capture_3
�
q
_variables
r_iterations
s_learning_rate
t_index_dict
u
_momentums
v_velocities
w_update_step_xla"
experimentalOptimizer
,
xserving_default"
signature_map
"
_generic_user_object
:
y	keras_api
zlookup_table"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_embedding_2_layer_call_fn_214603�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_embedding_2_layer_call_and_return_conditional_losses_214611�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(:&22embedding_2/embeddings
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_1_conv_layer_call_fn_214620�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_1_conv_layer_call_and_return_conditional_losses_214636�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"	2�21_conv/kernel
:�21_conv/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_dropout_6_layer_call_fn_214641
*__inference_dropout_6_layer_call_fn_214646�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_6_layer_call_and_return_conditional_losses_214658
E__inference_dropout_6_layer_call_and_return_conditional_losses_214663�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_2_conv_layer_call_fn_214672�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_2_conv_layer_call_and_return_conditional_losses_214688�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
%:#	��22_conv/kernel
:�22_conv/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_dropout_7_layer_call_fn_214693
*__inference_dropout_7_layer_call_fn_214698�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_7_layer_call_and_return_conditional_losses_214710
E__inference_dropout_7_layer_call_and_return_conditional_losses_214715�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_3_conv_layer_call_fn_214724�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_3_conv_layer_call_and_return_conditional_losses_214740�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
%:#	��23_conv/kernel
:�23_conv/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_dropout_8_layer_call_fn_214745
*__inference_dropout_8_layer_call_fn_214750�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_dropout_8_layer_call_and_return_conditional_losses_214762
E__inference_dropout_8_layer_call_and_return_conditional_losses_214767�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_4_conv_layer_call_fn_214776�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_4_conv_layer_call_and_return_conditional_losses_214792�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
%:#	��24_conv/kernel
:�24_conv/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
;__inference_global_average_pooling1d_2_layer_call_fn_214797�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214803�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_2_layer_call_fn_214812�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_2_layer_call_and_return_conditional_losses_214823�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�
2dense_2/kernel
:
2dense_2/bias
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
n	capture_1
o	capture_2
p	capture_3B�
-__inference_sequential_2_layer_call_fn_214438text_vectorization_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zn	capture_1zo	capture_2zp	capture_3
�
n	capture_1
o	capture_2
p	capture_3B�
-__inference_sequential_2_layer_call_fn_214473text_vectorization_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zn	capture_1zo	capture_2zp	capture_3
�
n	capture_1
o	capture_2
p	capture_3B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_214305text_vectorization_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zn	capture_1zo	capture_2zp	capture_3
�
n	capture_1
o	capture_2
p	capture_3B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_214403text_vectorization_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zn	capture_1zo	capture_2zp	capture_3
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
�
r0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
y
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10"
trackable_list_wrapper
y
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
n	capture_1
o	capture_2
p	capture_3B�
$__inference_signature_wrapper_214595text_vectorization_2_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 /

kwonlyargs!�
jtext_vectorization_2_input
kwonlydefaults
 
annotations� *
 zn	capture_1zo	capture_2zp	capture_3
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_embedding_2_layer_call_fn_214603inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_embedding_2_layer_call_and_return_conditional_losses_214611inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_1_conv_layer_call_fn_214620inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_1_conv_layer_call_and_return_conditional_losses_214636inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dropout_6_layer_call_fn_214641inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_dropout_6_layer_call_fn_214646inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_6_layer_call_and_return_conditional_losses_214658inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_6_layer_call_and_return_conditional_losses_214663inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_2_conv_layer_call_fn_214672inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_2_conv_layer_call_and_return_conditional_losses_214688inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dropout_7_layer_call_fn_214693inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_dropout_7_layer_call_fn_214698inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_7_layer_call_and_return_conditional_losses_214710inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_7_layer_call_and_return_conditional_losses_214715inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_3_conv_layer_call_fn_214724inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_3_conv_layer_call_and_return_conditional_losses_214740inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dropout_8_layer_call_fn_214745inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_dropout_8_layer_call_fn_214750inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_8_layer_call_and_return_conditional_losses_214762inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dropout_8_layer_call_and_return_conditional_losses_214767inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_4_conv_layer_call_fn_214776inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_4_conv_layer_call_and_return_conditional_losses_214792inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
;__inference_global_average_pooling1d_2_layer_call_fn_214797inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214803inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_2_layer_call_fn_214812inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_2_layer_call_and_return_conditional_losses_214823inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
-:+22Adam/m/embedding_2/embeddings
-:+22Adam/v/embedding_2/embeddings
):'	2�2Adam/m/1_conv/kernel
):'	2�2Adam/v/1_conv/kernel
:�2Adam/m/1_conv/bias
:�2Adam/v/1_conv/bias
*:(	��2Adam/m/2_conv/kernel
*:(	��2Adam/v/2_conv/kernel
:�2Adam/m/2_conv/bias
:�2Adam/v/2_conv/bias
*:(	��2Adam/m/3_conv/kernel
*:(	��2Adam/v/3_conv/kernel
:�2Adam/m/3_conv/bias
:�2Adam/v/3_conv/bias
*:(	��2Adam/m/4_conv/kernel
*:(	��2Adam/v/4_conv/kernel
:�2Adam/m/4_conv/bias
:�2Adam/v/4_conv/bias
&:$	�
2Adam/m/dense_2/kernel
&:$	�
2Adam/v/dense_2/kernel
:
2Adam/m/dense_2/bias
:
2Adam/v/dense_2/bias
.
�	_filename"
_generic_user_object
�
�trace_02�
__inference__creator_214827�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_214833�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_214837�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
* 
�B�
__inference__creator_214827"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_0B�
__inference__initializer_214833"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_0
�B�
__inference__destroyer_214837"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� �
B__inference_1_conv_layer_call_and_return_conditional_losses_214636n$%4�1
*�'
%�"
inputs����������2
� "2�/
(�%
tensor_0�����������
� �
'__inference_1_conv_layer_call_fn_214620c$%4�1
*�'
%�"
inputs����������2
� "'�$
unknown������������
B__inference_2_conv_layer_call_and_return_conditional_losses_214688o455�2
+�(
&�#
inputs�����������
� "2�/
(�%
tensor_0�����������
� �
'__inference_2_conv_layer_call_fn_214672d455�2
+�(
&�#
inputs�����������
� "'�$
unknown������������
B__inference_3_conv_layer_call_and_return_conditional_losses_214740oDE5�2
+�(
&�#
inputs�����������
� "2�/
(�%
tensor_0�����������
� �
'__inference_3_conv_layer_call_fn_214724dDE5�2
+�(
&�#
inputs�����������
� "'�$
unknown������������
B__inference_4_conv_layer_call_and_return_conditional_losses_214792oTU5�2
+�(
&�#
inputs�����������
� "2�/
(�%
tensor_0�����������
� �
'__inference_4_conv_layer_call_fn_214776dTU5�2
+�(
&�#
inputs�����������
� "'�$
unknown�����������@
__inference__creator_214827!�

� 
� "�
unknown B
__inference__destroyer_214837!�

� 
� "�
unknown I
__inference__initializer_214833&�z�

� 
� "�
unknown �
!__inference__wrapped_model_214092�znop$%45DETUcd?�<
5�2
0�-
text_vectorization_2_input���������
� "1�.
,
dense_2!�
dense_2���������
�
C__inference_dense_2_layer_call_and_return_conditional_losses_214823dcd0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������

� �
(__inference_dense_2_layer_call_fn_214812Ycd0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
E__inference_dropout_6_layer_call_and_return_conditional_losses_214658o9�6
/�,
&�#
inputs�����������
p
� "2�/
(�%
tensor_0�����������
� �
E__inference_dropout_6_layer_call_and_return_conditional_losses_214663o9�6
/�,
&�#
inputs�����������
p 
� "2�/
(�%
tensor_0�����������
� �
*__inference_dropout_6_layer_call_fn_214641d9�6
/�,
&�#
inputs�����������
p
� "'�$
unknown������������
*__inference_dropout_6_layer_call_fn_214646d9�6
/�,
&�#
inputs�����������
p 
� "'�$
unknown������������
E__inference_dropout_7_layer_call_and_return_conditional_losses_214710o9�6
/�,
&�#
inputs�����������
p
� "2�/
(�%
tensor_0�����������
� �
E__inference_dropout_7_layer_call_and_return_conditional_losses_214715o9�6
/�,
&�#
inputs�����������
p 
� "2�/
(�%
tensor_0�����������
� �
*__inference_dropout_7_layer_call_fn_214693d9�6
/�,
&�#
inputs�����������
p
� "'�$
unknown������������
*__inference_dropout_7_layer_call_fn_214698d9�6
/�,
&�#
inputs�����������
p 
� "'�$
unknown������������
E__inference_dropout_8_layer_call_and_return_conditional_losses_214762o9�6
/�,
&�#
inputs�����������
p
� "2�/
(�%
tensor_0�����������
� �
E__inference_dropout_8_layer_call_and_return_conditional_losses_214767o9�6
/�,
&�#
inputs�����������
p 
� "2�/
(�%
tensor_0�����������
� �
*__inference_dropout_8_layer_call_fn_214745d9�6
/�,
&�#
inputs�����������
p
� "'�$
unknown������������
*__inference_dropout_8_layer_call_fn_214750d9�6
/�,
&�#
inputs�����������
p 
� "'�$
unknown������������
G__inference_embedding_2_layer_call_and_return_conditional_losses_214611h0�-
&�#
!�
inputs����������	
� "1�.
'�$
tensor_0����������2
� �
,__inference_embedding_2_layer_call_fn_214603]0�-
&�#
!�
inputs����������	
� "&�#
unknown����������2�
V__inference_global_average_pooling1d_2_layer_call_and_return_conditional_losses_214803�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
;__inference_global_average_pooling1d_2_layer_call_fn_214797wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
H__inference_sequential_2_layer_call_and_return_conditional_losses_214305�znop$%45DETUcdG�D
=�:
0�-
text_vectorization_2_input���������
p

 
� ",�)
"�
tensor_0���������

� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_214403�znop$%45DETUcdG�D
=�:
0�-
text_vectorization_2_input���������
p 

 
� ",�)
"�
tensor_0���������

� �
-__inference_sequential_2_layer_call_fn_214438}znop$%45DETUcdG�D
=�:
0�-
text_vectorization_2_input���������
p

 
� "!�
unknown���������
�
-__inference_sequential_2_layer_call_fn_214473}znop$%45DETUcdG�D
=�:
0�-
text_vectorization_2_input���������
p 

 
� "!�
unknown���������
�
$__inference_signature_wrapper_214595�znop$%45DETUcd]�Z
� 
S�P
N
text_vectorization_2_input0�-
text_vectorization_2_input���������"1�.
,
dense_2!�
dense_2���������
