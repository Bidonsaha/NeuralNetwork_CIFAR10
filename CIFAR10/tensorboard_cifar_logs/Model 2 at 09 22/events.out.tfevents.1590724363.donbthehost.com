       �K"	  ��!��Abrain.Event:2�fG���     ��ڏ	d���!��A"��
u
m1_hidden1_inputPlaceholder*
dtype0*(
_output_shapes
:����������*
shape:����������
p
m1_hidden1/random_uniform/shapeConst*
valueB"   �   *
dtype0*
_output_shapes
:
b
m1_hidden1/random_uniform/minConst*
valueB
 *�\1�*
dtype0*
_output_shapes
: 
b
m1_hidden1/random_uniform/maxConst*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
�
'm1_hidden1/random_uniform/RandomUniformRandomUniformm1_hidden1/random_uniform/shape* 
_output_shapes
:
��*
seed2��0*
seed�*
T0*
dtype0
�
m1_hidden1/random_uniform/subSubm1_hidden1/random_uniform/maxm1_hidden1/random_uniform/min*
_output_shapes
: *
T0
�
m1_hidden1/random_uniform/mulMul'm1_hidden1/random_uniform/RandomUniformm1_hidden1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
m1_hidden1/random_uniformAddm1_hidden1/random_uniform/mulm1_hidden1/random_uniform/min*
T0* 
_output_shapes
:
��
�
m1_hidden1/kernelVarHandleOp*"
shared_namem1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel*
	container *
shape:
��*
dtype0*
_output_shapes
: 
s
2m1_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 
�
m1_hidden1/kernel/AssignAssignVariableOpm1_hidden1/kernelm1_hidden1/random_uniform*$
_class
loc:@m1_hidden1/kernel*
dtype0
�
%m1_hidden1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden1/kernel* 
_output_shapes
:
��*$
_class
loc:@m1_hidden1/kernel*
dtype0
_
m1_hidden1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
�
m1_hidden1/biasVarHandleOp*
	container *
shape:�*
dtype0*
_output_shapes
: * 
shared_namem1_hidden1/bias*"
_class
loc:@m1_hidden1/bias
o
0m1_hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1/bias*
_output_shapes
: 
~
m1_hidden1/bias/AssignAssignVariableOpm1_hidden1/biasm1_hidden1/Const*"
_class
loc:@m1_hidden1/bias*
dtype0
�
#m1_hidden1/bias/Read/ReadVariableOpReadVariableOpm1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
dtype0*
_output_shapes	
:�
t
 m1_hidden1/MatMul/ReadVariableOpReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:
��
�
m1_hidden1/MatMulMatMulm1_hidden1_input m1_hidden1/MatMul/ReadVariableOp*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
n
!m1_hidden1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:�
�
m1_hidden1/BiasAddBiasAddm1_hidden1/MatMul!m1_hidden1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:����������*
T0
^
m1_hidden1/ReluRelum1_hidden1/BiasAdd*(
_output_shapes
:����������*
T0
p
m1_hidden2/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
b
m1_hidden2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
b
m1_hidden2/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
'm1_hidden2/random_uniform/RandomUniformRandomUniformm1_hidden2/random_uniform/shape*
seed�*
T0*
dtype0*
_output_shapes
:	�@*
seed2��
�
m1_hidden2/random_uniform/subSubm1_hidden2/random_uniform/maxm1_hidden2/random_uniform/min*
_output_shapes
: *
T0
�
m1_hidden2/random_uniform/mulMul'm1_hidden2/random_uniform/RandomUniformm1_hidden2/random_uniform/sub*
_output_shapes
:	�@*
T0
�
m1_hidden2/random_uniformAddm1_hidden2/random_uniform/mulm1_hidden2/random_uniform/min*
_output_shapes
:	�@*
T0
�
m1_hidden2/kernelVarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *"
shared_namem1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel
s
2m1_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 
�
m1_hidden2/kernel/AssignAssignVariableOpm1_hidden2/kernelm1_hidden2/random_uniform*$
_class
loc:@m1_hidden2/kernel*
dtype0
�
%m1_hidden2/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
dtype0*
_output_shapes
:	�@
]
m1_hidden2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
�
m1_hidden2/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namem1_hidden2/bias*"
_class
loc:@m1_hidden2/bias*
	container *
shape:@
o
0m1_hidden2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2/bias*
_output_shapes
: 
~
m1_hidden2/bias/AssignAssignVariableOpm1_hidden2/biasm1_hidden2/Const*"
_class
loc:@m1_hidden2/bias*
dtype0
�
#m1_hidden2/bias/Read/ReadVariableOpReadVariableOpm1_hidden2/bias*"
_class
loc:@m1_hidden2/bias*
dtype0*
_output_shapes
:@
s
 m1_hidden2/MatMul/ReadVariableOpReadVariableOpm1_hidden2/kernel*
_output_shapes
:	�@*
dtype0
�
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( 
m
!m1_hidden2/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@
�
m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������@*
T0
]
m1_hidden2/ReluRelum1_hidden2/BiasAdd*'
_output_shapes
:���������@*
T0
p
m1_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m1_hidden3/random_uniform/minConst*
valueB
 *�7��*
dtype0*
_output_shapes
: 
b
m1_hidden3/random_uniform/maxConst*
valueB
 *�7�>*
dtype0*
_output_shapes
: 
�
'm1_hidden3/random_uniform/RandomUniformRandomUniformm1_hidden3/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@*
seed2���*
seed�
�
m1_hidden3/random_uniform/subSubm1_hidden3/random_uniform/maxm1_hidden3/random_uniform/min*
T0*
_output_shapes
: 
�
m1_hidden3/random_uniform/mulMul'm1_hidden3/random_uniform/RandomUniformm1_hidden3/random_uniform/sub*
_output_shapes

:@*
T0
�
m1_hidden3/random_uniformAddm1_hidden3/random_uniform/mulm1_hidden3/random_uniform/min*
_output_shapes

:@*
T0
�
m1_hidden3/kernelVarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *"
shared_namem1_hidden3/kernel*$
_class
loc:@m1_hidden3/kernel
s
2m1_hidden3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3/kernel*
_output_shapes
: 
�
m1_hidden3/kernel/AssignAssignVariableOpm1_hidden3/kernelm1_hidden3/random_uniform*$
_class
loc:@m1_hidden3/kernel*
dtype0
�
%m1_hidden3/kernel/Read/ReadVariableOpReadVariableOpm1_hidden3/kernel*
_output_shapes

:@*$
_class
loc:@m1_hidden3/kernel*
dtype0
]
m1_hidden3/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
�
m1_hidden3/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namem1_hidden3/bias*"
_class
loc:@m1_hidden3/bias*
	container *
shape:
o
0m1_hidden3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3/bias*
_output_shapes
: 
~
m1_hidden3/bias/AssignAssignVariableOpm1_hidden3/biasm1_hidden3/Const*"
_class
loc:@m1_hidden3/bias*
dtype0
�
#m1_hidden3/bias/Read/ReadVariableOpReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:*"
_class
loc:@m1_hidden3/bias
r
 m1_hidden3/MatMul/ReadVariableOpReadVariableOpm1_hidden3/kernel*
dtype0*
_output_shapes

:@
�
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:
�
m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*'
_output_shapes
:���������*
T0*
data_formatNHWC
]
m1_hidden3/ReluRelum1_hidden3/BiasAdd*
T0*'
_output_shapes
:���������
o
m1_output/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
a
m1_output/random_uniform/minConst*
valueB
 *����*
dtype0*
_output_shapes
: 
a
m1_output/random_uniform/maxConst*
_output_shapes
: *
valueB
 *���>*
dtype0
�
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
T0*
dtype0*
_output_shapes

:
*
seed2���*
seed�
�
m1_output/random_uniform/subSubm1_output/random_uniform/maxm1_output/random_uniform/min*
_output_shapes
: *
T0
�
m1_output/random_uniform/mulMul&m1_output/random_uniform/RandomUniformm1_output/random_uniform/sub*
T0*
_output_shapes

:

�
m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
T0*
_output_shapes

:

�
m1_output/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namem1_output/kernel*#
_class
loc:@m1_output/kernel*
	container *
shape
:

q
1m1_output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output/kernel*
_output_shapes
: 
�
m1_output/kernel/AssignAssignVariableOpm1_output/kernelm1_output/random_uniform*#
_class
loc:@m1_output/kernel*
dtype0
�
$m1_output/kernel/Read/ReadVariableOpReadVariableOpm1_output/kernel*
_output_shapes

:
*#
_class
loc:@m1_output/kernel*
dtype0
\
m1_output/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m1_output/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namem1_output/bias*!
_class
loc:@m1_output/bias*
	container *
shape:

m
/m1_output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output/bias*
_output_shapes
: 
z
m1_output/bias/AssignAssignVariableOpm1_output/biasm1_output/Const*!
_class
loc:@m1_output/bias*
dtype0
�
"m1_output/bias/Read/ReadVariableOpReadVariableOpm1_output/bias*
_output_shapes
:
*!
_class
loc:@m1_output/bias*
dtype0
p
m1_output/MatMul/ReadVariableOpReadVariableOpm1_output/kernel*
dtype0*
_output_shapes

:

�
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*'
_output_shapes
:���������
*
transpose_a( *
transpose_b( *
T0
k
 m1_output/BiasAdd/ReadVariableOpReadVariableOpm1_output/bias*
dtype0*
_output_shapes
:

�
m1_output/BiasAddBiasAddm1_output/MatMul m1_output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������

a
m1_output/SoftmaxSoftmaxm1_output/BiasAdd*
T0*'
_output_shapes
:���������

�
)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
�
Adam/iterationsVarHandleOp* 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 
�
Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	
�
#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
�
,Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o�:*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
�
Adam/learning_rateVarHandleOp*#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
�
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0
�
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
�
%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
�
Adam/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
�
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
�
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 
�
%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w�?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
�
Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
�
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0
�
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
�
$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
�

Adam/decayVarHandleOp*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
�
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
�
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
�
m1_output_targetPlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
s
m1_output_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
J
ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
U
total/AssignAssignVariableOptotalConst*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
L
Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
�
countVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
W
count/AssignAssignVariableOpcountConst_1*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: *
_class

loc:@count
�
metrics/accuracy/SqueezeSqueezem1_output_target*#
_output_shapes
:���������*
squeeze_dims

���������*
T0
l
!metrics/accuracy/ArgMax/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
�
metrics/accuracy/CastCastmetrics/accuracy/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:���������*

DstT0
~
metrics/accuracy/EqualEqualmetrics/accuracy/Squeezemetrics/accuracy/Cast*
T0*#
_output_shapes
:���������
�
metrics/accuracy/Cast_1Castmetrics/accuracy/Equal*
Truncate( *#
_output_shapes
:���������*

DstT0*

SrcT0

`
metrics/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics/accuracy/SumSummetrics/accuracy/Cast_1metrics/accuracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
�
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
g
metrics/accuracy/SizeSizemetrics/accuracy/Cast_1*
out_type0*
_output_shapes
: *
T0
v
metrics/accuracy/Cast_2Castmetrics/accuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
j
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_2*
dtype0
�
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
!metrics/accuracy/ReadVariableOp_2ReadVariableOptotal ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
'metrics/accuracy/truediv/ReadVariableOpReadVariableOpcount ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
metrics/accuracy/truedivRealDiv!metrics/accuracy/ReadVariableOp_2'metrics/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
`
metrics/accuracy/IdentityIdentitymetrics/accuracy/truediv*
T0*
_output_shapes
: 
~
9loss/m1_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
~
9loss/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
7loss/m1_output_loss/sparse_categorical_crossentropy/subSub9loss/m1_output_loss/sparse_categorical_crossentropy/sub/x9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
�
Iloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:���������

�
Aloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:���������

�
7loss/m1_output_loss/sparse_categorical_crossentropy/LogLogAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:���������

�
Aloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:���������*

DstT0	
�
Closs/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape7loss/m1_output_loss/sparse_categorical_crossentropy/LogCloss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������

�
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
�
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":���������:���������
*
Tlabels0	
�
Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
�
Gloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
Iloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
loss/mulMul
loss/mul/xIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_output_shapes
: 
J
Const_2Const*
valueB *
dtype0*
_output_shapes
: 
]
MeanMeanloss/mulConst_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
y
training/Adam/gradients/ShapeConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  �?*
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
�
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
	loc:@Mean*
_output_shapes
: 
�
/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
�
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
Tshape0*
_class
	loc:@Mean*
_output_shapes
: *
T0
�
'training/Adam/gradients/Mean_grad/ConstConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
�
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*
_class
	loc:@Mean
�
)training/Adam/gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *  �?*
_class
	loc:@Mean
�
)training/Adam/gradients/Mean_grad/truedivRealDiv&training/Adam/gradients/Mean_grad/Tile)training/Adam/gradients/Mean_grad/Const_1*
T0*
_class
	loc:@Mean*
_output_shapes
: 
�
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
+training/Adam/gradients/loss/mul_grad/Mul_1Mul)training/Adam/gradients/Mean_grad/truediv
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 
�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:���������:���������
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:���������*

Tmultiples0
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgshtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:���������:���������
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:���������*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weightsgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*#
_output_shapes
:���������*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
"training/Adam/gradients/zeros_like	ZerosLike}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������

�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������
*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: 
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:���������*

Tdim0*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������

�
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
_output_shapes
:*
T0*
out_type0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*
Tshape0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:���������

�
_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valuec^training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������

�
Xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulbtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������

�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
T0
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
valueB *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0
�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
ttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapedtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output/Softmax*
T0*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������
*
T0*

index_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:���������:���������*
T0
�
mtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
otraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������
*
T0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
: 
�
2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

�
Dtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
���������*$
_class
loc:@m1_output/Softmax*
dtype0
�
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������*

Tidx0*
	keep_dims(
�
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

�
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

�
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0*$
_class
loc:@m1_output/BiasAdd
�
4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*
T0*#
_class
loc:@m1_output/MatMul*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1MatMulm1_hidden3/Relu4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*#
_class
loc:@m1_output/MatMul*
_output_shapes

:
*
transpose_a(*
transpose_b( 
�
5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGradReluGrad4training/Adam/gradients/m1_output/MatMul_grad/MatMulm1_hidden3/Relu*
T0*"
_class
loc:@m1_hidden3/Relu*'
_output_shapes
:���������
�
;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
_output_shapes
:*
T0*%
_class
loc:@m1_hidden3/BiasAdd*
data_formatNHWC
�
5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad m1_hidden3/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden3/MatMul*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(
�
7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1MatMulm1_hidden2/Relu5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden3/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( 
�
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*
T0*"
_class
loc:@m1_hidden2/Relu*'
_output_shapes
:���������@
�
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad m1_hidden2/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m1_hidden2/MatMul*(
_output_shapes
:����������*
transpose_a( 
�
7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1MatMulm1_hidden1/Relu5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
_output_shapes
:	�@*
transpose_a(*
transpose_b( *
T0*$
_class
loc:@m1_hidden2/MatMul
�
5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulm1_hidden1/Relu*
T0*"
_class
loc:@m1_hidden1/Relu*(
_output_shapes
:����������
�
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�
�
5training/Adam/gradients/m1_hidden1/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad m1_hidden1/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden1/MatMul*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad* 
_output_shapes
:
��*
transpose_a(*
transpose_b( *
T0*$
_class
loc:@m1_hidden1/MatMul
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	
�
training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
X
training/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
_output_shapes
: *
T0
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
_output_shapes
: *
T0
�
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
i
training/Adam/ReadVariableOp_1ReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
_output_shapes
: *
T0
r
!training/Adam/m_0/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   �   
\
training/Adam/m_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const*

index_type0* 
_output_shapes
:
��*
T0
�
training/Adam/m_0_1VarHandleOp*&
_class
loc:@training/Adam/m_0_1*
	container *
shape:
��*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_0_1
w
4training/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 
�
training/Adam/m_0_1/AssignAssignVariableOptraining/Adam/m_0_1training/Adam/m_0*
dtype0*&
_class
loc:@training/Adam/m_0_1
�
'training/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
dtype0* 
_output_shapes
:
��
`
training/Adam/m_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/m_1_1VarHandleOp*
	container *
shape:�*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1
w
4training/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 
�
training/Adam/m_1_1/AssignAssignVariableOptraining/Adam/m_1_1training/Adam/m_1*&
_class
loc:@training/Adam/m_1_1*
dtype0
�
'training/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
_output_shapes	
:�*&
_class
loc:@training/Adam/m_1_1*
dtype0
r
!training/Adam/m_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"�   @   
\
training/Adam/m_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/m_2_1VarHandleOp*$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
	container *
shape:	�@*
dtype0*
_output_shapes
: 
w
4training/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 
�
training/Adam/m_2_1/AssignAssignVariableOptraining/Adam/m_2_1training/Adam/m_2*&
_class
loc:@training/Adam/m_2_1*
dtype0
�
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*
dtype0*
_output_shapes
:	�@*&
_class
loc:@training/Adam/m_2_1
^
training/Adam/m_3Const*
_output_shapes
:@*
valueB@*    *
dtype0
�
training/Adam/m_3_1VarHandleOp*&
_class
loc:@training/Adam/m_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_3_1
w
4training/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 
�
training/Adam/m_3_1/AssignAssignVariableOptraining/Adam/m_3_1training/Adam/m_3*&
_class
loc:@training/Adam/m_3_1*
dtype0
�
'training/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
dtype0*
_output_shapes
:@
r
!training/Adam/m_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
\
training/Adam/m_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
�
training/Adam/m_4_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_4_1*&
_class
loc:@training/Adam/m_4_1*
	container *
shape
:@
w
4training/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 
�
training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*&
_class
loc:@training/Adam/m_4_1*
dtype0
�
'training/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_4_1*&
_class
loc:@training/Adam/m_4_1*
dtype0*
_output_shapes

:@
^
training/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/m_5_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1*
	container *
shape:
w
4training/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
�
training/Adam/m_5_1/AssignAssignVariableOptraining/Adam/m_5_1training/Adam/m_5*&
_class
loc:@training/Adam/m_5_1*
dtype0
�
'training/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1*
dtype0*
_output_shapes
:
f
training/Adam/m_6Const*
dtype0*
_output_shapes

:
*
valueB
*    
�
training/Adam/m_6_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_6_1*&
_class
loc:@training/Adam/m_6_1*
	container *
shape
:

w
4training/Adam/m_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_6_1*
_output_shapes
: 
�
training/Adam/m_6_1/AssignAssignVariableOptraining/Adam/m_6_1training/Adam/m_6*&
_class
loc:@training/Adam/m_6_1*
dtype0
�
'training/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_6_1*
_output_shapes

:
*&
_class
loc:@training/Adam/m_6_1*
dtype0
^
training/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training/Adam/m_7_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_7_1*&
_class
loc:@training/Adam/m_7_1*
	container *
shape:

w
4training/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_7_1*
_output_shapes
: 
�
training/Adam/m_7_1/AssignAssignVariableOptraining/Adam/m_7_1training/Adam/m_7*
dtype0*&
_class
loc:@training/Adam/m_7_1
�
'training/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_7_1*
_output_shapes
:
*&
_class
loc:@training/Adam/m_7_1*
dtype0
r
!training/Adam/v_0/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
\
training/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training/Adam/v_0_1VarHandleOp*$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
��*
dtype0*
_output_shapes
: 
w
4training/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 
�
training/Adam/v_0_1/AssignAssignVariableOptraining/Adam/v_0_1training/Adam/v_0*&
_class
loc:@training/Adam/v_0_1*
dtype0
�
'training/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
`
training/Adam/v_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/v_1_1VarHandleOp*
	container *
shape:�*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1
w
4training/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
�
training/Adam/v_1_1/AssignAssignVariableOptraining/Adam/v_1_1training/Adam/v_1*&
_class
loc:@training/Adam/v_1_1*
dtype0
�
'training/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
dtype0*
_output_shapes	
:�
r
!training/Adam/v_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
\
training/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/v_2_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
	container *
shape:	�@
w
4training/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 
�
training/Adam/v_2_1/AssignAssignVariableOptraining/Adam/v_2_1training/Adam/v_2*&
_class
loc:@training/Adam/v_2_1*
dtype0
�
'training/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
^
training/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/v_3_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_3_1*&
_class
loc:@training/Adam/v_3_1*
	container *
shape:@
w
4training/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 
�
training/Adam/v_3_1/AssignAssignVariableOptraining/Adam/v_3_1training/Adam/v_3*&
_class
loc:@training/Adam/v_3_1*
dtype0
�
'training/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_3_1*&
_class
loc:@training/Adam/v_3_1*
dtype0*
_output_shapes
:@
r
!training/Adam/v_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
\
training/Adam/v_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/v_4Fill!training/Adam/v_4/shape_as_tensortraining/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
�
training/Adam/v_4_1VarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1
w
4training/Adam/v_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 
�
training/Adam/v_4_1/AssignAssignVariableOptraining/Adam/v_4_1training/Adam/v_4*
dtype0*&
_class
loc:@training/Adam/v_4_1
�
'training/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1*
dtype0*
_output_shapes

:@
^
training/Adam/v_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/v_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1*
	container 
w
4training/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 
�
training/Adam/v_5_1/AssignAssignVariableOptraining/Adam/v_5_1training/Adam/v_5*&
_class
loc:@training/Adam/v_5_1*
dtype0
�
'training/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1*
dtype0*
_output_shapes
:
f
training/Adam/v_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training/Adam/v_6_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_6_1*&
_class
loc:@training/Adam/v_6_1*
	container *
shape
:

w
4training/Adam/v_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_6_1*
_output_shapes
: 
�
training/Adam/v_6_1/AssignAssignVariableOptraining/Adam/v_6_1training/Adam/v_6*&
_class
loc:@training/Adam/v_6_1*
dtype0
�
'training/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_6_1*&
_class
loc:@training/Adam/v_6_1*
dtype0*
_output_shapes

:

^
training/Adam/v_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training/Adam/v_7_1VarHandleOp*$
shared_nametraining/Adam/v_7_1*&
_class
loc:@training/Adam/v_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
w
4training/Adam/v_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_7_1*
_output_shapes
: 
�
training/Adam/v_7_1/AssignAssignVariableOptraining/Adam/v_7_1training/Adam/v_7*&
_class
loc:@training/Adam/v_7_1*
dtype0
�
'training/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_7_1*&
_class
loc:@training/Adam/v_7_1*
dtype0*
_output_shapes
:

n
$training/Adam/vhat_0/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_0_1VarHandleOp*'
shared_nametraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 
�
training/Adam/vhat_0_1/AssignAssignVariableOptraining/Adam/vhat_0_1training/Adam/vhat_0*)
_class
loc:@training/Adam/vhat_0_1*
dtype0
�
*training/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_0_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_0_1
n
$training/Adam/vhat_1/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_1_1VarHandleOp*)
_class
loc:@training/Adam/vhat_1_1*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_1_1
}
7training/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 
�
training/Adam/vhat_1_1/AssignAssignVariableOptraining/Adam/vhat_1_1training/Adam/vhat_1*)
_class
loc:@training/Adam/vhat_1_1*
dtype0
�
*training/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_1_1*)
_class
loc:@training/Adam/vhat_1_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_2/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_2_1VarHandleOp*)
_class
loc:@training/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_2_1
}
7training/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
�
training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*)
_class
loc:@training/Adam/vhat_2_1*
dtype0
�
*training/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_3/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_3Fill$training/Adam/vhat_3/shape_as_tensortraining/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_3_1VarHandleOp*
_output_shapes
: *'
shared_nametraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1*
	container *
shape:*
dtype0
}
7training/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 
�
training/Adam/vhat_3_1/AssignAssignVariableOptraining/Adam/vhat_3_1training/Adam/vhat_3*)
_class
loc:@training/Adam/vhat_3_1*
dtype0
�
*training/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_4_1VarHandleOp*'
shared_nametraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 
�
training/Adam/vhat_4_1/AssignAssignVariableOptraining/Adam/vhat_4_1training/Adam/vhat_4*)
_class
loc:@training/Adam/vhat_4_1*
dtype0
�
*training/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_4_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_4_1
n
$training/Adam/vhat_5/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_5_1VarHandleOp*)
_class
loc:@training/Adam/vhat_5_1*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_5_1
}
7training/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 
�
training/Adam/vhat_5_1/AssignAssignVariableOptraining/Adam/vhat_5_1training/Adam/vhat_5*)
_class
loc:@training/Adam/vhat_5_1*
dtype0
�
*training/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_6/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_6/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_6_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_6_1*)
_class
loc:@training/Adam/vhat_6_1
}
7training/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_6_1*
_output_shapes
: 
�
training/Adam/vhat_6_1/AssignAssignVariableOptraining/Adam/vhat_6_1training/Adam/vhat_6*)
_class
loc:@training/Adam/vhat_6_1*
dtype0
�
*training/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_6_1*)
_class
loc:@training/Adam/vhat_6_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_7/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_7Fill$training/Adam/vhat_7/shape_as_tensortraining/Adam/vhat_7/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_7_1VarHandleOp*'
shared_nametraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_7_1*
_output_shapes
: 
�
training/Adam/vhat_7_1/AssignAssignVariableOptraining/Adam/vhat_7_1training/Adam/vhat_7*
dtype0*)
_class
loc:@training/Adam/vhat_7_1
�
*training/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/m_0_1*
dtype0* 
_output_shapes
:
��
�
training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:
��
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
�
training/Adam/mul_2Multraining/Adam/sub_27training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2* 
_output_shapes
:
��*
T0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
�
training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp* 
_output_shapes
:
��*
T0
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
�
training/Adam/SquareSquare7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0* 
_output_shapes
:
��
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0* 
_output_shapes
:
��
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1* 
_output_shapes
:
��*
T0
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0* 
_output_shapes
:
��
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0* 
_output_shapes
:
��
f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0* 
_output_shapes
:
��
Z
training/Adam/add_3/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y* 
_output_shapes
:
��*
T0
w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0* 
_output_shapes
:
��
r
training/Adam/ReadVariableOp_6ReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:
��
~
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0* 
_output_shapes
:
��
i
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/m_0_1training/Adam/add_1*
dtype0
�
training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/m_0_1^training/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:
��
k
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/v_0_1training/Adam/add_2*
dtype0
�
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/v_0_1!^training/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:
��
i
 training/Adam/AssignVariableOp_2AssignVariableOpm1_hidden1/kerneltraining/Adam/sub_4*
dtype0
�
training/Adam/ReadVariableOp_9ReadVariableOpm1_hidden1/kernel!^training/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:
��
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes	
:�
�
training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:�
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
�
training/Adam/mul_7Multraining/Adam/sub_5;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes	
:�
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/v_1_1*
dtype0*
_output_shapes	
:�
�
training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
_output_shapes	
:�*
T0
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0
�
training/Adam/Square_1Square;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes	
:�*
T0
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes	
:�
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes	
:�
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*
_output_shapes	
:�
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes	
:�
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes	
:�*
T0
Z
training/Adam/add_6/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes	
:�
s
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes	
:�*
T0
l
training/Adam/ReadVariableOp_14ReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:�
z
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
_output_shapes	
:�*
T0
k
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/m_1_1training/Adam/add_4*
dtype0
�
training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/m_1_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:�
k
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/v_1_1training/Adam/add_5*
dtype0
�
training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/v_1_1!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:�
g
 training/Adam/AssignVariableOp_5AssignVariableOpm1_hidden1/biastraining/Adam/sub_7*
dtype0
�
training/Adam/ReadVariableOp_17ReadVariableOpm1_hidden1/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:�
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
�
training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
_output_shapes
:	�@*
T0
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
�
training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes
:	�@
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
�
training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
_output_shapes
:	�@*
T0
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 
�
training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	�@
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	�@
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:	�@
Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*
_output_shapes
:	�@
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes
:	�@*
T0
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	�@
Z
training/Adam/add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	�@
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:	�@
r
training/Adam/ReadVariableOp_22ReadVariableOpm1_hidden2/kernel*
dtype0*
_output_shapes
:	�@

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
_output_shapes
:	�@*
T0
k
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/m_2_1training/Adam/add_7*
dtype0
�
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/m_2_1!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	�@
k
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/v_2_1training/Adam/add_8*
dtype0
�
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/v_2_1!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	�@
j
 training/Adam/AssignVariableOp_8AssignVariableOpm1_hidden2/kerneltraining/Adam/sub_10*
dtype0
�
training/Adam/ReadVariableOp_25ReadVariableOpm1_hidden2/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	�@
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/m_3_1*
dtype0*
_output_shapes
:@
�
training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
�
training/Adam/mul_17Multraining/Adam/sub_11;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
_output_shapes
:@*
T0
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/v_3_1*
dtype0*
_output_shapes
:@
�
training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 
�
training/Adam/Square_3Square;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes
:@*
T0
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
:@*
T0
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
:@*
T0
Z
training/Adam/Const_9Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_10Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*
_output_shapes
:@
�
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:@
[
training/Adam/add_12/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes
:@*
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:@
k
training/Adam/ReadVariableOp_30ReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
T0*
_output_shapes
:@
l
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/m_3_1training/Adam/add_10*
dtype0
�
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/m_3_1!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
m
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/v_3_1training/Adam/add_11*
dtype0
�
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/v_3_1"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
i
!training/Adam/AssignVariableOp_11AssignVariableOpm1_hidden2/biastraining/Adam/sub_13*
dtype0
�
training/Adam/ReadVariableOp_33ReadVariableOpm1_hidden2/bias"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/m_4_1*
dtype0*
_output_shapes

:@
�
training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
_output_shapes
: *
T0
�
training/Adam/mul_22Multraining/Adam/sub_147training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/v_4_1*
dtype0*
_output_shapes

:@
�
training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
_output_shapes
: *
T0
�
training/Adam/Square_4Square7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:@
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:@
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
_output_shapes

:@*
T0
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
_output_shapes

:@*
T0
�
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*
_output_shapes

:@
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:@
[
training/Adam/add_15/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
_output_shapes

:@*
T0
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
_output_shapes

:@*
T0
q
training/Adam/ReadVariableOp_38ReadVariableOpm1_hidden3/kernel*
dtype0*
_output_shapes

:@
~
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0*
_output_shapes

:@
m
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/m_4_1training/Adam/add_13*
dtype0
�
training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/m_4_1"^training/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
m
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/v_4_1training/Adam/add_14*
dtype0
�
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/v_4_1"^training/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
k
!training/Adam/AssignVariableOp_14AssignVariableOpm1_hidden3/kerneltraining/Adam/sub_16*
dtype0
�
training/Adam/ReadVariableOp_41ReadVariableOpm1_hidden3/kernel"^training/Adam/AssignVariableOp_14*
_output_shapes

:@*
dtype0
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/m_5_1*
dtype0*
_output_shapes
:
�
training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
_output_shapes
: *
T0
�
training/Adam/mul_27Multraining/Adam/sub_17;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/v_5_1*
dtype0*
_output_shapes
:
�
training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
_output_shapes
: *
T0
�
training/Adam/Square_5Square;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
:
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
:
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
:*
T0
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
_output_shapes
:*
T0
�
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
_output_shapes
:*
T0
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:
[
training/Adam/add_18/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
:
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
_output_shapes
:*
T0
k
training/Adam/ReadVariableOp_46ReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*
_output_shapes
:
m
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/m_5_1training/Adam/add_16*
dtype0
�
training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/m_5_1"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
m
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/v_5_1training/Adam/add_17*
dtype0
�
training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/v_5_1"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
i
!training/Adam/AssignVariableOp_17AssignVariableOpm1_hidden3/biastraining/Adam/sub_19*
dtype0
�
training/Adam/ReadVariableOp_49ReadVariableOpm1_hidden3/bias"^training/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/m_6_1*
dtype0*
_output_shapes

:

�
training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 
�
training/Adam/mul_32Multraining/Adam/sub_206training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/v_6_1*
dtype0*
_output_shapes

:

�
training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 
�
training/Adam/Square_6Square6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
_output_shapes

:
*
T0
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes

:

m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
_output_shapes

:
*
T0
[
training/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_16Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
T0*
_output_shapes

:

�
training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
T0*
_output_shapes

:

d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*
_output_shapes

:

[
training/Adam/add_21/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
_output_shapes

:
*
T0
w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*
_output_shapes

:

p
training/Adam/ReadVariableOp_54ReadVariableOpm1_output/kernel*
dtype0*
_output_shapes

:

~
training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
T0*
_output_shapes

:

m
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/m_6_1training/Adam/add_19*
dtype0
�
training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/m_6_1"^training/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

m
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/v_6_1training/Adam/add_20*
dtype0
�
training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/v_6_1"^training/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

j
!training/Adam/AssignVariableOp_20AssignVariableOpm1_output/kerneltraining/Adam/sub_22*
dtype0
�
training/Adam/ReadVariableOp_57ReadVariableOpm1_output/kernel"^training/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/m_7_1*
dtype0*
_output_shapes
:

�
training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
�
training/Adam/mul_37Multraining/Adam/sub_23:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/v_7_1*
dtype0*
_output_shapes
:

�
training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_24/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
_output_shapes
: *
T0
�
training/Adam/Square_7Square:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
_output_shapes
:
*
T0
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
:

i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
:

[
training/Adam/Const_17Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_18Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*
_output_shapes
:

�
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
_output_shapes
:
*
T0
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
:

[
training/Adam/add_24/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
:

s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
:

j
training/Adam/ReadVariableOp_62ReadVariableOpm1_output/bias*
dtype0*
_output_shapes
:

z
training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
T0*
_output_shapes
:

m
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/m_7_1training/Adam/add_22*
dtype0
�
training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/m_7_1"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

m
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/v_7_1training/Adam/add_23*
dtype0
�
training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/v_7_1"^training/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

h
!training/Adam/AssignVariableOp_23AssignVariableOpm1_output/biastraining/Adam/sub_25*
dtype0
�
training/Adam/ReadVariableOp_65ReadVariableOpm1_output/bias"^training/Adam/AssignVariableOp_23*
_output_shapes
:
*
dtype0
^
training/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 
c
training/VarIsInitializedOp_1VarIsInitializedOptraining/Adam/vhat_7_1*
_output_shapes
: 
`
training/VarIsInitializedOp_2VarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 
^
training/VarIsInitializedOp_3VarIsInitializedOpm1_hidden3/kernel*
_output_shapes
: 
R
training/VarIsInitializedOp_4VarIsInitializedOpcount*
_output_shapes
: 
\
training/VarIsInitializedOp_5VarIsInitializedOpm1_hidden2/bias*
_output_shapes
: 
_
training/VarIsInitializedOp_6VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
`
training/VarIsInitializedOp_7VarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 
`
training/VarIsInitializedOp_8VarIsInitializedOptraining/Adam/v_6_1*
_output_shapes
: 
\
training/VarIsInitializedOp_9VarIsInitializedOpm1_hidden3/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_10VarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 
d
training/VarIsInitializedOp_11VarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 
a
training/VarIsInitializedOp_12VarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
a
training/VarIsInitializedOp_13VarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 
]
training/VarIsInitializedOp_14VarIsInitializedOpAdam/iterations*
_output_shapes
: 
a
training/VarIsInitializedOp_15VarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
Y
training/VarIsInitializedOp_16VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
X
training/VarIsInitializedOp_17VarIsInitializedOp
Adam/decay*
_output_shapes
: 
]
training/VarIsInitializedOp_18VarIsInitializedOpm1_hidden1/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_19VarIsInitializedOptraining/Adam/m_6_1*
_output_shapes
: 
a
training/VarIsInitializedOp_20VarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 
a
training/VarIsInitializedOp_21VarIsInitializedOptraining/Adam/v_7_1*
_output_shapes
: 
d
training/VarIsInitializedOp_22VarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
\
training/VarIsInitializedOp_23VarIsInitializedOpm1_output/bias*
_output_shapes
: 
^
training/VarIsInitializedOp_24VarIsInitializedOpm1_output/kernel*
_output_shapes
: 
S
training/VarIsInitializedOp_25VarIsInitializedOptotal*
_output_shapes
: 
d
training/VarIsInitializedOp_26VarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 
a
training/VarIsInitializedOp_27VarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 
a
training/VarIsInitializedOp_28VarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 
_
training/VarIsInitializedOp_29VarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 
a
training/VarIsInitializedOp_30VarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 
d
training/VarIsInitializedOp_31VarIsInitializedOptraining/Adam/vhat_6_1*
_output_shapes
: 
d
training/VarIsInitializedOp_32VarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 
_
training/VarIsInitializedOp_33VarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 
a
training/VarIsInitializedOp_34VarIsInitializedOptraining/Adam/m_7_1*
_output_shapes
: 
a
training/VarIsInitializedOp_35VarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 
d
training/VarIsInitializedOp_36VarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 
d
training/VarIsInitializedOp_37VarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 
Y
training/VarIsInitializedOp_38VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
�
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^count/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^total/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
�
training/group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
{

group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1
L
PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
t
dropout_1_inputPlaceholder*
shape:����������*
dtype0*(
_output_shapes
:����������
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
�
dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *��L>*
dtype0*
_output_shapes
: 
�
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
�
#dropout_1/cond/dropout/Shape/SwitchSwitchdropout_1_inputdropout_1/cond/pred_id*<
_output_shapes*
(:����������:����������*
T0*"
_class
loc:@dropout_1_input
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0
�
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*(
_output_shapes
:����������*
seed2**
seed�*
T0
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*(
_output_shapes
:����������*
T0
�
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:����������
�
dropout_1/cond/dropout/addAdddropout_1/cond/dropout/sub%dropout_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:����������
t
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*(
_output_shapes
:����������*
T0
�
dropout_1/cond/dropout/truedivRealDiv%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/sub*(
_output_shapes
:����������*
T0
�
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*<
_output_shapes*
(:����������:����������*
T0*"
_class
loc:@dropout_1_input
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
N**
_output_shapes
:����������: *
T0
p
m2_hidden1/random_uniform/shapeConst*
valueB"   �   *
dtype0*
_output_shapes
:
b
m2_hidden1/random_uniform/minConst*
valueB
 *�\1�*
dtype0*
_output_shapes
: 
b
m2_hidden1/random_uniform/maxConst*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
�
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
��*
seed2��*
seed�
�
m2_hidden1/random_uniform/subSubm2_hidden1/random_uniform/maxm2_hidden1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden1/random_uniform/mulMul'm2_hidden1/random_uniform/RandomUniformm2_hidden1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
m2_hidden1/random_uniformAddm2_hidden1/random_uniform/mulm2_hidden1/random_uniform/min*
T0* 
_output_shapes
:
��
�
m2_hidden1/kernelVarHandleOp*$
_class
loc:@m2_hidden1/kernel*
	container *
shape:
��*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1/kernel
s
2m2_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 
�
m2_hidden1/kernel/AssignAssignVariableOpm2_hidden1/kernelm2_hidden1/random_uniform*$
_class
loc:@m2_hidden1/kernel*
dtype0
�
%m2_hidden1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1/kernel*$
_class
loc:@m2_hidden1/kernel*
dtype0* 
_output_shapes
:
��
_
m2_hidden1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
�
m2_hidden1/biasVarHandleOp* 
shared_namem2_hidden1/bias*"
_class
loc:@m2_hidden1/bias*
	container *
shape:�*
dtype0*
_output_shapes
: 
o
0m2_hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
~
m2_hidden1/bias/AssignAssignVariableOpm2_hidden1/biasm2_hidden1/Const*"
_class
loc:@m2_hidden1/bias*
dtype0
�
#m2_hidden1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1/bias*
_output_shapes	
:�*"
_class
loc:@m2_hidden1/bias*
dtype0
t
 m2_hidden1/MatMul/ReadVariableOpReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:
��
�
m2_hidden1/MatMulMatMuldropout_1/cond/Merge m2_hidden1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
n
!m2_hidden1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:�
�
m2_hidden1/BiasAddBiasAddm2_hidden1/MatMul!m2_hidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:����������
^
m2_hidden1/ReluRelum2_hidden1/BiasAdd*
T0*(
_output_shapes
:����������
p
m2_hidden2/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
b
m2_hidden2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
b
m2_hidden2/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
'm2_hidden2/random_uniform/RandomUniformRandomUniformm2_hidden2/random_uniform/shape*
seed�*
T0*
dtype0*
_output_shapes
:	�@*
seed2�ř
�
m2_hidden2/random_uniform/subSubm2_hidden2/random_uniform/maxm2_hidden2/random_uniform/min*
_output_shapes
: *
T0
�
m2_hidden2/random_uniform/mulMul'm2_hidden2/random_uniform/RandomUniformm2_hidden2/random_uniform/sub*
_output_shapes
:	�@*
T0
�
m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
T0*
_output_shapes
:	�@
�
m2_hidden2/kernelVarHandleOp*"
shared_namem2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
	container *
shape:	�@*
dtype0*
_output_shapes
: 
s
2m2_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 
�
m2_hidden2/kernel/AssignAssignVariableOpm2_hidden2/kernelm2_hidden2/random_uniform*$
_class
loc:@m2_hidden2/kernel*
dtype0
�
%m2_hidden2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
dtype0*
_output_shapes
:	�@
]
m2_hidden2/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
�
m2_hidden2/biasVarHandleOp*"
_class
loc:@m2_hidden2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: * 
shared_namem2_hidden2/bias
o
0m2_hidden2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/bias*
_output_shapes
: 
~
m2_hidden2/bias/AssignAssignVariableOpm2_hidden2/biasm2_hidden2/Const*"
_class
loc:@m2_hidden2/bias*
dtype0
�
#m2_hidden2/bias/Read/ReadVariableOpReadVariableOpm2_hidden2/bias*"
_class
loc:@m2_hidden2/bias*
dtype0*
_output_shapes
:@
s
 m2_hidden2/MatMul/ReadVariableOpReadVariableOpm2_hidden2/kernel*
_output_shapes
:	�@*
dtype0
�
m2_hidden2/MatMulMatMulm2_hidden1/Relu m2_hidden2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( 
m
!m2_hidden2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@
�
m2_hidden2/BiasAddBiasAddm2_hidden2/MatMul!m2_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������@
]
m2_hidden2/ReluRelum2_hidden2/BiasAdd*'
_output_shapes
:���������@*
T0
p
m2_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m2_hidden3/random_uniform/minConst*
valueB
 *�7��*
dtype0*
_output_shapes
: 
b
m2_hidden3/random_uniform/maxConst*
valueB
 *�7�>*
dtype0*
_output_shapes
: 
�
'm2_hidden3/random_uniform/RandomUniformRandomUniformm2_hidden3/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@*
seed2ǃ	*
seed�
�
m2_hidden3/random_uniform/subSubm2_hidden3/random_uniform/maxm2_hidden3/random_uniform/min*
_output_shapes
: *
T0
�
m2_hidden3/random_uniform/mulMul'm2_hidden3/random_uniform/RandomUniformm2_hidden3/random_uniform/sub*
_output_shapes

:@*
T0
�
m2_hidden3/random_uniformAddm2_hidden3/random_uniform/mulm2_hidden3/random_uniform/min*
T0*
_output_shapes

:@
�
m2_hidden3/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3/kernel*$
_class
loc:@m2_hidden3/kernel*
	container *
shape
:@
s
2m2_hidden3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3/kernel*
_output_shapes
: 
�
m2_hidden3/kernel/AssignAssignVariableOpm2_hidden3/kernelm2_hidden3/random_uniform*$
_class
loc:@m2_hidden3/kernel*
dtype0
�
%m2_hidden3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3/kernel*$
_class
loc:@m2_hidden3/kernel*
dtype0*
_output_shapes

:@
]
m2_hidden3/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
�
m2_hidden3/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_namem2_hidden3/bias*"
_class
loc:@m2_hidden3/bias
o
0m2_hidden3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3/bias*
_output_shapes
: 
~
m2_hidden3/bias/AssignAssignVariableOpm2_hidden3/biasm2_hidden3/Const*"
_class
loc:@m2_hidden3/bias*
dtype0
�
#m2_hidden3/bias/Read/ReadVariableOpReadVariableOpm2_hidden3/bias*"
_class
loc:@m2_hidden3/bias*
dtype0*
_output_shapes
:
r
 m2_hidden3/MatMul/ReadVariableOpReadVariableOpm2_hidden3/kernel*
dtype0*
_output_shapes

:@
�
m2_hidden3/MatMulMatMulm2_hidden2/Relu m2_hidden3/MatMul/ReadVariableOp*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
m
!m2_hidden3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:
�
m2_hidden3/BiasAddBiasAddm2_hidden3/MatMul!m2_hidden3/BiasAdd/ReadVariableOp*'
_output_shapes
:���������*
T0*
data_formatNHWC
]
m2_hidden3/ReluRelum2_hidden3/BiasAdd*'
_output_shapes
:���������*
T0
o
m2_output/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
a
m2_output/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *����
a
m2_output/random_uniform/maxConst*
_output_shapes
: *
valueB
 *���>*
dtype0
�
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
dtype0*
_output_shapes

:
*
seed2�ǫ*
seed�*
T0
�
m2_output/random_uniform/subSubm2_output/random_uniform/maxm2_output/random_uniform/min*
_output_shapes
: *
T0
�
m2_output/random_uniform/mulMul&m2_output/random_uniform/RandomUniformm2_output/random_uniform/sub*
T0*
_output_shapes

:

�
m2_output/random_uniformAddm2_output/random_uniform/mulm2_output/random_uniform/min*
_output_shapes

:
*
T0
�
m2_output/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namem2_output/kernel*#
_class
loc:@m2_output/kernel*
	container *
shape
:

q
1m2_output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output/kernel*
_output_shapes
: 
�
m2_output/kernel/AssignAssignVariableOpm2_output/kernelm2_output/random_uniform*#
_class
loc:@m2_output/kernel*
dtype0
�
$m2_output/kernel/Read/ReadVariableOpReadVariableOpm2_output/kernel*#
_class
loc:@m2_output/kernel*
dtype0*
_output_shapes

:

\
m2_output/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m2_output/biasVarHandleOp*!
_class
loc:@m2_output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namem2_output/bias
m
/m2_output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output/bias*
_output_shapes
: 
z
m2_output/bias/AssignAssignVariableOpm2_output/biasm2_output/Const*!
_class
loc:@m2_output/bias*
dtype0
�
"m2_output/bias/Read/ReadVariableOpReadVariableOpm2_output/bias*!
_class
loc:@m2_output/bias*
dtype0*
_output_shapes
:

p
m2_output/MatMul/ReadVariableOpReadVariableOpm2_output/kernel*
_output_shapes

:
*
dtype0
�
m2_output/MatMulMatMulm2_hidden3/Relum2_output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
*
transpose_a( *
transpose_b( 
k
 m2_output/BiasAdd/ReadVariableOpReadVariableOpm2_output/bias*
dtype0*
_output_shapes
:

�
m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������

a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*'
_output_shapes
:���������
*
T0
�
+Adam_1/iterations/Initializer/initial_valueConst*
_output_shapes
: *
value	B	 R *$
_class
loc:@Adam_1/iterations*
dtype0	
�
Adam_1/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *"
shared_nameAdam_1/iterations*$
_class
loc:@Adam_1/iterations*
	container *
shape: 
s
2Adam_1/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/iterations*
_output_shapes
: 
�
Adam_1/iterations/AssignAssignVariableOpAdam_1/iterations+Adam_1/iterations/Initializer/initial_value*$
_class
loc:@Adam_1/iterations*
dtype0	
�
%Adam_1/iterations/Read/ReadVariableOpReadVariableOpAdam_1/iterations*$
_class
loc:@Adam_1/iterations*
dtype0	*
_output_shapes
: 
�
.Adam_1/learning_rate/Initializer/initial_valueConst*
valueB
 *o�:*'
_class
loc:@Adam_1/learning_rate*
dtype0*
_output_shapes
: 
�
Adam_1/learning_rateVarHandleOp*
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
	container 
y
5Adam_1/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
�
Adam_1/learning_rate/AssignAssignVariableOpAdam_1/learning_rate.Adam_1/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_1/learning_rate*
dtype0
�
(Adam_1/learning_rate/Read/ReadVariableOpReadVariableOpAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
dtype0*
_output_shapes
: 
�
'Adam_1/beta_1/Initializer/initial_valueConst*
valueB
 *fff?* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 
�
Adam_1/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
	container *
shape: 
k
.Adam_1/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
�
Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_1/beta_1
�
!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 
�
'Adam_1/beta_2/Initializer/initial_valueConst*
valueB
 *w�?* 
_class
loc:@Adam_1/beta_2*
dtype0*
_output_shapes
: 
�
Adam_1/beta_2VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2
k
.Adam_1/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
�
Adam_1/beta_2/AssignAssignVariableOpAdam_1/beta_2'Adam_1/beta_2/Initializer/initial_value* 
_class
loc:@Adam_1/beta_2*
dtype0
�
!Adam_1/beta_2/Read/ReadVariableOpReadVariableOpAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2*
dtype0*
_output_shapes
: 
�
&Adam_1/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 
�
Adam_1/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_1/decay*
_class
loc:@Adam_1/decay*
	container *
shape: 
i
-Adam_1/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/decay*
_output_shapes
: 
�
Adam_1/decay/AssignAssignVariableOpAdam_1/decay&Adam_1/decay/Initializer/initial_value*
_class
loc:@Adam_1/decay*
dtype0
�
 Adam_1/decay/Read/ReadVariableOpReadVariableOpAdam_1/decay*
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 
�
m2_output_targetPlaceholder*%
shape:������������������*
dtype0*0
_output_shapes
:������������������
s
m2_output_sample_weightsPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
L
Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
total_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	total_1*
_class
loc:@total_1*
	container 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
]
total_1/AssignAssignVariableOptotal_1Const_3*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
L
Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
count_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	count_1*
_class
loc:@count_1*
	container *
shape: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
]
count_1/AssignAssignVariableOpcount_1Const_4*
dtype0*
_class
loc:@count_1
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
dtype0*
_output_shapes
: *
_class
loc:@count_1
�
metrics_1/accuracy/SqueezeSqueezem2_output_target*
squeeze_dims

���������*
T0*#
_output_shapes
:���������
n
#metrics_1/accuracy/ArgMax/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics_1/accuracy/ArgMaxArgMaxm2_output/Softmax#metrics_1/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
�
metrics_1/accuracy/CastCastmetrics_1/accuracy/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:���������*

DstT0
�
metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*#
_output_shapes
:���������*
T0
�
metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*
Truncate( *#
_output_shapes
:���������*

DstT0*

SrcT0

b
metrics_1/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics_1/accuracy/SumSummetrics_1/accuracy/Cast_1metrics_1/accuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
&metrics_1/accuracy/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/accuracy/Sum*
dtype0
�
!metrics_1/accuracy/ReadVariableOpReadVariableOptotal_1'^metrics_1/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_1/accuracy/SizeSizemetrics_1/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_1/accuracy/Cast_2Castmetrics_1/accuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
p
(metrics_1/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics_1/accuracy/Cast_2*
dtype0
�
#metrics_1/accuracy/ReadVariableOp_1ReadVariableOpcount_1)^metrics_1/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
#metrics_1/accuracy/ReadVariableOp_2ReadVariableOptotal_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
)metrics_1/accuracy/truediv/ReadVariableOpReadVariableOpcount_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
metrics_1/accuracy/truedivRealDiv#metrics_1/accuracy/ReadVariableOp_2)metrics_1/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_1/accuracy/IdentityIdentitymetrics_1/accuracy/truediv*
T0*
_output_shapes
: 
�
;loss_1/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
�
;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
9loss_1/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
�
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0
�
Closs_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:���������
*
T0
�
9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:���������

�
Closs_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
=loss_1/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_targetCloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
:loss_1/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape*#
_output_shapes
:���������*

DstT0	*

SrcT0*
Truncate( 
�
Eloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogEloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������

�
_loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
�
}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":���������:���������
*
Tlabels0	
�
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
�
Iloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
�
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
�
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_1/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�

loss_1/mulMulloss_1/mul/xKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_output_shapes
: 
J
Const_5Const*
valueB *
dtype0*
_output_shapes
: 
a
Mean_1Mean
loss_1/mulConst_5*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
}
training_1/Adam/gradients/ShapeConst*
_output_shapes
: *
valueB *
_class
loc:@Mean_1*
dtype0
�
#training_1/Adam/gradients/grad_ys_0Const*
valueB
 *  �?*
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
�
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*

index_type0*
_class
loc:@Mean_1*
_output_shapes
: *
T0
�
3training_1/Adam/gradients/Mean_1_grad/Reshape/shapeConst*
valueB *
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
�
-training_1/Adam/gradients/Mean_1_grad/ReshapeReshapetraining_1/Adam/gradients/Fill3training_1/Adam/gradients/Mean_1_grad/Reshape/shape*
Tshape0*
_class
loc:@Mean_1*
_output_shapes
: *
T0
�
+training_1/Adam/gradients/Mean_1_grad/ConstConst*
valueB *
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
�
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*
_class
loc:@Mean_1
�
-training_1/Adam/gradients/Mean_1_grad/Const_1Const*
valueB
 *  �?*
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
�
-training_1/Adam/gradients/Mean_1_grad/truedivRealDiv*training_1/Adam/gradients/Mean_1_grad/Tile-training_1/Adam/gradients/Mean_1_grad/Const_1*
_class
loc:@Mean_1*
_output_shapes
: *
T0
�
-training_1/Adam/gradients/loss_1/mul_grad/MulMul-training_1/Adam/gradients/Mean_1_grad/truedivKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
�
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss_1/mul
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
valueB *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
valueB *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:���������:���������
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_1/Adam/gradients/loss_1/mul_grad/Mul_1ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
valueB:*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
dtype0*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
�
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*

Tmultiples0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:���������
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem2_output_sample_weights*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weightsktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������*
T0
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
$training_1/Adam/gradients/zeros_like	ZerosLikeloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������
*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������
*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: 
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������*

Tdim0
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������

�
dtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*
out_type0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
_output_shapes
:*
T0
�
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*
Tshape0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:���������

�
ctraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������

�
\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������
*
T0
�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*
out_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
valueB *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*
out_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������
*
T0*

index_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
�
otraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
xtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:���������:���������
�
itraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output/Softmax*
_output_shapes
:*
T0*
out_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
valueB *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
straining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
: *
T0
�
4training_1/Adam/gradients/m2_output/Softmax_grad/mulMulrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem2_output/Softmax*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:���������
*
T0
�
Ftraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indicesConst*
valueB :
���������*$
_class
loc:@m2_output/Softmax*
dtype0*
_output_shapes
: 
�
4training_1/Adam/gradients/m2_output/Softmax_grad/SumSum4training_1/Adam/gradients/m2_output/Softmax_grad/mulFtraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indices*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:���������*

Tidx0*
	keep_dims(
�
4training_1/Adam/gradients/m2_output/Softmax_grad/subSubrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape4training_1/Adam/gradients/m2_output/Softmax_grad/Sum*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:���������
*
T0
�
6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1Mul4training_1/Adam/gradients/m2_output/Softmax_grad/subm2_output/Softmax*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:���������

�
<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGradBiasAddGrad6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
T0*$
_class
loc:@m2_output/BiasAdd*
data_formatNHWC*
_output_shapes
:

�
6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*
T0*#
_class
loc:@m2_output/MatMul*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0*#
_class
loc:@m2_output/MatMul
�
7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulm2_hidden3/Relu*'
_output_shapes
:���������*
T0*"
_class
loc:@m2_hidden3/Relu
�
=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
_output_shapes
:*
T0*%
_class
loc:@m2_hidden3/BiasAdd*
data_formatNHWC
�
7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad m2_hidden3/MatMul/ReadVariableOp*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(*
T0*$
_class
loc:@m2_hidden3/MatMul
�
9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1MatMulm2_hidden2/Relu7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
transpose_b( *
T0*$
_class
loc:@m2_hidden3/MatMul*
_output_shapes

:@*
transpose_a(
�
7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulm2_hidden2/Relu*
T0*"
_class
loc:@m2_hidden2/Relu*'
_output_shapes
:���������@
�
=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad m2_hidden2/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden2/MatMul*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1MatMulm2_hidden1/Relu7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden2/MatMul*
_output_shapes
:	�@*
transpose_a(*
transpose_b( 
�
7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulm2_hidden1/Relu*
T0*"
_class
loc:@m2_hidden1/Relu*(
_output_shapes
:����������
�
=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�
�
7training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad m2_hidden1/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden1/MatMul*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad* 
_output_shapes
:
��*
transpose_a(*
transpose_b( *
T0*$
_class
loc:@m2_hidden1/MatMul
W
training_1/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
q
#training_1/Adam/AssignAddVariableOpAssignAddVariableOpAdam_1/iterationstraining_1/Adam/Const*
dtype0	
�
training_1/Adam/ReadVariableOpReadVariableOpAdam_1/iterations$^training_1/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_1/Adam/Cast/ReadVariableOpReadVariableOpAdam_1/iterations*
dtype0	*
_output_shapes
: 
�
training_1/Adam/CastCast#training_1/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Z
training_1/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
h
training_1/Adam/addAddtraining_1/Adam/Casttraining_1/Adam/add/y*
_output_shapes
: *
T0
h
"training_1/Adam/Pow/ReadVariableOpReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
t
training_1/Adam/PowPow"training_1/Adam/Pow/ReadVariableOptraining_1/Adam/add*
_output_shapes
: *
T0
Z
training_1/Adam/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
g
training_1/Adam/subSubtraining_1/Adam/sub/xtraining_1/Adam/Pow*
_output_shapes
: *
T0
\
training_1/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
\
training_1/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  �

%training_1/Adam/clip_by_value/MinimumMinimumtraining_1/Adam/subtraining_1/Adam/Const_2*
T0*
_output_shapes
: 
�
training_1/Adam/clip_by_valueMaximum%training_1/Adam/clip_by_value/Minimumtraining_1/Adam/Const_1*
T0*
_output_shapes
: 
\
training_1/Adam/SqrtSqrttraining_1/Adam/clip_by_value*
T0*
_output_shapes
: 
j
$training_1/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
x
training_1/Adam/Pow_1Pow$training_1/Adam/Pow_1/ReadVariableOptraining_1/Adam/add*
T0*
_output_shapes
: 
\
training_1/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
m
training_1/Adam/sub_1Subtraining_1/Adam/sub_1/xtraining_1/Adam/Pow_1*
T0*
_output_shapes
: 
p
training_1/Adam/truedivRealDivtraining_1/Adam/Sqrttraining_1/Adam/sub_1*
T0*
_output_shapes
: 
m
 training_1/Adam/ReadVariableOp_1ReadVariableOpAdam_1/learning_rate*
_output_shapes
: *
dtype0
v
training_1/Adam/mulMul training_1/Adam/ReadVariableOp_1training_1/Adam/truediv*
T0*
_output_shapes
: 
t
#training_1/Adam/m_0/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
^
training_1/Adam/m_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/m_0Fill#training_1/Adam/m_0/shape_as_tensortraining_1/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training_1/Adam/m_0_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_0_1*(
_class
loc:@training_1/Adam/m_0_1*
	container *
shape:
��
{
6training_1/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 
�
training_1/Adam/m_0_1/AssignAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/m_0*(
_class
loc:@training_1/Adam/m_0_1*
dtype0
�
)training_1/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_0_1*
dtype0* 
_output_shapes
:
��*(
_class
loc:@training_1/Adam/m_0_1
b
training_1/Adam/m_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training_1/Adam/m_1_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_1_1*(
_class
loc:@training_1/Adam/m_1_1*
	container *
shape:�
{
6training_1/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 
�
training_1/Adam/m_1_1/AssignAssignVariableOptraining_1/Adam/m_1_1training_1/Adam/m_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0
�
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
_output_shapes	
:�*(
_class
loc:@training_1/Adam/m_1_1*
dtype0
t
#training_1/Adam/m_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
^
training_1/Adam/m_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/m_2Fill#training_1/Adam/m_2/shape_as_tensortraining_1/Adam/m_2/Const*

index_type0*
_output_shapes
:	�@*
T0
�
training_1/Adam/m_2_1VarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1
{
6training_1/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 
�
training_1/Adam/m_2_1/AssignAssignVariableOptraining_1/Adam/m_2_1training_1/Adam/m_2*(
_class
loc:@training_1/Adam/m_2_1*
dtype0
�
)training_1/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
`
training_1/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training_1/Adam/m_3_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_3_1*(
_class
loc:@training_1/Adam/m_3_1*
	container *
shape:@
{
6training_1/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_3_1*
_output_shapes
: 
�
training_1/Adam/m_3_1/AssignAssignVariableOptraining_1/Adam/m_3_1training_1/Adam/m_3*(
_class
loc:@training_1/Adam/m_3_1*
dtype0
�
)training_1/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_3_1*(
_class
loc:@training_1/Adam/m_3_1*
dtype0*
_output_shapes
:@
t
#training_1/Adam/m_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_1/Adam/m_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/m_4Fill#training_1/Adam/m_4/shape_as_tensortraining_1/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
�
training_1/Adam/m_4_1VarHandleOp*&
shared_nametraining_1/Adam/m_4_1*(
_class
loc:@training_1/Adam/m_4_1*
	container *
shape
:@*
dtype0*
_output_shapes
: 
{
6training_1/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_4_1*
_output_shapes
: 
�
training_1/Adam/m_4_1/AssignAssignVariableOptraining_1/Adam/m_4_1training_1/Adam/m_4*(
_class
loc:@training_1/Adam/m_4_1*
dtype0
�
)training_1/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_4_1*
_output_shapes

:@*(
_class
loc:@training_1/Adam/m_4_1*
dtype0
`
training_1/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training_1/Adam/m_5_1VarHandleOp*
_output_shapes
: *&
shared_nametraining_1/Adam/m_5_1*(
_class
loc:@training_1/Adam/m_5_1*
	container *
shape:*
dtype0
{
6training_1/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 
�
training_1/Adam/m_5_1/AssignAssignVariableOptraining_1/Adam/m_5_1training_1/Adam/m_5*(
_class
loc:@training_1/Adam/m_5_1*
dtype0
�
)training_1/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*
dtype0*
_output_shapes
:*(
_class
loc:@training_1/Adam/m_5_1
h
training_1/Adam/m_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training_1/Adam/m_6_1VarHandleOp*&
shared_nametraining_1/Adam/m_6_1*(
_class
loc:@training_1/Adam/m_6_1*
	container *
shape
:
*
dtype0*
_output_shapes
: 
{
6training_1/Adam/m_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_6_1*
_output_shapes
: 
�
training_1/Adam/m_6_1/AssignAssignVariableOptraining_1/Adam/m_6_1training_1/Adam/m_6*(
_class
loc:@training_1/Adam/m_6_1*
dtype0
�
)training_1/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*(
_class
loc:@training_1/Adam/m_6_1*
dtype0*
_output_shapes

:

`
training_1/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training_1/Adam/m_7_1VarHandleOp*
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_7_1*(
_class
loc:@training_1/Adam/m_7_1*
	container 
{
6training_1/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_7_1*
_output_shapes
: 
�
training_1/Adam/m_7_1/AssignAssignVariableOptraining_1/Adam/m_7_1training_1/Adam/m_7*(
_class
loc:@training_1/Adam/m_7_1*
dtype0
�
)training_1/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_7_1*(
_class
loc:@training_1/Adam/m_7_1*
dtype0*
_output_shapes
:

t
#training_1/Adam/v_0/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
^
training_1/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/v_0Fill#training_1/Adam/v_0/shape_as_tensortraining_1/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training_1/Adam/v_0_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_0_1*(
_class
loc:@training_1/Adam/v_0_1*
	container *
shape:
��
{
6training_1/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 
�
training_1/Adam/v_0_1/AssignAssignVariableOptraining_1/Adam/v_0_1training_1/Adam/v_0*(
_class
loc:@training_1/Adam/v_0_1*
dtype0
�
)training_1/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1*(
_class
loc:@training_1/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
b
training_1/Adam/v_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training_1/Adam/v_1_1VarHandleOp*
shape:�*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
	container 
{
6training_1/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 
�
training_1/Adam/v_1_1/AssignAssignVariableOptraining_1/Adam/v_1_1training_1/Adam/v_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0
�
)training_1/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0*
_output_shapes	
:�
t
#training_1/Adam/v_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
^
training_1/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/v_2Fill#training_1/Adam/v_2/shape_as_tensortraining_1/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training_1/Adam/v_2_1VarHandleOp*
shape:	�@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
	container 
{
6training_1/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 
�
training_1/Adam/v_2_1/AssignAssignVariableOptraining_1/Adam/v_2_1training_1/Adam/v_2*(
_class
loc:@training_1/Adam/v_2_1*
dtype0
�
)training_1/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
`
training_1/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training_1/Adam/v_3_1VarHandleOp*&
shared_nametraining_1/Adam/v_3_1*(
_class
loc:@training_1/Adam/v_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: 
{
6training_1/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_3_1*
_output_shapes
: 
�
training_1/Adam/v_3_1/AssignAssignVariableOptraining_1/Adam/v_3_1training_1/Adam/v_3*
dtype0*(
_class
loc:@training_1/Adam/v_3_1
�
)training_1/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_3_1*(
_class
loc:@training_1/Adam/v_3_1*
dtype0*
_output_shapes
:@
t
#training_1/Adam/v_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_1/Adam/v_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/v_4Fill#training_1/Adam/v_4/shape_as_tensortraining_1/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
�
training_1/Adam/v_4_1VarHandleOp*&
shared_nametraining_1/Adam/v_4_1*(
_class
loc:@training_1/Adam/v_4_1*
	container *
shape
:@*
dtype0*
_output_shapes
: 
{
6training_1/Adam/v_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_4_1*
_output_shapes
: 
�
training_1/Adam/v_4_1/AssignAssignVariableOptraining_1/Adam/v_4_1training_1/Adam/v_4*(
_class
loc:@training_1/Adam/v_4_1*
dtype0
�
)training_1/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_4_1*
dtype0*
_output_shapes

:@*(
_class
loc:@training_1/Adam/v_4_1
`
training_1/Adam/v_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training_1/Adam/v_5_1VarHandleOp*
_output_shapes
: *&
shared_nametraining_1/Adam/v_5_1*(
_class
loc:@training_1/Adam/v_5_1*
	container *
shape:*
dtype0
{
6training_1/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_5_1*
_output_shapes
: 
�
training_1/Adam/v_5_1/AssignAssignVariableOptraining_1/Adam/v_5_1training_1/Adam/v_5*(
_class
loc:@training_1/Adam/v_5_1*
dtype0
�
)training_1/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_5_1*(
_class
loc:@training_1/Adam/v_5_1*
dtype0*
_output_shapes
:
h
training_1/Adam/v_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training_1/Adam/v_6_1VarHandleOp*&
shared_nametraining_1/Adam/v_6_1*(
_class
loc:@training_1/Adam/v_6_1*
	container *
shape
:
*
dtype0*
_output_shapes
: 
{
6training_1/Adam/v_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_6_1*
_output_shapes
: 
�
training_1/Adam/v_6_1/AssignAssignVariableOptraining_1/Adam/v_6_1training_1/Adam/v_6*(
_class
loc:@training_1/Adam/v_6_1*
dtype0
�
)training_1/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_6_1*(
_class
loc:@training_1/Adam/v_6_1*
dtype0*
_output_shapes

:

`
training_1/Adam/v_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training_1/Adam/v_7_1VarHandleOp*(
_class
loc:@training_1/Adam/v_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_7_1
{
6training_1/Adam/v_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_7_1*
_output_shapes
: 
�
training_1/Adam/v_7_1/AssignAssignVariableOptraining_1/Adam/v_7_1training_1/Adam/v_7*
dtype0*(
_class
loc:@training_1/Adam/v_7_1
�
)training_1/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_7_1*(
_class
loc:@training_1/Adam/v_7_1*
dtype0*
_output_shapes
:

p
&training_1/Adam/vhat_0/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training_1/Adam/vhat_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_0Fill&training_1/Adam/vhat_0/shape_as_tensortraining_1/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_0_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1
�
9training_1/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 
�
training_1/Adam/vhat_0_1/AssignAssignVariableOptraining_1/Adam/vhat_0_1training_1/Adam/vhat_0*+
_class!
loc:@training_1/Adam/vhat_0_1*
dtype0
�
,training_1/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training_1/Adam/vhat_1Fill&training_1/Adam/vhat_1/shape_as_tensortraining_1/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_1_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_1_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
	container *
shape:
�
9training_1/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 
�
training_1/Adam/vhat_1_1/AssignAssignVariableOptraining_1/Adam/vhat_1_1training_1/Adam/vhat_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0
�
,training_1/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_1_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_2/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_2_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: 
�
9training_1/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 
�
training_1/Adam/vhat_2_1/AssignAssignVariableOptraining_1/Adam/vhat_2_1training_1/Adam/vhat_2*+
_class!
loc:@training_1/Adam/vhat_2_1*
dtype0
�
,training_1/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_3/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training_1/Adam/vhat_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_3Fill&training_1/Adam/vhat_3/shape_as_tensortraining_1/Adam/vhat_3/Const*
_output_shapes
:*
T0*

index_type0
�
training_1/Adam/vhat_3_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1
�
9training_1/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 
�
training_1/Adam/vhat_3_1/AssignAssignVariableOptraining_1/Adam/vhat_3_1training_1/Adam/vhat_3*+
_class!
loc:@training_1/Adam/vhat_3_1*
dtype0
�
,training_1/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_3_1*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_3_1*
dtype0
p
&training_1/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*

index_type0*
_output_shapes
:*
T0
�
training_1/Adam/vhat_4_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1*+
_class!
loc:@training_1/Adam/vhat_4_1*
	container 
�
9training_1/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 
�
training_1/Adam/vhat_4_1/AssignAssignVariableOptraining_1/Adam/vhat_4_1training_1/Adam/vhat_4*+
_class!
loc:@training_1/Adam/vhat_4_1*
dtype0
�
,training_1/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_4_1*+
_class!
loc:@training_1/Adam/vhat_4_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_5Fill&training_1/Adam/vhat_5/shape_as_tensortraining_1/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
	container 
�
9training_1/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 
�
training_1/Adam/vhat_5_1/AssignAssignVariableOptraining_1/Adam/vhat_5_1training_1/Adam/vhat_5*+
_class!
loc:@training_1/Adam/vhat_5_1*
dtype0
�
,training_1/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_6/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_6Fill&training_1/Adam/vhat_6/shape_as_tensortraining_1/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_6_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_6_1*+
_class!
loc:@training_1/Adam/vhat_6_1*
	container *
shape:
�
9training_1/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 
�
training_1/Adam/vhat_6_1/AssignAssignVariableOptraining_1/Adam/vhat_6_1training_1/Adam/vhat_6*+
_class!
loc:@training_1/Adam/vhat_6_1*
dtype0
�
,training_1/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_6_1*+
_class!
loc:@training_1/Adam/vhat_6_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_7Fill&training_1/Adam/vhat_7/shape_as_tensortraining_1/Adam/vhat_7/Const*
_output_shapes
:*
T0*

index_type0
�
training_1/Adam/vhat_7_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1*
	container *
shape:*
dtype0*
_output_shapes
: 
�
9training_1/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 
�
training_1/Adam/vhat_7_1/AssignAssignVariableOptraining_1/Adam/vhat_7_1training_1/Adam/vhat_7*+
_class!
loc:@training_1/Adam/vhat_7_1*
dtype0
�
,training_1/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1*
dtype0*
_output_shapes
:
f
 training_1/Adam/ReadVariableOp_2ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
|
$training_1/Adam/mul_1/ReadVariableOpReadVariableOptraining_1/Adam/m_0_1*
dtype0* 
_output_shapes
:
��
�
training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:
��
f
 training_1/Adam/ReadVariableOp_3ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
x
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
�
training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
u
training_1/Adam/add_1Addtraining_1/Adam/mul_1training_1/Adam/mul_2* 
_output_shapes
:
��*
T0
f
 training_1/Adam/ReadVariableOp_4ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
|
$training_1/Adam/mul_3/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
�
training_1/Adam/mul_3Mul training_1/Adam/ReadVariableOp_4$training_1/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:
��
f
 training_1/Adam/ReadVariableOp_5ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
x
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/x training_1/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
�
training_1/Adam/SquareSquare9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
v
training_1/Adam/mul_4Multraining_1/Adam/sub_3training_1/Adam/Square*
T0* 
_output_shapes
:
��
u
training_1/Adam/add_2Addtraining_1/Adam/mul_3training_1/Adam/mul_4*
T0* 
_output_shapes
:
��
s
training_1/Adam/mul_5Multraining_1/Adam/multraining_1/Adam/add_1*
T0* 
_output_shapes
:
��
\
training_1/Adam/Const_3Const*
_output_shapes
: *
valueB
 *    *
dtype0
\
training_1/Adam/Const_4Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_1/MinimumMinimumtraining_1/Adam/add_2training_1/Adam/Const_4*
T0* 
_output_shapes
:
��
�
training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3*
T0* 
_output_shapes
:
��
j
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1*
T0* 
_output_shapes
:
��
\
training_1/Adam/add_3/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
x
training_1/Adam/add_3Addtraining_1/Adam/Sqrt_1training_1/Adam/add_3/y* 
_output_shapes
:
��*
T0
}
training_1/Adam/truediv_1RealDivtraining_1/Adam/mul_5training_1/Adam/add_3*
T0* 
_output_shapes
:
��
t
 training_1/Adam/ReadVariableOp_6ReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:
��
�
training_1/Adam/sub_4Sub training_1/Adam/ReadVariableOp_6training_1/Adam/truediv_1*
T0* 
_output_shapes
:
��
o
 training_1/Adam/AssignVariableOpAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/add_1*
dtype0
�
 training_1/Adam/ReadVariableOp_7ReadVariableOptraining_1/Adam/m_0_1!^training_1/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:
��
q
"training_1/Adam/AssignVariableOp_1AssignVariableOptraining_1/Adam/v_0_1training_1/Adam/add_2*
dtype0
�
 training_1/Adam/ReadVariableOp_8ReadVariableOptraining_1/Adam/v_0_1#^training_1/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:
��
m
"training_1/Adam/AssignVariableOp_2AssignVariableOpm2_hidden1/kerneltraining_1/Adam/sub_4*
dtype0
�
 training_1/Adam/ReadVariableOp_9ReadVariableOpm2_hidden1/kernel#^training_1/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:
��
g
!training_1/Adam/ReadVariableOp_10ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_6/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
dtype0*
_output_shapes	
:�
�
training_1/Adam/mul_6Mul!training_1/Adam/ReadVariableOp_10$training_1/Adam/mul_6/ReadVariableOp*
_output_shapes	
:�*
T0
g
!training_1/Adam/ReadVariableOp_11ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
_output_shapes
: *
T0
�
training_1/Adam/mul_7Multraining_1/Adam/sub_5=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
p
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
_output_shapes	
:�*
T0
g
!training_1/Adam/ReadVariableOp_12ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_8/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*
_output_shapes	
:�*
dtype0
�
training_1/Adam/mul_8Mul!training_1/Adam/ReadVariableOp_12$training_1/Adam/mul_8/ReadVariableOp*
_output_shapes	
:�*
T0
g
!training_1/Adam/ReadVariableOp_13ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_6/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_6Subtraining_1/Adam/sub_6/x!training_1/Adam/ReadVariableOp_13*
_output_shapes
: *
T0
�
training_1/Adam/Square_1Square=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
s
training_1/Adam/mul_9Multraining_1/Adam/sub_6training_1/Adam/Square_1*
_output_shapes	
:�*
T0
p
training_1/Adam/add_5Addtraining_1/Adam/mul_8training_1/Adam/mul_9*
T0*
_output_shapes	
:�
o
training_1/Adam/mul_10Multraining_1/Adam/multraining_1/Adam/add_4*
T0*
_output_shapes	
:�
\
training_1/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_6Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_6*
T0*
_output_shapes	
:�
�
training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
_output_shapes	
:�*
T0
e
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
T0*
_output_shapes	
:�
\
training_1/Adam/add_6/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
s
training_1/Adam/add_6Addtraining_1/Adam/Sqrt_2training_1/Adam/add_6/y*
_output_shapes	
:�*
T0
y
training_1/Adam/truediv_2RealDivtraining_1/Adam/mul_10training_1/Adam/add_6*
T0*
_output_shapes	
:�
n
!training_1/Adam/ReadVariableOp_14ReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:�
�
training_1/Adam/sub_7Sub!training_1/Adam/ReadVariableOp_14training_1/Adam/truediv_2*
_output_shapes	
:�*
T0
q
"training_1/Adam/AssignVariableOp_3AssignVariableOptraining_1/Adam/m_1_1training_1/Adam/add_4*
dtype0
�
!training_1/Adam/ReadVariableOp_15ReadVariableOptraining_1/Adam/m_1_1#^training_1/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:�
q
"training_1/Adam/AssignVariableOp_4AssignVariableOptraining_1/Adam/v_1_1training_1/Adam/add_5*
dtype0
�
!training_1/Adam/ReadVariableOp_16ReadVariableOptraining_1/Adam/v_1_1#^training_1/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:�
k
"training_1/Adam/AssignVariableOp_5AssignVariableOpm2_hidden1/biastraining_1/Adam/sub_7*
dtype0
�
!training_1/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1/bias#^training_1/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:�
g
!training_1/Adam/ReadVariableOp_18ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_11/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
�
training_1/Adam/mul_11Mul!training_1/Adam/ReadVariableOp_18%training_1/Adam/mul_11/ReadVariableOp*
_output_shapes
:	�@*
T0
g
!training_1/Adam/ReadVariableOp_19ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_8/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
�
training_1/Adam/mul_12Multraining_1/Adam/sub_89training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
v
training_1/Adam/add_7Addtraining_1/Adam/mul_11training_1/Adam/mul_12*
T0*
_output_shapes
:	�@
g
!training_1/Adam/ReadVariableOp_20ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_13/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
�
training_1/Adam/mul_13Mul!training_1/Adam/ReadVariableOp_20%training_1/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:	�@
g
!training_1/Adam/ReadVariableOp_21ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_9/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_9Subtraining_1/Adam/sub_9/x!training_1/Adam/ReadVariableOp_21*
_output_shapes
: *
T0
�
training_1/Adam/Square_2Square9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
x
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
T0*
_output_shapes
:	�@
v
training_1/Adam/add_8Addtraining_1/Adam/mul_13training_1/Adam/mul_14*
T0*
_output_shapes
:	�@
s
training_1/Adam/mul_15Multraining_1/Adam/multraining_1/Adam/add_7*
_output_shapes
:	�@*
T0
\
training_1/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_8Const*
_output_shapes
: *
valueB
 *  �*
dtype0
�
'training_1/Adam/clip_by_value_3/MinimumMinimumtraining_1/Adam/add_8training_1/Adam/Const_8*
T0*
_output_shapes
:	�@
�
training_1/Adam/clip_by_value_3Maximum'training_1/Adam/clip_by_value_3/Minimumtraining_1/Adam/Const_7*
T0*
_output_shapes
:	�@
i
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
_output_shapes
:	�@*
T0
\
training_1/Adam/add_9/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
w
training_1/Adam/add_9Addtraining_1/Adam/Sqrt_3training_1/Adam/add_9/y*
_output_shapes
:	�@*
T0
}
training_1/Adam/truediv_3RealDivtraining_1/Adam/mul_15training_1/Adam/add_9*
_output_shapes
:	�@*
T0
t
!training_1/Adam/ReadVariableOp_22ReadVariableOpm2_hidden2/kernel*
dtype0*
_output_shapes
:	�@
�
training_1/Adam/sub_10Sub!training_1/Adam/ReadVariableOp_22training_1/Adam/truediv_3*
T0*
_output_shapes
:	�@
q
"training_1/Adam/AssignVariableOp_6AssignVariableOptraining_1/Adam/m_2_1training_1/Adam/add_7*
dtype0
�
!training_1/Adam/ReadVariableOp_23ReadVariableOptraining_1/Adam/m_2_1#^training_1/Adam/AssignVariableOp_6*
_output_shapes
:	�@*
dtype0
q
"training_1/Adam/AssignVariableOp_7AssignVariableOptraining_1/Adam/v_2_1training_1/Adam/add_8*
dtype0
�
!training_1/Adam/ReadVariableOp_24ReadVariableOptraining_1/Adam/v_2_1#^training_1/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	�@
n
"training_1/Adam/AssignVariableOp_8AssignVariableOpm2_hidden2/kerneltraining_1/Adam/sub_10*
dtype0
�
!training_1/Adam/ReadVariableOp_25ReadVariableOpm2_hidden2/kernel#^training_1/Adam/AssignVariableOp_8*
_output_shapes
:	�@*
dtype0
g
!training_1/Adam/ReadVariableOp_26ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_16/ReadVariableOpReadVariableOptraining_1/Adam/m_3_1*
dtype0*
_output_shapes
:@
�
training_1/Adam/mul_16Mul!training_1/Adam/ReadVariableOp_26%training_1/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:@
g
!training_1/Adam/ReadVariableOp_27ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/x!training_1/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
�
training_1/Adam/mul_17Multraining_1/Adam/sub_11=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
r
training_1/Adam/add_10Addtraining_1/Adam/mul_16training_1/Adam/mul_17*
T0*
_output_shapes
:@
g
!training_1/Adam/ReadVariableOp_28ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_18/ReadVariableOpReadVariableOptraining_1/Adam/v_3_1*
dtype0*
_output_shapes
:@
�
training_1/Adam/mul_18Mul!training_1/Adam/ReadVariableOp_28%training_1/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:@
g
!training_1/Adam/ReadVariableOp_29ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_12/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
{
training_1/Adam/sub_12Subtraining_1/Adam/sub_12/x!training_1/Adam/ReadVariableOp_29*
_output_shapes
: *
T0
�
training_1/Adam/Square_3Square=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
t
training_1/Adam/mul_19Multraining_1/Adam/sub_12training_1/Adam/Square_3*
_output_shapes
:@*
T0
r
training_1/Adam/add_11Addtraining_1/Adam/mul_18training_1/Adam/mul_19*
_output_shapes
:@*
T0
o
training_1/Adam/mul_20Multraining_1/Adam/multraining_1/Adam/add_10*
_output_shapes
:@*
T0
\
training_1/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_10Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_10*
T0*
_output_shapes
:@
�
training_1/Adam/clip_by_value_4Maximum'training_1/Adam/clip_by_value_4/Minimumtraining_1/Adam/Const_9*
_output_shapes
:@*
T0
d
training_1/Adam/Sqrt_4Sqrttraining_1/Adam/clip_by_value_4*
T0*
_output_shapes
:@
]
training_1/Adam/add_12/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
t
training_1/Adam/add_12Addtraining_1/Adam/Sqrt_4training_1/Adam/add_12/y*
_output_shapes
:@*
T0
y
training_1/Adam/truediv_4RealDivtraining_1/Adam/mul_20training_1/Adam/add_12*
T0*
_output_shapes
:@
m
!training_1/Adam/ReadVariableOp_30ReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@
�
training_1/Adam/sub_13Sub!training_1/Adam/ReadVariableOp_30training_1/Adam/truediv_4*
T0*
_output_shapes
:@
r
"training_1/Adam/AssignVariableOp_9AssignVariableOptraining_1/Adam/m_3_1training_1/Adam/add_10*
dtype0
�
!training_1/Adam/ReadVariableOp_31ReadVariableOptraining_1/Adam/m_3_1#^training_1/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
s
#training_1/Adam/AssignVariableOp_10AssignVariableOptraining_1/Adam/v_3_1training_1/Adam/add_11*
dtype0
�
!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/v_3_1$^training_1/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
m
#training_1/Adam/AssignVariableOp_11AssignVariableOpm2_hidden2/biastraining_1/Adam/sub_13*
dtype0
�
!training_1/Adam/ReadVariableOp_33ReadVariableOpm2_hidden2/bias$^training_1/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
g
!training_1/Adam/ReadVariableOp_34ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_21/ReadVariableOpReadVariableOptraining_1/Adam/m_4_1*
dtype0*
_output_shapes

:@
�
training_1/Adam/mul_21Mul!training_1/Adam/ReadVariableOp_34%training_1/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:@
g
!training_1/Adam/ReadVariableOp_35ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_14/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_14Subtraining_1/Adam/sub_14/x!training_1/Adam/ReadVariableOp_35*
_output_shapes
: *
T0
�
training_1/Adam/mul_22Multraining_1/Adam/sub_149training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
v
training_1/Adam/add_13Addtraining_1/Adam/mul_21training_1/Adam/mul_22*
T0*
_output_shapes

:@
g
!training_1/Adam/ReadVariableOp_36ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_23/ReadVariableOpReadVariableOptraining_1/Adam/v_4_1*
dtype0*
_output_shapes

:@
�
training_1/Adam/mul_23Mul!training_1/Adam/ReadVariableOp_36%training_1/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes

:@
g
!training_1/Adam/ReadVariableOp_37ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_15/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_15Subtraining_1/Adam/sub_15/x!training_1/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 
�
training_1/Adam/Square_4Square9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
x
training_1/Adam/mul_24Multraining_1/Adam/sub_15training_1/Adam/Square_4*
_output_shapes

:@*
T0
v
training_1/Adam/add_14Addtraining_1/Adam/mul_23training_1/Adam/mul_24*
_output_shapes

:@*
T0
s
training_1/Adam/mul_25Multraining_1/Adam/multraining_1/Adam/add_13*
_output_shapes

:@*
T0
]
training_1/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_12Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
'training_1/Adam/clip_by_value_5/MinimumMinimumtraining_1/Adam/add_14training_1/Adam/Const_12*
_output_shapes

:@*
T0
�
training_1/Adam/clip_by_value_5Maximum'training_1/Adam/clip_by_value_5/Minimumtraining_1/Adam/Const_11*
_output_shapes

:@*
T0
h
training_1/Adam/Sqrt_5Sqrttraining_1/Adam/clip_by_value_5*
T0*
_output_shapes

:@
]
training_1/Adam/add_15/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
x
training_1/Adam/add_15Addtraining_1/Adam/Sqrt_5training_1/Adam/add_15/y*
T0*
_output_shapes

:@
}
training_1/Adam/truediv_5RealDivtraining_1/Adam/mul_25training_1/Adam/add_15*
_output_shapes

:@*
T0
s
!training_1/Adam/ReadVariableOp_38ReadVariableOpm2_hidden3/kernel*
dtype0*
_output_shapes

:@
�
training_1/Adam/sub_16Sub!training_1/Adam/ReadVariableOp_38training_1/Adam/truediv_5*
T0*
_output_shapes

:@
s
#training_1/Adam/AssignVariableOp_12AssignVariableOptraining_1/Adam/m_4_1training_1/Adam/add_13*
dtype0
�
!training_1/Adam/ReadVariableOp_39ReadVariableOptraining_1/Adam/m_4_1$^training_1/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
s
#training_1/Adam/AssignVariableOp_13AssignVariableOptraining_1/Adam/v_4_1training_1/Adam/add_14*
dtype0
�
!training_1/Adam/ReadVariableOp_40ReadVariableOptraining_1/Adam/v_4_1$^training_1/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
o
#training_1/Adam/AssignVariableOp_14AssignVariableOpm2_hidden3/kerneltraining_1/Adam/sub_16*
dtype0
�
!training_1/Adam/ReadVariableOp_41ReadVariableOpm2_hidden3/kernel$^training_1/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
g
!training_1/Adam/ReadVariableOp_42ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_26/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*
dtype0*
_output_shapes
:
�
training_1/Adam/mul_26Mul!training_1/Adam/ReadVariableOp_42%training_1/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_43ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_17/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
{
training_1/Adam/sub_17Subtraining_1/Adam/sub_17/x!training_1/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 
�
training_1/Adam/mul_27Multraining_1/Adam/sub_17=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
r
training_1/Adam/add_16Addtraining_1/Adam/mul_26training_1/Adam/mul_27*
_output_shapes
:*
T0
g
!training_1/Adam/ReadVariableOp_44ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_28/ReadVariableOpReadVariableOptraining_1/Adam/v_5_1*
dtype0*
_output_shapes
:
�
training_1/Adam/mul_28Mul!training_1/Adam/ReadVariableOp_44%training_1/Adam/mul_28/ReadVariableOp*
_output_shapes
:*
T0
g
!training_1/Adam/ReadVariableOp_45ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_18/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_18Subtraining_1/Adam/sub_18/x!training_1/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 
�
training_1/Adam/Square_5Square=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
t
training_1/Adam/mul_29Multraining_1/Adam/sub_18training_1/Adam/Square_5*
T0*
_output_shapes
:
r
training_1/Adam/add_17Addtraining_1/Adam/mul_28training_1/Adam/mul_29*
T0*
_output_shapes
:
o
training_1/Adam/mul_30Multraining_1/Adam/multraining_1/Adam/add_16*
_output_shapes
:*
T0
]
training_1/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_14Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
_output_shapes
:*
T0
�
training_1/Adam/clip_by_value_6Maximum'training_1/Adam/clip_by_value_6/Minimumtraining_1/Adam/Const_13*
_output_shapes
:*
T0
d
training_1/Adam/Sqrt_6Sqrttraining_1/Adam/clip_by_value_6*
T0*
_output_shapes
:
]
training_1/Adam/add_18/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
t
training_1/Adam/add_18Addtraining_1/Adam/Sqrt_6training_1/Adam/add_18/y*
T0*
_output_shapes
:
y
training_1/Adam/truediv_6RealDivtraining_1/Adam/mul_30training_1/Adam/add_18*
_output_shapes
:*
T0
m
!training_1/Adam/ReadVariableOp_46ReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:
�
training_1/Adam/sub_19Sub!training_1/Adam/ReadVariableOp_46training_1/Adam/truediv_6*
_output_shapes
:*
T0
s
#training_1/Adam/AssignVariableOp_15AssignVariableOptraining_1/Adam/m_5_1training_1/Adam/add_16*
dtype0
�
!training_1/Adam/ReadVariableOp_47ReadVariableOptraining_1/Adam/m_5_1$^training_1/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
s
#training_1/Adam/AssignVariableOp_16AssignVariableOptraining_1/Adam/v_5_1training_1/Adam/add_17*
dtype0
�
!training_1/Adam/ReadVariableOp_48ReadVariableOptraining_1/Adam/v_5_1$^training_1/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
m
#training_1/Adam/AssignVariableOp_17AssignVariableOpm2_hidden3/biastraining_1/Adam/sub_19*
dtype0
�
!training_1/Adam/ReadVariableOp_49ReadVariableOpm2_hidden3/bias$^training_1/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_50ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_31/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*
dtype0*
_output_shapes

:

�
training_1/Adam/mul_31Mul!training_1/Adam/ReadVariableOp_50%training_1/Adam/mul_31/ReadVariableOp*
_output_shapes

:
*
T0
g
!training_1/Adam/ReadVariableOp_51ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_20/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_20Subtraining_1/Adam/sub_20/x!training_1/Adam/ReadVariableOp_51*
_output_shapes
: *
T0
�
training_1/Adam/mul_32Multraining_1/Adam/sub_208training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
v
training_1/Adam/add_19Addtraining_1/Adam/mul_31training_1/Adam/mul_32*
_output_shapes

:
*
T0
g
!training_1/Adam/ReadVariableOp_52ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_33/ReadVariableOpReadVariableOptraining_1/Adam/v_6_1*
dtype0*
_output_shapes

:

�
training_1/Adam/mul_33Mul!training_1/Adam/ReadVariableOp_52%training_1/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_53ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_21/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
{
training_1/Adam/sub_21Subtraining_1/Adam/sub_21/x!training_1/Adam/ReadVariableOp_53*
_output_shapes
: *
T0
�
training_1/Adam/Square_6Square8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
x
training_1/Adam/mul_34Multraining_1/Adam/sub_21training_1/Adam/Square_6*
_output_shapes

:
*
T0
v
training_1/Adam/add_20Addtraining_1/Adam/mul_33training_1/Adam/mul_34*
_output_shapes

:
*
T0
s
training_1/Adam/mul_35Multraining_1/Adam/multraining_1/Adam/add_19*
_output_shapes

:
*
T0
]
training_1/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_16Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_7/MinimumMinimumtraining_1/Adam/add_20training_1/Adam/Const_16*
_output_shapes

:
*
T0
�
training_1/Adam/clip_by_value_7Maximum'training_1/Adam/clip_by_value_7/Minimumtraining_1/Adam/Const_15*
T0*
_output_shapes

:

h
training_1/Adam/Sqrt_7Sqrttraining_1/Adam/clip_by_value_7*
_output_shapes

:
*
T0
]
training_1/Adam/add_21/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
x
training_1/Adam/add_21Addtraining_1/Adam/Sqrt_7training_1/Adam/add_21/y*
_output_shapes

:
*
T0
}
training_1/Adam/truediv_7RealDivtraining_1/Adam/mul_35training_1/Adam/add_21*
_output_shapes

:
*
T0
r
!training_1/Adam/ReadVariableOp_54ReadVariableOpm2_output/kernel*
dtype0*
_output_shapes

:

�
training_1/Adam/sub_22Sub!training_1/Adam/ReadVariableOp_54training_1/Adam/truediv_7*
_output_shapes

:
*
T0
s
#training_1/Adam/AssignVariableOp_18AssignVariableOptraining_1/Adam/m_6_1training_1/Adam/add_19*
dtype0
�
!training_1/Adam/ReadVariableOp_55ReadVariableOptraining_1/Adam/m_6_1$^training_1/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

s
#training_1/Adam/AssignVariableOp_19AssignVariableOptraining_1/Adam/v_6_1training_1/Adam/add_20*
dtype0
�
!training_1/Adam/ReadVariableOp_56ReadVariableOptraining_1/Adam/v_6_1$^training_1/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

n
#training_1/Adam/AssignVariableOp_20AssignVariableOpm2_output/kerneltraining_1/Adam/sub_22*
dtype0
�
!training_1/Adam/ReadVariableOp_57ReadVariableOpm2_output/kernel$^training_1/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_58ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_36/ReadVariableOpReadVariableOptraining_1/Adam/m_7_1*
dtype0*
_output_shapes
:

�
training_1/Adam/mul_36Mul!training_1/Adam/ReadVariableOp_58%training_1/Adam/mul_36/ReadVariableOp*
_output_shapes
:
*
T0
g
!training_1/Adam/ReadVariableOp_59ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_23/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
�
training_1/Adam/mul_37Multraining_1/Adam/sub_23<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
r
training_1/Adam/add_22Addtraining_1/Adam/mul_36training_1/Adam/mul_37*
_output_shapes
:
*
T0
g
!training_1/Adam/ReadVariableOp_60ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_38/ReadVariableOpReadVariableOptraining_1/Adam/v_7_1*
dtype0*
_output_shapes
:

�
training_1/Adam/mul_38Mul!training_1/Adam/ReadVariableOp_60%training_1/Adam/mul_38/ReadVariableOp*
_output_shapes
:
*
T0
g
!training_1/Adam/ReadVariableOp_61ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_24/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_24Subtraining_1/Adam/sub_24/x!training_1/Adam/ReadVariableOp_61*
_output_shapes
: *
T0
�
training_1/Adam/Square_7Square<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
t
training_1/Adam/mul_39Multraining_1/Adam/sub_24training_1/Adam/Square_7*
T0*
_output_shapes
:

r
training_1/Adam/add_23Addtraining_1/Adam/mul_38training_1/Adam/mul_39*
T0*
_output_shapes
:

o
training_1/Adam/mul_40Multraining_1/Adam/multraining_1/Adam/add_22*
T0*
_output_shapes
:

]
training_1/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training_1/Adam/Const_18Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
T0*
_output_shapes
:

�
training_1/Adam/clip_by_value_8Maximum'training_1/Adam/clip_by_value_8/Minimumtraining_1/Adam/Const_17*
_output_shapes
:
*
T0
d
training_1/Adam/Sqrt_8Sqrttraining_1/Adam/clip_by_value_8*
T0*
_output_shapes
:

]
training_1/Adam/add_24/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
t
training_1/Adam/add_24Addtraining_1/Adam/Sqrt_8training_1/Adam/add_24/y*
T0*
_output_shapes
:

y
training_1/Adam/truediv_8RealDivtraining_1/Adam/mul_40training_1/Adam/add_24*
T0*
_output_shapes
:

l
!training_1/Adam/ReadVariableOp_62ReadVariableOpm2_output/bias*
dtype0*
_output_shapes
:

�
training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
T0*
_output_shapes
:

s
#training_1/Adam/AssignVariableOp_21AssignVariableOptraining_1/Adam/m_7_1training_1/Adam/add_22*
dtype0
�
!training_1/Adam/ReadVariableOp_63ReadVariableOptraining_1/Adam/m_7_1$^training_1/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

s
#training_1/Adam/AssignVariableOp_22AssignVariableOptraining_1/Adam/v_7_1training_1/Adam/add_23*
dtype0
�
!training_1/Adam/ReadVariableOp_64ReadVariableOptraining_1/Adam/v_7_1$^training_1/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

l
#training_1/Adam/AssignVariableOp_23AssignVariableOpm2_output/biastraining_1/Adam/sub_25*
dtype0
�
!training_1/Adam/ReadVariableOp_65ReadVariableOpm2_output/bias$^training_1/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

e
training_1/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 
V
training_1/VarIsInitializedOp_1VarIsInitializedOptotal_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_2VarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_3VarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 
`
training_1/VarIsInitializedOp_4VarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 
d
training_1/VarIsInitializedOp_5VarIsInitializedOptraining_1/Adam/v_4_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_6VarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_7VarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_8VarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_9VarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_10VarIsInitializedOptraining_1/Adam/m_3_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_11VarIsInitializedOptraining_1/Adam/v_3_1*
_output_shapes
: 
_
 training_1/VarIsInitializedOp_12VarIsInitializedOpm2_hidden3/bias*
_output_shapes
: 
a
 training_1/VarIsInitializedOp_13VarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 
]
 training_1/VarIsInitializedOp_14VarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_15VarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 
d
 training_1/VarIsInitializedOp_16VarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_17VarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_18VarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 
\
 training_1/VarIsInitializedOp_19VarIsInitializedOpAdam_1/decay*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_20VarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 
a
 training_1/VarIsInitializedOp_21VarIsInitializedOpAdam_1/iterations*
_output_shapes
: 
`
 training_1/VarIsInitializedOp_22VarIsInitializedOpm2_output/kernel*
_output_shapes
: 
]
 training_1/VarIsInitializedOp_23VarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_24VarIsInitializedOptraining_1/Adam/v_6_1*
_output_shapes
: 
^
 training_1/VarIsInitializedOp_25VarIsInitializedOpm2_output/bias*
_output_shapes
: 
a
 training_1/VarIsInitializedOp_26VarIsInitializedOpm2_hidden3/kernel*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_27VarIsInitializedOptraining_1/Adam/m_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_28VarIsInitializedOptraining_1/Adam/v_7_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_29VarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_30VarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_31VarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 
W
 training_1/VarIsInitializedOp_32VarIsInitializedOpcount_1*
_output_shapes
: 
_
 training_1/VarIsInitializedOp_33VarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_34VarIsInitializedOptraining_1/Adam/m_6_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_35VarIsInitializedOptraining_1/Adam/v_5_1*
_output_shapes
: 
_
 training_1/VarIsInitializedOp_36VarIsInitializedOpm2_hidden2/bias*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_37VarIsInitializedOptraining_1/Adam/m_4_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_38VarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 
�	
training_1/initNoOp^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^count_1/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^total_1/Assign^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign
�
training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9
�
group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1"iA�?     ���	���!��AJ��
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
&
	ZerosLike
x"T
y"T"	
Ttype*1.13.12
b'unknown'��
u
m1_hidden1_inputPlaceholder*
shape:����������*
dtype0*(
_output_shapes
:����������
p
m1_hidden1/random_uniform/shapeConst*
_output_shapes
:*
valueB"   �   *
dtype0
b
m1_hidden1/random_uniform/minConst*
_output_shapes
: *
valueB
 *�\1�*
dtype0
b
m1_hidden1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *�\1=
�
'm1_hidden1/random_uniform/RandomUniformRandomUniformm1_hidden1/random_uniform/shape*
seed2��0* 
_output_shapes
:
��*
seed�*
T0*
dtype0
�
m1_hidden1/random_uniform/subSubm1_hidden1/random_uniform/maxm1_hidden1/random_uniform/min*
_output_shapes
: *
T0
�
m1_hidden1/random_uniform/mulMul'm1_hidden1/random_uniform/RandomUniformm1_hidden1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
m1_hidden1/random_uniformAddm1_hidden1/random_uniform/mulm1_hidden1/random_uniform/min* 
_output_shapes
:
��*
T0
�
m1_hidden1/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel*
	container *
shape:
��
s
2m1_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 
�
m1_hidden1/kernel/AssignAssignVariableOpm1_hidden1/kernelm1_hidden1/random_uniform*$
_class
loc:@m1_hidden1/kernel*
dtype0
�
%m1_hidden1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel*
dtype0* 
_output_shapes
:
��
_
m1_hidden1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
�
m1_hidden1/biasVarHandleOp* 
shared_namem1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
	container *
shape:�*
dtype0*
_output_shapes
: 
o
0m1_hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1/bias*
_output_shapes
: 
~
m1_hidden1/bias/AssignAssignVariableOpm1_hidden1/biasm1_hidden1/Const*"
_class
loc:@m1_hidden1/bias*
dtype0
�
#m1_hidden1/bias/Read/ReadVariableOpReadVariableOpm1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
dtype0*
_output_shapes	
:�
t
 m1_hidden1/MatMul/ReadVariableOpReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:
��
�
m1_hidden1/MatMulMatMulm1_hidden1_input m1_hidden1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:����������
n
!m1_hidden1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden1/bias*
_output_shapes	
:�*
dtype0
�
m1_hidden1/BiasAddBiasAddm1_hidden1/MatMul!m1_hidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:����������
^
m1_hidden1/ReluRelum1_hidden1/BiasAdd*(
_output_shapes
:����������*
T0
p
m1_hidden2/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
b
m1_hidden2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
b
m1_hidden2/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
'm1_hidden2/random_uniform/RandomUniformRandomUniformm1_hidden2/random_uniform/shape*
dtype0*
seed2��*
_output_shapes
:	�@*
seed�*
T0
�
m1_hidden2/random_uniform/subSubm1_hidden2/random_uniform/maxm1_hidden2/random_uniform/min*
T0*
_output_shapes
: 
�
m1_hidden2/random_uniform/mulMul'm1_hidden2/random_uniform/RandomUniformm1_hidden2/random_uniform/sub*
_output_shapes
:	�@*
T0
�
m1_hidden2/random_uniformAddm1_hidden2/random_uniform/mulm1_hidden2/random_uniform/min*
T0*
_output_shapes
:	�@
�
m1_hidden2/kernelVarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *"
shared_namem1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel
s
2m1_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 
�
m1_hidden2/kernel/AssignAssignVariableOpm1_hidden2/kernelm1_hidden2/random_uniform*$
_class
loc:@m1_hidden2/kernel*
dtype0
�
%m1_hidden2/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
dtype0*
_output_shapes
:	�@
]
m1_hidden2/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
�
m1_hidden2/biasVarHandleOp*
shape:@*
dtype0*
_output_shapes
: * 
shared_namem1_hidden2/bias*"
_class
loc:@m1_hidden2/bias*
	container 
o
0m1_hidden2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2/bias*
_output_shapes
: 
~
m1_hidden2/bias/AssignAssignVariableOpm1_hidden2/biasm1_hidden2/Const*"
_class
loc:@m1_hidden2/bias*
dtype0
�
#m1_hidden2/bias/Read/ReadVariableOpReadVariableOpm1_hidden2/bias*"
_class
loc:@m1_hidden2/bias*
dtype0*
_output_shapes
:@
s
 m1_hidden2/MatMul/ReadVariableOpReadVariableOpm1_hidden2/kernel*
dtype0*
_output_shapes
:	�@
�
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������@*
transpose_b( *
T0
m
!m1_hidden2/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@
�
m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������@*
T0
]
m1_hidden2/ReluRelum1_hidden2/BiasAdd*'
_output_shapes
:���������@*
T0
p
m1_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m1_hidden3/random_uniform/minConst*
valueB
 *�7��*
dtype0*
_output_shapes
: 
b
m1_hidden3/random_uniform/maxConst*
valueB
 *�7�>*
dtype0*
_output_shapes
: 
�
'm1_hidden3/random_uniform/RandomUniformRandomUniformm1_hidden3/random_uniform/shape*
seed2���*
_output_shapes

:@*
seed�*
T0*
dtype0
�
m1_hidden3/random_uniform/subSubm1_hidden3/random_uniform/maxm1_hidden3/random_uniform/min*
_output_shapes
: *
T0
�
m1_hidden3/random_uniform/mulMul'm1_hidden3/random_uniform/RandomUniformm1_hidden3/random_uniform/sub*
T0*
_output_shapes

:@
�
m1_hidden3/random_uniformAddm1_hidden3/random_uniform/mulm1_hidden3/random_uniform/min*
T0*
_output_shapes

:@
�
m1_hidden3/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem1_hidden3/kernel*$
_class
loc:@m1_hidden3/kernel*
	container *
shape
:@
s
2m1_hidden3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3/kernel*
_output_shapes
: 
�
m1_hidden3/kernel/AssignAssignVariableOpm1_hidden3/kernelm1_hidden3/random_uniform*$
_class
loc:@m1_hidden3/kernel*
dtype0
�
%m1_hidden3/kernel/Read/ReadVariableOpReadVariableOpm1_hidden3/kernel*$
_class
loc:@m1_hidden3/kernel*
dtype0*
_output_shapes

:@
]
m1_hidden3/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
�
m1_hidden3/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namem1_hidden3/bias*"
_class
loc:@m1_hidden3/bias*
	container *
shape:
o
0m1_hidden3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3/bias*
_output_shapes
: 
~
m1_hidden3/bias/AssignAssignVariableOpm1_hidden3/biasm1_hidden3/Const*"
_class
loc:@m1_hidden3/bias*
dtype0
�
#m1_hidden3/bias/Read/ReadVariableOpReadVariableOpm1_hidden3/bias*"
_class
loc:@m1_hidden3/bias*
dtype0*
_output_shapes
:
r
 m1_hidden3/MatMul/ReadVariableOpReadVariableOpm1_hidden3/kernel*
dtype0*
_output_shapes

:@
�
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
_output_shapes
:*
dtype0
�
m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������
]
m1_hidden3/ReluRelum1_hidden3/BiasAdd*
T0*'
_output_shapes
:���������
o
m1_output/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
a
m1_output/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *����
a
m1_output/random_uniform/maxConst*
_output_shapes
: *
valueB
 *���>*
dtype0
�
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
T0*
dtype0*
seed2���*
_output_shapes

:
*
seed�
�
m1_output/random_uniform/subSubm1_output/random_uniform/maxm1_output/random_uniform/min*
T0*
_output_shapes
: 
�
m1_output/random_uniform/mulMul&m1_output/random_uniform/RandomUniformm1_output/random_uniform/sub*
T0*
_output_shapes

:

�
m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
_output_shapes

:
*
T0
�
m1_output/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namem1_output/kernel*#
_class
loc:@m1_output/kernel*
	container *
shape
:

q
1m1_output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output/kernel*
_output_shapes
: 
�
m1_output/kernel/AssignAssignVariableOpm1_output/kernelm1_output/random_uniform*#
_class
loc:@m1_output/kernel*
dtype0
�
$m1_output/kernel/Read/ReadVariableOpReadVariableOpm1_output/kernel*
_output_shapes

:
*#
_class
loc:@m1_output/kernel*
dtype0
\
m1_output/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m1_output/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namem1_output/bias*!
_class
loc:@m1_output/bias*
	container *
shape:

m
/m1_output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output/bias*
_output_shapes
: 
z
m1_output/bias/AssignAssignVariableOpm1_output/biasm1_output/Const*!
_class
loc:@m1_output/bias*
dtype0
�
"m1_output/bias/Read/ReadVariableOpReadVariableOpm1_output/bias*!
_class
loc:@m1_output/bias*
dtype0*
_output_shapes
:

p
m1_output/MatMul/ReadVariableOpReadVariableOpm1_output/kernel*
dtype0*
_output_shapes

:

�
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
k
 m1_output/BiasAdd/ReadVariableOpReadVariableOpm1_output/bias*
dtype0*
_output_shapes
:

�
m1_output/BiasAddBiasAddm1_output/MatMul m1_output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������

a
m1_output/SoftmaxSoftmaxm1_output/BiasAdd*
T0*'
_output_shapes
:���������

�
)Adam/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *"
_class
loc:@Adam/iterations*
value	B	 R 
�
Adam/iterationsVarHandleOp* 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 
�
Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	
�
#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
�
,Adam/learning_rate/Initializer/initial_valueConst*%
_class
loc:@Adam/learning_rate*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
Adam/learning_rateVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate
u
3Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
�
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0
�
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *%
_class
loc:@Adam/learning_rate*
dtype0
�
%Adam/beta_1/Initializer/initial_valueConst*
_class
loc:@Adam/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
Adam/beta_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
�
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0
�
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1
�
%Adam/beta_2/Initializer/initial_valueConst*
_class
loc:@Adam/beta_2*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
�
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0
�
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
�
$Adam/decay/Initializer/initial_valueConst*
_output_shapes
: *
_class
loc:@Adam/decay*
valueB
 *    *
dtype0
�

Adam/decayVarHandleOp*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 
�
Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0
�
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
dtype0
�
m1_output_targetPlaceholder*%
shape:������������������*
dtype0*0
_output_shapes
:������������������
s
m1_output_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
J
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
totalVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
U
total/AssignAssignVariableOptotalConst*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: *
_class

loc:@total
L
Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
countVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
W
count/AssignAssignVariableOpcountConst_1*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
�
metrics/accuracy/SqueezeSqueezem1_output_target*
squeeze_dims

���������*
T0*#
_output_shapes
:���������
l
!metrics/accuracy/ArgMax/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:���������*

Tidx0
�
metrics/accuracy/CastCastmetrics/accuracy/ArgMax*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:���������
~
metrics/accuracy/EqualEqualmetrics/accuracy/Squeezemetrics/accuracy/Cast*#
_output_shapes
:���������*
T0
�
metrics/accuracy/Cast_1Castmetrics/accuracy/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:���������
`
metrics/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics/accuracy/SumSummetrics/accuracy/Cast_1metrics/accuracy/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
�
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
g
metrics/accuracy/SizeSizemetrics/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
v
metrics/accuracy/Cast_2Castmetrics/accuracy/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
j
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_2*
dtype0
�
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
!metrics/accuracy/ReadVariableOp_2ReadVariableOptotal ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
'metrics/accuracy/truediv/ReadVariableOpReadVariableOpcount ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
metrics/accuracy/truedivRealDiv!metrics/accuracy/ReadVariableOp_2'metrics/accuracy/truediv/ReadVariableOp*
_output_shapes
: *
T0
`
metrics/accuracy/IdentityIdentitymetrics/accuracy/truediv*
_output_shapes
: *
T0
~
9loss/m1_output_loss/sparse_categorical_crossentropy/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *���3
~
9loss/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
7loss/m1_output_loss/sparse_categorical_crossentropy/subSub9loss/m1_output_loss/sparse_categorical_crossentropy/sub/x9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
�
Iloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:���������

�
Aloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:���������

�
7loss/m1_output_loss/sparse_categorical_crossentropy/LogLogAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:���������

�
Aloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*

DstT0	*#
_output_shapes
:���������*

SrcT0*
Truncate( 
�
Closs/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape7loss/m1_output_loss/sparse_categorical_crossentropy/LogCloss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������

�
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
�
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
Tlabels0	*6
_output_shapes$
":���������:���������
*
T0
�
Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:���������*
T0
�
Gloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

DstT0*
_output_shapes
: *

SrcT0*
Truncate( 
�
Iloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
loss/mulMul
loss/mul/xIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
J
Const_2Const*
valueB *
dtype0*
_output_shapes
: 
]
MeanMeanloss/mulConst_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
y
training/Adam/gradients/ShapeConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
_class
	loc:@Mean*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*
_class
	loc:@Mean*

index_type0
�
/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 
�
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
T0*
_class
	loc:@Mean*
Tshape0*
_output_shapes
: 
�
'training/Adam/gradients/Mean_grad/ConstConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 
�
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*
T0*
_class
	loc:@Mean*
_output_shapes
: *

Tmultiples0
�
)training/Adam/gradients/Mean_grad/Const_1Const*
_class
	loc:@Mean*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
)training/Adam/gradients/Mean_grad/truedivRealDiv&training/Adam/gradients/Mean_grad/Tile)training/Adam/gradients/Mean_grad/Const_1*
_output_shapes
: *
T0*
_class
	loc:@Mean
�
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
+training/Adam/gradients/loss/mul_grad/Mul_1Mul)training/Adam/gradients/Mean_grad/truediv
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 
�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0*
_output_shapes
:
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0*
_output_shapes
:
�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*

Tmultiples0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:���������
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:
�
xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgshtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:���������:���������
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������*
T0
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:���������
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weightsgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:���������
�
"training/Adam/gradients/zeros_like	ZerosLike}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������

�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������
*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
���������*
dtype0*
_output_shapes
: 
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������*

Tdim0
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:���������
*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0*
_output_shapes
:
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*'
_output_shapes
:���������
*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0
�
_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valuec^training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*'
_output_shapes
:���������
*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log
�
Xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulbtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������

�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
_output_shapes
:*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:���������
*
T0
�
ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:���������:���������
�
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*'
_output_shapes
:���������
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0
�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapedtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output/Softmax*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0
�
rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0*'
_output_shapes
:���������

�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
mtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
otraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:���������
*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 
�
2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

�
Dtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indicesConst*$
_class
loc:@m1_output/Softmax*
valueB :
���������*
dtype0*
_output_shapes
: 
�
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������*
	keep_dims(*

Tidx0
�
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

�
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*'
_output_shapes
:���������
*
T0*$
_class
loc:@m1_output/Softmax
�
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC*
_output_shapes
:
*
T0
�
4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*
T0*#
_class
loc:@m1_output/MatMul*
transpose_a( *'
_output_shapes
:���������*
transpose_b(
�
6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1MatMulm1_hidden3/Relu4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*#
_class
loc:@m1_output/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
�
5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGradReluGrad4training/Adam/gradients/m1_output/MatMul_grad/MatMulm1_hidden3/Relu*
T0*"
_class
loc:@m1_hidden3/Relu*'
_output_shapes
:���������
�
;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:
�
5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad m1_hidden3/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������@*
transpose_b(*
T0*$
_class
loc:@m1_hidden3/MatMul
�
7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1MatMulm1_hidden2/Relu5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0*$
_class
loc:@m1_hidden3/MatMul
�
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*
T0*"
_class
loc:@m1_hidden2/Relu*'
_output_shapes
:���������@
�
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad m1_hidden2/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden2/MatMul*
transpose_a( *(
_output_shapes
:����������*
transpose_b(
�
7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1MatMulm1_hidden1/Relu5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
transpose_b( *
T0*$
_class
loc:@m1_hidden2/MatMul*
transpose_a(*
_output_shapes
:	�@
�
5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulm1_hidden1/Relu*"
_class
loc:@m1_hidden1/Relu*(
_output_shapes
:����������*
T0
�
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�*
T0
�
5training/Adam/gradients/m1_hidden1/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad m1_hidden1/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m1_hidden1/MatMul*
transpose_a( *(
_output_shapes
:����������
�
7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden1/MatMul*
transpose_a(* 
_output_shapes
:
��*
transpose_b( 
U
training/Adam/ConstConst*
_output_shapes
: *
value	B	 R*
dtype0	
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	
�
training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

DstT0*
_output_shapes
: *

SrcT0	*
Truncate( 
X
training/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 
�
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
_output_shapes
: *
T0
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
i
training/Adam/ReadVariableOp_1ReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
r
!training/Adam/m_0/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
\
training/Adam/m_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training/Adam/m_0_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
	container *
shape:
��
w
4training/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 
�
training/Adam/m_0_1/AssignAssignVariableOptraining/Adam/m_0_1training/Adam/m_0*&
_class
loc:@training/Adam/m_0_1*
dtype0
�
'training/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
dtype0* 
_output_shapes
:
��
`
training/Adam/m_1Const*
dtype0*
_output_shapes	
:�*
valueB�*    
�
training/Adam/m_1_1VarHandleOp*$
shared_nametraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
	container *
shape:�*
dtype0*
_output_shapes
: 
w
4training/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 
�
training/Adam/m_1_1/AssignAssignVariableOptraining/Adam/m_1_1training/Adam/m_1*&
_class
loc:@training/Adam/m_1_1*
dtype0
�
'training/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
dtype0*
_output_shapes	
:�
r
!training/Adam/m_2/shape_as_tensorConst*
_output_shapes
:*
valueB"�   @   *
dtype0
\
training/Adam/m_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/m_2_1VarHandleOp*$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
	container *
shape:	�@*
dtype0*
_output_shapes
: 
w
4training/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 
�
training/Adam/m_2_1/AssignAssignVariableOptraining/Adam/m_2_1training/Adam/m_2*
dtype0*&
_class
loc:@training/Adam/m_2_1
�
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*
_output_shapes
:	�@*&
_class
loc:@training/Adam/m_2_1*
dtype0
^
training/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/m_3_1VarHandleOp*$
shared_nametraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: 
w
4training/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 
�
training/Adam/m_3_1/AssignAssignVariableOptraining/Adam/m_3_1training/Adam/m_3*&
_class
loc:@training/Adam/m_3_1*
dtype0
�
'training/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
dtype0*
_output_shapes
:@
r
!training/Adam/m_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
\
training/Adam/m_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
�
training/Adam/m_4_1VarHandleOp*$
shared_nametraining/Adam/m_4_1*&
_class
loc:@training/Adam/m_4_1*
	container *
shape
:@*
dtype0*
_output_shapes
: 
w
4training/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 
�
training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*&
_class
loc:@training/Adam/m_4_1*
dtype0
�
'training/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_4_1*&
_class
loc:@training/Adam/m_4_1*
dtype0*
_output_shapes

:@
^
training/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/m_5_1VarHandleOp*$
shared_nametraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
w
4training/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
�
training/Adam/m_5_1/AssignAssignVariableOptraining/Adam/m_5_1training/Adam/m_5*&
_class
loc:@training/Adam/m_5_1*
dtype0
�
'training/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_5_1*
dtype0*
_output_shapes
:*&
_class
loc:@training/Adam/m_5_1
f
training/Adam/m_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training/Adam/m_6_1VarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_6_1*&
_class
loc:@training/Adam/m_6_1*
	container 
w
4training/Adam/m_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_6_1*
_output_shapes
: 
�
training/Adam/m_6_1/AssignAssignVariableOptraining/Adam/m_6_1training/Adam/m_6*&
_class
loc:@training/Adam/m_6_1*
dtype0
�
'training/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_6_1*
_output_shapes

:
*&
_class
loc:@training/Adam/m_6_1*
dtype0
^
training/Adam/m_7Const*
_output_shapes
:
*
valueB
*    *
dtype0
�
training/Adam/m_7_1VarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_7_1*&
_class
loc:@training/Adam/m_7_1
w
4training/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_7_1*
_output_shapes
: 
�
training/Adam/m_7_1/AssignAssignVariableOptraining/Adam/m_7_1training/Adam/m_7*&
_class
loc:@training/Adam/m_7_1*
dtype0
�
'training/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_7_1*&
_class
loc:@training/Adam/m_7_1*
dtype0*
_output_shapes
:

r
!training/Adam/v_0/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
\
training/Adam/v_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training/Adam/v_0_1VarHandleOp*
shape:
��*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container 
w
4training/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 
�
training/Adam/v_0_1/AssignAssignVariableOptraining/Adam/v_0_1training/Adam/v_0*
dtype0*&
_class
loc:@training/Adam/v_0_1
�
'training/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
`
training/Adam/v_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/v_1_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
	container *
shape:�
w
4training/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
�
training/Adam/v_1_1/AssignAssignVariableOptraining/Adam/v_1_1training/Adam/v_1*&
_class
loc:@training/Adam/v_1_1*
dtype0
�
'training/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
dtype0*
_output_shapes	
:�
r
!training/Adam/v_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
\
training/Adam/v_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/v_2_1VarHandleOp*$
shared_nametraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
	container *
shape:	�@*
dtype0*
_output_shapes
: 
w
4training/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 
�
training/Adam/v_2_1/AssignAssignVariableOptraining/Adam/v_2_1training/Adam/v_2*
dtype0*&
_class
loc:@training/Adam/v_2_1
�
'training/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
^
training/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/v_3_1VarHandleOp*
shape:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_3_1*&
_class
loc:@training/Adam/v_3_1*
	container 
w
4training/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 
�
training/Adam/v_3_1/AssignAssignVariableOptraining/Adam/v_3_1training/Adam/v_3*
dtype0*&
_class
loc:@training/Adam/v_3_1
�
'training/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_3_1*&
_class
loc:@training/Adam/v_3_1*
dtype0*
_output_shapes
:@
r
!training/Adam/v_4/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@      
\
training/Adam/v_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/v_4Fill!training/Adam/v_4/shape_as_tensortraining/Adam/v_4/Const*
_output_shapes

:@*
T0*

index_type0
�
training/Adam/v_4_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1*
	container *
shape
:@
w
4training/Adam/v_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 
�
training/Adam/v_4_1/AssignAssignVariableOptraining/Adam/v_4_1training/Adam/v_4*&
_class
loc:@training/Adam/v_4_1*
dtype0
�
'training/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1*
dtype0*
_output_shapes

:@
^
training/Adam/v_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/v_5_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1*
	container *
shape:
w
4training/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 
�
training/Adam/v_5_1/AssignAssignVariableOptraining/Adam/v_5_1training/Adam/v_5*&
_class
loc:@training/Adam/v_5_1*
dtype0
�
'training/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_5_1*
_output_shapes
:*&
_class
loc:@training/Adam/v_5_1*
dtype0
f
training/Adam/v_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training/Adam/v_6_1VarHandleOp*&
_class
loc:@training/Adam/v_6_1*
	container *
shape
:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_6_1
w
4training/Adam/v_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_6_1*
_output_shapes
: 
�
training/Adam/v_6_1/AssignAssignVariableOptraining/Adam/v_6_1training/Adam/v_6*&
_class
loc:@training/Adam/v_6_1*
dtype0
�
'training/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_6_1*
_output_shapes

:
*&
_class
loc:@training/Adam/v_6_1*
dtype0
^
training/Adam/v_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training/Adam/v_7_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_7_1*&
_class
loc:@training/Adam/v_7_1*
	container *
shape:

w
4training/Adam/v_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_7_1*
_output_shapes
: 
�
training/Adam/v_7_1/AssignAssignVariableOptraining/Adam/v_7_1training/Adam/v_7*&
_class
loc:@training/Adam/v_7_1*
dtype0
�
'training/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_7_1*
dtype0*
_output_shapes
:
*&
_class
loc:@training/Adam/v_7_1
n
$training/Adam/vhat_0/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_0/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_0_1VarHandleOp*'
shared_nametraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 
�
training/Adam/vhat_0_1/AssignAssignVariableOptraining/Adam/vhat_0_1training/Adam/vhat_0*)
_class
loc:@training/Adam/vhat_0_1*
dtype0
�
*training/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_1_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_1_1*)
_class
loc:@training/Adam/vhat_1_1*
	container 
}
7training/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 
�
training/Adam/vhat_1_1/AssignAssignVariableOptraining/Adam/vhat_1_1training/Adam/vhat_1*)
_class
loc:@training/Adam/vhat_1_1*
dtype0
�
*training/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_1_1*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_1_1*
dtype0
n
$training/Adam/vhat_2/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_2_1VarHandleOp*)
_class
loc:@training/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_2_1
}
7training/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
�
training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*)
_class
loc:@training/Adam/vhat_2_1*
dtype0
�
*training/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_3/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_3/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_3Fill$training/Adam/vhat_3/shape_as_tensortraining/Adam/vhat_3/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_3_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1*
	container *
shape:
}
7training/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 
�
training/Adam/vhat_3_1/AssignAssignVariableOptraining/Adam/vhat_3_1training/Adam/vhat_3*)
_class
loc:@training/Adam/vhat_3_1*
dtype0
�
*training/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*

index_type0*
_output_shapes
:*
T0
�
training/Adam/vhat_4_1VarHandleOp*'
shared_nametraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
	container *
shape:*
dtype0*
_output_shapes
: 
}
7training/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 
�
training/Adam/vhat_4_1/AssignAssignVariableOptraining/Adam/vhat_4_1training/Adam/vhat_4*)
_class
loc:@training/Adam/vhat_4_1*
dtype0
�
*training/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_4_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_4_1
n
$training/Adam/vhat_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_5_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1*
	container *
shape:
}
7training/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 
�
training/Adam/vhat_5_1/AssignAssignVariableOptraining/Adam/vhat_5_1training/Adam/vhat_5*
dtype0*)
_class
loc:@training/Adam/vhat_5_1
�
*training/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_6/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_6_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_6_1*)
_class
loc:@training/Adam/vhat_6_1
}
7training/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_6_1*
_output_shapes
: 
�
training/Adam/vhat_6_1/AssignAssignVariableOptraining/Adam/vhat_6_1training/Adam/vhat_6*)
_class
loc:@training/Adam/vhat_6_1*
dtype0
�
*training/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_6_1*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_6_1*
dtype0
n
$training/Adam/vhat_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_7Fill$training/Adam/vhat_7/shape_as_tensortraining/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_7_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1*
	container *
shape:
}
7training/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_7_1*
_output_shapes
: 
�
training/Adam/vhat_7_1/AssignAssignVariableOptraining/Adam/vhat_7_1training/Adam/vhat_7*)
_class
loc:@training/Adam/vhat_7_1*
dtype0
�
*training/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/m_0_1*
dtype0* 
_output_shapes
:
��
�
training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:
��
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
_output_shapes
: *
T0
�
training/Adam/mul_2Multraining/Adam/sub_27training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2* 
_output_shapes
:
��*
T0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
�
training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp* 
_output_shapes
:
��*
T0
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 
�
training/Adam/SquareSquare7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0* 
_output_shapes
:
��
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4* 
_output_shapes
:
��*
T0
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0* 
_output_shapes
:
��
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4* 
_output_shapes
:
��*
T0
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0* 
_output_shapes
:
��
f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1* 
_output_shapes
:
��*
T0
Z
training/Adam/add_3/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0* 
_output_shapes
:
��
w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3* 
_output_shapes
:
��*
T0
r
training/Adam/ReadVariableOp_6ReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:
��
~
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0* 
_output_shapes
:
��
i
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/m_0_1training/Adam/add_1*
dtype0
�
training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/m_0_1^training/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:
��
k
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/v_0_1training/Adam/add_2*
dtype0
�
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/v_0_1!^training/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:
��
i
 training/Adam/AssignVariableOp_2AssignVariableOpm1_hidden1/kerneltraining/Adam/sub_4*
dtype0
�
training/Adam/ReadVariableOp_9ReadVariableOpm1_hidden1/kernel!^training/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:
��
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes	
:�
�
training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:�
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
�
training/Adam/mul_7Multraining/Adam/sub_5;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes	
:�*
T0
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/v_1_1*
dtype0*
_output_shapes	
:�
�
training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes	
:�
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0
�
training/Adam/Square_1Square;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes	
:�*
T0
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes	
:�
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes	
:�
Z
training/Adam/Const_5Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_6Const*
_output_shapes
: *
valueB
 *  �*
dtype0
�
%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
_output_shapes	
:�*
T0
�
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes	
:�
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes	
:�*
T0
Z
training/Adam/add_6/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes	
:�
s
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes	
:�*
T0
l
training/Adam/ReadVariableOp_14ReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:�
z
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes	
:�
k
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/m_1_1training/Adam/add_4*
dtype0
�
training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/m_1_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:�
k
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/v_1_1training/Adam/add_5*
dtype0
�
training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/v_1_1!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:�
g
 training/Adam/AssignVariableOp_5AssignVariableOpm1_hidden1/biastraining/Adam/sub_7*
dtype0
�
training/Adam/ReadVariableOp_17ReadVariableOpm1_hidden1/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:�
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
�
training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
_output_shapes
:	�@*
T0
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
�
training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes
:	�@*
T0
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
�
training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
_output_shapes
:	�@*
T0
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 
�
training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes
:	�@*
T0
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes
:	�@*
T0
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:	�@
Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
_output_shapes
: *
valueB
 *  �*
dtype0
�
%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
_output_shapes
:	�@*
T0
�
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*
_output_shapes
:	�@
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	�@
Z
training/Adam/add_9/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	�@
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:	�@
r
training/Adam/ReadVariableOp_22ReadVariableOpm1_hidden2/kernel*
dtype0*
_output_shapes
:	�@

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
_output_shapes
:	�@*
T0
k
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/m_2_1training/Adam/add_7*
dtype0
�
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/m_2_1!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	�@
k
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/v_2_1training/Adam/add_8*
dtype0
�
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/v_2_1!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	�@
j
 training/Adam/AssignVariableOp_8AssignVariableOpm1_hidden2/kerneltraining/Adam/sub_10*
dtype0
�
training/Adam/ReadVariableOp_25ReadVariableOpm1_hidden2/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	�@
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/m_3_1*
dtype0*
_output_shapes
:@
�
training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
_output_shapes
:@*
T0
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
�
training/Adam/mul_17Multraining/Adam/sub_11;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:@
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/v_3_1*
dtype0*
_output_shapes
:@
�
training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
_output_shapes
:@*
T0
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0
�
training/Adam/Square_3Square;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:@
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
:@*
T0
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:@
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*
_output_shapes
:@
�
training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes
:@
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
_output_shapes
:@*
T0
[
training/Adam/add_12/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes
:@*
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:@
k
training/Adam/ReadVariableOp_30ReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
T0*
_output_shapes
:@
l
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/m_3_1training/Adam/add_10*
dtype0
�
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/m_3_1!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
m
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/v_3_1training/Adam/add_11*
dtype0
�
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/v_3_1"^training/Adam/AssignVariableOp_10*
_output_shapes
:@*
dtype0
i
!training/Adam/AssignVariableOp_11AssignVariableOpm1_hidden2/biastraining/Adam/sub_13*
dtype0
�
training/Adam/ReadVariableOp_33ReadVariableOpm1_hidden2/bias"^training/Adam/AssignVariableOp_11*
_output_shapes
:@*
dtype0
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/m_4_1*
dtype0*
_output_shapes

:@
�
training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_14/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
_output_shapes
: *
T0
�
training/Adam/mul_22Multraining/Adam/sub_147training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/v_4_1*
dtype0*
_output_shapes

:@
�
training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
_output_shapes
: *
T0
�
training/Adam/Square_4Square7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:@
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:@
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:@
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
_output_shapes
: *
valueB
 *  �*
dtype0
�
%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes

:@
�
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0*
_output_shapes

:@
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
_output_shapes

:@*
T0
[
training/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
_output_shapes

:@*
T0
w
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:@
q
training/Adam/ReadVariableOp_38ReadVariableOpm1_hidden3/kernel*
dtype0*
_output_shapes

:@
~
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
_output_shapes

:@*
T0
m
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/m_4_1training/Adam/add_13*
dtype0
�
training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/m_4_1"^training/Adam/AssignVariableOp_12*
_output_shapes

:@*
dtype0
m
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/v_4_1training/Adam/add_14*
dtype0
�
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/v_4_1"^training/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
k
!training/Adam/AssignVariableOp_14AssignVariableOpm1_hidden3/kerneltraining/Adam/sub_16*
dtype0
�
training/Adam/ReadVariableOp_41ReadVariableOpm1_hidden3/kernel"^training/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/m_5_1*
_output_shapes
:*
dtype0
�
training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
_output_shapes
: *
T0
�
training/Adam/mul_27Multraining/Adam/sub_17;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/v_5_1*
dtype0*
_output_shapes
:
�
training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 
�
training/Adam/Square_5Square;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
:*
T0
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
:
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
:*
T0
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
_output_shapes
:*
T0
�
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
_output_shapes
:*
T0
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
_output_shapes
:*
T0
[
training/Adam/add_18/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
:
s
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
:
k
training/Adam/ReadVariableOp_46ReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
_output_shapes
:*
T0
m
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/m_5_1training/Adam/add_16*
dtype0
�
training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/m_5_1"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
m
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/v_5_1training/Adam/add_17*
dtype0
�
training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/v_5_1"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
i
!training/Adam/AssignVariableOp_17AssignVariableOpm1_hidden3/biastraining/Adam/sub_19*
dtype0
�
training/Adam/ReadVariableOp_49ReadVariableOpm1_hidden3/bias"^training/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/m_6_1*
dtype0*
_output_shapes

:

�
training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 
�
training/Adam/mul_32Multraining/Adam/sub_206training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/v_6_1*
dtype0*
_output_shapes

:

�
training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 
�
training/Adam/Square_6Square6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
_output_shapes

:
*
T0
p
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes

:

m
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
T0*
_output_shapes

:

[
training/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_16Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
_output_shapes

:
*
T0
�
training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
_output_shapes

:
*
T0
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*
_output_shapes

:

[
training/Adam/add_21/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
r
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*
_output_shapes

:

w
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
_output_shapes

:
*
T0
p
training/Adam/ReadVariableOp_54ReadVariableOpm1_output/kernel*
dtype0*
_output_shapes

:

~
training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
T0*
_output_shapes

:

m
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/m_6_1training/Adam/add_19*
dtype0
�
training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/m_6_1"^training/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

m
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/v_6_1training/Adam/add_20*
dtype0
�
training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/v_6_1"^training/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

j
!training/Adam/AssignVariableOp_20AssignVariableOpm1_output/kerneltraining/Adam/sub_22*
dtype0
�
training/Adam/ReadVariableOp_57ReadVariableOpm1_output/kernel"^training/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/m_7_1*
dtype0*
_output_shapes
:

�
training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
�
training/Adam/mul_37Multraining/Adam/sub_23:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/v_7_1*
dtype0*
_output_shapes
:

�
training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 
�
training/Adam/Square_7Square:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
_output_shapes
:
*
T0
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
_output_shapes
:
*
T0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
:

[
training/Adam/Const_17Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_18Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*
_output_shapes
:

�
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
_output_shapes
:
*
T0
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
_output_shapes
:
*
T0
[
training/Adam/add_24/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
:

s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
T0*
_output_shapes
:

j
training/Adam/ReadVariableOp_62ReadVariableOpm1_output/bias*
dtype0*
_output_shapes
:

z
training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
_output_shapes
:
*
T0
m
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/m_7_1training/Adam/add_22*
dtype0
�
training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/m_7_1"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

m
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/v_7_1training/Adam/add_23*
dtype0
�
training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/v_7_1"^training/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

h
!training/Adam/AssignVariableOp_23AssignVariableOpm1_output/biastraining/Adam/sub_25*
dtype0
�
training/Adam/ReadVariableOp_65ReadVariableOpm1_output/bias"^training/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

^
training/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 
c
training/VarIsInitializedOp_1VarIsInitializedOptraining/Adam/vhat_7_1*
_output_shapes
: 
`
training/VarIsInitializedOp_2VarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 
^
training/VarIsInitializedOp_3VarIsInitializedOpm1_hidden3/kernel*
_output_shapes
: 
R
training/VarIsInitializedOp_4VarIsInitializedOpcount*
_output_shapes
: 
\
training/VarIsInitializedOp_5VarIsInitializedOpm1_hidden2/bias*
_output_shapes
: 
_
training/VarIsInitializedOp_6VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
`
training/VarIsInitializedOp_7VarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 
`
training/VarIsInitializedOp_8VarIsInitializedOptraining/Adam/v_6_1*
_output_shapes
: 
\
training/VarIsInitializedOp_9VarIsInitializedOpm1_hidden3/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_10VarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 
d
training/VarIsInitializedOp_11VarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 
a
training/VarIsInitializedOp_12VarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
a
training/VarIsInitializedOp_13VarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 
]
training/VarIsInitializedOp_14VarIsInitializedOpAdam/iterations*
_output_shapes
: 
a
training/VarIsInitializedOp_15VarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
Y
training/VarIsInitializedOp_16VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
X
training/VarIsInitializedOp_17VarIsInitializedOp
Adam/decay*
_output_shapes
: 
]
training/VarIsInitializedOp_18VarIsInitializedOpm1_hidden1/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_19VarIsInitializedOptraining/Adam/m_6_1*
_output_shapes
: 
a
training/VarIsInitializedOp_20VarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 
a
training/VarIsInitializedOp_21VarIsInitializedOptraining/Adam/v_7_1*
_output_shapes
: 
d
training/VarIsInitializedOp_22VarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
\
training/VarIsInitializedOp_23VarIsInitializedOpm1_output/bias*
_output_shapes
: 
^
training/VarIsInitializedOp_24VarIsInitializedOpm1_output/kernel*
_output_shapes
: 
S
training/VarIsInitializedOp_25VarIsInitializedOptotal*
_output_shapes
: 
d
training/VarIsInitializedOp_26VarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 
a
training/VarIsInitializedOp_27VarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 
a
training/VarIsInitializedOp_28VarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 
_
training/VarIsInitializedOp_29VarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 
a
training/VarIsInitializedOp_30VarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 
d
training/VarIsInitializedOp_31VarIsInitializedOptraining/Adam/vhat_6_1*
_output_shapes
: 
d
training/VarIsInitializedOp_32VarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 
_
training/VarIsInitializedOp_33VarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 
a
training/VarIsInitializedOp_34VarIsInitializedOptraining/Adam/m_7_1*
_output_shapes
: 
a
training/VarIsInitializedOp_35VarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 
d
training/VarIsInitializedOp_36VarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 
d
training/VarIsInitializedOp_37VarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 
Y
training/VarIsInitializedOp_38VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
�
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^count/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^total/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
�
training/group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
{

group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1
L
PlaceholderPlaceholder*
dtype0*
_output_shapes
: *
shape: 
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
t
dropout_1_inputPlaceholder*
dtype0*(
_output_shapes
:����������*
shape:����������
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
�
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
_output_shapes
: *
shape: *
dtype0

�
dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *��L>*
dtype0
�
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
�
#dropout_1/cond/dropout/Shape/SwitchSwitchdropout_1_inputdropout_1/cond/pred_id*
T0*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:����������:����������
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  �?
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
T0*
_output_shapes
: 
�
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
�
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*
seed2**(
_output_shapes
:����������*
seed�*
T0
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:����������
�
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:����������
�
dropout_1/cond/dropout/addAdddropout_1/cond/dropout/sub%dropout_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:����������
t
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*(
_output_shapes
:����������*
T0
�
dropout_1/cond/dropout/truedivRealDiv%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/sub*(
_output_shapes
:����������*
T0
�
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:����������:����������*
T0
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N**
_output_shapes
:����������: 
p
m2_hidden1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   �   
b
m2_hidden1/random_uniform/minConst*
valueB
 *�\1�*
dtype0*
_output_shapes
: 
b
m2_hidden1/random_uniform/maxConst*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
�
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
T0*
dtype0*
seed2��* 
_output_shapes
:
��*
seed�
�
m2_hidden1/random_uniform/subSubm2_hidden1/random_uniform/maxm2_hidden1/random_uniform/min*
_output_shapes
: *
T0
�
m2_hidden1/random_uniform/mulMul'm2_hidden1/random_uniform/RandomUniformm2_hidden1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
m2_hidden1/random_uniformAddm2_hidden1/random_uniform/mulm2_hidden1/random_uniform/min* 
_output_shapes
:
��*
T0
�
m2_hidden1/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1/kernel*$
_class
loc:@m2_hidden1/kernel*
	container *
shape:
��
s
2m2_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 
�
m2_hidden1/kernel/AssignAssignVariableOpm2_hidden1/kernelm2_hidden1/random_uniform*$
_class
loc:@m2_hidden1/kernel*
dtype0
�
%m2_hidden1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1/kernel*$
_class
loc:@m2_hidden1/kernel*
dtype0* 
_output_shapes
:
��
_
m2_hidden1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
�
m2_hidden1/biasVarHandleOp*"
_class
loc:@m2_hidden1/bias*
	container *
shape:�*
dtype0*
_output_shapes
: * 
shared_namem2_hidden1/bias
o
0m2_hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
~
m2_hidden1/bias/AssignAssignVariableOpm2_hidden1/biasm2_hidden1/Const*"
_class
loc:@m2_hidden1/bias*
dtype0
�
#m2_hidden1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1/bias*"
_class
loc:@m2_hidden1/bias*
dtype0*
_output_shapes	
:�
t
 m2_hidden1/MatMul/ReadVariableOpReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:
��
�
m2_hidden1/MatMulMatMuldropout_1/cond/Merge m2_hidden1/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:����������*
transpose_b( 
n
!m2_hidden1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:�
�
m2_hidden1/BiasAddBiasAddm2_hidden1/MatMul!m2_hidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:����������
^
m2_hidden1/ReluRelum2_hidden1/BiasAdd*(
_output_shapes
:����������*
T0
p
m2_hidden2/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
b
m2_hidden2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
b
m2_hidden2/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
'm2_hidden2/random_uniform/RandomUniformRandomUniformm2_hidden2/random_uniform/shape*
T0*
dtype0*
seed2�ř*
_output_shapes
:	�@*
seed�
�
m2_hidden2/random_uniform/subSubm2_hidden2/random_uniform/maxm2_hidden2/random_uniform/min*
_output_shapes
: *
T0
�
m2_hidden2/random_uniform/mulMul'm2_hidden2/random_uniform/RandomUniformm2_hidden2/random_uniform/sub*
_output_shapes
:	�@*
T0
�
m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
T0*
_output_shapes
:	�@
�
m2_hidden2/kernelVarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel
s
2m2_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 
�
m2_hidden2/kernel/AssignAssignVariableOpm2_hidden2/kernelm2_hidden2/random_uniform*$
_class
loc:@m2_hidden2/kernel*
dtype0
�
%m2_hidden2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
dtype0*
_output_shapes
:	�@
]
m2_hidden2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
�
m2_hidden2/biasVarHandleOp*"
_class
loc:@m2_hidden2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: * 
shared_namem2_hidden2/bias
o
0m2_hidden2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/bias*
_output_shapes
: 
~
m2_hidden2/bias/AssignAssignVariableOpm2_hidden2/biasm2_hidden2/Const*"
_class
loc:@m2_hidden2/bias*
dtype0
�
#m2_hidden2/bias/Read/ReadVariableOpReadVariableOpm2_hidden2/bias*
_output_shapes
:@*"
_class
loc:@m2_hidden2/bias*
dtype0
s
 m2_hidden2/MatMul/ReadVariableOpReadVariableOpm2_hidden2/kernel*
dtype0*
_output_shapes
:	�@
�
m2_hidden2/MatMulMatMulm2_hidden1/Relu m2_hidden2/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������@*
transpose_b( 
m
!m2_hidden2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@
�
m2_hidden2/BiasAddBiasAddm2_hidden2/MatMul!m2_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������@
]
m2_hidden2/ReluRelum2_hidden2/BiasAdd*
T0*'
_output_shapes
:���������@
p
m2_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m2_hidden3/random_uniform/minConst*
valueB
 *�7��*
dtype0*
_output_shapes
: 
b
m2_hidden3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *�7�>
�
'm2_hidden3/random_uniform/RandomUniformRandomUniformm2_hidden3/random_uniform/shape*
T0*
dtype0*
seed2ǃ	*
_output_shapes

:@*
seed�
�
m2_hidden3/random_uniform/subSubm2_hidden3/random_uniform/maxm2_hidden3/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden3/random_uniform/mulMul'm2_hidden3/random_uniform/RandomUniformm2_hidden3/random_uniform/sub*
T0*
_output_shapes

:@
�
m2_hidden3/random_uniformAddm2_hidden3/random_uniform/mulm2_hidden3/random_uniform/min*
_output_shapes

:@*
T0
�
m2_hidden3/kernelVarHandleOp*$
_class
loc:@m2_hidden3/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3/kernel
s
2m2_hidden3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3/kernel*
_output_shapes
: 
�
m2_hidden3/kernel/AssignAssignVariableOpm2_hidden3/kernelm2_hidden3/random_uniform*$
_class
loc:@m2_hidden3/kernel*
dtype0
�
%m2_hidden3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3/kernel*$
_class
loc:@m2_hidden3/kernel*
dtype0*
_output_shapes

:@
]
m2_hidden3/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
�
m2_hidden3/biasVarHandleOp*
_output_shapes
: * 
shared_namem2_hidden3/bias*"
_class
loc:@m2_hidden3/bias*
	container *
shape:*
dtype0
o
0m2_hidden3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3/bias*
_output_shapes
: 
~
m2_hidden3/bias/AssignAssignVariableOpm2_hidden3/biasm2_hidden3/Const*"
_class
loc:@m2_hidden3/bias*
dtype0
�
#m2_hidden3/bias/Read/ReadVariableOpReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:*"
_class
loc:@m2_hidden3/bias
r
 m2_hidden3/MatMul/ReadVariableOpReadVariableOpm2_hidden3/kernel*
dtype0*
_output_shapes

:@
�
m2_hidden3/MatMulMatMulm2_hidden2/Relu m2_hidden3/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
m
!m2_hidden3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:
�
m2_hidden3/BiasAddBiasAddm2_hidden3/MatMul!m2_hidden3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������
]
m2_hidden3/ReluRelum2_hidden3/BiasAdd*
T0*'
_output_shapes
:���������
o
m2_output/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
a
m2_output/random_uniform/minConst*
valueB
 *����*
dtype0*
_output_shapes
: 
a
m2_output/random_uniform/maxConst*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
seed�*
T0*
dtype0*
seed2�ǫ*
_output_shapes

:

�
m2_output/random_uniform/subSubm2_output/random_uniform/maxm2_output/random_uniform/min*
T0*
_output_shapes
: 
�
m2_output/random_uniform/mulMul&m2_output/random_uniform/RandomUniformm2_output/random_uniform/sub*
T0*
_output_shapes

:

�
m2_output/random_uniformAddm2_output/random_uniform/mulm2_output/random_uniform/min*
_output_shapes

:
*
T0
�
m2_output/kernelVarHandleOp*!
shared_namem2_output/kernel*#
_class
loc:@m2_output/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: 
q
1m2_output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output/kernel*
_output_shapes
: 
�
m2_output/kernel/AssignAssignVariableOpm2_output/kernelm2_output/random_uniform*#
_class
loc:@m2_output/kernel*
dtype0
�
$m2_output/kernel/Read/ReadVariableOpReadVariableOpm2_output/kernel*#
_class
loc:@m2_output/kernel*
dtype0*
_output_shapes

:

\
m2_output/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m2_output/biasVarHandleOp*!
_class
loc:@m2_output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namem2_output/bias
m
/m2_output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output/bias*
_output_shapes
: 
z
m2_output/bias/AssignAssignVariableOpm2_output/biasm2_output/Const*!
_class
loc:@m2_output/bias*
dtype0
�
"m2_output/bias/Read/ReadVariableOpReadVariableOpm2_output/bias*!
_class
loc:@m2_output/bias*
dtype0*
_output_shapes
:

p
m2_output/MatMul/ReadVariableOpReadVariableOpm2_output/kernel*
dtype0*
_output_shapes

:

�
m2_output/MatMulMatMulm2_hidden3/Relum2_output/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( 
k
 m2_output/BiasAdd/ReadVariableOpReadVariableOpm2_output/bias*
dtype0*
_output_shapes
:

�
m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������

a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*'
_output_shapes
:���������
*
T0
�
+Adam_1/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *$
_class
loc:@Adam_1/iterations*
value	B	 R 
�
Adam_1/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: *"
shared_nameAdam_1/iterations*$
_class
loc:@Adam_1/iterations
s
2Adam_1/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/iterations*
_output_shapes
: 
�
Adam_1/iterations/AssignAssignVariableOpAdam_1/iterations+Adam_1/iterations/Initializer/initial_value*$
_class
loc:@Adam_1/iterations*
dtype0	
�
%Adam_1/iterations/Read/ReadVariableOpReadVariableOpAdam_1/iterations*
_output_shapes
: *$
_class
loc:@Adam_1/iterations*
dtype0	
�
.Adam_1/learning_rate/Initializer/initial_valueConst*'
_class
loc:@Adam_1/learning_rate*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
Adam_1/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
	container *
shape: 
y
5Adam_1/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
�
Adam_1/learning_rate/AssignAssignVariableOpAdam_1/learning_rate.Adam_1/learning_rate/Initializer/initial_value*
dtype0*'
_class
loc:@Adam_1/learning_rate
�
(Adam_1/learning_rate/Read/ReadVariableOpReadVariableOpAdam_1/learning_rate*
dtype0*
_output_shapes
: *'
_class
loc:@Adam_1/learning_rate
�
'Adam_1/beta_1/Initializer/initial_valueConst* 
_class
loc:@Adam_1/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
Adam_1/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
	container *
shape: 
k
.Adam_1/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
�
Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_1/beta_1
�
!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 
�
'Adam_1/beta_2/Initializer/initial_valueConst* 
_class
loc:@Adam_1/beta_2*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
Adam_1/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2*
	container *
shape: 
k
.Adam_1/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
�
Adam_1/beta_2/AssignAssignVariableOpAdam_1/beta_2'Adam_1/beta_2/Initializer/initial_value* 
_class
loc:@Adam_1/beta_2*
dtype0
�
!Adam_1/beta_2/Read/ReadVariableOpReadVariableOpAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2*
dtype0*
_output_shapes
: 
�
&Adam_1/decay/Initializer/initial_valueConst*
_class
loc:@Adam_1/decay*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Adam_1/decayVarHandleOp*
shared_nameAdam_1/decay*
_class
loc:@Adam_1/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
i
-Adam_1/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/decay*
_output_shapes
: 
�
Adam_1/decay/AssignAssignVariableOpAdam_1/decay&Adam_1/decay/Initializer/initial_value*
_class
loc:@Adam_1/decay*
dtype0
�
 Adam_1/decay/Read/ReadVariableOpReadVariableOpAdam_1/decay*
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 
�
m2_output_targetPlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
s
m2_output_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
L
Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
total_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	total_1*
_class
loc:@total_1
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
]
total_1/AssignAssignVariableOptotal_1Const_3*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
_class
loc:@total_1*
dtype0
L
Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
count_1VarHandleOp*
shared_name	count_1*
_class
loc:@count_1*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
]
count_1/AssignAssignVariableOpcount_1Const_4*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
�
metrics_1/accuracy/SqueezeSqueezem2_output_target*#
_output_shapes
:���������*
squeeze_dims

���������*
T0
n
#metrics_1/accuracy/ArgMax/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics_1/accuracy/ArgMaxArgMaxm2_output/Softmax#metrics_1/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
�
metrics_1/accuracy/CastCastmetrics_1/accuracy/ArgMax*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:���������
�
metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*#
_output_shapes
:���������*
T0
�
metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:���������
b
metrics_1/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics_1/accuracy/SumSummetrics_1/accuracy/Cast_1metrics_1/accuracy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
k
&metrics_1/accuracy/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/accuracy/Sum*
dtype0
�
!metrics_1/accuracy/ReadVariableOpReadVariableOptotal_1'^metrics_1/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_1/accuracy/SizeSizemetrics_1/accuracy/Cast_1*
_output_shapes
: *
T0*
out_type0
z
metrics_1/accuracy/Cast_2Castmetrics_1/accuracy/Size*

DstT0*
_output_shapes
: *

SrcT0*
Truncate( 
p
(metrics_1/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics_1/accuracy/Cast_2*
dtype0
�
#metrics_1/accuracy/ReadVariableOp_1ReadVariableOpcount_1)^metrics_1/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
�
#metrics_1/accuracy/ReadVariableOp_2ReadVariableOptotal_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
)metrics_1/accuracy/truediv/ReadVariableOpReadVariableOpcount_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
metrics_1/accuracy/truedivRealDiv#metrics_1/accuracy/ReadVariableOp_2)metrics_1/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_1/accuracy/IdentityIdentitymetrics_1/accuracy/truediv*
T0*
_output_shapes
: 
�
;loss_1/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
�
;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
9loss_1/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
�
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0
�
Closs_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:���������

�
9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
Closs_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
=loss_1/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_targetCloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*#
_output_shapes
:���������*
T0*
Tshape0
�
:loss_1/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape*

DstT0	*#
_output_shapes
:���������*

SrcT0*
Truncate( 
�
Eloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogEloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������

�
_loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
�
}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":���������:���������

�
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
�
Iloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
�
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
�
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_1/mul/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
�

loss_1/mulMulloss_1/mul/xKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
J
Const_5Const*
valueB *
dtype0*
_output_shapes
: 
a
Mean_1Mean
loss_1/mulConst_5*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
}
training_1/Adam/gradients/ShapeConst*
_class
loc:@Mean_1*
valueB *
dtype0*
_output_shapes
: 
�
#training_1/Adam/gradients/grad_ys_0Const*
_class
loc:@Mean_1*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*
_class
loc:@Mean_1*

index_type0
�
3training_1/Adam/gradients/Mean_1_grad/Reshape/shapeConst*
_class
loc:@Mean_1*
valueB *
dtype0*
_output_shapes
: 
�
-training_1/Adam/gradients/Mean_1_grad/ReshapeReshapetraining_1/Adam/gradients/Fill3training_1/Adam/gradients/Mean_1_grad/Reshape/shape*
T0*
_class
loc:@Mean_1*
Tshape0*
_output_shapes
: 
�
+training_1/Adam/gradients/Mean_1_grad/ConstConst*
_class
loc:@Mean_1*
valueB *
dtype0*
_output_shapes
: 
�
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*

Tmultiples0*
T0*
_class
loc:@Mean_1*
_output_shapes
: 
�
-training_1/Adam/gradients/Mean_1_grad/Const_1Const*
_output_shapes
: *
_class
loc:@Mean_1*
valueB
 *  �?*
dtype0
�
-training_1/Adam/gradients/Mean_1_grad/truedivRealDiv*training_1/Adam/gradients/Mean_1_grad/Tile-training_1/Adam/gradients/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
_class
loc:@Mean_1
�
-training_1/Adam/gradients/loss_1/mul_grad/MulMul-training_1/Adam/gradients/Mean_1_grad/truedivKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
�
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss_1/mul
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:���������:���������
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_1/Adam/gradients/loss_1/mul_grad/Mul_1ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0*
_output_shapes
:*
T0
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0
�
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*

Tmultiples0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:���������
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem2_output_sample_weights*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:
�
|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:���������:���������*
T0
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������*
T0
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:���������
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weightsktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*#
_output_shapes
:���������*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0
�
$training_1/Adam/gradients/zeros_like	ZerosLikeloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������

�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������
*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
���������*
dtype0*
_output_shapes
: 
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������*

Tdim0
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:���������
*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
dtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*
T0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0*
_output_shapes
:
�
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*'
_output_shapes
:���������
*
T0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0
�
ctraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������

�
\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������

�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
_output_shapes
:*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    *
dtype0
�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0
�
otraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
xtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
�
itraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*'
_output_shapes
:���������

�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output/Softmax*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
_output_shapes
:*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0
�
vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0*'
_output_shapes
:���������

�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:���������:���������
�
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
straining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*'
_output_shapes
:���������
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:���������

�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0
�
4training_1/Adam/gradients/m2_output/Softmax_grad/mulMulrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem2_output/Softmax*'
_output_shapes
:���������
*
T0*$
_class
loc:@m2_output/Softmax
�
Ftraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indicesConst*$
_class
loc:@m2_output/Softmax*
valueB :
���������*
dtype0*
_output_shapes
: 
�
4training_1/Adam/gradients/m2_output/Softmax_grad/SumSum4training_1/Adam/gradients/m2_output/Softmax_grad/mulFtraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:���������
�
4training_1/Adam/gradients/m2_output/Softmax_grad/subSubrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape4training_1/Adam/gradients/m2_output/Softmax_grad/Sum*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:���������

�
6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1Mul4training_1/Adam/gradients/m2_output/Softmax_grad/subm2_output/Softmax*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:���������
*
T0
�
<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGradBiasAddGrad6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
T0*$
_class
loc:@m2_output/BiasAdd*
data_formatNHWC*
_output_shapes
:

�
6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������*
transpose_b(*
T0*#
_class
loc:@m2_output/MatMul
�
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
T0*#
_class
loc:@m2_output/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
�
7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulm2_hidden3/Relu*
T0*"
_class
loc:@m2_hidden3/Relu*'
_output_shapes
:���������
�
=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*%
_class
loc:@m2_hidden3/BiasAdd
�
7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad m2_hidden3/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden3/MatMul*
transpose_a( *'
_output_shapes
:���������@*
transpose_b(
�
9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1MatMulm2_hidden2/Relu7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
transpose_b( *
T0*$
_class
loc:@m2_hidden3/MatMul*
transpose_a(*
_output_shapes

:@
�
7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulm2_hidden2/Relu*
T0*"
_class
loc:@m2_hidden2/Relu*'
_output_shapes
:���������@
�
=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad m2_hidden2/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden2/MatMul*
transpose_a( *(
_output_shapes
:����������*
transpose_b(
�
9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1MatMulm2_hidden1/Relu7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden2/MatMul*
transpose_a(*
_output_shapes
:	�@*
transpose_b( 
�
7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulm2_hidden1/Relu*(
_output_shapes
:����������*
T0*"
_class
loc:@m2_hidden1/Relu
�
=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
_output_shapes	
:�*
T0*%
_class
loc:@m2_hidden1/BiasAdd*
data_formatNHWC
�
7training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad m2_hidden1/MatMul/ReadVariableOp*$
_class
loc:@m2_hidden1/MatMul*
transpose_a( *(
_output_shapes
:����������*
transpose_b(*
T0
�
9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*$
_class
loc:@m2_hidden1/MatMul*
transpose_a(* 
_output_shapes
:
��*
transpose_b( *
T0
W
training_1/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
q
#training_1/Adam/AssignAddVariableOpAssignAddVariableOpAdam_1/iterationstraining_1/Adam/Const*
dtype0	
�
training_1/Adam/ReadVariableOpReadVariableOpAdam_1/iterations$^training_1/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_1/Adam/Cast/ReadVariableOpReadVariableOpAdam_1/iterations*
dtype0	*
_output_shapes
: 
�
training_1/Adam/CastCast#training_1/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
Z
training_1/Adam/add/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
h
training_1/Adam/addAddtraining_1/Adam/Casttraining_1/Adam/add/y*
T0*
_output_shapes
: 
h
"training_1/Adam/Pow/ReadVariableOpReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
t
training_1/Adam/PowPow"training_1/Adam/Pow/ReadVariableOptraining_1/Adam/add*
T0*
_output_shapes
: 
Z
training_1/Adam/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
g
training_1/Adam/subSubtraining_1/Adam/sub/xtraining_1/Adam/Pow*
T0*
_output_shapes
: 
\
training_1/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_2Const*
valueB
 *  �*
dtype0*
_output_shapes
: 

%training_1/Adam/clip_by_value/MinimumMinimumtraining_1/Adam/subtraining_1/Adam/Const_2*
_output_shapes
: *
T0
�
training_1/Adam/clip_by_valueMaximum%training_1/Adam/clip_by_value/Minimumtraining_1/Adam/Const_1*
_output_shapes
: *
T0
\
training_1/Adam/SqrtSqrttraining_1/Adam/clip_by_value*
T0*
_output_shapes
: 
j
$training_1/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
x
training_1/Adam/Pow_1Pow$training_1/Adam/Pow_1/ReadVariableOptraining_1/Adam/add*
_output_shapes
: *
T0
\
training_1/Adam/sub_1/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
m
training_1/Adam/sub_1Subtraining_1/Adam/sub_1/xtraining_1/Adam/Pow_1*
_output_shapes
: *
T0
p
training_1/Adam/truedivRealDivtraining_1/Adam/Sqrttraining_1/Adam/sub_1*
T0*
_output_shapes
: 
m
 training_1/Adam/ReadVariableOp_1ReadVariableOpAdam_1/learning_rate*
dtype0*
_output_shapes
: 
v
training_1/Adam/mulMul training_1/Adam/ReadVariableOp_1training_1/Adam/truediv*
T0*
_output_shapes
: 
t
#training_1/Adam/m_0/shape_as_tensorConst*
_output_shapes
:*
valueB"   �   *
dtype0
^
training_1/Adam/m_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/m_0Fill#training_1/Adam/m_0/shape_as_tensortraining_1/Adam/m_0/Const* 
_output_shapes
:
��*
T0*

index_type0
�
training_1/Adam/m_0_1VarHandleOp*&
shared_nametraining_1/Adam/m_0_1*(
_class
loc:@training_1/Adam/m_0_1*
	container *
shape:
��*
dtype0*
_output_shapes
: 
{
6training_1/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 
�
training_1/Adam/m_0_1/AssignAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/m_0*(
_class
loc:@training_1/Adam/m_0_1*
dtype0
�
)training_1/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_0_1*(
_class
loc:@training_1/Adam/m_0_1*
dtype0* 
_output_shapes
:
��
b
training_1/Adam/m_1Const*
_output_shapes	
:�*
valueB�*    *
dtype0
�
training_1/Adam/m_1_1VarHandleOp*(
_class
loc:@training_1/Adam/m_1_1*
	container *
shape:�*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_1_1
{
6training_1/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 
�
training_1/Adam/m_1_1/AssignAssignVariableOptraining_1/Adam/m_1_1training_1/Adam/m_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0
�
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
dtype0*
_output_shapes	
:�*(
_class
loc:@training_1/Adam/m_1_1
t
#training_1/Adam/m_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
^
training_1/Adam/m_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training_1/Adam/m_2Fill#training_1/Adam/m_2/shape_as_tensortraining_1/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training_1/Adam/m_2_1VarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1
{
6training_1/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 
�
training_1/Adam/m_2_1/AssignAssignVariableOptraining_1/Adam/m_2_1training_1/Adam/m_2*(
_class
loc:@training_1/Adam/m_2_1*
dtype0
�
)training_1/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
`
training_1/Adam/m_3Const*
_output_shapes
:@*
valueB@*    *
dtype0
�
training_1/Adam/m_3_1VarHandleOp*
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_3_1*(
_class
loc:@training_1/Adam/m_3_1*
	container 
{
6training_1/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_3_1*
_output_shapes
: 
�
training_1/Adam/m_3_1/AssignAssignVariableOptraining_1/Adam/m_3_1training_1/Adam/m_3*
dtype0*(
_class
loc:@training_1/Adam/m_3_1
�
)training_1/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_3_1*(
_class
loc:@training_1/Adam/m_3_1*
dtype0*
_output_shapes
:@
t
#training_1/Adam/m_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_1/Adam/m_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/m_4Fill#training_1/Adam/m_4/shape_as_tensortraining_1/Adam/m_4/Const*
_output_shapes

:@*
T0*

index_type0
�
training_1/Adam/m_4_1VarHandleOp*
shape
:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_4_1*(
_class
loc:@training_1/Adam/m_4_1*
	container 
{
6training_1/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_4_1*
_output_shapes
: 
�
training_1/Adam/m_4_1/AssignAssignVariableOptraining_1/Adam/m_4_1training_1/Adam/m_4*(
_class
loc:@training_1/Adam/m_4_1*
dtype0
�
)training_1/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_4_1*(
_class
loc:@training_1/Adam/m_4_1*
dtype0*
_output_shapes

:@
`
training_1/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training_1/Adam/m_5_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_5_1*(
_class
loc:@training_1/Adam/m_5_1
{
6training_1/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 
�
training_1/Adam/m_5_1/AssignAssignVariableOptraining_1/Adam/m_5_1training_1/Adam/m_5*(
_class
loc:@training_1/Adam/m_5_1*
dtype0
�
)training_1/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*(
_class
loc:@training_1/Adam/m_5_1*
dtype0*
_output_shapes
:
h
training_1/Adam/m_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training_1/Adam/m_6_1VarHandleOp*(
_class
loc:@training_1/Adam/m_6_1*
	container *
shape
:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_6_1
{
6training_1/Adam/m_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_6_1*
_output_shapes
: 
�
training_1/Adam/m_6_1/AssignAssignVariableOptraining_1/Adam/m_6_1training_1/Adam/m_6*(
_class
loc:@training_1/Adam/m_6_1*
dtype0
�
)training_1/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*(
_class
loc:@training_1/Adam/m_6_1*
dtype0*
_output_shapes

:

`
training_1/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training_1/Adam/m_7_1VarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_7_1*(
_class
loc:@training_1/Adam/m_7_1
{
6training_1/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_7_1*
_output_shapes
: 
�
training_1/Adam/m_7_1/AssignAssignVariableOptraining_1/Adam/m_7_1training_1/Adam/m_7*(
_class
loc:@training_1/Adam/m_7_1*
dtype0
�
)training_1/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_7_1*(
_class
loc:@training_1/Adam/m_7_1*
dtype0*
_output_shapes
:

t
#training_1/Adam/v_0/shape_as_tensorConst*
valueB"   �   *
dtype0*
_output_shapes
:
^
training_1/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/v_0Fill#training_1/Adam/v_0/shape_as_tensortraining_1/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training_1/Adam/v_0_1VarHandleOp*
	container *
shape:
��*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_0_1*(
_class
loc:@training_1/Adam/v_0_1
{
6training_1/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 
�
training_1/Adam/v_0_1/AssignAssignVariableOptraining_1/Adam/v_0_1training_1/Adam/v_0*(
_class
loc:@training_1/Adam/v_0_1*
dtype0
�
)training_1/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1*(
_class
loc:@training_1/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
b
training_1/Adam/v_1Const*
dtype0*
_output_shapes	
:�*
valueB�*    
�
training_1/Adam/v_1_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
	container *
shape:�
{
6training_1/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 
�
training_1/Adam/v_1_1/AssignAssignVariableOptraining_1/Adam/v_1_1training_1/Adam/v_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0
�
)training_1/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*
_output_shapes	
:�*(
_class
loc:@training_1/Adam/v_1_1*
dtype0
t
#training_1/Adam/v_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
^
training_1/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/v_2Fill#training_1/Adam/v_2/shape_as_tensortraining_1/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training_1/Adam/v_2_1VarHandleOp*&
shared_nametraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
	container *
shape:	�@*
dtype0*
_output_shapes
: 
{
6training_1/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 
�
training_1/Adam/v_2_1/AssignAssignVariableOptraining_1/Adam/v_2_1training_1/Adam/v_2*
dtype0*(
_class
loc:@training_1/Adam/v_2_1
�
)training_1/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
`
training_1/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training_1/Adam/v_3_1VarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_3_1*(
_class
loc:@training_1/Adam/v_3_1
{
6training_1/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_3_1*
_output_shapes
: 
�
training_1/Adam/v_3_1/AssignAssignVariableOptraining_1/Adam/v_3_1training_1/Adam/v_3*(
_class
loc:@training_1/Adam/v_3_1*
dtype0
�
)training_1/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_3_1*(
_class
loc:@training_1/Adam/v_3_1*
dtype0*
_output_shapes
:@
t
#training_1/Adam/v_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_1/Adam/v_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/v_4Fill#training_1/Adam/v_4/shape_as_tensortraining_1/Adam/v_4/Const*

index_type0*
_output_shapes

:@*
T0
�
training_1/Adam/v_4_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_4_1*(
_class
loc:@training_1/Adam/v_4_1*
	container *
shape
:@
{
6training_1/Adam/v_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_4_1*
_output_shapes
: 
�
training_1/Adam/v_4_1/AssignAssignVariableOptraining_1/Adam/v_4_1training_1/Adam/v_4*(
_class
loc:@training_1/Adam/v_4_1*
dtype0
�
)training_1/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_4_1*(
_class
loc:@training_1/Adam/v_4_1*
dtype0*
_output_shapes

:@
`
training_1/Adam/v_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training_1/Adam/v_5_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_5_1*(
_class
loc:@training_1/Adam/v_5_1*
	container *
shape:
{
6training_1/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_5_1*
_output_shapes
: 
�
training_1/Adam/v_5_1/AssignAssignVariableOptraining_1/Adam/v_5_1training_1/Adam/v_5*
dtype0*(
_class
loc:@training_1/Adam/v_5_1
�
)training_1/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_5_1*
_output_shapes
:*(
_class
loc:@training_1/Adam/v_5_1*
dtype0
h
training_1/Adam/v_6Const*
_output_shapes

:
*
valueB
*    *
dtype0
�
training_1/Adam/v_6_1VarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_6_1*(
_class
loc:@training_1/Adam/v_6_1
{
6training_1/Adam/v_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_6_1*
_output_shapes
: 
�
training_1/Adam/v_6_1/AssignAssignVariableOptraining_1/Adam/v_6_1training_1/Adam/v_6*(
_class
loc:@training_1/Adam/v_6_1*
dtype0
�
)training_1/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_6_1*(
_class
loc:@training_1/Adam/v_6_1*
dtype0*
_output_shapes

:

`
training_1/Adam/v_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training_1/Adam/v_7_1VarHandleOp*
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_7_1*(
_class
loc:@training_1/Adam/v_7_1*
	container 
{
6training_1/Adam/v_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_7_1*
_output_shapes
: 
�
training_1/Adam/v_7_1/AssignAssignVariableOptraining_1/Adam/v_7_1training_1/Adam/v_7*(
_class
loc:@training_1/Adam/v_7_1*
dtype0
�
)training_1/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_7_1*(
_class
loc:@training_1/Adam/v_7_1*
dtype0*
_output_shapes
:

p
&training_1/Adam/vhat_0/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training_1/Adam/vhat_0Fill&training_1/Adam/vhat_0/shape_as_tensortraining_1/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_0_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1*
	container *
shape:*
dtype0*
_output_shapes
: 
�
9training_1/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 
�
training_1/Adam/vhat_0_1/AssignAssignVariableOptraining_1/Adam/vhat_0_1training_1/Adam/vhat_0*+
_class!
loc:@training_1/Adam/vhat_0_1*
dtype0
�
,training_1/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training_1/Adam/vhat_1Fill&training_1/Adam/vhat_1/shape_as_tensortraining_1/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_1_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_1_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
�
9training_1/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 
�
training_1/Adam/vhat_1_1/AssignAssignVariableOptraining_1/Adam/vhat_1_1training_1/Adam/vhat_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0
�
,training_1/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_1_1*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0
p
&training_1/Adam/vhat_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training_1/Adam/vhat_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*

index_type0*
_output_shapes
:*
T0
�
training_1/Adam/vhat_2_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1
�
9training_1/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 
�
training_1/Adam/vhat_2_1/AssignAssignVariableOptraining_1/Adam/vhat_2_1training_1/Adam/vhat_2*+
_class!
loc:@training_1/Adam/vhat_2_1*
dtype0
�
,training_1/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_3/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training_1/Adam/vhat_3/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training_1/Adam/vhat_3Fill&training_1/Adam/vhat_3/shape_as_tensortraining_1/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_3_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
	container *
shape:
�
9training_1/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 
�
training_1/Adam/vhat_3_1/AssignAssignVariableOptraining_1/Adam/vhat_3_1training_1/Adam/vhat_3*+
_class!
loc:@training_1/Adam/vhat_3_1*
dtype0
�
,training_1/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_4_1VarHandleOp*+
_class!
loc:@training_1/Adam/vhat_4_1*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1
�
9training_1/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 
�
training_1/Adam/vhat_4_1/AssignAssignVariableOptraining_1/Adam/vhat_4_1training_1/Adam/vhat_4*+
_class!
loc:@training_1/Adam/vhat_4_1*
dtype0
�
,training_1/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_4_1*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_4_1*
dtype0
p
&training_1/Adam/vhat_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_5Fill&training_1/Adam/vhat_5/shape_as_tensortraining_1/Adam/vhat_5/Const*

index_type0*
_output_shapes
:*
T0
�
training_1/Adam/vhat_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
	container 
�
9training_1/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 
�
training_1/Adam/vhat_5_1/AssignAssignVariableOptraining_1/Adam/vhat_5_1training_1/Adam/vhat_5*+
_class!
loc:@training_1/Adam/vhat_5_1*
dtype0
�
,training_1/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_6/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_6Fill&training_1/Adam/vhat_6/shape_as_tensortraining_1/Adam/vhat_6/Const*
_output_shapes
:*
T0*

index_type0
�
training_1/Adam/vhat_6_1VarHandleOp*+
_class!
loc:@training_1/Adam/vhat_6_1*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_6_1
�
9training_1/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 
�
training_1/Adam/vhat_6_1/AssignAssignVariableOptraining_1/Adam/vhat_6_1training_1/Adam/vhat_6*+
_class!
loc:@training_1/Adam/vhat_6_1*
dtype0
�
,training_1/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_6_1*+
_class!
loc:@training_1/Adam/vhat_6_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_7/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training_1/Adam/vhat_7Fill&training_1/Adam/vhat_7/shape_as_tensortraining_1/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_7_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1*
	container *
shape:*
dtype0*
_output_shapes
: 
�
9training_1/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 
�
training_1/Adam/vhat_7_1/AssignAssignVariableOptraining_1/Adam/vhat_7_1training_1/Adam/vhat_7*+
_class!
loc:@training_1/Adam/vhat_7_1*
dtype0
�
,training_1/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_7_1*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_7_1*
dtype0
f
 training_1/Adam/ReadVariableOp_2ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
|
$training_1/Adam/mul_1/ReadVariableOpReadVariableOptraining_1/Adam/m_0_1*
dtype0* 
_output_shapes
:
��
�
training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:
��
f
 training_1/Adam/ReadVariableOp_3ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
x
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
_output_shapes
: *
T0
�
training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
u
training_1/Adam/add_1Addtraining_1/Adam/mul_1training_1/Adam/mul_2* 
_output_shapes
:
��*
T0
f
 training_1/Adam/ReadVariableOp_4ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
|
$training_1/Adam/mul_3/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1*
dtype0* 
_output_shapes
:
��
�
training_1/Adam/mul_3Mul training_1/Adam/ReadVariableOp_4$training_1/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:
��
f
 training_1/Adam/ReadVariableOp_5ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_3/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
x
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/x training_1/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
�
training_1/Adam/SquareSquare9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
v
training_1/Adam/mul_4Multraining_1/Adam/sub_3training_1/Adam/Square*
T0* 
_output_shapes
:
��
u
training_1/Adam/add_2Addtraining_1/Adam/mul_3training_1/Adam/mul_4* 
_output_shapes
:
��*
T0
s
training_1/Adam/mul_5Multraining_1/Adam/multraining_1/Adam/add_1*
T0* 
_output_shapes
:
��
\
training_1/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_4Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_1/MinimumMinimumtraining_1/Adam/add_2training_1/Adam/Const_4*
T0* 
_output_shapes
:
��
�
training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3*
T0* 
_output_shapes
:
��
j
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1*
T0* 
_output_shapes
:
��
\
training_1/Adam/add_3/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
x
training_1/Adam/add_3Addtraining_1/Adam/Sqrt_1training_1/Adam/add_3/y*
T0* 
_output_shapes
:
��
}
training_1/Adam/truediv_1RealDivtraining_1/Adam/mul_5training_1/Adam/add_3*
T0* 
_output_shapes
:
��
t
 training_1/Adam/ReadVariableOp_6ReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:
��
�
training_1/Adam/sub_4Sub training_1/Adam/ReadVariableOp_6training_1/Adam/truediv_1* 
_output_shapes
:
��*
T0
o
 training_1/Adam/AssignVariableOpAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/add_1*
dtype0
�
 training_1/Adam/ReadVariableOp_7ReadVariableOptraining_1/Adam/m_0_1!^training_1/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:
��
q
"training_1/Adam/AssignVariableOp_1AssignVariableOptraining_1/Adam/v_0_1training_1/Adam/add_2*
dtype0
�
 training_1/Adam/ReadVariableOp_8ReadVariableOptraining_1/Adam/v_0_1#^training_1/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:
��
m
"training_1/Adam/AssignVariableOp_2AssignVariableOpm2_hidden1/kerneltraining_1/Adam/sub_4*
dtype0
�
 training_1/Adam/ReadVariableOp_9ReadVariableOpm2_hidden1/kernel#^training_1/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:
��
g
!training_1/Adam/ReadVariableOp_10ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_6/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
_output_shapes	
:�*
dtype0
�
training_1/Adam/mul_6Mul!training_1/Adam/ReadVariableOp_10$training_1/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:�
g
!training_1/Adam/ReadVariableOp_11ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_5/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
_output_shapes
: *
T0
�
training_1/Adam/mul_7Multraining_1/Adam/sub_5=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
p
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
_output_shapes	
:�*
T0
g
!training_1/Adam/ReadVariableOp_12ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_8/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*
dtype0*
_output_shapes	
:�
�
training_1/Adam/mul_8Mul!training_1/Adam/ReadVariableOp_12$training_1/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes	
:�
g
!training_1/Adam/ReadVariableOp_13ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
y
training_1/Adam/sub_6Subtraining_1/Adam/sub_6/x!training_1/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
�
training_1/Adam/Square_1Square=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
s
training_1/Adam/mul_9Multraining_1/Adam/sub_6training_1/Adam/Square_1*
T0*
_output_shapes	
:�
p
training_1/Adam/add_5Addtraining_1/Adam/mul_8training_1/Adam/mul_9*
T0*
_output_shapes	
:�
o
training_1/Adam/mul_10Multraining_1/Adam/multraining_1/Adam/add_4*
T0*
_output_shapes	
:�
\
training_1/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_6Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_6*
T0*
_output_shapes	
:�
�
training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
_output_shapes	
:�*
T0
e
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
_output_shapes	
:�*
T0
\
training_1/Adam/add_6/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
s
training_1/Adam/add_6Addtraining_1/Adam/Sqrt_2training_1/Adam/add_6/y*
T0*
_output_shapes	
:�
y
training_1/Adam/truediv_2RealDivtraining_1/Adam/mul_10training_1/Adam/add_6*
_output_shapes	
:�*
T0
n
!training_1/Adam/ReadVariableOp_14ReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:�
�
training_1/Adam/sub_7Sub!training_1/Adam/ReadVariableOp_14training_1/Adam/truediv_2*
_output_shapes	
:�*
T0
q
"training_1/Adam/AssignVariableOp_3AssignVariableOptraining_1/Adam/m_1_1training_1/Adam/add_4*
dtype0
�
!training_1/Adam/ReadVariableOp_15ReadVariableOptraining_1/Adam/m_1_1#^training_1/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:�
q
"training_1/Adam/AssignVariableOp_4AssignVariableOptraining_1/Adam/v_1_1training_1/Adam/add_5*
dtype0
�
!training_1/Adam/ReadVariableOp_16ReadVariableOptraining_1/Adam/v_1_1#^training_1/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:�
k
"training_1/Adam/AssignVariableOp_5AssignVariableOpm2_hidden1/biastraining_1/Adam/sub_7*
dtype0
�
!training_1/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1/bias#^training_1/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:�
g
!training_1/Adam/ReadVariableOp_18ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_11/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*
_output_shapes
:	�@*
dtype0
�
training_1/Adam/mul_11Mul!training_1/Adam/ReadVariableOp_18%training_1/Adam/mul_11/ReadVariableOp*
_output_shapes
:	�@*
T0
g
!training_1/Adam/ReadVariableOp_19ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_8/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
�
training_1/Adam/mul_12Multraining_1/Adam/sub_89training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
v
training_1/Adam/add_7Addtraining_1/Adam/mul_11training_1/Adam/mul_12*
T0*
_output_shapes
:	�@
g
!training_1/Adam/ReadVariableOp_20ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_13/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*
dtype0*
_output_shapes
:	�@
�
training_1/Adam/mul_13Mul!training_1/Adam/ReadVariableOp_20%training_1/Adam/mul_13/ReadVariableOp*
_output_shapes
:	�@*
T0
g
!training_1/Adam/ReadVariableOp_21ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_9/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_9Subtraining_1/Adam/sub_9/x!training_1/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 
�
training_1/Adam/Square_2Square9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
x
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
T0*
_output_shapes
:	�@
v
training_1/Adam/add_8Addtraining_1/Adam/mul_13training_1/Adam/mul_14*
_output_shapes
:	�@*
T0
s
training_1/Adam/mul_15Multraining_1/Adam/multraining_1/Adam/add_7*
T0*
_output_shapes
:	�@
\
training_1/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_1/Adam/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
'training_1/Adam/clip_by_value_3/MinimumMinimumtraining_1/Adam/add_8training_1/Adam/Const_8*
T0*
_output_shapes
:	�@
�
training_1/Adam/clip_by_value_3Maximum'training_1/Adam/clip_by_value_3/Minimumtraining_1/Adam/Const_7*
_output_shapes
:	�@*
T0
i
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
T0*
_output_shapes
:	�@
\
training_1/Adam/add_9/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
w
training_1/Adam/add_9Addtraining_1/Adam/Sqrt_3training_1/Adam/add_9/y*
T0*
_output_shapes
:	�@
}
training_1/Adam/truediv_3RealDivtraining_1/Adam/mul_15training_1/Adam/add_9*
_output_shapes
:	�@*
T0
t
!training_1/Adam/ReadVariableOp_22ReadVariableOpm2_hidden2/kernel*
dtype0*
_output_shapes
:	�@
�
training_1/Adam/sub_10Sub!training_1/Adam/ReadVariableOp_22training_1/Adam/truediv_3*
_output_shapes
:	�@*
T0
q
"training_1/Adam/AssignVariableOp_6AssignVariableOptraining_1/Adam/m_2_1training_1/Adam/add_7*
dtype0
�
!training_1/Adam/ReadVariableOp_23ReadVariableOptraining_1/Adam/m_2_1#^training_1/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	�@
q
"training_1/Adam/AssignVariableOp_7AssignVariableOptraining_1/Adam/v_2_1training_1/Adam/add_8*
dtype0
�
!training_1/Adam/ReadVariableOp_24ReadVariableOptraining_1/Adam/v_2_1#^training_1/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	�@
n
"training_1/Adam/AssignVariableOp_8AssignVariableOpm2_hidden2/kerneltraining_1/Adam/sub_10*
dtype0
�
!training_1/Adam/ReadVariableOp_25ReadVariableOpm2_hidden2/kernel#^training_1/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	�@
g
!training_1/Adam/ReadVariableOp_26ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_16/ReadVariableOpReadVariableOptraining_1/Adam/m_3_1*
dtype0*
_output_shapes
:@
�
training_1/Adam/mul_16Mul!training_1/Adam/ReadVariableOp_26%training_1/Adam/mul_16/ReadVariableOp*
_output_shapes
:@*
T0
g
!training_1/Adam/ReadVariableOp_27ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_11/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/x!training_1/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 
�
training_1/Adam/mul_17Multraining_1/Adam/sub_11=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
r
training_1/Adam/add_10Addtraining_1/Adam/mul_16training_1/Adam/mul_17*
_output_shapes
:@*
T0
g
!training_1/Adam/ReadVariableOp_28ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_18/ReadVariableOpReadVariableOptraining_1/Adam/v_3_1*
dtype0*
_output_shapes
:@
�
training_1/Adam/mul_18Mul!training_1/Adam/ReadVariableOp_28%training_1/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:@
g
!training_1/Adam/ReadVariableOp_29ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_12/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_12Subtraining_1/Adam/sub_12/x!training_1/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 
�
training_1/Adam/Square_3Square=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
t
training_1/Adam/mul_19Multraining_1/Adam/sub_12training_1/Adam/Square_3*
T0*
_output_shapes
:@
r
training_1/Adam/add_11Addtraining_1/Adam/mul_18training_1/Adam/mul_19*
_output_shapes
:@*
T0
o
training_1/Adam/mul_20Multraining_1/Adam/multraining_1/Adam/add_10*
T0*
_output_shapes
:@
\
training_1/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_10Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_10*
_output_shapes
:@*
T0
�
training_1/Adam/clip_by_value_4Maximum'training_1/Adam/clip_by_value_4/Minimumtraining_1/Adam/Const_9*
T0*
_output_shapes
:@
d
training_1/Adam/Sqrt_4Sqrttraining_1/Adam/clip_by_value_4*
T0*
_output_shapes
:@
]
training_1/Adam/add_12/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
t
training_1/Adam/add_12Addtraining_1/Adam/Sqrt_4training_1/Adam/add_12/y*
T0*
_output_shapes
:@
y
training_1/Adam/truediv_4RealDivtraining_1/Adam/mul_20training_1/Adam/add_12*
_output_shapes
:@*
T0
m
!training_1/Adam/ReadVariableOp_30ReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@
�
training_1/Adam/sub_13Sub!training_1/Adam/ReadVariableOp_30training_1/Adam/truediv_4*
T0*
_output_shapes
:@
r
"training_1/Adam/AssignVariableOp_9AssignVariableOptraining_1/Adam/m_3_1training_1/Adam/add_10*
dtype0
�
!training_1/Adam/ReadVariableOp_31ReadVariableOptraining_1/Adam/m_3_1#^training_1/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
s
#training_1/Adam/AssignVariableOp_10AssignVariableOptraining_1/Adam/v_3_1training_1/Adam/add_11*
dtype0
�
!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/v_3_1$^training_1/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
m
#training_1/Adam/AssignVariableOp_11AssignVariableOpm2_hidden2/biastraining_1/Adam/sub_13*
dtype0
�
!training_1/Adam/ReadVariableOp_33ReadVariableOpm2_hidden2/bias$^training_1/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
g
!training_1/Adam/ReadVariableOp_34ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
{
%training_1/Adam/mul_21/ReadVariableOpReadVariableOptraining_1/Adam/m_4_1*
dtype0*
_output_shapes

:@
�
training_1/Adam/mul_21Mul!training_1/Adam/ReadVariableOp_34%training_1/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:@
g
!training_1/Adam/ReadVariableOp_35ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_14/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_14Subtraining_1/Adam/sub_14/x!training_1/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 
�
training_1/Adam/mul_22Multraining_1/Adam/sub_149training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
v
training_1/Adam/add_13Addtraining_1/Adam/mul_21training_1/Adam/mul_22*
_output_shapes

:@*
T0
g
!training_1/Adam/ReadVariableOp_36ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_23/ReadVariableOpReadVariableOptraining_1/Adam/v_4_1*
_output_shapes

:@*
dtype0
�
training_1/Adam/mul_23Mul!training_1/Adam/ReadVariableOp_36%training_1/Adam/mul_23/ReadVariableOp*
_output_shapes

:@*
T0
g
!training_1/Adam/ReadVariableOp_37ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_15/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_15Subtraining_1/Adam/sub_15/x!training_1/Adam/ReadVariableOp_37*
_output_shapes
: *
T0
�
training_1/Adam/Square_4Square9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
x
training_1/Adam/mul_24Multraining_1/Adam/sub_15training_1/Adam/Square_4*
_output_shapes

:@*
T0
v
training_1/Adam/add_14Addtraining_1/Adam/mul_23training_1/Adam/mul_24*
T0*
_output_shapes

:@
s
training_1/Adam/mul_25Multraining_1/Adam/multraining_1/Adam/add_13*
T0*
_output_shapes

:@
]
training_1/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_12Const*
_output_shapes
: *
valueB
 *  �*
dtype0
�
'training_1/Adam/clip_by_value_5/MinimumMinimumtraining_1/Adam/add_14training_1/Adam/Const_12*
_output_shapes

:@*
T0
�
training_1/Adam/clip_by_value_5Maximum'training_1/Adam/clip_by_value_5/Minimumtraining_1/Adam/Const_11*
T0*
_output_shapes

:@
h
training_1/Adam/Sqrt_5Sqrttraining_1/Adam/clip_by_value_5*
_output_shapes

:@*
T0
]
training_1/Adam/add_15/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
x
training_1/Adam/add_15Addtraining_1/Adam/Sqrt_5training_1/Adam/add_15/y*
T0*
_output_shapes

:@
}
training_1/Adam/truediv_5RealDivtraining_1/Adam/mul_25training_1/Adam/add_15*
T0*
_output_shapes

:@
s
!training_1/Adam/ReadVariableOp_38ReadVariableOpm2_hidden3/kernel*
dtype0*
_output_shapes

:@
�
training_1/Adam/sub_16Sub!training_1/Adam/ReadVariableOp_38training_1/Adam/truediv_5*
_output_shapes

:@*
T0
s
#training_1/Adam/AssignVariableOp_12AssignVariableOptraining_1/Adam/m_4_1training_1/Adam/add_13*
dtype0
�
!training_1/Adam/ReadVariableOp_39ReadVariableOptraining_1/Adam/m_4_1$^training_1/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
s
#training_1/Adam/AssignVariableOp_13AssignVariableOptraining_1/Adam/v_4_1training_1/Adam/add_14*
dtype0
�
!training_1/Adam/ReadVariableOp_40ReadVariableOptraining_1/Adam/v_4_1$^training_1/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
o
#training_1/Adam/AssignVariableOp_14AssignVariableOpm2_hidden3/kerneltraining_1/Adam/sub_16*
dtype0
�
!training_1/Adam/ReadVariableOp_41ReadVariableOpm2_hidden3/kernel$^training_1/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
g
!training_1/Adam/ReadVariableOp_42ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_26/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*
dtype0*
_output_shapes
:
�
training_1/Adam/mul_26Mul!training_1/Adam/ReadVariableOp_42%training_1/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_43ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_17/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_17Subtraining_1/Adam/sub_17/x!training_1/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 
�
training_1/Adam/mul_27Multraining_1/Adam/sub_17=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
r
training_1/Adam/add_16Addtraining_1/Adam/mul_26training_1/Adam/mul_27*
_output_shapes
:*
T0
g
!training_1/Adam/ReadVariableOp_44ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_28/ReadVariableOpReadVariableOptraining_1/Adam/v_5_1*
dtype0*
_output_shapes
:
�
training_1/Adam/mul_28Mul!training_1/Adam/ReadVariableOp_44%training_1/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_45ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_18/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_18Subtraining_1/Adam/sub_18/x!training_1/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 
�
training_1/Adam/Square_5Square=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
t
training_1/Adam/mul_29Multraining_1/Adam/sub_18training_1/Adam/Square_5*
_output_shapes
:*
T0
r
training_1/Adam/add_17Addtraining_1/Adam/mul_28training_1/Adam/mul_29*
_output_shapes
:*
T0
o
training_1/Adam/mul_30Multraining_1/Adam/multraining_1/Adam/add_16*
_output_shapes
:*
T0
]
training_1/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_14Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
T0*
_output_shapes
:
�
training_1/Adam/clip_by_value_6Maximum'training_1/Adam/clip_by_value_6/Minimumtraining_1/Adam/Const_13*
_output_shapes
:*
T0
d
training_1/Adam/Sqrt_6Sqrttraining_1/Adam/clip_by_value_6*
_output_shapes
:*
T0
]
training_1/Adam/add_18/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
t
training_1/Adam/add_18Addtraining_1/Adam/Sqrt_6training_1/Adam/add_18/y*
T0*
_output_shapes
:
y
training_1/Adam/truediv_6RealDivtraining_1/Adam/mul_30training_1/Adam/add_18*
T0*
_output_shapes
:
m
!training_1/Adam/ReadVariableOp_46ReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:
�
training_1/Adam/sub_19Sub!training_1/Adam/ReadVariableOp_46training_1/Adam/truediv_6*
_output_shapes
:*
T0
s
#training_1/Adam/AssignVariableOp_15AssignVariableOptraining_1/Adam/m_5_1training_1/Adam/add_16*
dtype0
�
!training_1/Adam/ReadVariableOp_47ReadVariableOptraining_1/Adam/m_5_1$^training_1/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
s
#training_1/Adam/AssignVariableOp_16AssignVariableOptraining_1/Adam/v_5_1training_1/Adam/add_17*
dtype0
�
!training_1/Adam/ReadVariableOp_48ReadVariableOptraining_1/Adam/v_5_1$^training_1/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
m
#training_1/Adam/AssignVariableOp_17AssignVariableOpm2_hidden3/biastraining_1/Adam/sub_19*
dtype0
�
!training_1/Adam/ReadVariableOp_49ReadVariableOpm2_hidden3/bias$^training_1/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_50ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_31/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*
dtype0*
_output_shapes

:

�
training_1/Adam/mul_31Mul!training_1/Adam/ReadVariableOp_50%training_1/Adam/mul_31/ReadVariableOp*
_output_shapes

:
*
T0
g
!training_1/Adam/ReadVariableOp_51ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_20/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
{
training_1/Adam/sub_20Subtraining_1/Adam/sub_20/x!training_1/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 
�
training_1/Adam/mul_32Multraining_1/Adam/sub_208training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

v
training_1/Adam/add_19Addtraining_1/Adam/mul_31training_1/Adam/mul_32*
_output_shapes

:
*
T0
g
!training_1/Adam/ReadVariableOp_52ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
{
%training_1/Adam/mul_33/ReadVariableOpReadVariableOptraining_1/Adam/v_6_1*
dtype0*
_output_shapes

:

�
training_1/Adam/mul_33Mul!training_1/Adam/ReadVariableOp_52%training_1/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_53ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_21/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_21Subtraining_1/Adam/sub_21/x!training_1/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 
�
training_1/Adam/Square_6Square8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

x
training_1/Adam/mul_34Multraining_1/Adam/sub_21training_1/Adam/Square_6*
T0*
_output_shapes

:

v
training_1/Adam/add_20Addtraining_1/Adam/mul_33training_1/Adam/mul_34*
_output_shapes

:
*
T0
s
training_1/Adam/mul_35Multraining_1/Adam/multraining_1/Adam/add_19*
_output_shapes

:
*
T0
]
training_1/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_16Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_7/MinimumMinimumtraining_1/Adam/add_20training_1/Adam/Const_16*
T0*
_output_shapes

:

�
training_1/Adam/clip_by_value_7Maximum'training_1/Adam/clip_by_value_7/Minimumtraining_1/Adam/Const_15*
_output_shapes

:
*
T0
h
training_1/Adam/Sqrt_7Sqrttraining_1/Adam/clip_by_value_7*
T0*
_output_shapes

:

]
training_1/Adam/add_21/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
x
training_1/Adam/add_21Addtraining_1/Adam/Sqrt_7training_1/Adam/add_21/y*
T0*
_output_shapes

:

}
training_1/Adam/truediv_7RealDivtraining_1/Adam/mul_35training_1/Adam/add_21*
T0*
_output_shapes

:

r
!training_1/Adam/ReadVariableOp_54ReadVariableOpm2_output/kernel*
_output_shapes

:
*
dtype0
�
training_1/Adam/sub_22Sub!training_1/Adam/ReadVariableOp_54training_1/Adam/truediv_7*
_output_shapes

:
*
T0
s
#training_1/Adam/AssignVariableOp_18AssignVariableOptraining_1/Adam/m_6_1training_1/Adam/add_19*
dtype0
�
!training_1/Adam/ReadVariableOp_55ReadVariableOptraining_1/Adam/m_6_1$^training_1/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

s
#training_1/Adam/AssignVariableOp_19AssignVariableOptraining_1/Adam/v_6_1training_1/Adam/add_20*
dtype0
�
!training_1/Adam/ReadVariableOp_56ReadVariableOptraining_1/Adam/v_6_1$^training_1/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

n
#training_1/Adam/AssignVariableOp_20AssignVariableOpm2_output/kerneltraining_1/Adam/sub_22*
dtype0
�
!training_1/Adam/ReadVariableOp_57ReadVariableOpm2_output/kernel$^training_1/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_58ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_36/ReadVariableOpReadVariableOptraining_1/Adam/m_7_1*
dtype0*
_output_shapes
:

�
training_1/Adam/mul_36Mul!training_1/Adam/ReadVariableOp_58%training_1/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:

g
!training_1/Adam/ReadVariableOp_59ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_23/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
_output_shapes
: *
T0
�
training_1/Adam/mul_37Multraining_1/Adam/sub_23<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

r
training_1/Adam/add_22Addtraining_1/Adam/mul_36training_1/Adam/mul_37*
T0*
_output_shapes
:

g
!training_1/Adam/ReadVariableOp_60ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_38/ReadVariableOpReadVariableOptraining_1/Adam/v_7_1*
dtype0*
_output_shapes
:

�
training_1/Adam/mul_38Mul!training_1/Adam/ReadVariableOp_60%training_1/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:

g
!training_1/Adam/ReadVariableOp_61ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_24/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_24Subtraining_1/Adam/sub_24/x!training_1/Adam/ReadVariableOp_61*
_output_shapes
: *
T0
�
training_1/Adam/Square_7Square<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
t
training_1/Adam/mul_39Multraining_1/Adam/sub_24training_1/Adam/Square_7*
T0*
_output_shapes
:

r
training_1/Adam/add_23Addtraining_1/Adam/mul_38training_1/Adam/mul_39*
T0*
_output_shapes
:

o
training_1/Adam/mul_40Multraining_1/Adam/multraining_1/Adam/add_22*
T0*
_output_shapes
:

]
training_1/Adam/Const_17Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_18Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
T0*
_output_shapes
:

�
training_1/Adam/clip_by_value_8Maximum'training_1/Adam/clip_by_value_8/Minimumtraining_1/Adam/Const_17*
T0*
_output_shapes
:

d
training_1/Adam/Sqrt_8Sqrttraining_1/Adam/clip_by_value_8*
_output_shapes
:
*
T0
]
training_1/Adam/add_24/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
t
training_1/Adam/add_24Addtraining_1/Adam/Sqrt_8training_1/Adam/add_24/y*
_output_shapes
:
*
T0
y
training_1/Adam/truediv_8RealDivtraining_1/Adam/mul_40training_1/Adam/add_24*
T0*
_output_shapes
:

l
!training_1/Adam/ReadVariableOp_62ReadVariableOpm2_output/bias*
dtype0*
_output_shapes
:

�
training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
T0*
_output_shapes
:

s
#training_1/Adam/AssignVariableOp_21AssignVariableOptraining_1/Adam/m_7_1training_1/Adam/add_22*
dtype0
�
!training_1/Adam/ReadVariableOp_63ReadVariableOptraining_1/Adam/m_7_1$^training_1/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

s
#training_1/Adam/AssignVariableOp_22AssignVariableOptraining_1/Adam/v_7_1training_1/Adam/add_23*
dtype0
�
!training_1/Adam/ReadVariableOp_64ReadVariableOptraining_1/Adam/v_7_1$^training_1/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

l
#training_1/Adam/AssignVariableOp_23AssignVariableOpm2_output/biastraining_1/Adam/sub_25*
dtype0
�
!training_1/Adam/ReadVariableOp_65ReadVariableOpm2_output/bias$^training_1/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

e
training_1/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 
V
training_1/VarIsInitializedOp_1VarIsInitializedOptotal_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_2VarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_3VarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 
`
training_1/VarIsInitializedOp_4VarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 
d
training_1/VarIsInitializedOp_5VarIsInitializedOptraining_1/Adam/v_4_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_6VarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_7VarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_8VarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_9VarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_10VarIsInitializedOptraining_1/Adam/m_3_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_11VarIsInitializedOptraining_1/Adam/v_3_1*
_output_shapes
: 
_
 training_1/VarIsInitializedOp_12VarIsInitializedOpm2_hidden3/bias*
_output_shapes
: 
a
 training_1/VarIsInitializedOp_13VarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 
]
 training_1/VarIsInitializedOp_14VarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_15VarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 
d
 training_1/VarIsInitializedOp_16VarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_17VarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_18VarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 
\
 training_1/VarIsInitializedOp_19VarIsInitializedOpAdam_1/decay*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_20VarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 
a
 training_1/VarIsInitializedOp_21VarIsInitializedOpAdam_1/iterations*
_output_shapes
: 
`
 training_1/VarIsInitializedOp_22VarIsInitializedOpm2_output/kernel*
_output_shapes
: 
]
 training_1/VarIsInitializedOp_23VarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_24VarIsInitializedOptraining_1/Adam/v_6_1*
_output_shapes
: 
^
 training_1/VarIsInitializedOp_25VarIsInitializedOpm2_output/bias*
_output_shapes
: 
a
 training_1/VarIsInitializedOp_26VarIsInitializedOpm2_hidden3/kernel*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_27VarIsInitializedOptraining_1/Adam/m_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_28VarIsInitializedOptraining_1/Adam/v_7_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_29VarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_30VarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_31VarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 
W
 training_1/VarIsInitializedOp_32VarIsInitializedOpcount_1*
_output_shapes
: 
_
 training_1/VarIsInitializedOp_33VarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_34VarIsInitializedOptraining_1/Adam/m_6_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_35VarIsInitializedOptraining_1/Adam/v_5_1*
_output_shapes
: 
_
 training_1/VarIsInitializedOp_36VarIsInitializedOpm2_hidden2/bias*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_37VarIsInitializedOptraining_1/Adam/m_4_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_38VarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 
�	
training_1/initNoOp^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^count_1/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^total_1/Assign^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign
�
training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9
�
group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1""�K
trainable_variables�K�K
y
m1_hidden1/kernel:0m1_hidden1/kernel/Assign'm1_hidden1/kernel/Read/ReadVariableOp:0(2m1_hidden1/random_uniform:08
j
m1_hidden1/bias:0m1_hidden1/bias/Assign%m1_hidden1/bias/Read/ReadVariableOp:0(2m1_hidden1/Const:08
y
m1_hidden2/kernel:0m1_hidden2/kernel/Assign'm1_hidden2/kernel/Read/ReadVariableOp:0(2m1_hidden2/random_uniform:08
j
m1_hidden2/bias:0m1_hidden2/bias/Assign%m1_hidden2/bias/Read/ReadVariableOp:0(2m1_hidden2/Const:08
y
m1_hidden3/kernel:0m1_hidden3/kernel/Assign'm1_hidden3/kernel/Read/ReadVariableOp:0(2m1_hidden3/random_uniform:08
j
m1_hidden3/bias:0m1_hidden3/bias/Assign%m1_hidden3/bias/Read/ReadVariableOp:0(2m1_hidden3/Const:08
u
m1_output/kernel:0m1_output/kernel/Assign&m1_output/kernel/Read/ReadVariableOp:0(2m1_output/random_uniform:08
f
m1_output/bias:0m1_output/bias/Assign$m1_output/bias/Read/ReadVariableOp:0(2m1_output/Const:08
�
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
�
Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
A
total:0total/Assigntotal/Read/ReadVariableOp:0(2Const:08
C
count:0count/Assigncount/Read/ReadVariableOp:0(2	Const_1:08
w
training/Adam/m_0_1:0training/Adam/m_0_1/Assign)training/Adam/m_0_1/Read/ReadVariableOp:0(2training/Adam/m_0:08
w
training/Adam/m_1_1:0training/Adam/m_1_1/Assign)training/Adam/m_1_1/Read/ReadVariableOp:0(2training/Adam/m_1:08
w
training/Adam/m_2_1:0training/Adam/m_2_1/Assign)training/Adam/m_2_1/Read/ReadVariableOp:0(2training/Adam/m_2:08
w
training/Adam/m_3_1:0training/Adam/m_3_1/Assign)training/Adam/m_3_1/Read/ReadVariableOp:0(2training/Adam/m_3:08
w
training/Adam/m_4_1:0training/Adam/m_4_1/Assign)training/Adam/m_4_1/Read/ReadVariableOp:0(2training/Adam/m_4:08
w
training/Adam/m_5_1:0training/Adam/m_5_1/Assign)training/Adam/m_5_1/Read/ReadVariableOp:0(2training/Adam/m_5:08
w
training/Adam/m_6_1:0training/Adam/m_6_1/Assign)training/Adam/m_6_1/Read/ReadVariableOp:0(2training/Adam/m_6:08
w
training/Adam/m_7_1:0training/Adam/m_7_1/Assign)training/Adam/m_7_1/Read/ReadVariableOp:0(2training/Adam/m_7:08
w
training/Adam/v_0_1:0training/Adam/v_0_1/Assign)training/Adam/v_0_1/Read/ReadVariableOp:0(2training/Adam/v_0:08
w
training/Adam/v_1_1:0training/Adam/v_1_1/Assign)training/Adam/v_1_1/Read/ReadVariableOp:0(2training/Adam/v_1:08
w
training/Adam/v_2_1:0training/Adam/v_2_1/Assign)training/Adam/v_2_1/Read/ReadVariableOp:0(2training/Adam/v_2:08
w
training/Adam/v_3_1:0training/Adam/v_3_1/Assign)training/Adam/v_3_1/Read/ReadVariableOp:0(2training/Adam/v_3:08
w
training/Adam/v_4_1:0training/Adam/v_4_1/Assign)training/Adam/v_4_1/Read/ReadVariableOp:0(2training/Adam/v_4:08
w
training/Adam/v_5_1:0training/Adam/v_5_1/Assign)training/Adam/v_5_1/Read/ReadVariableOp:0(2training/Adam/v_5:08
w
training/Adam/v_6_1:0training/Adam/v_6_1/Assign)training/Adam/v_6_1/Read/ReadVariableOp:0(2training/Adam/v_6:08
w
training/Adam/v_7_1:0training/Adam/v_7_1/Assign)training/Adam/v_7_1/Read/ReadVariableOp:0(2training/Adam/v_7:08
�
training/Adam/vhat_0_1:0training/Adam/vhat_0_1/Assign,training/Adam/vhat_0_1/Read/ReadVariableOp:0(2training/Adam/vhat_0:08
�
training/Adam/vhat_1_1:0training/Adam/vhat_1_1/Assign,training/Adam/vhat_1_1/Read/ReadVariableOp:0(2training/Adam/vhat_1:08
�
training/Adam/vhat_2_1:0training/Adam/vhat_2_1/Assign,training/Adam/vhat_2_1/Read/ReadVariableOp:0(2training/Adam/vhat_2:08
�
training/Adam/vhat_3_1:0training/Adam/vhat_3_1/Assign,training/Adam/vhat_3_1/Read/ReadVariableOp:0(2training/Adam/vhat_3:08
�
training/Adam/vhat_4_1:0training/Adam/vhat_4_1/Assign,training/Adam/vhat_4_1/Read/ReadVariableOp:0(2training/Adam/vhat_4:08
�
training/Adam/vhat_5_1:0training/Adam/vhat_5_1/Assign,training/Adam/vhat_5_1/Read/ReadVariableOp:0(2training/Adam/vhat_5:08
�
training/Adam/vhat_6_1:0training/Adam/vhat_6_1/Assign,training/Adam/vhat_6_1/Read/ReadVariableOp:0(2training/Adam/vhat_6:08
�
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08
y
m2_hidden1/kernel:0m2_hidden1/kernel/Assign'm2_hidden1/kernel/Read/ReadVariableOp:0(2m2_hidden1/random_uniform:08
j
m2_hidden1/bias:0m2_hidden1/bias/Assign%m2_hidden1/bias/Read/ReadVariableOp:0(2m2_hidden1/Const:08
y
m2_hidden2/kernel:0m2_hidden2/kernel/Assign'm2_hidden2/kernel/Read/ReadVariableOp:0(2m2_hidden2/random_uniform:08
j
m2_hidden2/bias:0m2_hidden2/bias/Assign%m2_hidden2/bias/Read/ReadVariableOp:0(2m2_hidden2/Const:08
y
m2_hidden3/kernel:0m2_hidden3/kernel/Assign'm2_hidden3/kernel/Read/ReadVariableOp:0(2m2_hidden3/random_uniform:08
j
m2_hidden3/bias:0m2_hidden3/bias/Assign%m2_hidden3/bias/Read/ReadVariableOp:0(2m2_hidden3/Const:08
u
m2_output/kernel:0m2_output/kernel/Assign&m2_output/kernel/Read/ReadVariableOp:0(2m2_output/random_uniform:08
f
m2_output/bias:0m2_output/bias/Assign$m2_output/bias/Read/ReadVariableOp:0(2m2_output/Const:08
�
Adam_1/iterations:0Adam_1/iterations/Assign'Adam_1/iterations/Read/ReadVariableOp:0(2-Adam_1/iterations/Initializer/initial_value:08
�
Adam_1/learning_rate:0Adam_1/learning_rate/Assign*Adam_1/learning_rate/Read/ReadVariableOp:0(20Adam_1/learning_rate/Initializer/initial_value:08
{
Adam_1/beta_1:0Adam_1/beta_1/Assign#Adam_1/beta_1/Read/ReadVariableOp:0(2)Adam_1/beta_1/Initializer/initial_value:08
{
Adam_1/beta_2:0Adam_1/beta_2/Assign#Adam_1/beta_2/Read/ReadVariableOp:0(2)Adam_1/beta_2/Initializer/initial_value:08
w
Adam_1/decay:0Adam_1/decay/Assign"Adam_1/decay/Read/ReadVariableOp:0(2(Adam_1/decay/Initializer/initial_value:08
I
	total_1:0total_1/Assigntotal_1/Read/ReadVariableOp:0(2	Const_3:08
I
	count_1:0count_1/Assigncount_1/Read/ReadVariableOp:0(2	Const_4:08

training_1/Adam/m_0_1:0training_1/Adam/m_0_1/Assign+training_1/Adam/m_0_1/Read/ReadVariableOp:0(2training_1/Adam/m_0:08

training_1/Adam/m_1_1:0training_1/Adam/m_1_1/Assign+training_1/Adam/m_1_1/Read/ReadVariableOp:0(2training_1/Adam/m_1:08

training_1/Adam/m_2_1:0training_1/Adam/m_2_1/Assign+training_1/Adam/m_2_1/Read/ReadVariableOp:0(2training_1/Adam/m_2:08

training_1/Adam/m_3_1:0training_1/Adam/m_3_1/Assign+training_1/Adam/m_3_1/Read/ReadVariableOp:0(2training_1/Adam/m_3:08

training_1/Adam/m_4_1:0training_1/Adam/m_4_1/Assign+training_1/Adam/m_4_1/Read/ReadVariableOp:0(2training_1/Adam/m_4:08

training_1/Adam/m_5_1:0training_1/Adam/m_5_1/Assign+training_1/Adam/m_5_1/Read/ReadVariableOp:0(2training_1/Adam/m_5:08

training_1/Adam/m_6_1:0training_1/Adam/m_6_1/Assign+training_1/Adam/m_6_1/Read/ReadVariableOp:0(2training_1/Adam/m_6:08

training_1/Adam/m_7_1:0training_1/Adam/m_7_1/Assign+training_1/Adam/m_7_1/Read/ReadVariableOp:0(2training_1/Adam/m_7:08

training_1/Adam/v_0_1:0training_1/Adam/v_0_1/Assign+training_1/Adam/v_0_1/Read/ReadVariableOp:0(2training_1/Adam/v_0:08

training_1/Adam/v_1_1:0training_1/Adam/v_1_1/Assign+training_1/Adam/v_1_1/Read/ReadVariableOp:0(2training_1/Adam/v_1:08

training_1/Adam/v_2_1:0training_1/Adam/v_2_1/Assign+training_1/Adam/v_2_1/Read/ReadVariableOp:0(2training_1/Adam/v_2:08

training_1/Adam/v_3_1:0training_1/Adam/v_3_1/Assign+training_1/Adam/v_3_1/Read/ReadVariableOp:0(2training_1/Adam/v_3:08

training_1/Adam/v_4_1:0training_1/Adam/v_4_1/Assign+training_1/Adam/v_4_1/Read/ReadVariableOp:0(2training_1/Adam/v_4:08

training_1/Adam/v_5_1:0training_1/Adam/v_5_1/Assign+training_1/Adam/v_5_1/Read/ReadVariableOp:0(2training_1/Adam/v_5:08

training_1/Adam/v_6_1:0training_1/Adam/v_6_1/Assign+training_1/Adam/v_6_1/Read/ReadVariableOp:0(2training_1/Adam/v_6:08

training_1/Adam/v_7_1:0training_1/Adam/v_7_1/Assign+training_1/Adam/v_7_1/Read/ReadVariableOp:0(2training_1/Adam/v_7:08
�
training_1/Adam/vhat_0_1:0training_1/Adam/vhat_0_1/Assign.training_1/Adam/vhat_0_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_0:08
�
training_1/Adam/vhat_1_1:0training_1/Adam/vhat_1_1/Assign.training_1/Adam/vhat_1_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_1:08
�
training_1/Adam/vhat_2_1:0training_1/Adam/vhat_2_1/Assign.training_1/Adam/vhat_2_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_2:08
�
training_1/Adam/vhat_3_1:0training_1/Adam/vhat_3_1/Assign.training_1/Adam/vhat_3_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_3:08
�
training_1/Adam/vhat_4_1:0training_1/Adam/vhat_4_1/Assign.training_1/Adam/vhat_4_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_4:08
�
training_1/Adam/vhat_5_1:0training_1/Adam/vhat_5_1/Assign.training_1/Adam/vhat_5_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_5:08
�
training_1/Adam/vhat_6_1:0training_1/Adam/vhat_6_1/Assign.training_1/Adam/vhat_6_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_6:08
�
training_1/Adam/vhat_7_1:0training_1/Adam/vhat_7_1/Assign.training_1/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_7:08"�	
cond_context�	�	
�
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *�
dropout_1/cond/dropout/Floor:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/add:0
dropout_1/cond/dropout/mul:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/dropout/rate:0
dropout_1/cond/dropout/sub/x:0
dropout_1/cond/dropout/sub:0
 dropout_1/cond/dropout/truediv:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:0
dropout_1_input:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0:
dropout_1_input:0%dropout_1/cond/dropout/Shape/Switch:1
�
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*�
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0
dropout_1_input:0.
dropout_1_input:0dropout_1/cond/Switch_1:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0"�K
	variables�K�K
y
m1_hidden1/kernel:0m1_hidden1/kernel/Assign'm1_hidden1/kernel/Read/ReadVariableOp:0(2m1_hidden1/random_uniform:08
j
m1_hidden1/bias:0m1_hidden1/bias/Assign%m1_hidden1/bias/Read/ReadVariableOp:0(2m1_hidden1/Const:08
y
m1_hidden2/kernel:0m1_hidden2/kernel/Assign'm1_hidden2/kernel/Read/ReadVariableOp:0(2m1_hidden2/random_uniform:08
j
m1_hidden2/bias:0m1_hidden2/bias/Assign%m1_hidden2/bias/Read/ReadVariableOp:0(2m1_hidden2/Const:08
y
m1_hidden3/kernel:0m1_hidden3/kernel/Assign'm1_hidden3/kernel/Read/ReadVariableOp:0(2m1_hidden3/random_uniform:08
j
m1_hidden3/bias:0m1_hidden3/bias/Assign%m1_hidden3/bias/Read/ReadVariableOp:0(2m1_hidden3/Const:08
u
m1_output/kernel:0m1_output/kernel/Assign&m1_output/kernel/Read/ReadVariableOp:0(2m1_output/random_uniform:08
f
m1_output/bias:0m1_output/bias/Assign$m1_output/bias/Read/ReadVariableOp:0(2m1_output/Const:08
�
Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
�
Adam/learning_rate:0Adam/learning_rate/Assign(Adam/learning_rate/Read/ReadVariableOp:0(2.Adam/learning_rate/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
A
total:0total/Assigntotal/Read/ReadVariableOp:0(2Const:08
C
count:0count/Assigncount/Read/ReadVariableOp:0(2	Const_1:08
w
training/Adam/m_0_1:0training/Adam/m_0_1/Assign)training/Adam/m_0_1/Read/ReadVariableOp:0(2training/Adam/m_0:08
w
training/Adam/m_1_1:0training/Adam/m_1_1/Assign)training/Adam/m_1_1/Read/ReadVariableOp:0(2training/Adam/m_1:08
w
training/Adam/m_2_1:0training/Adam/m_2_1/Assign)training/Adam/m_2_1/Read/ReadVariableOp:0(2training/Adam/m_2:08
w
training/Adam/m_3_1:0training/Adam/m_3_1/Assign)training/Adam/m_3_1/Read/ReadVariableOp:0(2training/Adam/m_3:08
w
training/Adam/m_4_1:0training/Adam/m_4_1/Assign)training/Adam/m_4_1/Read/ReadVariableOp:0(2training/Adam/m_4:08
w
training/Adam/m_5_1:0training/Adam/m_5_1/Assign)training/Adam/m_5_1/Read/ReadVariableOp:0(2training/Adam/m_5:08
w
training/Adam/m_6_1:0training/Adam/m_6_1/Assign)training/Adam/m_6_1/Read/ReadVariableOp:0(2training/Adam/m_6:08
w
training/Adam/m_7_1:0training/Adam/m_7_1/Assign)training/Adam/m_7_1/Read/ReadVariableOp:0(2training/Adam/m_7:08
w
training/Adam/v_0_1:0training/Adam/v_0_1/Assign)training/Adam/v_0_1/Read/ReadVariableOp:0(2training/Adam/v_0:08
w
training/Adam/v_1_1:0training/Adam/v_1_1/Assign)training/Adam/v_1_1/Read/ReadVariableOp:0(2training/Adam/v_1:08
w
training/Adam/v_2_1:0training/Adam/v_2_1/Assign)training/Adam/v_2_1/Read/ReadVariableOp:0(2training/Adam/v_2:08
w
training/Adam/v_3_1:0training/Adam/v_3_1/Assign)training/Adam/v_3_1/Read/ReadVariableOp:0(2training/Adam/v_3:08
w
training/Adam/v_4_1:0training/Adam/v_4_1/Assign)training/Adam/v_4_1/Read/ReadVariableOp:0(2training/Adam/v_4:08
w
training/Adam/v_5_1:0training/Adam/v_5_1/Assign)training/Adam/v_5_1/Read/ReadVariableOp:0(2training/Adam/v_5:08
w
training/Adam/v_6_1:0training/Adam/v_6_1/Assign)training/Adam/v_6_1/Read/ReadVariableOp:0(2training/Adam/v_6:08
w
training/Adam/v_7_1:0training/Adam/v_7_1/Assign)training/Adam/v_7_1/Read/ReadVariableOp:0(2training/Adam/v_7:08
�
training/Adam/vhat_0_1:0training/Adam/vhat_0_1/Assign,training/Adam/vhat_0_1/Read/ReadVariableOp:0(2training/Adam/vhat_0:08
�
training/Adam/vhat_1_1:0training/Adam/vhat_1_1/Assign,training/Adam/vhat_1_1/Read/ReadVariableOp:0(2training/Adam/vhat_1:08
�
training/Adam/vhat_2_1:0training/Adam/vhat_2_1/Assign,training/Adam/vhat_2_1/Read/ReadVariableOp:0(2training/Adam/vhat_2:08
�
training/Adam/vhat_3_1:0training/Adam/vhat_3_1/Assign,training/Adam/vhat_3_1/Read/ReadVariableOp:0(2training/Adam/vhat_3:08
�
training/Adam/vhat_4_1:0training/Adam/vhat_4_1/Assign,training/Adam/vhat_4_1/Read/ReadVariableOp:0(2training/Adam/vhat_4:08
�
training/Adam/vhat_5_1:0training/Adam/vhat_5_1/Assign,training/Adam/vhat_5_1/Read/ReadVariableOp:0(2training/Adam/vhat_5:08
�
training/Adam/vhat_6_1:0training/Adam/vhat_6_1/Assign,training/Adam/vhat_6_1/Read/ReadVariableOp:0(2training/Adam/vhat_6:08
�
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08
y
m2_hidden1/kernel:0m2_hidden1/kernel/Assign'm2_hidden1/kernel/Read/ReadVariableOp:0(2m2_hidden1/random_uniform:08
j
m2_hidden1/bias:0m2_hidden1/bias/Assign%m2_hidden1/bias/Read/ReadVariableOp:0(2m2_hidden1/Const:08
y
m2_hidden2/kernel:0m2_hidden2/kernel/Assign'm2_hidden2/kernel/Read/ReadVariableOp:0(2m2_hidden2/random_uniform:08
j
m2_hidden2/bias:0m2_hidden2/bias/Assign%m2_hidden2/bias/Read/ReadVariableOp:0(2m2_hidden2/Const:08
y
m2_hidden3/kernel:0m2_hidden3/kernel/Assign'm2_hidden3/kernel/Read/ReadVariableOp:0(2m2_hidden3/random_uniform:08
j
m2_hidden3/bias:0m2_hidden3/bias/Assign%m2_hidden3/bias/Read/ReadVariableOp:0(2m2_hidden3/Const:08
u
m2_output/kernel:0m2_output/kernel/Assign&m2_output/kernel/Read/ReadVariableOp:0(2m2_output/random_uniform:08
f
m2_output/bias:0m2_output/bias/Assign$m2_output/bias/Read/ReadVariableOp:0(2m2_output/Const:08
�
Adam_1/iterations:0Adam_1/iterations/Assign'Adam_1/iterations/Read/ReadVariableOp:0(2-Adam_1/iterations/Initializer/initial_value:08
�
Adam_1/learning_rate:0Adam_1/learning_rate/Assign*Adam_1/learning_rate/Read/ReadVariableOp:0(20Adam_1/learning_rate/Initializer/initial_value:08
{
Adam_1/beta_1:0Adam_1/beta_1/Assign#Adam_1/beta_1/Read/ReadVariableOp:0(2)Adam_1/beta_1/Initializer/initial_value:08
{
Adam_1/beta_2:0Adam_1/beta_2/Assign#Adam_1/beta_2/Read/ReadVariableOp:0(2)Adam_1/beta_2/Initializer/initial_value:08
w
Adam_1/decay:0Adam_1/decay/Assign"Adam_1/decay/Read/ReadVariableOp:0(2(Adam_1/decay/Initializer/initial_value:08
I
	total_1:0total_1/Assigntotal_1/Read/ReadVariableOp:0(2	Const_3:08
I
	count_1:0count_1/Assigncount_1/Read/ReadVariableOp:0(2	Const_4:08

training_1/Adam/m_0_1:0training_1/Adam/m_0_1/Assign+training_1/Adam/m_0_1/Read/ReadVariableOp:0(2training_1/Adam/m_0:08

training_1/Adam/m_1_1:0training_1/Adam/m_1_1/Assign+training_1/Adam/m_1_1/Read/ReadVariableOp:0(2training_1/Adam/m_1:08

training_1/Adam/m_2_1:0training_1/Adam/m_2_1/Assign+training_1/Adam/m_2_1/Read/ReadVariableOp:0(2training_1/Adam/m_2:08

training_1/Adam/m_3_1:0training_1/Adam/m_3_1/Assign+training_1/Adam/m_3_1/Read/ReadVariableOp:0(2training_1/Adam/m_3:08

training_1/Adam/m_4_1:0training_1/Adam/m_4_1/Assign+training_1/Adam/m_4_1/Read/ReadVariableOp:0(2training_1/Adam/m_4:08

training_1/Adam/m_5_1:0training_1/Adam/m_5_1/Assign+training_1/Adam/m_5_1/Read/ReadVariableOp:0(2training_1/Adam/m_5:08

training_1/Adam/m_6_1:0training_1/Adam/m_6_1/Assign+training_1/Adam/m_6_1/Read/ReadVariableOp:0(2training_1/Adam/m_6:08

training_1/Adam/m_7_1:0training_1/Adam/m_7_1/Assign+training_1/Adam/m_7_1/Read/ReadVariableOp:0(2training_1/Adam/m_7:08

training_1/Adam/v_0_1:0training_1/Adam/v_0_1/Assign+training_1/Adam/v_0_1/Read/ReadVariableOp:0(2training_1/Adam/v_0:08

training_1/Adam/v_1_1:0training_1/Adam/v_1_1/Assign+training_1/Adam/v_1_1/Read/ReadVariableOp:0(2training_1/Adam/v_1:08

training_1/Adam/v_2_1:0training_1/Adam/v_2_1/Assign+training_1/Adam/v_2_1/Read/ReadVariableOp:0(2training_1/Adam/v_2:08

training_1/Adam/v_3_1:0training_1/Adam/v_3_1/Assign+training_1/Adam/v_3_1/Read/ReadVariableOp:0(2training_1/Adam/v_3:08

training_1/Adam/v_4_1:0training_1/Adam/v_4_1/Assign+training_1/Adam/v_4_1/Read/ReadVariableOp:0(2training_1/Adam/v_4:08

training_1/Adam/v_5_1:0training_1/Adam/v_5_1/Assign+training_1/Adam/v_5_1/Read/ReadVariableOp:0(2training_1/Adam/v_5:08

training_1/Adam/v_6_1:0training_1/Adam/v_6_1/Assign+training_1/Adam/v_6_1/Read/ReadVariableOp:0(2training_1/Adam/v_6:08

training_1/Adam/v_7_1:0training_1/Adam/v_7_1/Assign+training_1/Adam/v_7_1/Read/ReadVariableOp:0(2training_1/Adam/v_7:08
�
training_1/Adam/vhat_0_1:0training_1/Adam/vhat_0_1/Assign.training_1/Adam/vhat_0_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_0:08
�
training_1/Adam/vhat_1_1:0training_1/Adam/vhat_1_1/Assign.training_1/Adam/vhat_1_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_1:08
�
training_1/Adam/vhat_2_1:0training_1/Adam/vhat_2_1/Assign.training_1/Adam/vhat_2_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_2:08
�
training_1/Adam/vhat_3_1:0training_1/Adam/vhat_3_1/Assign.training_1/Adam/vhat_3_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_3:08
�
training_1/Adam/vhat_4_1:0training_1/Adam/vhat_4_1/Assign.training_1/Adam/vhat_4_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_4:08
�
training_1/Adam/vhat_5_1:0training_1/Adam/vhat_5_1/Assign.training_1/Adam/vhat_5_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_5:08
�
training_1/Adam/vhat_6_1:0training_1/Adam/vhat_6_1/Assign.training_1/Adam/vhat_6_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_6:08
�
training_1/Adam/vhat_7_1:0training_1/Adam/vhat_7_1/Assign.training_1/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_7:08���       ���	he��!��A*

val_loss:�@Os��        )��P	Df��!��A*

val_accuracy��=���S       �K"	�f��!��A*

lossw�@MXc       ���	�f��!��A*

accuracy\��=�N       ��2	v��!��A*

val_loss�i@�"       x=�	O��!��A*

val_accuracyj�=���       ��-	���!��A*

lossu&@�mH       ��2	��!��A*

accuracy\��=�yq�       ��2	n9*�!��A*

val_loss�2@aA�"       x=�	C:*�!��A*

val_accuracy��>y�E!       ��-	�:*�!��A*

loss@@9��       ��2	�:*�!��A*

accuracy���=����       ��2	˕>�!��A*

val_loss>y@'�|�"       x=�	��>�!��A*

val_accuracy��2>����       ��-	�>�!��A*

loss�F@��G       ��2	7�>�!��A*

accuracy�z>���*       ��2	5nQ�!��A*

val_lossFj@����"       x=�	JoQ�!��A*

val_accuracy�/>$�)�       ��-	�oQ�!��A*

lossy�@�zլ       ��2	pQ�!��A*

accuracyT�%>�*9+       ��2	hYc�!��A*

val_loss��@�n<"       x=�	6Zc�!��A*

val_accuracy}�3>jI�       ��-	�Zc�!��A*

loss�_@�J�U       ��2	�Zc�!��A*

accuracy�/>���H       ��2	�Sy�!��A*

val_loss��@��Y"       x=�	�Ty�!��A*

val_accuracy��2>Z`��       ��-	�Ty�!��A*

loss�G@q��       ��2	<Uy�!��A*

accuracyX94>>fKS       ��2	U&��!��A*

val_loss�N@`�k"       x=�	'��!��A*

val_accuracy؁3>�,�       ��-	z'��!��A*

lossX�@�[��       ��2	�'��!��A*

accuracy� 0>����       ��2	�ǜ�!��A*

val_loss��@[TVe"       x=�	KȜ�!��A*

val_accuracy��1>��.       ��-	�Ȝ�!��A*

loss�@��#       ��2	�Ȝ�!��A*

accuracy333>�Q       ��2	�*��!��A	*

val_loss�@��2"       x=�	�+��!��A	*

val_accuracy5�8>;�p�       ��-	,��!��A	*

loss�u@�`u       ��2	r,��!��A	*

accuracy�v>>�4,�       ��2	����!��A
*

val_loss�y@�`,�"       x=�	����!��A
*

val_accuracy��?>ŵ]�       ��-	���!��A
*

lossh9@g�(�       ��2	\���!��A
*

accuracy\�B>D&��       ��2	L��!��A*

val_lossf�@9P�"       x=�	"��!��A*

val_accuracy�h@>��o       ��-	{��!��A*

loss��@4ܸ�       ��2	���!��A*

accuracy�Q8>����       ��2	O���!��A*

val_loss �@6�\�"       x=�	���!��A*

val_accuracy�A>�-�       ��-	p���!��A*

loss��@���!       ��2	����!��A*

accuracyj<>����       ��2	�M�!��A*

val_loss@X�u"       x=�	�N�!��A*

val_accuracy�ZB>�~	       ��-	O�!��A*

lossֿ@�)�       ��2	bO�!��A*

accuracy\�B>C$�       ��2	���!��A*

val_loss �@�jqm"       x=�	��!��A*

val_accuracy[B>>`w��       ��-	���!��A*

loss�6@n�:0       ��2	)��!��A*

accuracy�v>>�2��       ��2	4,�!��A*

val_loss�{@K�"       x=�	E5,�!��A*

val_accuracy%A>bT�[       ��-	�5,�!��A*

loss�@K4��       ��2	�5,�!��A*

accuracy��M>�2�       ��2	��?�!��A*

val_lossF@�K��"       x=�	f�?�!��A*

val_accuracyJB>�Џ       ��-	��?�!��A*

loss�+@vXc�       ��2	�?�!��A*

accuracy��R>����       ��2	p�Q�!��A*

val_loss�@�f��"       x=�	Y�Q�!��A*

val_accuracy�E>��r       ��-	��Q�!��A*

lossԣ@P��o       ��2	�Q�!��A*

accuracy/]>�#��       ��2	�d�!��A*

val_loss��@��h�"       x=�	Хd�!��A*

val_accuracy	J>�,��       ��-	-�d�!��A*

loss�@�W)       ��2	w�d�!��A*

accuracy��R>�zy       ��2	�y�!��A*

val_loss�@=�]"       x=�	�y�!��A*

val_accuracy�OM>�4�K       ��-	y�!��A*

losss`@L�32       ��2	oy�!��A*

accuracy�Mb>�+��       ��2	����!��A*

val_loss�}@��"       x=�	����!��A*

val_accuracy�K>�]`�       ��-	����!��A*

loss!�
@l�q       ��2	K���!��A*

accuracy�Ga>��j       ��2	q��!��A*

val_loss�@�Q8"       x=�	D��!��A*

val_accuracy�CK>�OC       ��-	���!��A*

loss�
@�D=       ��2	���!��A*

accuracy��S>��ʨ       ��2	��!��A*

val_lossS@@�2"       x=�	���!��A*

val_accuracyML>�G�*       ��-	���!��A*

loss��	@��u       ��2	���!��A*

accuracy�Y>T'�       ��2	���!��A*

val_loss;�	@��ߠ"       x=�	���!��A*

val_accuracy;�O>� k       ��-	��!��A*

loss��@���       ��2	[��!��A*

accuracy�Mb>=�|�       ��2	R��!��A*

val_loss9	@���"       x=�	�R��!��A*

val_accuracy�WJ>���       ��-	5S��!��A*

loss�k@{�,       ��2	�S��!��A*

accuracy!�r>*�6       ��2	����!��A*

val_lossȄ@s\^�"       x=�	]���!��A*

val_accuracy:#J>�/       ��-	����!��A*

lossP@D�4�       ��2	���!��A*

accuracy�Sc>��BA       ��2	f1�!��A*

val_loss@�@]z"       x=�	52�!��A*

val_accuracy(K> N_�       ��-	�2�!��A*

lossl@��*       ��2	�2�!��A*

accuracy�Sc>�D�<       ��2	}��!��A*

val_loss�@�"�M"       x=�	O��!��A*

val_accuracy��Q>�}l       ��-	���!��A*

loss�r@�3�4       ��2	��!��A*

accuracy�A`>�:�*       ��2	��,�!��A*

val_loss��@�p�I"       x=�	��,�!��A*

val_accuracy��Q>�{�>       ��-	
�,�!��A*

loss`�@Dp��       ��2	X�,�!��A*

accuracy�rh>D'�       ��2	m@�!��A*

val_loss�@���"       x=�	�m@�!��A*

val_accuracy�T>�.��       ��-	5n@�!��A*

loss�@@�o�       ��2	�n@�!��A*

accuracy�k>�r.Q       ��2	�T�!��A*

val_loss�>@����"       x=�	�T�!��A*

val_accuracy_X>3�@�       ��-	�T�!��A*

loss'�@�n#�       ��2	JT�!��A*

accuracy7��>����       ��2	ͺe�!��A*

val_loss"J@}�f"       x=�	��e�!��A*

val_accuracy��W>UB.�       ��-	��e�!��A*

loss�@n���       ��2	v�e�!��A*

accuracy\��>fkh�       ��2	�Py�!��A *

val_losss�@�p�"       x=�	Ry�!��A *

val_accuracy�aa>c�)�       ��-	~Ry�!��A *

loss{�@e���       ��2	�Ry�!��A *

accuracy��|>sZ�       ��2	���!��A!*

val_loss=�@��;s"       x=�	舋�!��A!*

val_accuracy�%d>>�v       ��-	J���!��A!*

lossX@����       ��2	D���!��A!*

accuracy��>�}}c       ��2	���!��A"*

val_loss4J@�`Ȝ"       x=�	���!��A"*

val_accuracyf�c>�#E       ��-	���!��A"*

loss�U@l       ��2	T��!��A"*

accuracy+�>GU_�       ��2	P[��!��A#*

val_lossu @��Pc"       x=�	\��!��A#*

val_accuracy�i>(*{�       ��-	u\��!��A#*

loss�@,P3       ��2	�\��!��A#*

accuracyL7�>���       ��2	�f��!��A$*

val_loss2�@9�g�"       x=�	�g��!��A$*

val_accuracyy�f>�C\        ��-	h��!��A$*

loss��@�c2k       ��2	hh��!��A$*

accuracy^��>ƺ�       ��2	����!��A%*

val_lossNH@Ym��"       x=�	����!��A%*

val_accuracy�Mb>\�       ��-	+���!��A%*

loss�@y��       ��2	{���!��A%*

accuracy��>�0�S       ��2	'���!��A&*

val_lossF@*y�="       x=�	���!��A&*

val_accuracyB�f>�Rqc       ��-	d���!��A&*

loss�>@��k       ��2	����!��A&*

accuracy9��>$�=o       ��2	���!��A'*

val_loss�@&�"       x=�	���!��A'*

val_accuracy�xi>��Y       ��-	��!��A'*

loss4� @�\�\       ��2	���!��A'*

accuracy�n�>��4B       ��2	Xq�!��A(*

val_lossp�@MR��"       x=�	%r�!��A(*

val_accuracyg�g>,T��       ��-	�r�!��A(*

losspE @S2�       ��2	�r�!��A(*

accuracy;ߏ>�$R�       ��2	��#�!��A)*

val_loss͗@��"       x=�	t�#�!��A)*

val_accuracy��h>�        ��-	Ԇ#�!��A)*

loss� @kB��       ��2	 �#�!��A)*

accuracyَ>�i�&       ��2	v�5�!��A**

val_loss�x@�1"       x=�	E�5�!��A**

val_accuracy�h>�~�P       ��-	��5�!��A**

loss9|�?*q.�       ��2	�5�!��A**

accuracy�n�>!�x�       ��2	�eG�!��A+*

val_lossP%@�fr�"       x=�	�fG�!��A+*

val_accuracy��i>ᶈp       ��-	gG�!��A+*

lossV�?����       ��2	�gG�!��A+*

accuracy�z�>d�"       ��2	uY�!��A,*

val_lossl�@���"       x=�	Y�!��A,*

val_accuracy��j>�
eR       ��-	�Y�!��A,*

loss�C�?Ŕ&�       ��2	@Y�!��A,*

accuracysh�>g\�q       ��2	,�k�!��A-*

val_loss�v@ܮ �"       x=�	��k�!��A-*

val_accuracy�Jj>�j1;       ��-	S�k�!��A-*

loss+j�? :�       ��2	��k�!��A-*

accuracy��>�O�~       ��2	�S}�!��A.*

val_loss2@���"       x=�	�T}�!��A.*

val_accuracyz6k>�\�       ��-	�T}�!��A.*

lossX��?�3"�       ��2	*U}�!��A.*

accuracysh�>-���       ��2	���!��A/*

val_loss��@D� "       x=�	���!��A/*

val_accuracy��k>�O�S       ��-	��!��A/*

loss0��?�z�       ��2	n��!��A/*

accuracy?5�>ȞK�       ��2	Ǡ�!��A0*

val_loss
�@��"       x=�	�Ǡ�!��A0*

val_accuracy3�q>�5!       ��-	BȠ�!��A0*

loss,0�?[Wa�       ��2	�Ƞ�!��A0*

accuracy/�>j�3�       ��2	���!��A1*

val_loss)�@*�\"       x=�	s��!��A1*

val_accuracyX9t>+p(       ��-	���!��A1*

loss՞�?��J�       ��2	��!��A1*

accuracyb�>��q�       ��2	���!��A2*

val_lossߙ@O�d"       x=�	����!��A2*

val_accuracy�p>"��       ��-	���!��A2*

loss<��?����       ��2	d���!��A2*

accuracy-��>���       ��2	�L��!��A3*

val_lossӈ@��ֶ"       x=�	�M��!��A3*

val_accuracy�l>�U       ��-	N��!��A3*

loss���?�^{       ��2	jN��!��A3*

accuracyd;�>d\,q       ��2	����!��A4*

val_lossO@_�O"       x=�	_���!��A4*

val_accuracyOo>쒕�       ��-	����!��A4*

loss)��?_`�       ��2	���!��A4*

accuracy���>?�o       ��2	���!��A5*

val_loss�'@+ų"       x=�	^��!��A5*

val_accuracy��u>�fu       ��-	���!��A5*

losso��?m�s�       ��2	���!��A5*

accuracy?5�>��x�       ��2	nX�!��A6*

val_loss��@�Q?B"       x=�	�Y�!��A6*

val_accuracy#�y>�!9@       ��-	<Z�!��A6*

lossM(�?Q�jc       ��2	�Z�!��A6*

accuracy�Ġ>�D,       ��2	w"�!��A7*

val_loss�G@L4��"       x=�	�w"�!��A7*

val_accuracy��~>a�"�       ��-	^x"�!��A7*

lossN�?�ve�       ��2	�x"�!��A7*

accuracy���>�dO�       ��2	"7�!��A8*

val_loss�a@N�c\"       x=�	U7�!��A8*

val_accuracy�w>n��       ��-	�7�!��A8*

lossq�?�9ъ       ��2	_7�!��A8*

accuracy���>�d?       ��2	�:K�!��A9*

val_loss� @*��"       x=�	z;K�!��A9*

val_accuracy	��>�F��       ��-	�;K�!��A9*

loss���?����       ��2	,<K�!��A9*

accuracyZ�>��E�       ��2	��]�!��A:*

val_loss�
@&�$"       x=�	��]�!��A:*

val_accuracy��~>�y?       ��-	��]�!��A:*

loss���?)�3�       ��2	8�]�!��A:*

accuracy�l�>�3�       ��2	;�p�!��A;*

val_loss�:@�0"       x=�	��p�!��A;*

val_accuracy�z>�rV       ��-	V�p�!��A;*

loss�O�?'�Қ       ��2	��p�!��A;*

accuracyD��>XGD#       ��2	"��!��A<*

val_loss� @�)"       x=�	��!��A<*

val_accuracy�[�>��{       ��-	k��!��A<*

loss���?4�       ��2	���!��A<*

accuracyT�>эr       ��2	���!��A=*

val_loss2] @/�L"       x=�	���!��A=*

val_accuracy.��>,D�       ��-	.��!��A=*

loss`v�?��>�       ��2	��!��A=*

accuracy{�>Q3�+       ��2	c���!��A>*

val_loss�h @��."       x=�	?���!��A>*

val_accuracyJ{�>7��       ��-	����!��A>*

lossR2�?H�       ��2	鼫�!��A>*

accuracy���>����       ��2	����!��A?*

val_loss� @6�g�"       x=�	N���!��A?*

val_accuracy���>7���       ��-	����!��A?*

loss��?$�>�       ��2	����!��A?*

accuracy�K�>�,x}       ��2	�e��!��A@*

val_lossx0 @k���"       x=�	�f��!��A@*

val_accuracy��>�N       ��-	g��!��A@*

lossU�?��y       ��2	Yg��!��A@*

accuracy�E�>�:�       ��2	�]��!��AA*

val_loss� @�g�"       x=�	�^��!��AA*

val_accuracy�e�>C�)N       ��-	,_��!��AA*

lossfJ�?j�       ��2	�_��!��AA*

accuracy�µ>��r�       ��2	lQ��!��AB*

val_loss�k�?��"       x=�	DR��!��AB*

val_accuracygՇ>�pی       ��-	�R��!��AB*

loss3�?��L�       ��2	�R��!��AB*

accuracy�$�>�O��       ��2	]�!��AC*

val_loss�?��s"       x=�	3�!��AC*

val_accuracy�>���       ��-	��!��AC*

loss���?7���       ��2	��!��AC*

accuracyZd�>I�       ��2	�I�!��AD*

val_loss��?	���"       x=�	vJ�!��AD*

val_accuracy���>]1��       ��-	�J�!��AD*

loss�T�?��6       ��2	'K�!��AD*

accuracy�Ը>Fww`       ��2	�i)�!��AE*

val_loss���?�y��"       x=�	�j)�!��AE*

val_accuracy��>�qT       ��-	k)�!��AE*

loss���?�]H       ��2	Uk)�!��AE*

accuracy\��>&��       ��2	�=;�!��AF*

val_loss�l�?)�s�"       x=�	�>;�!��AF*

val_accuracy�k�>�#=S       ��-	�>;�!��AF*

lossە�?Bf       ��2	O?;�!��AF*

accuracy7��>&|�       ��2	y�L�!��AG*

val_loss�Q�?�%�."       x=�	l�L�!��AG*

val_accuracy�k�>Z��       ��-	��L�!��AG*

loss��?_���       ��2	�L�!��AG*

accuracy  �>�w�       ��2	�^�!��AH*

val_loss!�?�ٜ�"       x=�	��^�!��AH*

val_accuracy�I�>��       ��-	$�^�!��AH*

loss�?c�G-       ��2	z�^�!��AH*

accuracy%�>Y�       ��2	��o�!��AI*

val_losss�?����"       x=�	��o�!��AI*

val_accuracyV�>r�       ��-	�o�!��AI*

loss{��?GA�       ��2	T�o�!��AI*

accuracy��>�B��       ��2	ό��!��AJ*

val_loss�v�?�~a"       x=�	����!��AJ*

val_accuracy��>o���       ��-	���!��AJ*

loss9��?���       ��2	T���!��AJ*

accuracyo�>����       ��2	�M��!��AK*

val_lossb��?̃*0"       x=�	�N��!��AK*

val_accuracy;�>x��       ��-	OO��!��AK*

lossR��?��tw       ��2	�O��!��AK*

accuracyˡ�>H&�-       ��2	����!��AL*

val_lossQ��?�E�"       x=�	����!��AL*

val_accuracyW�>4��       ��-	���!��AL*

loss�%�?�)�b       ��2	X���!��AL*

accuracy�|�>����       ��2	� ��!��AM*

val_loss��?�n�	"       x=�	�!��!��AM*

val_accuracy�;�>��"�       ��-	�!��!��AM*

loss��?���G       ��2	2"��!��AM*

accuracysh�>���m       ��2	����!��AN*

val_loss���?f�U�"       x=�	����!��AN*

val_accuracy�;�>9��       ��-	���!��AN*

loss���?sv�x       ��2	k���!��AN*

accuracy��>,Ñ�       ��2	Wy��!��AO*

val_loss
��?�d�P"       x=�	Qz��!��AO*

val_accuracy�>3˨       ��-	�z��!��AO*

loss���?�&�v       ��2	�z��!��AO*

accuracy���>\@�       ��2	@���!��AP*

val_loss#3�?�P��"       x=�	���!��AP*

val_accuracysג>*�L	       ��-	c���!��AP*

loss���?�f��       ��2	����!��AP*

accuracy+�>n�       ��2	w���!��AQ*

val_loss���?���#"       x=�	1���!��AQ*

val_accuracy2U�>Ud��       ��-	����!��AQ*

loss�~�?�u}A       ��2	����!��AQ*

accuracy���>��S�       ��2	"��!��AR*

val_lossOB�?�P<"       x=�	6��!��AR*

val_accuracy��>�s�       ��-	���!��AR*

lossJJ�?�F
       ��2	w��!��AR*

accuracy�t�>4S��       ��2	��"�!��AS*

val_lossX��?���D"       x=�	��"�!��AS*

val_accuracy��>�"��       ��-	$�"�!��AS*

losswC�?P��       ��2	i�"�!��AS*

accuracysh�>�EI�       ��2	:5�!��AT*

val_loss���?�厀"       x=�	�:5�!��AT*

val_accuracy*��>�(�d       ��-	E;5�!��AT*

loss�4�?2�<       ��2	�;5�!��AT*

accuracy?5�>)%A�       ��2	vG�!��AU*

val_lossy��?��"       x=�	LG�!��AU*

val_accuracy�Ȗ>$�#�       ��-	�G�!��AU*

loss*��?�l�%       ��2	�G�!��AU*

accuracy��>��rj       ��2	��Y�!��AV*

val_loss$��?Z��r"       x=�	؍Y�!��AV*

val_accuracy�>}�}       ��-	��Y�!��AV*

loss�8�?�	��       ��2	 �Y�!��AV*

accuracy���>cA�:       ��2	�8l�!��AW*

val_loss� �?.�v�"       x=�	�9l�!��AW*

val_accuracy=
�>y�       ��-	�9l�!��AW*

loss��?�;�       ��2	L:l�!��AW*

accuracyP��>�~v�       ��2	%��!��AX*

val_loss��?ߓ:"       x=�	��!��AX*

val_accuracy���>tdYY       ��-	���!��AX*

lossV��?���       ��2	���!��AX*

accuracy�"�>�o`       ��2	����!��AY*

val_loss^��?h��"       x=�	����!��AY*

val_accuracy~��>��J�       ��-	 ���!��AY*

loss���?!��       ��2	R���!��AY*

accuracy���>4!�       ��2	����!��AZ*

val_loss�"�?�Թ�"       x=�	����!��AZ*

val_accuracy�ǘ>G$��       ��-	����!��AZ*

loss>n�?2��c       ��2	2���!��AZ*

accuracy���>V�&�       ��2	�q��!��A[*

val_loss�R�?nh��"       x=�	�r��!��A[*

val_accuracyl	�>�u�       ��-	�r��!��A[*

loss� �?��D@       ��2	Ls��!��A[*

accuracy=
�>?"�o       ��2	���!��A\*

val_loss\C�?��}"       x=�	^��!��A\*

val_accuracyQ�>k�v       ��-	���!��A\*

lossB��?��p       ��2	��!��A\*

accuracy�M�>���       ��2	���!��A]*

val_loss��?��X�"       x=�	E���!��A]*

val_accuracyz�>,��       ��-	����!��A]*

loss�1�?�0�:       ��2	���!��A]*

accuracy/��>�[       ��2	�1��!��A^*

val_loss(n�?`q��"       x=�	�2��!��A^*

val_accuracy�=�>�,�       ��-	�2��!��A^*

loss���?n���       ��2	:3��!��A^*

accuracy-��>�^�6       ��2	I���!��A_*

val_loss�_�?��D`"       x=�	���!��A_*

val_accuracy�*�> V       ��-	u���!��A_*

lossm#�?≆}       ��2	����!��A_*

accuracy���>]���       ��2	 \�!��A`*

val_lossC��?�Q�7"       x=�	�\�!��A`*

val_accuracy�~�>_�_�       ��-	2]�!��A`*

loss(�?x�\�       ��2	�]�!��A`*

accuracy���>���$       ��2	2��!��Aa*

val_loss���?�|�"       x=�		��!��Aa*

val_accuracyu�>�<m       ��-	g��!��Aa*

loss���?[P&       ��2	���!��Aa*

accuracyZ�>��       ��2	�X/�!��Ab*

val_loss�!�?�A"       x=�	RY/�!��Ab*

val_accuracyZ��>`�)l       ��-	�Y/�!��Ab*

lossX�?H<�T       ��2	�Y/�!��Ab*

accuracy���>��       ��2	�@�!��Ac*

val_lossf��?u��"       x=�	��@�!��Ac*

val_accuracy��>�L�:       ��-	C�@�!��Ac*

loss[�?w��~       ��2	��@�!��Ac*

accuracy���>n�4       ��2	�R�!��Ad*

val_loss�J�?!�T�"       x=�	2�R�!��Ad*

val_accuracy�)�>�X�"       ��-	�R�!��Ad*

loss��?��E�       ��2	��R�!��Ad*

accuracyף�>h�1       ��2	��c�!��Ae*

val_loss0��?u�Ua"       x=�	��c�!��Ae*

val_accuracy�\�>��B�       ��-	��c�!��Ae*

loss�Y�?��lL       ��2	D�c�!��Ae*

accuracyw��>7�m       ��2	Gu�!��Af*

val_lossy��?�Ã"       x=�	�Gu�!��Af*

val_accuracyۊ�>9�       ��-	IHu�!��Af*

loss��?��;'       ��2	�Hu�!��Af*

accuracy�r�>��\�       ��2	�ԇ�!��Ag*

val_loss��?���"       x=�	�Շ�!��Ag*

val_accuracy��>�#a�       ��-	Mև�!��Ag*

loss���?m�u       ��2	�և�!��Ag*

accuracy�x�>���.       ��2	�{��!��Ah*

val_loss�0�?�E�\"       x=�	{|��!��Ah*

val_accuracy-!�>����       ��-	�|��!��Ah*

loss��?�SC�       ��2	%}��!��Ah*

accuracyy��>yɔ       ��2	�f��!��Ai*

val_loss��?����"       x=�	:h��!��Ai*

val_accuracyR'�>|�       ��-	�h��!��Ai*

loss�n�?6�       ��2		i��!��Ai*

accuracy��>���       ��2	����!��Aj*

val_lossE`�?n	[#"       x=�	n���!��Aj*

val_accuracy-C�>��/�       ��-	ȗ��!��Aj*

lossG��?L�	*       ��2	3���!��Aj*

accuracy� �>�&�	       ��2	�m��!��Ak*

val_loss�	�?>	�"       x=�	�n��!��Ak*

val_accuracy�ޠ>���       ��-	o��!��Ak*

loss���?��x2       ��2	lo��!��Ak*

accuracyV�>�`?       ��2	U��!��Al*

val_loss��?�V"       x=�	'	��!��Al*

val_accuracyw��>s�W�       ��-	�	��!��Al*

loss7k�?��2-       ��2	�	��!��Al*

accuracy���>�?z�       ��2	7���!��Am*

val_loss���?�`�V"       x=�	����!��Am*

val_accuracy�ߞ>����       ��-	S���!��Am*

lossa��?���        ��2	����!��Am*

accuracyff�>�Bu�       ��2	���!��An*

val_loss���?c�֩"       x=�	���!��An*

val_accuracy�Ҟ>?�       ��-	��!��An*

lossvs�?�       ��2	v��!��An*

accuracy-�>�C��       ��2	�M�!��Ao*

val_loss�-�?�b[�"       x=�	�N�!��Ao*

val_accuracy�v�>�"\�       ��-	*O�!��Ao*

loss���?�2�       ��2	}O�!��Ao*

accuracy� �>0j��       ��2	��+�!��Ap*

val_losst6�?�ko}"       x=�	x�+�!��Ap*

val_accuracy�[�>�UJ       ��-	؎+�!��Ap*

lossf�?�3<       ��2	D�+�!��Ap*

accuracy���>ޙ�       ��2	�N=�!��Aq*

val_loss���?`�K�"       x=�	�O=�!��Aq*

val_accuracy�D�>/�x       ��-	�O=�!��Aq*

lossy��?Q2       ��2	JP=�!��Aq*

accuracy���>���X       ��2	�O�!��Ar*

val_lossA-�?!�"       x=�	��O�!��Ar*

val_accuracy�F�>�A��       ��-	/�O�!��Ar*

lossP*�?L*�       ��2	��O�!��Ar*

accuracy� �>��2       ��2	a�b�!��As*

val_lossӬ�?t{�"       x=�	�b�!��As*

val_accuracy�˟>��v�       ��-	i�b�!��As*

loss��?S��       ��2	��b�!��As*

accuracy5^�>F96%       ��2	k�u�!��At*

val_loss���?��ɋ"       x=�	8�u�!��At*

val_accuracy�i�>9�C       ��-	��u�!��At*

lossR��?07@       ��2	�u�!��At*

accuracy���>���       ��2	_���!��Au*

val_loss�E�?mH��"       x=�	-���!��Au*

val_accuracy�/�>�-2       ��-	����!��Au*

loss�
�?��!X       ��2	ӱ��!��Au*

accuracyH��>Y���       ��2	k���!��Av*

val_loss�'�?x�"       x=�	;���!��Av*

val_accuracy�S�>���       ��-	����!��Av*

lossI)�?	�?       ��2	�!��Av*

accuracy33�>~��i       ��2	���!��Aw*

val_lossк�?��A,"       x=�	����!��Aw*

val_accuracy�S�>��<�       ��-	O���!��Aw*

loss��?�>-�       ��2	����!��Aw*

accuracy���>v-!       ��2	�%��!��Ax*

val_loss�_�?6S$�"       x=�	Z&��!��Ax*

val_accuracy�:�>"�~       ��-	�&��!��Ax*

loss��?ف       ��2		'��!��Ax*

accuracy���>BU�       ��2	'���!��Ay*

val_loss�?�Gz�"       x=�	����!��Ay*

val_accuracy�i�>X�!       ��-	J���!��Ay*

lossW��?q�+       ��2	����!��Ay*

accuracy\�?����       ��2	�+��!��Az*

val_lossJ��?���r"       x=�	�,��!��Az*

val_accuracy8��>4�Q       ��-	+-��!��Az*

loss�g�?_�       ��2	y-��!��Az*

accuracy   ?g��       ��2	]���!��A{*

val_loss�M�?6	="       x=�	���!��A{*

val_accuracy���>=bD       ��-	z���!��A{*

loss1�?��       ��2	ͬ��!��A{*

accuracy�Q�>L�       ��2	z��!��A|*

val_lossЙ�?/0�U"       x=�	R��!��A|*

val_accuracy7��>�>�5       ��-	���!��A|*

lossl��?�
�       ��2	��!��A|*

accuracy���>��j       ��2	� �!��A}*

val_loss�B�?�g�"       x=�	� �!��A}*

val_accuracyR��>�(�       ��-	=� �!��A}*

loss�"�?�v~�       ��2	�� �!��A}*

accuracyF��>|?�i       ��2	�t4�!��A~*

val_loss���?��f�"       x=�	�u4�!��A~*

val_accuracy8g�>�       ��-	+v4�!��A~*

loss�ּ?H`��       ��2	{v4�!��A~*

accuracyZd�>!c�       ��2	��E�!��A*

val_loss@1�?Qt	"       x=�	�E�!��A*

val_accuracyf��>�2@�       ��-	s�E�!��A*

lossL7�?9f�       ��2	��E�!��A*

accuracy   ?	5=       QKD	ؤY�!��A�*

val_loss��?Z�#�#       ��wC	��Y�!��A�*

val_accuracy@��>�7�       �	֥Y�!��A�*

lossRL�?��"�       QKD	�Y�!��A�*

accuracy�p�>	~       QKD	��l�!��A�*

val_loss���?���i#       ��wC	��l�!��A�*

val_accuracy�Ѡ>��
q       �	��l�!��A�*

lossf��?�Gj       QKD	H�l�!��A�*

accuracy���>�~�	       QKD	�I�!��A�*

val_loss�]�?X[6#       ��wC	�J�!��A�*

val_accuracy���>�qJ�       �	K�!��A�*

lossuT�?�9�       QKD	rK�!��A�*

accuracy%?
p|^       QKD	�Ő�!��A�*

val_loss��?6'�#       ��wC	rƐ�!��A�*

val_accuracyM�>08QC       �	�Ɛ�!��A�*

lossF��?�~�       QKD	#ǐ�!��A�*

accuracy�A ?�8��       QKD	�>��!��A�*

val_loss��?�*�(#       ��wC	�?��!��A�*

val_accuracy�@�>ϧ��       �	�?��!��A�*

loss�T�?�|�       QKD	-@��!��A�*

accuracy�G?/��       QKD	�ʳ�!��A�*

val_lossn��?��1�#       ��wC	�˳�!��A�*

val_accuracy���>c���       �	�˳�!��A�*

lossC��?�8n       QKD	F̳�!��A�*

accuracy�S?j ��       QKD	���!��A�*

val_loss���?��s#       ��wC	���!��A�*

val_accuracy�%�>[�T       �	C���!��A�*

loss���?kȱ�       QKD	����!��A�*

accuracyJ?�;��       QKD	�
��!��A�*

val_lossl��?����#       ��wC	n��!��A�*

val_accuracyx�>��       �	���!��A�*

lossA�?B;�A       QKD	��!��A�*

accuracy���>��YG       QKD	j���!��A�*

val_loss���?u�nx#       ��wC	:���!��A�*

val_accuracy�â>y��p       �	����!��A�*

loss3R�?+%O�       QKD	���!��A�*

accuracyo?�*V�       QKD	f��!��A�*

val_loss��?��#       ��wC	3��!��A�*

val_accuracy8g�>�8ǜ       �	���!��A�*

loss�!�?�a�       QKD	���!��A�*

accuracyˡ?T��       QKD	P��!��A�*

val_loss1�?Wh�#       ��wC	��!��A�*

val_accuracy&�>�&�       �	{��!��A�*

loss}��?��|r       QKD	���!��A�*

accuracyJ?Ų��       QKD	}��!��A�*

val_loss6��?�q��#       ��wC	R��!��A�*

val_accuracy
h�>ώNw       �	���!��A�*

loss���?+       QKD	��!��A�*

accuracy\�?�X�(       QKD	��/�!��A�*

val_loss�|�?s���#       ��wC	��/�!��A�*

val_accuracy���>�@�q       �	%�/�!��A�*

loss'е?<m0�       QKD	r�/�!��A�*

accuracy^�	?G�       QKD	b�A�!��A�*

val_loss���?{*W#       ��wC	(�A�!��A�*

val_accuracy���>'#��       �	~�A�!��A�*

loss�p�?��e       QKD	̌A�!��A�*

accuracy�?���       QKD	��S�!��A�*

val_loss���? �X#       ��wC	��S�!��A�*

val_accuracy
ף>���       �	��S�!��A�*

loss�|�?@�>       QKD	S�S�!��A�*

accuracyL7	?xݹj       QKD	�d�!��A�*

val_loss�5�?�c�#       ��wC	��d�!��A�*

val_accuracy�ס>��;y       �	J�d�!��A�*

lossmմ?O+@�       QKD	��d�!��A�*

accuracy�?%���       QKD	�v�!��A�*

val_loss:{�?N{J�#       ��wC	�v�!��A�*

val_accuracy0L�>�k�       �	�v�!��A�*

loss��?F1�       QKD	/v�!��A�*

accuracy'1?9y�;       QKD	^��!��A�*

val_lossȓ�?5�w(#       ��wC	3��!��A�*

val_accuracy���>���       �	���!��A�*

loss谱?�J�L       QKD	���!��A�*

accuracyT�?��_�       QKD	,F��!��A�*

val_lossWH�?+7V�#       ��wC	�F��!��A�*

val_accuracy��>��ݫ       �	RG��!��A�*

loss�V�??�        QKD	�G��!��A�*

accuracy��?�&��       QKD	a(��!��A�*

val_loss�?��q#       ��wC	?)��!��A�*

val_accuracy��>(7I�       �	�)��!��A�*

loss�į?-\�       QKD	�)��!��A�*

accuracy+?���H       QKD	����!��A�*

val_loss�g�?h"_#       ��wC	����!��A�*

val_accuracyTt�>����       �	����!��A�*

loss?�?f[�       QKD	9���!��A�*

accuracy��?�1�       QKD	;���!��A�*

val_loss���?�X��#       ��wC	���!��A�*

val_accuracy�?�>Iu8U       �	y���!��A�*

lossu��?N�#>       QKD	ѿ��!��A�*

accuracyy�?��b�