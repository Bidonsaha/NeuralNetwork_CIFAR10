       �K"	  �� ��Abrain.Event:2�4�=)�     ��x�	��� ��A"��
u
m1_hidden1_inputPlaceholder*
dtype0*(
_output_shapes
:����������*
shape:����������
p
m1_hidden1/random_uniform/shapeConst*
_output_shapes
:*
valueB"   �   *
dtype0
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
'm1_hidden1/random_uniform/RandomUniformRandomUniformm1_hidden1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
��*
seed2��0*
seed�
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
m1_hidden1/biasVarHandleOp*
shape:�*
dtype0*
_output_shapes
: * 
shared_namem1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
	container 
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
m1_hidden1/BiasAddBiasAddm1_hidden1/MatMul!m1_hidden1/BiasAdd/ReadVariableOp*(
_output_shapes
:����������*
T0*
data_formatNHWC
^
m1_hidden1/ReluRelum1_hidden1/BiasAdd*
T0*(
_output_shapes
:����������
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
m1_hidden2/random_uniform/mulMul'm1_hidden2/random_uniform/RandomUniformm1_hidden2/random_uniform/sub*
T0*
_output_shapes
:	�@
�
m1_hidden2/random_uniformAddm1_hidden2/random_uniform/mulm1_hidden2/random_uniform/min*
T0*
_output_shapes
:	�@
�
m1_hidden2/kernelVarHandleOp*"
shared_namem1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
	container *
shape:	�@*
dtype0*
_output_shapes
: 
s
2m1_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 
�
m1_hidden2/kernel/AssignAssignVariableOpm1_hidden2/kernelm1_hidden2/random_uniform*
dtype0*$
_class
loc:@m1_hidden2/kernel
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
m1_hidden2/biasVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: * 
shared_namem1_hidden2/bias*"
_class
loc:@m1_hidden2/bias
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
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:���������@*
transpose_a( 
m
!m1_hidden2/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@
�
m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*'
_output_shapes
:���������@*
T0*
data_formatNHWC
]
m1_hidden2/ReluRelum1_hidden2/BiasAdd*
T0*'
_output_shapes
:���������@
p
m1_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m1_hidden3/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�7��
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
m1_hidden3/random_uniform/mulMul'm1_hidden3/random_uniform/RandomUniformm1_hidden3/random_uniform/sub*
T0*
_output_shapes

:@
�
m1_hidden3/random_uniformAddm1_hidden3/random_uniform/mulm1_hidden3/random_uniform/min*
_output_shapes

:@*
T0
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
m1_hidden3/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: * 
shared_namem1_hidden3/bias*"
_class
loc:@m1_hidden3/bias*
	container 
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
_output_shapes

:@*
dtype0
�
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*'
_output_shapes
:���������*
transpose_a( *
transpose_b( *
T0
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:
�
m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������*
T0
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
m1_output/random_uniform/maxConst*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
_output_shapes

:
*
seed2���*
seed�*
T0*
dtype0
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
m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
T0*
_output_shapes

:

�
m1_output/kernelVarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *!
shared_namem1_output/kernel*#
_class
loc:@m1_output/kernel*
	container 
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
$m1_output/kernel/Read/ReadVariableOpReadVariableOpm1_output/kernel*#
_class
loc:@m1_output/kernel*
dtype0*
_output_shapes

:

\
m1_output/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m1_output/biasVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namem1_output/bias*!
_class
loc:@m1_output/bias
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
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
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
m1_output/SoftmaxSoftmaxm1_output/BiasAdd*'
_output_shapes
:���������
*
T0
�
)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
�
Adam/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations
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
Adam/learning_rateVarHandleOp*%
_class
loc:@Adam/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: *#
shared_nameAdam/learning_rate
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
Adam/beta_1VarHandleOp*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: *
dtype0
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 
�
Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_1
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
Adam/beta_2VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2
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
: *
valueB
 *    *
_class
loc:@Adam/decay*
dtype0
�

Adam/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay
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
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
totalVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container *
shape: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
U
total/AssignAssignVariableOptotalConst*
dtype0*
_class

loc:@total
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
L
Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
countVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
W
count/AssignAssignVariableOpcountConst_1*
dtype0*
_class

loc:@count
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
�
metrics/accuracy/SqueezeSqueezem1_output_target*
T0*#
_output_shapes
:���������*
squeeze_dims

���������
l
!metrics/accuracy/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
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
metrics/accuracy/SumSummetrics/accuracy/Cast_1metrics/accuracy/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
9loss/m1_output_loss/sparse_categorical_crossentropy/ConstConst*
_output_shapes
: *
valueB
 *���3*
dtype0
~
9loss/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
7loss/m1_output_loss/sparse_categorical_crossentropy/subSub9loss/m1_output_loss/sparse_categorical_crossentropy/sub/x9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
�
Iloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0
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
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*#
_output_shapes
:���������*
T0*
Tshape0
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
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*6
_output_shapes$
":���������:���������
*
Tlabels0	*
T0
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
Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
: *
	keep_dims( *

Tidx0
y
training/Adam/gradients/ShapeConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?*
_class
	loc:@Mean
�
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
	loc:@Mean
�
/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
�
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_class
	loc:@Mean*
_output_shapes
: 
�
'training/Adam/gradients/Mean_grad/ConstConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
�
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*

Tmultiples0*
T0*
_class
	loc:@Mean*
_output_shapes
: 
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
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
valueB:*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
dtype0*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
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
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
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
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
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
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������
*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
���������*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0
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
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:���������
*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
out_type0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
_output_shapes
:*
T0
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
Tshape0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:���������
*
T0
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
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������
*
T0*

index_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:���������:���������*
T0
�
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:���������
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:���������
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapedtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output/Softmax*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������
*
T0
�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:���������:���������
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
: 
�
2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*'
_output_shapes
:���������
*
T0*$
_class
loc:@m1_output/Softmax
�
Dtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indicesConst*
valueB :
���������*$
_class
loc:@m1_output/Softmax*
dtype0*
_output_shapes
: 
�
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:���������*

Tidx0*
	keep_dims(*
T0*$
_class
loc:@m1_output/Softmax
�
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

�
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������
*
T0
�
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC*
_output_shapes
:

�
4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0*#
_class
loc:@m1_output/MatMul
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
5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGradReluGrad4training/Adam/gradients/m1_output/MatMul_grad/MatMulm1_hidden3/Relu*"
_class
loc:@m1_hidden3/Relu*'
_output_shapes
:���������*
T0
�
;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:
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
7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1MatMulm1_hidden2/Relu5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
_output_shapes

:@*
transpose_a(*
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
loc:@m1_hidden2/MatMul*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1MatMulm1_hidden1/Relu5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden2/MatMul*
_output_shapes
:	�@*
transpose_a(*
transpose_b( 
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
7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*$
_class
loc:@m1_hidden1/MatMul* 
_output_shapes
:
��*
transpose_a(*
transpose_b( *
T0
U
training/Adam/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R
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
training/Adam/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
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
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
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
training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const* 
_output_shapes
:
��*
T0*

index_type0
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
training/Adam/m_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
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
!training/Adam/m_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"�   @   
\
training/Adam/m_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*
_output_shapes
:	�@*
T0*

index_type0
�
training/Adam/m_2_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
	container *
shape:	�@
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
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
^
training/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/m_3_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
	container *
shape:@
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
'training/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_3_1*
_output_shapes
:@*&
_class
loc:@training/Adam/m_3_1*
dtype0
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
training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*
_output_shapes

:@*
T0*

index_type0
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
training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*
dtype0*&
_class
loc:@training/Adam/m_4_1
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
training/Adam/m_5_1VarHandleOp*
_output_shapes
: *$
shared_nametraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1*
	container *
shape:*
dtype0
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
valueB
*    *
dtype0*
_output_shapes

:

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
'training/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_6_1*&
_class
loc:@training/Adam/m_6_1*
dtype0*
_output_shapes

:

^
training/Adam/m_7Const*
_output_shapes
:
*
valueB
*    *
dtype0
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
!training/Adam/v_0/shape_as_tensorConst*
_output_shapes
:*
valueB"   �   *
dtype0
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
training/Adam/v_1Const*
dtype0*
_output_shapes	
:�*
valueB�*    
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
!training/Adam/v_2/shape_as_tensorConst*
_output_shapes
:*
valueB"�   @   *
dtype0
\
training/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*

index_type0*
_output_shapes
:	�@*
T0
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
training/Adam/v_3Const*
dtype0*
_output_shapes
:@*
valueB@*    
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
!training/Adam/v_4/shape_as_tensorConst*
_output_shapes
:*
valueB"@      *
dtype0
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
training/Adam/v_4_1VarHandleOp*$
shared_nametraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1*
	container *
shape
:@*
dtype0*
_output_shapes
: 
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
training/Adam/v_5_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1
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
'training/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_5_1*
dtype0*
_output_shapes
:*&
_class
loc:@training/Adam/v_5_1
f
training/Adam/v_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training/Adam/v_6_1VarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_6_1*&
_class
loc:@training/Adam/v_6_1
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
training/Adam/v_7_1VarHandleOp*
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_7_1*&
_class
loc:@training/Adam/v_7_1*
	container 
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
$training/Adam/vhat_0/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
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
training/Adam/vhat_0_1VarHandleOp*
_output_shapes
: *'
shared_nametraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1*
	container *
shape:*
dtype0
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
$training/Adam/vhat_1/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_1_1VarHandleOp*'
shared_nametraining/Adam/vhat_1_1*)
_class
loc:@training/Adam/vhat_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_2_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1*
	container 
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
$training/Adam/vhat_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
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
training/Adam/vhat_3_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1*
	container 
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
training/Adam/vhat_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*

index_type0*
_output_shapes
:*
T0
�
training/Adam/vhat_4_1VarHandleOp*)
_class
loc:@training/Adam/vhat_4_1*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_4_1
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
*training/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
dtype0*
_output_shapes
:
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
training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
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
$training/Adam/vhat_6/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_6_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_6_1*)
_class
loc:@training/Adam/vhat_6_1*
	container 
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
training/Adam/vhat_7_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1
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
training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp* 
_output_shapes
:
��*
T0
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0* 
_output_shapes
:
��
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
training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:
��
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
training/Adam/SquareSquare7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square* 
_output_shapes
:
��*
T0
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4* 
_output_shapes
:
��*
T0
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1* 
_output_shapes
:
��*
T0
Z
training/Adam/Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_4Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0* 
_output_shapes
:
��
�
training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3* 
_output_shapes
:
��*
T0
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
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
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
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes	
:�
Z
training/Adam/add_6/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes	
:�*
T0
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
training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	�@
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
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
_output_shapes
: *
T0
�
training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
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
training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	�@
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
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes
:	�@*
T0
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
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes
:	�@
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
training/Adam/mul_17Multraining/Adam/sub_11;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
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
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:@
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:@
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:@
Z
training/Adam/Const_9Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_10Const*
_output_shapes
: *
valueB
 *  �*
dtype0
�
%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
_output_shapes
:@*
T0
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
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:@*
T0
k
training/Adam/ReadVariableOp_30ReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
:@*
T0
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
training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
_output_shapes

:@*
T0
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
training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
_output_shapes

:@*
T0
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
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:@
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
dtype0*
_output_shapes

:@
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
training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:
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
training/Adam/sub_18/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
_output_shapes
:*
T0
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
:
[
training/Adam/Const_13Const*
_output_shapes
: *
valueB
 *    *
dtype0
[
training/Adam/Const_14Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:
�
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
T0*
_output_shapes
:
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
training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
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
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes

:

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
training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
_output_shapes

:
*
T0
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
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
_output_shapes
: *
T0
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
training/Adam/Const_15Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes

:
*
T0
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
training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
_output_shapes

:
*
T0
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
training/Adam/mul_37Multraining/Adam/sub_23:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
:
*
T0
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
training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 
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
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
_output_shapes
:
*
T0
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
_output_shapes
:
*
T0
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
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
T0*
_output_shapes
:

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
training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/v_7_1"^training/Adam/AssignVariableOp_22*
_output_shapes
:
*
dtype0
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

group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1"6��8��     �X�	��� ��AJ��
��
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
b'unknown'��
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
m1_hidden1/random_uniform/minConst*
_output_shapes
: *
valueB
 *�\1�*
dtype0
b
m1_hidden1/random_uniform/maxConst*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
�
'm1_hidden1/random_uniform/RandomUniformRandomUniformm1_hidden1/random_uniform/shape*
dtype0*
seed2��0* 
_output_shapes
:
��*
seed�*
T0
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
m1_hidden1/kernelVarHandleOp*
	container *
shape:
��*
dtype0*
_output_shapes
: *"
shared_namem1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel
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
#m1_hidden1/bias/Read/ReadVariableOpReadVariableOpm1_hidden1/bias*
_output_shapes	
:�*"
_class
loc:@m1_hidden1/bias*
dtype0
t
 m1_hidden1/MatMul/ReadVariableOpReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:
��
�
m1_hidden1/MatMulMatMulm1_hidden1_input m1_hidden1/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:����������*
transpose_b( 
n
!m1_hidden1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:�
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
m1_hidden2/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�5�
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
m1_hidden2/random_uniform/mulMul'm1_hidden2/random_uniform/RandomUniformm1_hidden2/random_uniform/sub*
T0*
_output_shapes
:	�@
�
m1_hidden2/random_uniformAddm1_hidden2/random_uniform/mulm1_hidden2/random_uniform/min*
_output_shapes
:	�@*
T0
�
m1_hidden2/kernelVarHandleOp*
shape:	�@*
dtype0*
_output_shapes
: *"
shared_namem1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
	container 
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
m1_hidden2/biasVarHandleOp*
_output_shapes
: * 
shared_namem1_hidden2/bias*"
_class
loc:@m1_hidden2/bias*
	container *
shape:@*
dtype0
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
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������@*
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
m1_hidden2/ReluRelum1_hidden2/BiasAdd*
T0*'
_output_shapes
:���������@
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
dtype0*
seed2���*
_output_shapes

:@*
seed�
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
m1_hidden3/kernelVarHandleOp*"
shared_namem1_hidden3/kernel*$
_class
loc:@m1_hidden3/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
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
m1_hidden3/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_namem1_hidden3/bias*"
_class
loc:@m1_hidden3/bias
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
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������*
transpose_b( *
T0
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:
�
m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������*
T0
]
m1_hidden3/ReluRelum1_hidden3/BiasAdd*
T0*'
_output_shapes
:���������
o
m1_output/random_uniform/shapeConst*
_output_shapes
:*
valueB"   
   *
dtype0
a
m1_output/random_uniform/minConst*
valueB
 *����*
dtype0*
_output_shapes
: 
a
m1_output/random_uniform/maxConst*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
dtype0*
seed2���*
_output_shapes

:
*
seed�*
T0
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
m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
T0*
_output_shapes

:

�
m1_output/kernelVarHandleOp*#
_class
loc:@m1_output/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: *!
shared_namem1_output/kernel
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
dtype0*
_output_shapes

:
*#
_class
loc:@m1_output/kernel
\
m1_output/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m1_output/biasVarHandleOp*
shared_namem1_output/bias*!
_class
loc:@m1_output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( 
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
)Adam/iterations/Initializer/initial_valueConst*"
_class
loc:@Adam/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Adam/iterationsVarHandleOp*
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: 
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
,Adam/learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *%
_class
loc:@Adam/learning_rate*
valueB
 *o�:
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
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
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
_class
loc:@Adam/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1
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
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2
�
$Adam/decay/Initializer/initial_valueConst*
_class
loc:@Adam/decay*
valueB
 *    *
dtype0*
_output_shapes
: 
�

Adam/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: 
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
totalVarHandleOp*
dtype0*
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container *
shape: 
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
countVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count
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
metrics/accuracy/SqueezeSqueezem1_output_target*
T0*#
_output_shapes
:���������*
squeeze_dims

���������
l
!metrics/accuracy/ArgMax/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
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
metrics/accuracy/SumSummetrics/accuracy/Cast_1metrics/accuracy/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
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

DstT0*
_output_shapes
: *

SrcT0*
Truncate( 
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
7loss/m1_output_loss/sparse_categorical_crossentropy/LogLogAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
Aloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
Tshape0*#
_output_shapes
:���������*
T0
�
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:���������
�
Closs/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
_output_shapes
:*
valueB"����
   *
dtype0
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
T0*
Tlabels0	*6
_output_shapes$
":���������:���������

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
: *

Tidx0*
	keep_dims( *
T0
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
: *
T0*
out_type0
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
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
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_class
	loc:@Mean*

index_type0*
_output_shapes
: 
�
/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 
�
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
_class
	loc:@Mean*
Tshape0
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
)training/Adam/gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
: *
_class
	loc:@Mean*
valueB
 *  �?
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
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
: *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB 
�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
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
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0*
_output_shapes
:
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*#
_output_shapes
:���������*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weightsgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*#
_output_shapes
:���������*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0
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
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
���������*
dtype0
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������
*
T0
�
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
_output_shapes
:*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0*'
_output_shapes
:���������
*
T0
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
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB 
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
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
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:���������

�
ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:���������:���������*
T0
�
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:���������
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
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
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:
�
rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������
*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:���������:���������
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:���������

�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0
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
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC*
_output_shapes
:

�
4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*
transpose_b(*
T0*#
_class
loc:@m1_output/MatMul*
transpose_a( *'
_output_shapes
:���������
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
5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGradReluGrad4training/Adam/gradients/m1_output/MatMul_grad/MatMulm1_hidden3/Relu*'
_output_shapes
:���������*
T0*"
_class
loc:@m1_hidden3/Relu
�
;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:
�
5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad m1_hidden3/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden3/MatMul*
transpose_a( *'
_output_shapes
:���������@*
transpose_b(
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
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*'
_output_shapes
:���������@*
T0*"
_class
loc:@m1_hidden2/Relu
�
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0*%
_class
loc:@m1_hidden2/BiasAdd
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
7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1MatMulm1_hidden1/Relu5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden2/MatMul*
transpose_a(*
_output_shapes
:	�@*
transpose_b( 
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
loc:@m1_hidden1/MatMul*
transpose_a( *(
_output_shapes
:����������*
transpose_b(
�
7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
transpose_b( *
T0*$
_class
loc:@m1_hidden1/MatMul*
transpose_a(* 
_output_shapes
:
��
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

DstT0*
_output_shapes
: *

SrcT0	*
Truncate( 
X
training/Adam/add/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
Z
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
'training/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_0_1* 
_output_shapes
:
��*&
_class
loc:@training/Adam/m_0_1*
dtype0
`
training/Adam/m_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
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
!training/Adam/m_2/shape_as_tensorConst*
valueB"�   @   *
dtype0*
_output_shapes
:
\
training/Adam/m_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*
_output_shapes
:	�@*
T0*

index_type0
�
training/Adam/m_2_1VarHandleOp*
shape:	�@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
	container 
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
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
^
training/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training/Adam/m_3_1VarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1
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
training/Adam/m_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
�
training/Adam/m_4_1VarHandleOp*&
_class
loc:@training/Adam/m_4_1*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_4_1
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
training/Adam/m_5_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1
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
valueB
*    *
dtype0*
_output_shapes

:

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
dtype0*
_output_shapes

:
*&
_class
loc:@training/Adam/m_6_1
^
training/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

�
training/Adam/m_7_1VarHandleOp*&
_class
loc:@training/Adam/m_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_7_1
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
'training/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_7_1*
dtype0*
_output_shapes
:
*&
_class
loc:@training/Adam/m_7_1
r
!training/Adam/v_0/shape_as_tensorConst*
_output_shapes
:*
valueB"   �   *
dtype0
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
training/Adam/v_1_1VarHandleOp*$
shared_nametraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
	container *
shape:�*
dtype0*
_output_shapes
: 
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
!training/Adam/v_2/shape_as_tensorConst*
_output_shapes
:*
valueB"�   @   *
dtype0
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
training/Adam/v_2_1VarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1
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
training/Adam/v_4_1VarHandleOp*
shape
:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1*
	container 
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
'training/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_5_1*
dtype0*
_output_shapes
:*&
_class
loc:@training/Adam/v_5_1
f
training/Adam/v_6Const*
valueB
*    *
dtype0*
_output_shapes

:

�
training/Adam/v_6_1VarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_6_1*&
_class
loc:@training/Adam/v_6_1
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
training/Adam/v_7_1VarHandleOp*
_output_shapes
: *$
shared_nametraining/Adam/v_7_1*&
_class
loc:@training/Adam/v_7_1*
	container *
shape:
*
dtype0
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
$training/Adam/vhat_0/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_0/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_0_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1*
	container 
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
training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_1_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_1_1*)
_class
loc:@training/Adam/vhat_1_1*
	container *
shape:
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
training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*

index_type0*
_output_shapes
:*
T0
�
training/Adam/vhat_2_1VarHandleOp*'
shared_nametraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
$training/Adam/vhat_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
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
$training/Adam/vhat_4/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_4_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
	container 
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
*training/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
dtype0*
_output_shapes
:
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
training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
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
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_6_1*)
_class
loc:@training/Adam/vhat_6_1*
	container 
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
training/Adam/vhat_7Fill$training/Adam/vhat_7/shape_as_tensortraining/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_7_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1
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
training/Adam/sub_2/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
�
training/Adam/mul_2Multraining/Adam/sub_27training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
��*
T0
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
training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:
��
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
training/Adam/SquareSquare7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square* 
_output_shapes
:
��*
T0
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
training/Adam/Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_4Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
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
training/Adam/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0* 
_output_shapes
:
��
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
_output_shapes
:
��*
dtype0
i
 training/Adam/AssignVariableOp_2AssignVariableOpm1_hidden1/kerneltraining/Adam/sub_4*
dtype0
�
training/Adam/ReadVariableOp_9ReadVariableOpm1_hidden1/kernel!^training/Adam/AssignVariableOp_2* 
_output_shapes
:
��*
dtype0
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
training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
_output_shapes	
:�*
T0
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
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
�
training/Adam/Square_1Square;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes	
:�
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes	
:�
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes	
:�*
T0
Z
training/Adam/Const_5Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *  �
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
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes	
:�
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
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes	
:�
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
training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	�@
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
�
training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	�@
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes
:	�@
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
_output_shapes
: *
T0
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
training/Adam/Const_8Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
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
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes
:	�@*
T0
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
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes
:	�@
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
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
_output_shapes
: *
T0
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
training/Adam/sub_12/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0
�
training/Adam/Square_3Square;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
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
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
:@*
T0
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
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
:@*
T0
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
training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
_output_shapes

:@*
T0
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
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 
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
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 
�
training/Adam/Square_4Square7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
_output_shapes

:@*
T0
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
training/Adam/Const_12Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
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
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:@
[
training/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:@
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
dtype0*
_output_shapes

:@
m
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/v_4_1training/Adam/add_14*
dtype0
�
training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/v_4_1"^training/Adam/AssignVariableOp_13*
_output_shapes

:@*
dtype0
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
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 
�
training/Adam/mul_27Multraining/Adam/sub_17;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
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
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 
�
training/Adam/Square_5Square;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
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
%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:
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
training/Adam/ReadVariableOp_46ReadVariableOpm1_hidden3/bias*
_output_shapes
:*
dtype0
z
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*
_output_shapes
:
m
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/m_5_1training/Adam/add_16*
dtype0
�
training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/m_5_1"^training/Adam/AssignVariableOp_15*
_output_shapes
:*
dtype0
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
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
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
training/Adam/mul_32Multraining/Adam/sub_206training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
p
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes

:

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
training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
_output_shapes
: *
T0
�
training/Adam/Square_6Square6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

r
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
T0*
_output_shapes

:

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
training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
_output_shapes
:
*
T0
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
training/Adam/Square_7Square:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:

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
training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
T0*
_output_shapes
:

`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
:

[
training/Adam/add_24/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
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
training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/m_7_1"^training/Adam/AssignVariableOp_21*
_output_shapes
:
*
dtype0
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

group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1""�$
trainable_variables�$�$
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
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08"�$
	variables�$�$
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
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08��       ���	W��� ��A*

val_loss)�+@�Z!        )��P	,��� ��A*

val_accuracy���=����       �K"	���� ��A*

loss��@u��W       ���	���� ��A*

accuracy���=\C^       ��2	�1�� ��A*

val_loss�%@|(�"       x=�	�2�� ��A*

val_accuracy��=�c�       ��-	3�� ��A*

loss�x*@�� k       ��2	`3�� ��A*

accuracy�G�=�8�       ��2	}��� ��A*

val_loss%n@=��"       x=�	f��� ��A*

val_accuracyΈ�=�DƧ       ��-	ɝ�� ��A*

loss��"@��!�       ��2	��� ��A*

accuracy   >�#�       ��2	���� ��A*

val_loss(e@]�W"       x=�	���� ��A*

val_accuracy���=(�Hj       ��-	 ��� ��A*

lossO@b� �       ��2	R��� ��A*

accuracy���=D)       ��2	\H� ��A*

val_loss��@��5"       x=�	.I� ��A*

val_accuracyb>���       ��-	�I� ��A*

loss)@���P       ��2	�I� ��A*

accuracy��=����       ��2	�� ��A*

val_loss4�@��#"       x=�	۬� ��A*

val_accuracy8g�=���       ��-	9�� ��A*

loss�<@�xڠ       ��2	��� ��A*

accuracyNb>Y�Z       ��2	O�$� ��A*

val_loss�@�>Ҝ"       x=�	�$� ��A*

val_accuracy�&>����       ��-	z�$� ��A*

loss�u@�~��       ��2	��$� ��A*

accuracy�"�=uvO       ��2	�p5� ��A*

val_lossxd@���"       x=�	�q5� ��A*

val_accuracy��>�-��       ��-	�q5� ��A*

loss�@�7�       ��2	Hr5� ��A*

accuracy+�>a2�J       ��2	��E� ��A*

val_loss+@%}�"       x=�	c�E� ��A*

val_accuracyx$>2���       ��-	��E� ��A*

loss" @�i�y       ��2	�E� ��A*

accuracy�v>>��X�       ��2	p!V� ��A	*

val_loss]�@���_"       x=�	;"V� ��A	*

val_accuracy�(>c�w�       ��-	�"V� ��A	*

loss��@��p{       ��2	�"V� ��A	*

accuracy5^:>s�D�       ��2	 vf� ��A
*

val_lossR{@�X�"       x=�	�vf� ��A
*

val_accuracy�[ >l�       ��-	Rwf� ��A
*

loss�@Ұ~       ��2	�wf� ��A
*

accuracy��C>��K       ��2	��v� ��A*

val_loss@�:"       x=�	h�v� ��A*

val_accuracyv�>�>       ��-	��v� ��A*

loss�M@fJ�1       ��2	�v� ��A*

accuracy�Q8>Z��*       ��2	��� ��A*

val_loss
�@����"       x=�	� �� ��A*

val_accuracy�>�tw       ��-	!�� ��A*

loss��@���D       ��2	q!�� ��A*

accuracy333>}j��       ��2	Ϝ�� ��A*

val_loss�l@d���"       x=�	Ý�� ��A*

val_accuracyV�+>�*%L       ��-	$��� ��A*

loss�t@^g�       ��2	u��� ��A*

accuracy�&1>{�Ǎ       ��2	�7�� ��A*

val_loss@S:�"       x=�	\8�� ��A*

val_accuracy~8>o��       ��-	�8�� ��A*

loss;!@��a�       ��2	9�� ��A*

accuracy�F>��2�       ��2	�� ��A*

val_loss�?@:L��"       x=�	��� ��A*

val_accuracyk�7>�J�       ��-	I�� ��A*

loss{�@�g�       ��2	��� ��A*

accuracy`�P>����       ��2	�d�� ��A*

val_lossd�@��:"       x=�	�e�� ��A*

val_accuracy�/>��P       ��-	�e�� ��A*

loss�v@Jd`�       ��2	Kf�� ��A*

accuracy`�P>��        ��2	
��� ��A*

val_loss��@��"       x=�	���� ��A*

val_accuracyff&>�Di4       ��-	=��� ��A*

loss�@-I��       ��2	���� ��A*

accuracy�G>�Y�       ��2	�%�� ��A*

val_loss�b@Ȉ|o"       x=�	�&�� ��A*

val_accuracy�+%>
��       ��-	2'�� ��A*

loss�@n7�       ��2	�'�� ��A*

accuracy�p=>K�b       ��2	s��� ��A*

val_loss0k@�d�"       x=�	M��� ��A*

val_accuracy��*>�S��       ��-	���� ��A*

loss�h@5���       ��2	���� ��A*

accuracyj<>����       ��2	�.� ��A*

val_loss,�@��"       x=�	�/� ��A*

val_accuracyŏ1>j��       ��-	�/� ��A*

loss�@�:N�       ��2	60� ��A*

accuracy\�B>�+	       ��2	m� ��A*

val_lossV@L��3"       x=�	�m� ��A*

val_accuracy A1>Y��d       ��-	An� ��A*

loss+�@�92�       ��2	�n� ��A*

accuracy�G>t���       ��2	�,� ��A*

val_loss�@0G��"       x=�	�,� ��A*

val_accuracy�2>|ʼ�       ��-	�,� ��A*

loss�{@�s�5       ��2	K,� ��A*

accuracy9�H>��/       ��2	�<� ��A*

val_loss��@ޅf"       x=�	�<� ��A*

val_accuracy�3>�SO       ��-	=�<� ��A*

loss�(@_O�_       ��2	��<� ��A*

accuracy��J>\�z'       ��2	&M� ��A*

val_lossݯ@���5"       x=�	�'M� ��A*

val_accuracy��5>y��       ��-	�'M� ��A*

loss��@�Y �       ��2	<(M� ��A*

accuracy��K>���       ��2	�]]� ��A*

val_loss:�@:)��"       x=�	�^]� ��A*

val_accuracy�K7>J���       ��-	'_]� ��A*

loss�@�s��       ��2	x_]� ��A*

accuracy��R>�`�F       ��2	��m� ��A*

val_lossBW@��pV"       x=�	��m� ��A*

val_accuracy46>�C       ��-	��m� ��A*

loss�>@�|1�       ��2	8�m� ��A*

accuracy�Z>Uz�w       ��2	�q~� ��A*

val_loss6@W���"       x=�	�r~� ��A*

val_accuracyj�4>8OL�       ��-	s~� ��A*

lossq�
@��$       ��2	js~� ��A*

accuracy�(\>ī�       ��2	�ю� ��A*

val_loss��@T+�"       x=�	�Ҏ� ��A*

val_accuracy�4>C��       ��-	6ӎ� ��A*

lossH�
@E�#i       ��2	�ӎ� ��A*

accuracy�Y>���9       ��2	!_�� ��A*

val_loss�@�T�"       x=�	�_�� ��A*

val_accuracyjM3>�l�       ��-	O`�� ��A*

lossDK
@��       ��2	�`�� ��A*

accuracy/]>B	�       ��2	F��� ��A*

val_loss��@Y��"       x=�	��� ��A*

val_accuracy5>�Q��       ��-	x��� ��A*

loss��	@�'�       ��2	���� ��A*

accuracybX>P�e       ��2	vP�� ��A*

val_loss�|@p�:E"       x=�	=Q�� ��A*

val_accuracyz6>!G`       ��-	�Q�� ��A*

loss��	@<�       ��2	�Q�� ��A*

accuracy/]>���       ��2	��� ��A *

val_lossGo@O&�	"       x=�	���� ��A *

val_accuracy��9>��<       ��-	��� ��A *

loss�e	@C��       ��2	Z��� ��A *

accuracy?5^>���|       ��2	���� ��A!*

val_loss�8@"�^'"       x=�	���� ��A!*

val_accuracy�:>�L8t       ��-	*��� ��A!*

loss		@�2�l       ��2	{��� ��A!*

accuracy�Mb>�ͽ       ��2	H��� ��A"*

val_loss�@A-�"       x=�	��� ��A"*

val_accuracy�:>_#�g       ��-	w��� ��A"*

loss.�@.z��       ��2	���� ��A"*

accuracy�Sc>�E#Q       ��2	�� ��A#*

val_loss9�@��Ş"       x=�	�	� ��A#*

val_accuracy �>>X2mq       ��-	�	� ��A#*

loss��@�VQQ       ��2	;
� ��A#*

accuracy�Sc>�w�l       ��2	G�� ��A$*

val_loss,�@�^�u"       x=�	�� ��A$*

val_accuracy[�?>_H�q       ��-	��� ��A$*

lossh6@���       ��2	��� ��A$*

accuracyZd>w�j�       ��2	�$� ��A%*

val_lossݡ@�7ǭ"       x=�	��$� ��A%*

val_accuracy��?>��Q�       ��-	#�$� ��A%*

lossh�@i��       ��2	z�$� ��A%*

accuracyףp>�Rʐ       ��2	5� ��A&*

val_loss�[@5�ܔ"       x=�	�5� ��A&*

val_accuracy��A>���       ��-	J5� ��A&*

loss��@�||�       ��2	�5� ��A&*

accuracy��q>���       ��2	�mE� ��A'*

val_loss�E@�sЯ"       x=�	�nE� ��A'*

val_accuracy�FC>����       ��-	�nE� ��A'*

loss4=@�9       ��2	BoE� ��A'*

accuracy�k>K�j       ��2	-�U� ��A(*

val_loss�7@�\�"       x=�	�U� ��A(*

val_accuracy�E>
�Y       ��-	e�U� ��A(*

loss��@�u��       ��2	��U� ��A(*

accuracyףp>�I��       ��2	M[f� ��A)*

val_loss��@���"       x=�	"\f� ��A)*

val_accuracy]mE>*O�       ��-	�\f� ��A)*

lossF�@����       ��2	�\f� ��A)*

accuracyj�t>�*��       ��2	��v� ��A**

val_loss��@X�gi"       x=�	r�v� ��A**

val_accuracyI>�~27       ��-	۫v� ��A**

loss�A@A��       ��2	0�v� ��A**

accuracy��o>��J�       ��2	e�� ��A+*

val_loss��@�(c�"       x=�	B�� ��A+*

val_accuracy�CK>�k       ��-	��� ��A+*

loss�@�H�\       ��2	��� ��A+*

accuracyףp>?+J       ��2	H�� ��A,*

val_lossdk@N"�x"       x=�	�� ��A,*

val_accuracy;M>�!S       ��-	z�� ��A,*

loss�@���       ��2	��� ��A,*

accuracyj�t>#�W       ��2	�f�� ��A-*

val_loss�<@]^�K"       x=�	dg�� ��A-*

val_accuracy��O>��w4       ��-	�g�� ��A-*

loss�N@�_R       ��2	h�� ��A-*

accuracy��u>���       ��2	�ʷ� ��A.*

val_lossf@��"       x=�	�˷� ��A.*

val_accuracyshQ>��1|       ��-	̷� ��A.*

loss��@ҏ�4       ��2	_̷� ��A.*

accuracy  �>R��
       ��2	�+�� ��A/*

val_loss�@���"       x=�	k,�� ��A/*

val_accuracy=,T>m1�e       ��-	�,�� ��A/*

lossu�@�y:	       ��2	 -�� ��A/*

accuracy\��>�b�       ��2	*t�� ��A0*

val_loss,�@/
<�"       x=�	�t�� ��A0*

val_accuracy��V>��       ��-	^u�� ��A0*

loss�U@t��       ��2	�u�� ��A0*

accuracy���>�0P       ��2	n��� ��A1*

val_loss�@z���"       x=�	5��� ��A1*

val_accuracy��U>��s       ��-	���� ��A1*

lossI@f��       ��2	��� ��A1*

accuracyL7�>����       ��2	���� ��A2*

val_loss֠@���"       x=�	_��� ��A2*

val_accuracycY>��PB       ��-	���� ��A2*

loss-�@-�*'       ��2	��� ��A2*

accuracy���>1��       ��2	�L	� ��A3*

val_lossq�@��"       x=�	MM	� ��A3*

val_accuracy�6Z>�M�       ��-	�M	� ��A3*

loss�d@M&       ��2	�M	� ��A3*

accuracyq=�>       ��2	^�� ��A4*

val_loss�a@��"       x=�	.�� ��A4*

val_accuracy�w\>`:�       ��-	��� ��A4*

lossS@�v       ��2	�� ��A4*

accuracy�̌>��\       ��2	!I*� ��A5*

val_loss$@&�g�"       x=�	�I*� ��A5*

val_accuracy�o_>t��}       ��-	UJ*� ��A5*

loss��@ǚҙ       ��2	�J*� ��A5*

accuracy`�>�8�O       ��2	��:� ��A6*

val_loss1@9�"       x=�	��:� ��A6*

val_accuracy��\>u	��       ��-	��:� ��A6*

lossO^@K��B       ��2	B�:� ��A6*

accuracysh�>�v��       ��2	�)K� ��A7*

val_loss��
@pF'"       x=�	l*K� ��A7*

val_accuracy�u`>�Q�       ��-	�*K� ��A7*

loss~@PЛ�       ��2	+K� ��A7*

accuracy��>cV       ��2	��[� ��A8*

val_loss��
@�),2"       x=�	��[� ��A8*

val_accuracyx�b>�� .       ��-	��[� ��A8*

loss-�@@E       ��2	2�[� ��A8*

accuracyb�>�1�@       ��2	?Fl� ��A9*

val_loss3�
@��T"       x=�	Gl� ��A9*

val_accuracy�?d>�0o       ��-	fGl� ��A9*

loss�5@F�F�       ��2	�Gl� ��A9*

accuracy㥛>V�&�       ��2	c�|� ��A:*

val_loss&�
@�c�"       x=�	/�|� ��A:*

val_accuracyB�f>�v�       ��-	��|� ��A:*

loss4� @��_       ��2	�|� ��A:*

accuracy/�>�N�u       ��2	���� ��A;*

val_loss0�
@ڢ��"       x=�	x��� ��A;*

val_accuracyg�g>�#-�       ��-	���� ��A;*

loss�p @F�`(       ��2	+ �� ��A;*

accuracy-��>��b�       ��2	�E�� ��A<*

val_loss(3
@��"       x=�	�F�� ��A<*

val_accuracy1�j>���       ��-	G�� ��A<*

loss� @.�       ��2	YG�� ��A<*

accuracy�ʡ>�<�a       ��2	� �� ��A=*

val_lossC�
@�<]d"       x=�	��� ��A=*

val_accuracy��d>>o�*       ��-	��� ��A=*

loss�`�?crn       ��2	/�� ��A=*

accuracy�Т>@�s       ��2	٬�� ��A>*

val_lossQJ
@�_"       x=�	���� ��A>*

val_accuracy�rh>�,?       ��-	��� ��A>*

loss���?����       ��2	c��� ��A>*

accuracy�A�>ܘ�       ��2	�6�� ��A?*

val_loss�W@�uq"       x=�	T7�� ��A?*

val_accuracy.�`>�Ċ�       ��-	�7�� ��A?*

loss�N�?�	�       ��2	8�� ��A?*

accuracyw��>ߺ5�       ��2	נ�� ��A@*

val_loss��	@�*�"       x=�	���� ��A@*

val_accuracy��k>�d�       ��-	��� ��A@*

lossA2�?Ӟ?M       ��2	c��� ��A@*

accuracyP��>�.��       ��2	g�� ��AA*

val_loss�Q	@s��"       x=�	<�� ��AA*

val_accuracy}�s>{#*       ��-	��� ��AA*

loss�O�?���'       ��2	��� ��AA*

accuracy�Ġ>,�2w       ��2	�� � ��AB*

val_loss�Z
@F�Ռ"       x=�	d� � ��AB*

val_accuracy�h>��	>       ��-	Ɣ � ��AB*

loss�g�?{\>�       ��2	� � ��AB*

accuracyy�>��_�       ��2	E�� ��AC*

val_loss�2	@V��e"       x=�	�� ��AC*

val_accuracy�St>�/g�       ��-	p�� ��AC*

lossVH�?��mx       ��2	��� ��AC*

accuracy�ʡ>i��       ��2	��!� ��AD*

val_loss}�@YLo0"       x=�	��!� ��AD*

val_accuracy�w>�l�P       ��-	�!� ��AD*

loss/�?,tO�       ��2	;�!� ��AD*

accuracyB`�>UX�d       ��2	(�1� ��AE*

val_loss8
@ "�?"       x=�	��1� ��AE*

val_accuracy��m>]?�]       ��-	Z�1� ��AE*

loss�+�?���'       ��2	��1� ��AE*

accuracyT�>;��       ��2	�UB� ��AF*

val_loss9�@��(�"       x=�	�VB� ��AF*

val_accuracy��v>G@)�       ��-	�VB� ��AF*

loss��?@u&v       ��2	;WB� ��AF*

accuracy�S�>���       ��2	S� ��AG*

val_loss�m@^��7"       x=�	�S� ��AG*

val_accuracy#J{>Y(       ��-	CS� ��AG*

loss�c�?���       ��2	�S� ��AG*

accuracy���>dF��       ��2	<tc� ��AH*

val_loss~A	@��G�"       x=�	uc� ��AH*

val_accuracy!t>D%#6       ��-	puc� ��AH*

lossu
�?�0       ��2	�uc� ��AH*

accuracy��>�p<�       ��2	#%t� ��AI*

val_loss��@�F�P"       x=�	�%t� ��AI*

val_accuracy�!}>��}       ��-	Z&t� ��AI*

loss`i�?q�       ��2	�&t� ��AI*

accuracy�r�>�c��       ��2	Ǎ�� ��AJ*

val_lossj�@=�#"       x=�	���� ��AJ*

val_accuracy �~>�2]�       ��-	���� ��AJ*

loss!��?�t��       ��2	M��� ��AJ*

accuracy{�>�WD\       ��2	���� ��AK*

val_loss�a@r��F"       x=�	���� ��AK*

val_accuracy��u>N��u       ��-	3��� ��AK*

loss���?ߙ��       ��2	���� ��AK*

accuracy�&�>��k�       ��2	�b�� ��AL*

val_loss�o@\"       x=�	|c�� ��AL*

val_accuracy[B~>qQ�       ��-	�c�� ��AL*

lossR��?Q�O       ��2	7d�� ��AL*

accuracy��>��8t       ��2	'��� ��AM*

val_loss�/@��"       x=�	���� ��AM*

val_accuracyw-�>T�&&       ��-	Y��� ��AM*

loss�Q�?�`;.       ��2	���� ��AM*

accuracy��>�Ό�       ��2	G�� ��AN*

val_loss��@�g��"       x=�	�G�� ��AN*

val_accuracy�Qx>G�S�       ��-	MH�� ��AN*

loss~>�?^�U       ��2	�H�� ��AN*

accuracyX9�>`H(       ��2	/��� ��AO*

val_loss`�@�7	8"       x=�	���� ��AO*

val_accuracy|�>��{�       ��-	b��� ��AO*

loss�b�?kA�s       ��2	���� ��AO*

accuracy��>��ˁ       ��2	�_�� ��AP*

val_losst�@o��"       x=�	�`�� ��AP*

val_accuracyn��>sgt#       ��-	�`�� ��AP*

loss���?~�       ��2	8a�� ��AP*

accuracy�µ>�X��       ��2	-��� ��AQ*

val_losse@�<D"       x=�	��� ��AQ*

val_accuracy��~>��       ��-	z��� ��AQ*

loss ��?$44       ��2	̲�� ��AQ*

accuracyZd�>N0t�       ��2	�4� ��AR*

val_loss"�@���"       x=�	q5� ��AR*

val_accuracye�>�K��       ��-	�5� ��AR*

lossc�?�W�       ��2	$6� ��AR*

accuracyX9�>�B��       ��2	��� ��AS*

val_lossJf@�lđ"       x=�	��� ��AS*

val_accuracye�>ؖ�:       ��-	�� ��AS*

loss� �?7՜�       ��2	>�� ��AS*

accuracy�|�>?��       ��2	�(� ��AT*

val_loss�q@A��"       x=�	��(� ��AT*

val_accuracy���>5Rh       ��-	0�(� ��AT*

loss��?8G�       ��2	�(� ��AT*

accuracy�p�>�0��       ��2	�A9� ��AU*

val_loss[�@V�l"       x=�	jB9� ��AU*

val_accuracy�?�>�@�s       ��-	�B9� ��AU*

loss��?��?�       ��2	C9� ��AU*

accuracym�>�m�       ��2	0�I� ��AV*

val_loss�@�X"       x=�	�I� ��AV*

val_accuracy�?�>�o�Y       ��-	e�I� ��AV*

lossy��?U��       ��2	��I� ��AV*

accuracy�v�>�py�       ��2	�Z� ��AW*

val_loss|@<'��"       x=�	�Z� ��AW*

val_accuracy��>[��2       ��-	*Z� ��AW*

loss��?m��       ��2	wZ� ��AW*

accuracyJ�>���d       ��2	kj� ��AX*

val_losscH@��{>"       x=�	�kj� ��AX*

val_accuracyB`�>'N       ��-	Glj� ��AX*

loss5�?D�$D       ��2	�lj� ��AX*

accuracy+�>���       ��2	��z� ��AY*

val_loss�b@�Ϸ
"       x=�	W�z� ��AY*

val_accuracyM�>��"?       ��-	��z� ��AY*

loss`��? ��       ��2	��z� ��AY*

accuracyˡ�>��       ��2	� �� ��AZ*

val_loss7�@�W��"       x=�	�!�� ��AZ*

val_accuracyT�>Rʹ       ��-	)"�� ��AZ*

lossaD�?b`2       ��2	y"�� ��AZ*

accuracy+�>�]��       ��2	EW�� ��A[*

val_loss��@����"       x=�	X�� ��A[*

val_accuracy�
�>�W�U       ��-	{X�� ��A[*

loss��?I=`�       ��2	�X�� ��A[*

accuracy���>�ѩ"       ��2	�Ϋ� ��A\*

val_loss�@�6~�"       x=�	Ы� ��A\*

val_accuracyBφ>���L       ��-	tЫ� ��A\*

loss�O�?��~M       ��2	ѫ� ��A\*

accuracy)\�>,mx�       ��2	;�� ��A]*

val_loss�V@q���"       x=�	�� ��A]*

val_accuracy��>kb       ��-	n�� ��A]*

lossm �?&�bX       ��2	��� ��A]*

accuracy���>�"��       ��2	�[�� ��A^*

val_loss�@X4Z"       x=�	\�� ��A^*

val_accuracy0L�>�aP�       ��-	�\�� ��A^*

loss��?�y�R       ��2	&]�� ��A^*

accuracy`��>ᱡE       ��2	���� ��A_*

val_losss�@���"       x=�	���� ��A_*

val_accuracyy�><���       ��-	���� ��A_*

lossHp�?�$�       ��2	;��� ��A_*

accuracy`��>-���       ��2	�a�� ��A`*

val_loss�@xx�-"       x=�	�b�� ��A`*

val_accuracy���>{���       ��-	(c�� ��A`*

lossj;�?w-       ��2	sc�� ��A`*

accuracy�n�>�%.       ��2	��� ��Aa*

val_loss�@1�")"       x=�	��� ��Aa*

val_accuracyzǉ>�|�       ��-	��� ��Aa*

lossL�?��;       ��2	�� ��Aa*

accuracy���>��J       ��2	��� ��Ab*

val_loss�@��"       x=�	��� ��Ab*

val_accuracy��>R��       ��-	��� ��Ab*

loss�0�?�u��       ��2	)�� ��Ab*

accuracy�(�>���       ��2	�4 � ��Ac*

val_lossrJ@Տ�"       x=�	�5 � ��Ac*

val_accuracyL7�> ��d       ��-	G6 � ��Ac*

lossC�?�B"       ��2	�6 � ��Ac*

accuracy+��>�Y�<       ��2	�b0� ��Ad*

val_loss~@ֲ@"       x=�	mc0� ��Ad*

val_accuracy���>��       ��-	�c0� ��Ad*

losss��?���j       ��2	d0� ��Ad*

accuracy��>��$       ��2	a�@� ��Ae*

val_loss�N@���@"       x=�	5�@� ��Ae*

val_accuracy�x�>�-wh       ��-	��@� ��Ae*

loss7��?O=z       ��2	��@� ��Ae*

accuracy;��>���       ��2	6%Q� ��Af*

val_lossӬ@�r��"       x=�	�%Q� ��Af*

val_accuracygD�>ּ       ��-	Y&Q� ��Af*

loss#�?$<kA       ��2	�&Q� ��Af*

accuracy=
�>$��       ��2	Śa� ��Ag*

val_loss�E@"Z�"       x=�	��a� ��Ag*

val_accuracy2w�>��{�       ��-	�a� ��Ag*

loss��?J��l       ��2	]�a� ��Ag*

accuracy?5�>4��9       ��2	YYr� ��Ah*

val_loss-8@=�Q�"       x=�	&Zr� ��Ah*

val_accuracy1�>!#��       ��-	�Zr� ��Ah*

loss2��?���       ��2	�Zr� ��Ah*

accuracy���>��A       ��2	��� ��Ai*

val_lossqn@+#7�"       x=�	��� ��Ai*

val_accuracyD��>m���       ��-	�� ��Ai*

loss���?bݬD       ��2	��� ��Ai*

accuracy�M�>d�j*       ��2	+�� ��Aj*

val_loss @ei"       x=�	�+�� ��Aj*

val_accuracy;�>φ1       ��-	5,�� ��Aj*

loss�V�?9Ȼ        ��2	�,�� ��Aj*

accuracyZ�>�f��       ��2	���� ��Ak*

val_loss^D@N>�"       x=�	���� ��Ak*

val_accuracy�ԉ>Q�-i       ��-	档� ��Ak*

loss��?N\��       ��2	9��� ��Ak*

accuracy/��>=זN       ��2	�1�� ��Al*

val_loss$�@�*�"       x=�	�2�� ��Al*

val_accuracy�.�>j���       ��-	!3�� ��Al*

loss (�?|�V�       ��2	z3�� ��Al*

accuracy�(�>�.J�       ��2	���� ��Am*

val_loss�@�.�%"       x=�	���� ��Am*

val_accuracy鷏>Q�[       ��-	��� ��Am*

loss���?Z�}       ��2	k��� ��Am*

accuracyB`�>��4�       ��2	�;�� ��An*

val_loss')@?�"       x=�	�<�� ��An*

val_accuracy鷏>�^�       ��-	�<�� ��An*

loss��?r�@       ��2	H=�� ��An*

accuracy��>�'w       ��2	���� ��Ao*

val_loss�@/7�"       x=�	c��� ��Ao*

val_accuracyNb�>�&       ��-	�� ��Ao*

lossN��?�e       ��2	��� ��Ao*

accuracy1�>�*       ��2	�B�� ��Ap*

val_loss]@!7"       x=�	�C�� ��Ap*

val_accuracy�ō>��8�       ��-	D�� ��Ap*

loss'�?�E#b       ��2	oD�� ��Ap*

accuracyV�>/i]�       ��2	E�� ��Aq*

val_lossY� @��@"       x=�	)�� ��Aq*

val_accuracy���>�       ��-	��� ��Aq*

lossA��?��y       ��2	��� ��Aq*

accuracy���>���6       ��2	*b� ��Ar*

val_lossN� @$,��"       x=�	�b� ��Ar*

val_accuracy*:�>h�-5       ��-	`c� ��Ar*

loss��?f+��       ��2	�c� ��Ar*

accuracy{�><��P       ��2	�'� ��As*

val_loss8� @����"       x=�	ܶ'� ��As*

val_accuracy��>�'��       ��-	;�'� ��As*

loss?��?���       ��2	��'� ��As*

accuracy� �>t��z       ��2	E8� ��At*

val_loss� @U�S
"       x=�	8� ��At*

val_accuracy�>�)u�       ��-	w8� ��At*

loss���??��K       ��2	�8� ��At*

accuracy{�>���       ��2	�[H� ��Au*

val_loss]@�nXJ"       x=�	�\H� ��Au*

val_accuracy�&�>[��       ��-	J]H� ��Au*

loss��?X)ϋ       ��2	�]H� ��Au*

accuracyh��>H��       ��2	��X� ��Av*

val_loss,- @v�m "       x=�	��X� ��Av*

val_accuracy�>I��       ��-	��X� ��Av*

loss'Y�?D���       ��2	I�X� ��Av*

accuracy� �>�d�s       ��2	w+i� ��Aw*

val_loss�V @��t�"       x=�	o,i� ��Aw*

val_accuracy��>���6       ��-	�,i� ��Aw*

lossE��?x��       ��2	4-i� ��Aw*

accuracy}?�>X1�'       ��2	��y� ��Ax*

val_lossq	 @	�ם"       x=�	W�y� ��Ax*

val_accuracy��>�ir�       ��-	��y� ��Ax*

loss���?�       ��2	�y� ��Ax*

accuracy-�>*�v�       ��2	���� ��Ay*

val_loss���? �M�"       x=�	M��� ��Ay*

val_accuracy"��>�Sc�       ��-	���� ��Ay*

loss|�?�R�       ��2	��� ��Ay*

accuracyX�>\�i�       ��2	sz�� ��Az*

val_loss�� @Jܬ"       x=�	D{�� ��Az*

val_accuracy�Z�>����       ��-	�{�� ��Az*

loss/��? ���       ��2	�{�� ��Az*

accuracy���>��x�       ��2	���� ��A{*

val_loss�2 @�;��"       x=�	���� ��A{*

val_accuracy4��>����       ��-		��� ��A{*

loss���?!�F~       ��2	[��� ��A{*

accuracy�E�>Zc��       ��2	�e�� ��A|*

val_lossZ@���)"       x=�	�f�� ��A|*

val_accuracy�{�>����       ��-	g�� ��A|*

loss�S�?���       ��2	dg�� ��A|*

accuracy���>.D�       ��2	|��� ��A}*

val_lossN��?�7Ԍ"       x=�	���� ��A}*

val_accuracyΙ>�x&       ��-	��� ��A}*

loss-)�?~��       ��2	j��� ��A}*

accuracyX�>�l�U       ��2	b �� ��A~*

val_loss  @ihB"       x=�	>!�� ��A~*

val_accuracy�>���       ��-	�!�� ��A~*

lossz�?;��y       ��2	�!�� ��A~*

accuracyZd�>צ̿       ��2	�^�� ��A*

val_loss9��?IZԾ"       x=�	�_�� ��A*

val_accuracy�Q�>L;�       ��-	�_�� ��A*

lossƚ�?72       ��2	K`�� ��A*

accuracy�M?Y�+�       QKD	��� ��A�*

val_losso�?ڿ�E#       ��wC	��� ��A�*

val_accuracy��>�bd
       �	N��� ��A�*

lossM��?Q�A       QKD	���� ��A�*

accuracy
�?�0       QKD	y�� ��A�*

val_loss�� @��z�#       ��wC	O�� ��A�*

val_accuracyX��>!D�G       �	��� ��A�*

loss�.�?���       QKD	 �� ��A�*

accuracy���>S��       QKD	M@� ��A�*

val_loss���?�k�s#       ��wC	#A� ��A�*

val_accuracyc�>�@�z       �	A� ��A�*

loss��?ѳ�c       QKD	�A� ��A�*

accuracy�M?.(�       QKD		�-� ��A�*

val_lossj� @0)]�#       ��wC	؅-� ��A�*

val_accuracyF��>���_       �	:�-� ��A�*

loss�K�?�l�	       QKD	��-� ��A�*

accuracy�M?��ۼ       QKD	K�=� ��A�*

val_loss��?�Vg�#       ��wC	8�=� ��A�*

val_accuracyvq�>��:�       �	��=� ��A�*

loss���?q��       QKD	��=� ��A�*

accuracy/�?���z       QKD	�N� ��A�*

val_loss[� @�,v}#       ��wC	yN� ��A�*

val_accuracyu��> ;�       �	�N� ��A�*

loss���?�O�s       QKD	&N� ��A�*

accuracy
�?[��       QKD	4Y^� ��A�*

val_lossu @{pK#       ��wC	Z^� ��A�*

val_accuracyl	�>@�       �	qZ^� ��A�*

loss{ɺ?��#�       QKD	�Z^� ��A�*

accuracy%?`�v       QKD	��n� ��A�*

val_loss��@)(4�#       ��wC	��n� ��A�*

val_accuracyu�>���       �	o�n� ��A�*

loss���?�O-�       QKD	��n� ��A�*

accuracy��?��x�       QKD	%� ��A�*

val_lossF� @y2�W#       ��wC	�%� ��A�*

val_accuracyX�>nzk       �	I&� ��A�*

loss��?�=�e       QKD	�&� ��A�*

accuracy7�?g��t       QKD	�k�� ��A�*

val_loss�� @P@e_#       ��wC	_l�� ��A�*

val_accuracy�#�>��Ox       �	�l�� ��A�*

lossxG�?	:Q       QKD	m�� ��A�*

accuracy��?aU��       QKD	��� ��A�*

val_loss&9 @�8��#       ��wC	�� ��A�*

val_accuracyۊ�>i��_       �	M��� ��A�*

loss(U�?$�^F       QKD	���� ��A�*

accuracy�G?̳X       QKD	��� ��A�*

val_loss�@@1��#       ��wC	���� ��A�*

val_accuracy�ϕ>����       �	A��� ��A�*

lossͅ�?�� Q       QKD	���� ��A�*

accuracyˡ?��77       QKD	=T�� ��A�*

val_loss�@��U#       ��wC	U�� ��A�*

val_accuracy?5�>��W�       �	cU�� ��A�*

loss���?��       QKD	�U�� ��A�*

accuracy/�?�s��       QKD	P��� ��A�*

val_loss��@l^1>#       ��wC	"��� ��A�*

val_accuracy�7�>�m�Y       �	���� ��A�*

lossu�?�8�       QKD	ϙ�� ��A�*

accuracyff?G�?�       QKD	��� ��A�*

val_loss�_@�=b#       ��wC	���� ��A�*

val_accuracy��>�Ź�       �	K��� ��A�*

loss���?j8��       QKD	���� ��A�*

accuracyB`?I\��       QKD	oK�� ��A�*

val_loss�"@�$׋#       ��wC	CL�� ��A�*

val_accuracy�e�>`[��       �	�L�� ��A�*

loss��?�r        QKD	�L�� ��A�*

accuracyˡ?����       QKD	W�� ��A�*

val_loss'W@���#       ��wC	$�� ��A�*

val_accuracyd]�>�=G�       �	��� ��A�*

loss0÷?�
�       QKD	χ� ��A�*

accuracy� ?�q�X       QKD	U	� ��A�*

val_loss�+@4��+#       ��wC	"
� ��A�*

val_accuracy���>���       �	�
� ��A�*

loss'W�?��       QKD	�
� ��A�*

accuracyT�?��       QKD	E�"� ��A�*

val_losssF@�kb#       ��wC	�"� ��A�*

val_accuracy��>H�B*       �	u�"� ��A�*

loss.:�?��0�       QKD	��"� ��A�*

accuracy/�?��7�       QKD	�33� ��A�*

val_loss�@�9k#       ��wC	�43� ��A�*

val_accuracy���>���       �	53� ��A�*

loss�ʰ?��       QKD	Y53� ��A�*

accuracy�C?���       QKD	߷C� ��A�*

val_loss�C@���O#       ��wC	��C� ��A�*

val_accuracy-��>:ǧ�       �	�C� ��A�*

lossگ?-<Z       QKD	e�C� ��A�*

accuracy�r?�=       QKD	�$T� ��A�*

val_lossђ@V�}�#       ��wC	�%T� ��A�*

val_accuracyI.�>�	�>       �	�%T� ��A�*

loss��?�KB�       QKD	I&T� ��A�*

accuracyL7	?��U�