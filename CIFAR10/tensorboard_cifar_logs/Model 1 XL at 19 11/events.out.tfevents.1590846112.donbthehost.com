       �K"	   ����Abrain.Event:2�J�     d6r	������A"��

u
m1_hidden1_inputPlaceholder*
shape:����������*
dtype0*(
_output_shapes
:����������
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
m1_hidden1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�\1=*
dtype0
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
m1_hidden1/MatMulMatMulm1_hidden1_input m1_hidden1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b( 
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
dtype0*
_output_shapes
:*
valueB"�   @   
b
m1_hidden2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
b
m1_hidden2/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�5>*
dtype0
�
'm1_hidden2/random_uniform/RandomUniformRandomUniformm1_hidden2/random_uniform/shape*
seed�*
T0*
dtype0*
_output_shapes
:	�@*
seed2��
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
m1_hidden2/biasVarHandleOp*"
_class
loc:@m1_hidden2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: * 
shared_namem1_hidden2/bias
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
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( *
T0
m
!m1_hidden2/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@
�
m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������@
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
m1_hidden3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *�7�>
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
m1_hidden3/ConstConst*
dtype0*
_output_shapes
:*
valueB*    
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
_output_shapes

:@*
dtype0
�
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:
�
m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������
]
m1_hidden3/ReluRelum1_hidden3/BiasAdd*'
_output_shapes
:���������*
T0
o
m1_output/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
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
shape:
*
dtype0*
_output_shapes
: *
shared_namem1_output/bias*!
_class
loc:@m1_output/bias*
	container 
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
)Adam/iterations/Initializer/initial_valueConst*
_output_shapes
: *
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	
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
Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*
dtype0	*"
_class
loc:@Adam/iterations
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
Adam/learning_rateVarHandleOp*
shape: *
dtype0*
_output_shapes
: *#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container 
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
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
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
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container 
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
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
_class
loc:@Adam/beta_2*
dtype0
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

Adam/decayVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container 
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
Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
countVarHandleOp*
shared_namecount*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: 
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
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp*
_output_shapes
: *
dtype0
g
metrics/accuracy/SizeSizemetrics/accuracy/Cast_1*
out_type0*
_output_shapes
: *
T0
v
metrics/accuracy/Cast_2Castmetrics/accuracy/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
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
Iloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0
�
Aloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:���������
*
T0
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
=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape7loss/m1_output_loss/sparse_categorical_crossentropy/LogCloss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
Tshape0*'
_output_shapes
:���������
*
T0
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
Gloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
:*
valueB: *
dtype0
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
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
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
t
dropout_1_inputPlaceholder*(
_output_shapes
:����������*
shape:����������*
dtype0
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
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

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
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
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
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*(
_output_shapes
:����������*
T0
�
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*(
_output_shapes
:����������*
T0
�
dropout_1/cond/dropout/addAdddropout_1/cond/dropout/sub%dropout_1/cond/dropout/random_uniform*(
_output_shapes
:����������*
T0
t
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*(
_output_shapes
:����������
�
dropout_1/cond/dropout/truedivRealDiv%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/sub*
T0*(
_output_shapes
:����������
�
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*(
_output_shapes
:����������*
T0
�
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:����������:����������*
T0
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
m2_hidden1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�\1�
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
��*
seed2���*
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
m2_hidden1/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namem2_hidden1/bias*"
_class
loc:@m2_hidden1/bias*
	container *
shape:�
o
0m2_hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
~
m2_hidden1/bias/AssignAssignVariableOpm2_hidden1/biasm2_hidden1/Const*
dtype0*"
_class
loc:@m2_hidden1/bias
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
m2_hidden1/MatMulMatMuldropout_1/cond/Merge m2_hidden1/MatMul/ReadVariableOp*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
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
dtype0*
_output_shapes
:	�@*
seed2���*
seed�*
T0
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
m2_hidden2/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
	container *
shape:	�@
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
m2_hidden2/biasVarHandleOp* 
shared_namem2_hidden2/bias*"
_class
loc:@m2_hidden2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
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
dtype0*
_output_shapes
:	�@
�
m2_hidden2/MatMulMatMulm2_hidden1/Relu m2_hidden2/MatMul/ReadVariableOp*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( *
T0
m
!m2_hidden2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@
�
m2_hidden2/BiasAddBiasAddm2_hidden2/MatMul!m2_hidden2/BiasAdd/ReadVariableOp*'
_output_shapes
:���������@*
T0*
data_formatNHWC
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

:@*
seed2���*
seed�
�
m2_hidden3/random_uniform/subSubm2_hidden3/random_uniform/maxm2_hidden3/random_uniform/min*
_output_shapes
: *
T0
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
m2_hidden3/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
�
m2_hidden3/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: * 
shared_namem2_hidden3/bias*"
_class
loc:@m2_hidden3/bias*
	container 
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
!m2_hidden3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3/bias*
_output_shapes
:*
dtype0
�
m2_hidden3/BiasAddBiasAddm2_hidden3/MatMul!m2_hidden3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������
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
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
T0*
dtype0*
_output_shapes

:
*
seed2��$*
seed�
�
m2_output/random_uniform/subSubm2_output/random_uniform/maxm2_output/random_uniform/min*
T0*
_output_shapes
: 
�
m2_output/random_uniform/mulMul&m2_output/random_uniform/RandomUniformm2_output/random_uniform/sub*
_output_shapes

:
*
T0
�
m2_output/random_uniformAddm2_output/random_uniform/mulm2_output/random_uniform/min*
T0*
_output_shapes

:

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
m2_output/biasVarHandleOp*
_output_shapes
: *
shared_namem2_output/bias*!
_class
loc:@m2_output/bias*
	container *
shape:
*
dtype0
m
/m2_output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output/bias*
_output_shapes
: 
z
m2_output/bias/AssignAssignVariableOpm2_output/biasm2_output/Const*
dtype0*!
_class
loc:@m2_output/bias
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
m2_output/MatMulMatMulm2_hidden3/Relum2_output/MatMul/ReadVariableOp*'
_output_shapes
:���������
*
transpose_a( *
transpose_b( *
T0
k
 m2_output/BiasAdd/ReadVariableOpReadVariableOpm2_output/bias*
_output_shapes
:
*
dtype0
�
m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*'
_output_shapes
:���������
*
T0*
data_formatNHWC
a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*'
_output_shapes
:���������
*
T0
�
+Adam_1/iterations/Initializer/initial_valueConst*
value	B	 R *$
_class
loc:@Adam_1/iterations*
dtype0	*
_output_shapes
: 
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
Adam_1/iterations/AssignAssignVariableOpAdam_1/iterations+Adam_1/iterations/Initializer/initial_value*
dtype0	*$
_class
loc:@Adam_1/iterations
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
_class
loc:@Adam_1/beta_1*
dtype0
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
Adam_1/beta_2VarHandleOp*
shared_nameAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
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
dtype0*
_output_shapes
: * 
_class
loc:@Adam_1/beta_2
�
&Adam_1/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam_1/decay*
dtype0
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
dtype0*
_class
loc:@Adam_1/decay
�
 Adam_1/decay/Read/ReadVariableOpReadVariableOpAdam_1/decay*
dtype0*
_output_shapes
: *
_class
loc:@Adam_1/decay
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
total_1VarHandleOp*
shared_name	total_1*
_class
loc:@total_1*
	container *
shape: *
dtype0*
_output_shapes
: 
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
Const_4Const*
_output_shapes
: *
valueB
 *    *
dtype0
�
count_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	count_1*
_class
loc:@count_1*
	container 
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
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
_class
loc:@count_1*
dtype0
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
Truncate( *#
_output_shapes
:���������*

DstT0
�
metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*
T0*#
_output_shapes
:���������
�
metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0
*
Truncate( 
b
metrics_1/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics_1/accuracy/SumSummetrics_1/accuracy/Cast_1metrics_1/accuracy/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
k
&metrics_1/accuracy/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/accuracy/Sum*
dtype0
�
!metrics_1/accuracy/ReadVariableOpReadVariableOptotal_1'^metrics_1/accuracy/AssignAddVariableOp*
_output_shapes
: *
dtype0
k
metrics_1/accuracy/SizeSizemetrics_1/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_1/accuracy/Cast_2Castmetrics_1/accuracy/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
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
)metrics_1/accuracy/truediv/ReadVariableOpReadVariableOpcount_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
_output_shapes
: *
dtype0
�
metrics_1/accuracy/truedivRealDiv#metrics_1/accuracy/ReadVariableOp_2)metrics_1/accuracy/truediv/ReadVariableOp*
_output_shapes
: *
T0
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
9loss_1/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
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
=loss_1/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_targetCloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
:loss_1/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape*
Truncate( *#
_output_shapes
:���������*

DstT0	*

SrcT0
�
Eloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
_output_shapes
:*
valueB"����
   *
dtype0
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
}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*6
_output_shapes$
":���������:���������
*
Tlabels0	*
T0
�
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:���������*
T0
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
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
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
: *
	keep_dims( *

Tidx0*
T0
t
dropout_2_inputPlaceholder*(
_output_shapes
:����������*
shape:����������*
dtype0
�
dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *��L>*
dtype0*
_output_shapes
: 
�
dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
�
#dropout_2/cond/dropout/Shape/SwitchSwitchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:����������:����������
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
_output_shapes
: *
T0
�
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
dtype0*(
_output_shapes
:����������*
seed2**
seed�*
T0
�
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:����������
�
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*(
_output_shapes
:����������*
T0
�
dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*(
_output_shapes
:����������*
T0
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*(
_output_shapes
:����������*
T0
�
dropout_2/cond/dropout/truedivRealDiv%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/sub*(
_output_shapes
:����������*
T0
�
dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/truedivdropout_2/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
dropout_2/cond/Switch_1Switchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:����������:����������
�
dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
T0*
N**
_output_shapes
:����������: 
r
!m2_hidden1_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"   �   *
dtype0
d
m2_hidden1_1/random_uniform/minConst*
valueB
 *�\1�*
dtype0*
_output_shapes
: 
d
m2_hidden1_1/random_uniform/maxConst*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
�
)m2_hidden1_1/random_uniform/RandomUniformRandomUniform!m2_hidden1_1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
��*
seed2���*
seed�
�
m2_hidden1_1/random_uniform/subSubm2_hidden1_1/random_uniform/maxm2_hidden1_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden1_1/random_uniform/mulMul)m2_hidden1_1/random_uniform/RandomUniformm2_hidden1_1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
m2_hidden1_1/random_uniformAddm2_hidden1_1/random_uniform/mulm2_hidden1_1/random_uniform/min*
T0* 
_output_shapes
:
��
�
m2_hidden1_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
	container *
shape:
��
w
4m2_hidden1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 
�
m2_hidden1_1/kernel/AssignAssignVariableOpm2_hidden1_1/kernelm2_hidden1_1/random_uniform*&
_class
loc:@m2_hidden1_1/kernel*
dtype0
�
'm2_hidden1_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*
dtype0* 
_output_shapes
:
��*&
_class
loc:@m2_hidden1_1/kernel
a
m2_hidden1_1/ConstConst*
_output_shapes	
:�*
valueB�*    *
dtype0
�
m2_hidden1_1/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
	container *
shape:�
s
2m2_hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 
�
m2_hidden1_1/bias/AssignAssignVariableOpm2_hidden1_1/biasm2_hidden1_1/Const*$
_class
loc:@m2_hidden1_1/bias*
dtype0
�
%m2_hidden1_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
dtype0*
_output_shapes	
:�
x
"m2_hidden1_1/MatMul/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*
dtype0* 
_output_shapes
:
��
�
m2_hidden1_1/MatMulMatMuldropout_2/cond/Merge"m2_hidden1_1/MatMul/ReadVariableOp*(
_output_shapes
:����������*
transpose_a( *
transpose_b( *
T0
r
#m2_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_1/bias*
dtype0*
_output_shapes	
:�
�
m2_hidden1_1/BiasAddBiasAddm2_hidden1_1/MatMul#m2_hidden1_1/BiasAdd/ReadVariableOp*(
_output_shapes
:����������*
T0*
data_formatNHWC
b
m2_hidden1_1/ReluRelum2_hidden1_1/BiasAdd*(
_output_shapes
:����������*
T0
�
dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
_output_shapes
: *
T0

c
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_3/cond/dropout/rateConst^dropout_3/cond/switch_t*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
dropout_3/cond/dropout/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
�
#dropout_3/cond/dropout/Shape/SwitchSwitchm2_hidden1_1/Reludropout_3/cond/pred_id*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:����������:����������*
T0
{
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
_output_shapes
: *
T0
�
)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
T0*
dtype0*(
_output_shapes
:����������*
seed2**
seed�
�
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:����������
�
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:����������
�
dropout_3/cond/dropout/addAdddropout_3/cond/dropout/sub%dropout_3/cond/dropout/random_uniform*
T0*(
_output_shapes
:����������
t
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*(
_output_shapes
:����������*
T0
�
dropout_3/cond/dropout/truedivRealDiv%dropout_3/cond/dropout/Shape/Switch:1dropout_3/cond/dropout/sub*
T0*(
_output_shapes
:����������
�
dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/truedivdropout_3/cond/dropout/Floor*(
_output_shapes
:����������*
T0
�
dropout_3/cond/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:����������:����������*
T0
�
dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
N**
_output_shapes
:����������: *
T0
r
!m2_hidden2_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"�   @   *
dtype0
d
m2_hidden2_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *�5�*
dtype0
d
m2_hidden2_1/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
)m2_hidden2_1/random_uniform/RandomUniformRandomUniform!m2_hidden2_1/random_uniform/shape*
_output_shapes
:	�@*
seed2з�*
seed�*
T0*
dtype0
�
m2_hidden2_1/random_uniform/subSubm2_hidden2_1/random_uniform/maxm2_hidden2_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden2_1/random_uniform/mulMul)m2_hidden2_1/random_uniform/RandomUniformm2_hidden2_1/random_uniform/sub*
T0*
_output_shapes
:	�@
�
m2_hidden2_1/random_uniformAddm2_hidden2_1/random_uniform/mulm2_hidden2_1/random_uniform/min*
T0*
_output_shapes
:	�@
�
m2_hidden2_1/kernelVarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *$
shared_namem2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel
w
4m2_hidden2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 
�
m2_hidden2_1/kernel/AssignAssignVariableOpm2_hidden2_1/kernelm2_hidden2_1/random_uniform*
dtype0*&
_class
loc:@m2_hidden2_1/kernel
�
'm2_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*
_output_shapes
:	�@*&
_class
loc:@m2_hidden2_1/kernel*
dtype0
_
m2_hidden2_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
�
m2_hidden2_1/biasVarHandleOp*
_output_shapes
: *"
shared_namem2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias*
	container *
shape:@*
dtype0
s
2m2_hidden2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 
�
m2_hidden2_1/bias/AssignAssignVariableOpm2_hidden2_1/biasm2_hidden2_1/Const*$
_class
loc:@m2_hidden2_1/bias*
dtype0
�
%m2_hidden2_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@*$
_class
loc:@m2_hidden2_1/bias
w
"m2_hidden2_1/MatMul/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*
dtype0*
_output_shapes
:	�@
�
m2_hidden2_1/MatMulMatMuldropout_3/cond/Merge"m2_hidden2_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:���������@*
transpose_a( 
q
#m2_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@
�
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������@
a
m2_hidden2_1/ReluRelum2_hidden2_1/BiasAdd*
T0*'
_output_shapes
:���������@
r
!m2_hidden3_1/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m2_hidden3_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�7��
d
m2_hidden3_1/random_uniform/maxConst*
valueB
 *�7�>*
dtype0*
_output_shapes
: 
�
)m2_hidden3_1/random_uniform/RandomUniformRandomUniform!m2_hidden3_1/random_uniform/shape*
seed�*
T0*
dtype0*
_output_shapes

:@*
seed2�Ԑ
�
m2_hidden3_1/random_uniform/subSubm2_hidden3_1/random_uniform/maxm2_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden3_1/random_uniform/mulMul)m2_hidden3_1/random_uniform/RandomUniformm2_hidden3_1/random_uniform/sub*
T0*
_output_shapes

:@
�
m2_hidden3_1/random_uniformAddm2_hidden3_1/random_uniform/mulm2_hidden3_1/random_uniform/min*
_output_shapes

:@*
T0
�
m2_hidden3_1/kernelVarHandleOp*$
shared_namem2_hidden3_1/kernel*&
_class
loc:@m2_hidden3_1/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
w
4m2_hidden3_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 
�
m2_hidden3_1/kernel/AssignAssignVariableOpm2_hidden3_1/kernelm2_hidden3_1/random_uniform*&
_class
loc:@m2_hidden3_1/kernel*
dtype0
�
'm2_hidden3_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3_1/kernel*&
_class
loc:@m2_hidden3_1/kernel*
dtype0*
_output_shapes

:@
_
m2_hidden3_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
�
m2_hidden3_1/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3_1/bias*$
_class
loc:@m2_hidden3_1/bias*
	container *
shape:
s
2m2_hidden3_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_1/bias*
_output_shapes
: 
�
m2_hidden3_1/bias/AssignAssignVariableOpm2_hidden3_1/biasm2_hidden3_1/Const*$
_class
loc:@m2_hidden3_1/bias*
dtype0
�
%m2_hidden3_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_1/bias*$
_class
loc:@m2_hidden3_1/bias*
dtype0*
_output_shapes
:
v
"m2_hidden3_1/MatMul/ReadVariableOpReadVariableOpm2_hidden3_1/kernel*
_output_shapes

:@*
dtype0
�
m2_hidden3_1/MatMulMatMulm2_hidden2_1/Relu"m2_hidden3_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
q
#m2_hidden3_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_1/bias*
dtype0*
_output_shapes
:
�
m2_hidden3_1/BiasAddBiasAddm2_hidden3_1/MatMul#m2_hidden3_1/BiasAdd/ReadVariableOp*'
_output_shapes
:���������*
T0*
data_formatNHWC
a
m2_hidden3_1/ReluRelum2_hidden3_1/BiasAdd*
T0*'
_output_shapes
:���������
q
 m2_output_1/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
m2_output_1/random_uniform/minConst*
valueB
 *����*
dtype0*
_output_shapes
: 
c
m2_output_1/random_uniform/maxConst*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
(m2_output_1/random_uniform/RandomUniformRandomUniform m2_output_1/random_uniform/shape*
seed�*
T0*
dtype0*
_output_shapes

:
*
seed2���
�
m2_output_1/random_uniform/subSubm2_output_1/random_uniform/maxm2_output_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_output_1/random_uniform/mulMul(m2_output_1/random_uniform/RandomUniformm2_output_1/random_uniform/sub*
T0*
_output_shapes

:

�
m2_output_1/random_uniformAddm2_output_1/random_uniform/mulm2_output_1/random_uniform/min*
T0*
_output_shapes

:

�
m2_output_1/kernelVarHandleOp*
_output_shapes
: *#
shared_namem2_output_1/kernel*%
_class
loc:@m2_output_1/kernel*
	container *
shape
:
*
dtype0
u
3m2_output_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/kernel*
_output_shapes
: 
�
m2_output_1/kernel/AssignAssignVariableOpm2_output_1/kernelm2_output_1/random_uniform*
dtype0*%
_class
loc:@m2_output_1/kernel
�
&m2_output_1/kernel/Read/ReadVariableOpReadVariableOpm2_output_1/kernel*%
_class
loc:@m2_output_1/kernel*
dtype0*
_output_shapes

:

^
m2_output_1/ConstConst*
dtype0*
_output_shapes
:
*
valueB
*    
�
m2_output_1/biasVarHandleOp*#
_class
loc:@m2_output_1/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *!
shared_namem2_output_1/bias
q
1m2_output_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/bias*
_output_shapes
: 
�
m2_output_1/bias/AssignAssignVariableOpm2_output_1/biasm2_output_1/Const*#
_class
loc:@m2_output_1/bias*
dtype0
�
$m2_output_1/bias/Read/ReadVariableOpReadVariableOpm2_output_1/bias*#
_class
loc:@m2_output_1/bias*
dtype0*
_output_shapes
:

t
!m2_output_1/MatMul/ReadVariableOpReadVariableOpm2_output_1/kernel*
dtype0*
_output_shapes

:

�
m2_output_1/MatMulMatMulm2_hidden3_1/Relu!m2_output_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
*
transpose_a( *
transpose_b( 
o
"m2_output_1/BiasAdd/ReadVariableOpReadVariableOpm2_output_1/bias*
dtype0*
_output_shapes
:

�
m2_output_1/BiasAddBiasAddm2_output_1/MatMul"m2_output_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������

e
m2_output_1/SoftmaxSoftmaxm2_output_1/BiasAdd*'
_output_shapes
:���������
*
T0
�
+Adam_2/iterations/Initializer/initial_valueConst*
value	B	 R *$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 
�
Adam_2/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: *"
shared_nameAdam_2/iterations*$
_class
loc:@Adam_2/iterations
s
2Adam_2/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
�
Adam_2/iterations/AssignAssignVariableOpAdam_2/iterations+Adam_2/iterations/Initializer/initial_value*$
_class
loc:@Adam_2/iterations*
dtype0	
�
%Adam_2/iterations/Read/ReadVariableOpReadVariableOpAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 
�
.Adam_2/learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *o�:*'
_class
loc:@Adam_2/learning_rate
�
Adam_2/learning_rateVarHandleOp*%
shared_nameAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
y
5Adam_2/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
�
Adam_2/learning_rate/AssignAssignVariableOpAdam_2/learning_rate.Adam_2/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_2/learning_rate*
dtype0
�
(Adam_2/learning_rate/Read/ReadVariableOpReadVariableOpAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
dtype0*
_output_shapes
: 
�
'Adam_2/beta_1/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *fff?* 
_class
loc:@Adam_2/beta_1*
dtype0
�
Adam_2/beta_1VarHandleOp*
shared_nameAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_2/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
�
Adam_2/beta_1/AssignAssignVariableOpAdam_2/beta_1'Adam_2/beta_1/Initializer/initial_value* 
_class
loc:@Adam_2/beta_1*
dtype0
�
!Adam_2/beta_1/Read/ReadVariableOpReadVariableOpAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 
�
'Adam_2/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w�?* 
_class
loc:@Adam_2/beta_2*
dtype0
�
Adam_2/beta_2VarHandleOp*
shared_nameAdam_2/beta_2* 
_class
loc:@Adam_2/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_2/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
�
Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value* 
_class
loc:@Adam_2/beta_2*
dtype0
�
!Adam_2/beta_2/Read/ReadVariableOpReadVariableOpAdam_2/beta_2* 
_class
loc:@Adam_2/beta_2*
dtype0*
_output_shapes
: 
�
&Adam_2/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 
�
Adam_2/decayVarHandleOp*
_class
loc:@Adam_2/decay*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_2/decay
i
-Adam_2/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/decay*
_output_shapes
: 
�
Adam_2/decay/AssignAssignVariableOpAdam_2/decay&Adam_2/decay/Initializer/initial_value*
_class
loc:@Adam_2/decay*
dtype0
�
 Adam_2/decay/Read/ReadVariableOpReadVariableOpAdam_2/decay*
_output_shapes
: *
_class
loc:@Adam_2/decay*
dtype0
�
m2_output_target_1Placeholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
u
m2_output_sample_weights_1Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
L
Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *    
�
total_2VarHandleOp*
shared_name	total_2*
_class
loc:@total_2*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_2*
_output_shapes
: 
]
total_2/AssignAssignVariableOptotal_2Const_6*
_class
loc:@total_2*
dtype0
w
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_class
loc:@total_2*
dtype0*
_output_shapes
: 
L
Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
count_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	count_2*
_class
loc:@count_2*
	container *
shape: 
_
(count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_2*
_output_shapes
: 
]
count_2/AssignAssignVariableOpcount_2Const_7*
_class
loc:@count_2*
dtype0
w
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_class
loc:@count_2*
dtype0*
_output_shapes
: 
�
metrics_2/accuracy/SqueezeSqueezem2_output_target_1*#
_output_shapes
:���������*
squeeze_dims

���������*
T0
n
#metrics_2/accuracy/ArgMax/dimensionConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
metrics_2/accuracy/ArgMaxArgMaxm2_output_1/Softmax#metrics_2/accuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
�
metrics_2/accuracy/CastCastmetrics_2/accuracy/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:���������*

DstT0
�
metrics_2/accuracy/EqualEqualmetrics_2/accuracy/Squeezemetrics_2/accuracy/Cast*#
_output_shapes
:���������*
T0
�
metrics_2/accuracy/Cast_1Castmetrics_2/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
b
metrics_2/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics_2/accuracy/SumSummetrics_2/accuracy/Cast_1metrics_2/accuracy/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
k
&metrics_2/accuracy/AssignAddVariableOpAssignAddVariableOptotal_2metrics_2/accuracy/Sum*
dtype0
�
!metrics_2/accuracy/ReadVariableOpReadVariableOptotal_2'^metrics_2/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_2/accuracy/SizeSizemetrics_2/accuracy/Cast_1*
out_type0*
_output_shapes
: *
T0
z
metrics_2/accuracy/Cast_2Castmetrics_2/accuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
p
(metrics_2/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_2metrics_2/accuracy/Cast_2*
dtype0
�
#metrics_2/accuracy/ReadVariableOp_1ReadVariableOpcount_2)^metrics_2/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
#metrics_2/accuracy/ReadVariableOp_2ReadVariableOptotal_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
)metrics_2/accuracy/truediv/ReadVariableOpReadVariableOpcount_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
_output_shapes
: *
dtype0
�
metrics_2/accuracy/truedivRealDiv#metrics_2/accuracy/ReadVariableOp_2)metrics_2/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_2/accuracy/IdentityIdentitymetrics_2/accuracy/truediv*
_output_shapes
: *
T0
�
;loss_2/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
�
;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
9loss_2/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
�
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:���������

�
Closs_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:���������

�
9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
=loss_2/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_1Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
:loss_2/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:���������*

DstT0	
�
Eloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogEloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������

�
_loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
�
}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":���������:���������
*
Tlabels0	
�
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_1}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
�
Iloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
�
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
Q
loss_2/mul/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�

loss_2/mulMulloss_2/mul/xKloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_output_shapes
: 
J
Const_8Const*
_output_shapes
: *
valueB *
dtype0
a
Mean_2Mean
loss_2/mulConst_8*
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
/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB *
_class
	loc:@Mean
�
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0*
_class
	loc:@Mean
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
)training/Adam/gradients/Mean_grad/Const_1Const*
valueB
 *  �?*
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
�
)training/Adam/gradients/Mean_grad/truedivRealDiv&training/Adam/gradients/Mean_grad/Tile)training/Adam/gradients/Mean_grad/Const_1*
_class
	loc:@Mean*
_output_shapes
: *
T0
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
dtype0
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
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weightsgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
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
T0*
out_type0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
_output_shapes
:
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
ReciprocalAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valuec^training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������
*
T0
�
Xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulbtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*'
_output_shapes
:���������
*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log
�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
valueB *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
_output_shapes
:*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
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
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:���������
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
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
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
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
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output/Softmax*
T0*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0
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
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

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
2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

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
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������*

Tidx0*
	keep_dims(
�
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������
*
T0
�
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������

�
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
_output_shapes
:
*
T0*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC
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
6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1MatMulm1_hidden3/Relu4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0*#
_class
loc:@m1_output/MatMul
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
transpose_b(*
T0*$
_class
loc:@m1_hidden3/MatMul*'
_output_shapes
:���������@*
transpose_a( 
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
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*"
_class
loc:@m1_hidden2/Relu*'
_output_shapes
:���������@*
T0
�
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad m1_hidden2/MatMul/ReadVariableOp*$
_class
loc:@m1_hidden2/MatMul*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0
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
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
_output_shapes	
:�*
T0*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC
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
7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden1/MatMul* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
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
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/m_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:
��
�
training/Adam/m_0_1VarHandleOp*
shape:
��*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
	container 
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
training/Adam/m_1_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
	container *
shape:�
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
'training/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes	
:�*&
_class
loc:@training/Adam/m_1_1
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
training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*

index_type0*
_output_shapes
:	�@*
T0
�
training/Adam/m_2_1VarHandleOp*
	container *
shape:	�@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1
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
training/Adam/m_3_1VarHandleOp*
_output_shapes
: *$
shared_nametraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
	container *
shape:@*
dtype0
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
training/Adam/m_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
�
training/Adam/m_4_1VarHandleOp*
shape
:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_4_1*&
_class
loc:@training/Adam/m_4_1*
	container 
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
training/Adam/m_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1*
	container 
w
4training/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
�
training/Adam/m_5_1/AssignAssignVariableOptraining/Adam/m_5_1training/Adam/m_5*
dtype0*&
_class
loc:@training/Adam/m_5_1
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
training/Adam/m_6_1VarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_6_1*&
_class
loc:@training/Adam/m_6_1
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
training/Adam/v_0_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
��
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
training/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*
_output_shapes
:	�@*
T0*

index_type0
�
training/Adam/v_2_1VarHandleOp*
shape:	�@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
	container 
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
training/Adam/v_5Const*
dtype0*
_output_shapes
:*
valueB*    
�
training/Adam/v_5_1VarHandleOp*&
_class
loc:@training/Adam/v_5_1*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_5_1
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
training/Adam/v_7_1VarHandleOp*&
_class
loc:@training/Adam/v_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_7_1
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
$training/Adam/vhat_0/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_0_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1*
	container *
shape:
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
$training/Adam/vhat_2/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
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
training/Adam/vhat_2_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1*
	container *
shape:
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
*training/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_3_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_3_1
n
$training/Adam/vhat_4/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
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
training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1*
	container 
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
$training/Adam/vhat_6/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
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
training/Adam/vhat_6_1VarHandleOp*'
shared_nametraining/Adam/vhat_6_1*)
_class
loc:@training/Adam/vhat_6_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
$training/Adam/vhat_7/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_7/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/vhat_7Fill$training/Adam/vhat_7/shape_as_tensortraining/Adam/vhat_7/Const*

index_type0*
_output_shapes
:*
T0
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
_output_shapes
:
��*
dtype0
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
_output_shapes
:
��*
dtype0
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
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes	
:�*
T0
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/sub_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	�@
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes
:	�@*
T0
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
_output_shapes
:	�@*
dtype0
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
training/Adam/sub_12/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 
�
training/Adam/Square_3Square;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
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
_output_shapes

:@*
dtype0
�
training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
_output_shapes

:@*
T0
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
_output_shapes

:@*
dtype0
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
training/Adam/sub_17/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes
:*
T0
[
training/Adam/Const_13Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
T0*
_output_shapes
:
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
training/Adam/Const_15Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_16Const*
_output_shapes
: *
valueB
 *  �*
dtype0
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
_output_shapes

:
*
dtype0
j
!training/Adam/AssignVariableOp_20AssignVariableOpm1_output/kerneltraining/Adam/sub_22*
dtype0
�
training/Adam/ReadVariableOp_57ReadVariableOpm1_output/kernel"^training/Adam/AssignVariableOp_20*
_output_shapes

:
*
dtype0
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
training/Adam/sub_23/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:

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
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
_output_shapes
:
*
T0
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

a
training/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 
c
training/VarIsInitializedOp_1VarIsInitializedOptraining/Adam/vhat_7_1*
_output_shapes
: 
`
training/VarIsInitializedOp_2VarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 
^
training/VarIsInitializedOp_3VarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 
T
training/VarIsInitializedOp_4VarIsInitializedOpcount_1*
_output_shapes
: 
^
training/VarIsInitializedOp_5VarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 
[
training/VarIsInitializedOp_6VarIsInitializedOpm2_output/bias*
_output_shapes
: 
`
training/VarIsInitializedOp_7VarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 
`
training/VarIsInitializedOp_8VarIsInitializedOptraining/Adam/m_6_1*
_output_shapes
: 
X
training/VarIsInitializedOp_9VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
a
training/VarIsInitializedOp_10VarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 
a
training/VarIsInitializedOp_11VarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 
d
training/VarIsInitializedOp_12VarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 
[
training/VarIsInitializedOp_13VarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
_
training/VarIsInitializedOp_14VarIsInitializedOpAdam_1/iterations*
_output_shapes
: 
U
training/VarIsInitializedOp_15VarIsInitializedOptotal_2*
_output_shapes
: 
_
training/VarIsInitializedOp_16VarIsInitializedOpm1_hidden3/kernel*
_output_shapes
: 
`
training/VarIsInitializedOp_17VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
b
training/VarIsInitializedOp_18VarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
^
training/VarIsInitializedOp_19VarIsInitializedOpm2_output_1/bias*
_output_shapes
: 
_
training/VarIsInitializedOp_20VarIsInitializedOpm2_hidden3/kernel*
_output_shapes
: 
_
training/VarIsInitializedOp_21VarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 
_
training/VarIsInitializedOp_22VarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
U
training/VarIsInitializedOp_23VarIsInitializedOpcount_2*
_output_shapes
: 
a
training/VarIsInitializedOp_24VarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
Y
training/VarIsInitializedOp_25VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
_
training/VarIsInitializedOp_26VarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 
Z
training/VarIsInitializedOp_27VarIsInitializedOpAdam_1/decay*
_output_shapes
: 
d
training/VarIsInitializedOp_28VarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 
S
training/VarIsInitializedOp_29VarIsInitializedOpcount*
_output_shapes
: 
a
training/VarIsInitializedOp_30VarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 
a
training/VarIsInitializedOp_31VarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 
]
training/VarIsInitializedOp_32VarIsInitializedOpm2_hidden3/bias*
_output_shapes
: 
S
training/VarIsInitializedOp_33VarIsInitializedOptotal*
_output_shapes
: 
]
training/VarIsInitializedOp_34VarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
^
training/VarIsInitializedOp_35VarIsInitializedOpm2_output/kernel*
_output_shapes
: 
[
training/VarIsInitializedOp_36VarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
b
training/VarIsInitializedOp_37VarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
a
training/VarIsInitializedOp_38VarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 
a
training/VarIsInitializedOp_39VarIsInitializedOptraining/Adam/v_7_1*
_output_shapes
: 
]
training/VarIsInitializedOp_40VarIsInitializedOpm1_hidden1/bias*
_output_shapes
: 
^
training/VarIsInitializedOp_41VarIsInitializedOpm1_output/kernel*
_output_shapes
: 
\
training/VarIsInitializedOp_42VarIsInitializedOpm1_output/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_43VarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 
]
training/VarIsInitializedOp_44VarIsInitializedOpm1_hidden2/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_45VarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 
a
training/VarIsInitializedOp_46VarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 
d
training/VarIsInitializedOp_47VarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 
]
training/VarIsInitializedOp_48VarIsInitializedOpm2_hidden2/bias*
_output_shapes
: 
[
training/VarIsInitializedOp_49VarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
a
training/VarIsInitializedOp_50VarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
]
training/VarIsInitializedOp_51VarIsInitializedOpm1_hidden3/bias*
_output_shapes
: 
Z
training/VarIsInitializedOp_52VarIsInitializedOpAdam_2/decay*
_output_shapes
: 
a
training/VarIsInitializedOp_53VarIsInitializedOptraining/Adam/v_6_1*
_output_shapes
: 
d
training/VarIsInitializedOp_54VarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 
U
training/VarIsInitializedOp_55VarIsInitializedOptotal_1*
_output_shapes
: 
d
training/VarIsInitializedOp_56VarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
a
training/VarIsInitializedOp_57VarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 
a
training/VarIsInitializedOp_58VarIsInitializedOptraining/Adam/m_7_1*
_output_shapes
: 
[
training/VarIsInitializedOp_59VarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
_
training/VarIsInitializedOp_60VarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 
d
training/VarIsInitializedOp_61VarIsInitializedOptraining/Adam/vhat_6_1*
_output_shapes
: 
X
training/VarIsInitializedOp_62VarIsInitializedOp
Adam/decay*
_output_shapes
: 
`
training/VarIsInitializedOp_63VarIsInitializedOpm2_output_1/kernel*
_output_shapes
: 
_
training/VarIsInitializedOp_64VarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_65VarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 
a
training/VarIsInitializedOp_66VarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 
]
training/VarIsInitializedOp_67VarIsInitializedOpAdam/iterations*
_output_shapes
: 
_
training/VarIsInitializedOp_68VarIsInitializedOpm2_hidden3_1/bias*
_output_shapes
: 
�
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/learning_rate/Assign^count/Assign^count_1/Assign^count_2/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden1_1/bias/Assign^m2_hidden1_1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden2_1/bias/Assign^m2_hidden2_1/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_hidden3_1/bias/Assign^m2_hidden3_1/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^m2_output_1/bias/Assign^m2_output_1/kernel/Assign^total/Assign^total_1/Assign^total_2/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
�
training/group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
{

group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1"�5��     [��-	�N����AJЫ
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
b'unknown'��

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
m1_hidden1/random_uniform/mulMul'm1_hidden1/random_uniform/RandomUniformm1_hidden1/random_uniform/sub* 
_output_shapes
:
��*
T0
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
m1_hidden1/ReluRelum1_hidden1/BiasAdd*
T0*(
_output_shapes
:����������
p
m1_hidden2/random_uniform/shapeConst*
_output_shapes
:*
valueB"�   @   *
dtype0
b
m1_hidden2/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
b
m1_hidden2/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�5>*
dtype0
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
m1_hidden2/random_uniformAddm1_hidden2/random_uniform/mulm1_hidden2/random_uniform/min*
_output_shapes
:	�@*
T0
�
m1_hidden2/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
	container *
shape:	�@
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
m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������@
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
'm1_hidden3/random_uniform/RandomUniformRandomUniformm1_hidden3/random_uniform/shape*
seed�*
T0*
dtype0*
seed2���*
_output_shapes

:@
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
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:���������
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
_output_shapes
:*
dtype0
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
dtype0*
seed2���*
_output_shapes

:
*
seed�*
T0
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
m1_output/kernel/AssignAssignVariableOpm1_output/kernelm1_output/random_uniform*
dtype0*#
_class
loc:@m1_output/kernel
�
$m1_output/kernel/Read/ReadVariableOpReadVariableOpm1_output/kernel*#
_class
loc:@m1_output/kernel*
dtype0*
_output_shapes

:

\
m1_output/ConstConst*
dtype0*
_output_shapes
:
*
valueB
*    
�
m1_output/biasVarHandleOp*!
_class
loc:@m1_output/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namem1_output/bias
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
m1_output/SoftmaxSoftmaxm1_output/BiasAdd*'
_output_shapes
:���������
*
T0
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
shape: *
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container 
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
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*
dtype0*%
_class
loc:@Adam/learning_rate
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
Adam/beta_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1
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
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 
�
Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2
�
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 
�
$Adam/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
_class
loc:@Adam/decay*
valueB
 *    
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
m1_output_targetPlaceholder*0
_output_shapes
:������������������*%
shape:������������������*
dtype0
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
_output_shapes
: *
shared_nametotal*
_class

loc:@total*
	container *
shape: *
dtype0
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
Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
countVarHandleOp*
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container *
shape: 
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
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
_class

loc:@count*
dtype0
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
metrics/accuracy/EqualEqualmetrics/accuracy/Squeezemetrics/accuracy/Cast*
T0*#
_output_shapes
:���������
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
metrics/accuracy/SizeSizemetrics/accuracy/Cast_1*
_output_shapes
: *
T0*
out_type0
v
metrics/accuracy/Cast_2Castmetrics/accuracy/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
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

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:���������
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
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":���������:���������

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
Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
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
Truncate( *

DstT0*
_output_shapes
: 
�
Iloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
: *

Tidx0*
	keep_dims( *
T0
t
dropout_1_inputPlaceholder*
shape:����������*
dtype0*(
_output_shapes
:����������
f
$dropout_1/keras_learning_phase/inputConst*
_output_shapes
: *
value	B
 Z *
dtype0

�
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 
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
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

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
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
T0*
_output_shapes
: 
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
seed2**(
_output_shapes
:����������*
seed�*
T0*
dtype0
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
T0*
N**
_output_shapes
:����������: 
p
m2_hidden1/random_uniform/shapeConst*
_output_shapes
:*
valueB"   �   *
dtype0
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
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
seed2���* 
_output_shapes
:
��*
seed�*
T0*
dtype0
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
m2_hidden1/BiasAddBiasAddm2_hidden1/MatMul!m2_hidden1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:����������*
T0
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
dtype0*
seed2���*
_output_shapes
:	�@
�
m2_hidden2/random_uniform/subSubm2_hidden2/random_uniform/maxm2_hidden2/random_uniform/min*
_output_shapes
: *
T0
�
m2_hidden2/random_uniform/mulMul'm2_hidden2/random_uniform/RandomUniformm2_hidden2/random_uniform/sub*
T0*
_output_shapes
:	�@
�
m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
T0*
_output_shapes
:	�@
�
m2_hidden2/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
	container *
shape:	�@
s
2m2_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 
�
m2_hidden2/kernel/AssignAssignVariableOpm2_hidden2/kernelm2_hidden2/random_uniform*
dtype0*$
_class
loc:@m2_hidden2/kernel
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
m2_hidden2/biasVarHandleOp* 
shared_namem2_hidden2/bias*"
_class
loc:@m2_hidden2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
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
#m2_hidden2/bias/Read/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@*"
_class
loc:@m2_hidden2/bias
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
m2_hidden3/random_uniform/maxConst*
valueB
 *�7�>*
dtype0*
_output_shapes
: 
�
'm2_hidden3/random_uniform/RandomUniformRandomUniformm2_hidden3/random_uniform/shape*
T0*
dtype0*
seed2���*
_output_shapes

:@*
seed�
�
m2_hidden3/random_uniform/subSubm2_hidden3/random_uniform/maxm2_hidden3/random_uniform/min*
T0*
_output_shapes
: 
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
m2_hidden3/kernelVarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3/kernel*$
_class
loc:@m2_hidden3/kernel
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
%m2_hidden3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3/kernel*
_output_shapes

:@*$
_class
loc:@m2_hidden3/kernel*
dtype0
]
m2_hidden3/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
�
m2_hidden3/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: * 
shared_namem2_hidden3/bias*"
_class
loc:@m2_hidden3/bias*
	container 
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
_output_shapes

:@*
dtype0
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
m2_output/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *����
a
m2_output/random_uniform/maxConst*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
T0*
dtype0*
seed2��$*
_output_shapes

:
*
seed�
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
m2_output/random_uniformAddm2_output/random_uniform/mulm2_output/random_uniform/min*
T0*
_output_shapes

:

�
m2_output/kernelVarHandleOp*#
_class
loc:@m2_output/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: *!
shared_namem2_output/kernel
q
1m2_output/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output/kernel*
_output_shapes
: 
�
m2_output/kernel/AssignAssignVariableOpm2_output/kernelm2_output/random_uniform*
dtype0*#
_class
loc:@m2_output/kernel
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
m2_output/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namem2_output/bias*!
_class
loc:@m2_output/bias*
	container *
shape:

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
m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������
*
T0
a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*'
_output_shapes
:���������
*
T0
�
+Adam_1/iterations/Initializer/initial_valueConst*$
_class
loc:@Adam_1/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Adam_1/iterationsVarHandleOp*"
shared_nameAdam_1/iterations*$
_class
loc:@Adam_1/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
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
.Adam_1/learning_rate/Initializer/initial_valueConst*'
_class
loc:@Adam_1/learning_rate*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
Adam_1/learning_rateVarHandleOp*%
shared_nameAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
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
shared_nameAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_1/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
�
Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value* 
_class
loc:@Adam_1/beta_1*
dtype0
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
!Adam_1/beta_2/Read/ReadVariableOpReadVariableOpAdam_1/beta_2*
_output_shapes
: * 
_class
loc:@Adam_1/beta_2*
dtype0
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
m2_output_targetPlaceholder*
dtype0*0
_output_shapes
:������������������*%
shape:������������������
s
m2_output_sample_weightsPlaceholder*#
_output_shapes
:���������*
shape:���������*
dtype0
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
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
L
Const_4Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
metrics_1/accuracy/SqueezeSqueezem2_output_target*
T0*#
_output_shapes
:���������*
squeeze_dims

���������
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

DstT0*#
_output_shapes
:���������*

SrcT0	*
Truncate( 
�
metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*
T0*#
_output_shapes
:���������
�
metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*
Truncate( *

DstT0*#
_output_shapes
:���������*

SrcT0

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
metrics_1/accuracy/SizeSizemetrics_1/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_1/accuracy/Cast_2Castmetrics_1/accuracy/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
p
(metrics_1/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics_1/accuracy/Cast_2*
dtype0
�
#metrics_1/accuracy/ReadVariableOp_1ReadVariableOpcount_1)^metrics_1/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
#metrics_1/accuracy/ReadVariableOp_2ReadVariableOptotal_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
_output_shapes
: *
dtype0
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
metrics_1/accuracy/IdentityIdentitymetrics_1/accuracy/truediv*
_output_shapes
: *
T0
�
;loss_1/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *���3
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
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:���������

�
Closs_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:���������

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
?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogEloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
Tshape0*'
_output_shapes
:���������
*
T0
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
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
�
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
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
loss_1/mulConst_5*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
t
dropout_2_inputPlaceholder*
dtype0*(
_output_shapes
:����������*
shape:����������
�
dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *��L>*
dtype0
�
dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
�
#dropout_2/cond/dropout/Shape/SwitchSwitchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:����������:����������
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
T0*
_output_shapes
: 
�
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
T0*
dtype0*
seed2**(
_output_shapes
:����������*
seed�
�
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
�
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:����������
�
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*(
_output_shapes
:����������*
T0
�
dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*(
_output_shapes
:����������*
T0
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*(
_output_shapes
:����������*
T0
�
dropout_2/cond/dropout/truedivRealDiv%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/sub*
T0*(
_output_shapes
:����������
�
dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/truedivdropout_2/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
dropout_2/cond/Switch_1Switchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:����������:����������
�
dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
T0*
N**
_output_shapes
:����������: 
r
!m2_hidden1_1/random_uniform/shapeConst*
valueB"   �   *
dtype0*
_output_shapes
:
d
m2_hidden1_1/random_uniform/minConst*
valueB
 *�\1�*
dtype0*
_output_shapes
: 
d
m2_hidden1_1/random_uniform/maxConst*
valueB
 *�\1=*
dtype0*
_output_shapes
: 
�
)m2_hidden1_1/random_uniform/RandomUniformRandomUniform!m2_hidden1_1/random_uniform/shape*
dtype0*
seed2���* 
_output_shapes
:
��*
seed�*
T0
�
m2_hidden1_1/random_uniform/subSubm2_hidden1_1/random_uniform/maxm2_hidden1_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden1_1/random_uniform/mulMul)m2_hidden1_1/random_uniform/RandomUniformm2_hidden1_1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
m2_hidden1_1/random_uniformAddm2_hidden1_1/random_uniform/mulm2_hidden1_1/random_uniform/min*
T0* 
_output_shapes
:
��
�
m2_hidden1_1/kernelVarHandleOp*
shape:
��*
dtype0*
_output_shapes
: *$
shared_namem2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
	container 
w
4m2_hidden1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 
�
m2_hidden1_1/kernel/AssignAssignVariableOpm2_hidden1_1/kernelm2_hidden1_1/random_uniform*
dtype0*&
_class
loc:@m2_hidden1_1/kernel
�
'm2_hidden1_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
dtype0* 
_output_shapes
:
��
a
m2_hidden1_1/ConstConst*
valueB�*    *
dtype0*
_output_shapes	
:�
�
m2_hidden1_1/biasVarHandleOp*
_output_shapes
: *"
shared_namem2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
	container *
shape:�*
dtype0
s
2m2_hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 
�
m2_hidden1_1/bias/AssignAssignVariableOpm2_hidden1_1/biasm2_hidden1_1/Const*$
_class
loc:@m2_hidden1_1/bias*
dtype0
�
%m2_hidden1_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
dtype0*
_output_shapes	
:�
x
"m2_hidden1_1/MatMul/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*
dtype0* 
_output_shapes
:
��
�
m2_hidden1_1/MatMulMatMuldropout_2/cond/Merge"m2_hidden1_1/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:����������*
transpose_b( 
r
#m2_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_1/bias*
dtype0*
_output_shapes	
:�
�
m2_hidden1_1/BiasAddBiasAddm2_hidden1_1/MatMul#m2_hidden1_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:����������
b
m2_hidden1_1/ReluRelum2_hidden1_1/BiasAdd*
T0*(
_output_shapes
:����������
�
dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
_output_shapes
: *
T0

c
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_3/cond/dropout/rateConst^dropout_3/cond/switch_t*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
dropout_3/cond/dropout/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
�
#dropout_3/cond/dropout/Shape/SwitchSwitchm2_hidden1_1/Reludropout_3/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:����������:����������
{
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
T0*
_output_shapes
: 
�
)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
seed�*
T0*
dtype0*
seed2**(
_output_shapes
:����������
�
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:����������
�
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*(
_output_shapes
:����������*
T0
�
dropout_3/cond/dropout/addAdddropout_3/cond/dropout/sub%dropout_3/cond/dropout/random_uniform*(
_output_shapes
:����������*
T0
t
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*(
_output_shapes
:����������
�
dropout_3/cond/dropout/truedivRealDiv%dropout_3/cond/dropout/Shape/Switch:1dropout_3/cond/dropout/sub*(
_output_shapes
:����������*
T0
�
dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/truedivdropout_3/cond/dropout/Floor*(
_output_shapes
:����������*
T0
�
dropout_3/cond/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:����������:����������
�
dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
N**
_output_shapes
:����������: *
T0
r
!m2_hidden2_1/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
d
m2_hidden2_1/random_uniform/minConst*
valueB
 *�5�*
dtype0*
_output_shapes
: 
d
m2_hidden2_1/random_uniform/maxConst*
valueB
 *�5>*
dtype0*
_output_shapes
: 
�
)m2_hidden2_1/random_uniform/RandomUniformRandomUniform!m2_hidden2_1/random_uniform/shape*
dtype0*
seed2з�*
_output_shapes
:	�@*
seed�*
T0
�
m2_hidden2_1/random_uniform/subSubm2_hidden2_1/random_uniform/maxm2_hidden2_1/random_uniform/min*
_output_shapes
: *
T0
�
m2_hidden2_1/random_uniform/mulMul)m2_hidden2_1/random_uniform/RandomUniformm2_hidden2_1/random_uniform/sub*
T0*
_output_shapes
:	�@
�
m2_hidden2_1/random_uniformAddm2_hidden2_1/random_uniform/mulm2_hidden2_1/random_uniform/min*
T0*
_output_shapes
:	�@
�
m2_hidden2_1/kernelVarHandleOp*$
shared_namem2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel*
	container *
shape:	�@*
dtype0*
_output_shapes
: 
w
4m2_hidden2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 
�
m2_hidden2_1/kernel/AssignAssignVariableOpm2_hidden2_1/kernelm2_hidden2_1/random_uniform*&
_class
loc:@m2_hidden2_1/kernel*
dtype0
�
'm2_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel*
dtype0*
_output_shapes
:	�@
_
m2_hidden2_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
�
m2_hidden2_1/biasVarHandleOp*$
_class
loc:@m2_hidden2_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_1/bias
s
2m2_hidden2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 
�
m2_hidden2_1/bias/AssignAssignVariableOpm2_hidden2_1/biasm2_hidden2_1/Const*$
_class
loc:@m2_hidden2_1/bias*
dtype0
�
%m2_hidden2_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias*
dtype0*
_output_shapes
:@
w
"m2_hidden2_1/MatMul/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*
dtype0*
_output_shapes
:	�@
�
m2_hidden2_1/MatMulMatMuldropout_3/cond/Merge"m2_hidden2_1/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������@*
transpose_b( 
q
#m2_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@
�
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������@
a
m2_hidden2_1/ReluRelum2_hidden2_1/BiasAdd*'
_output_shapes
:���������@*
T0
r
!m2_hidden3_1/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m2_hidden3_1/random_uniform/minConst*
valueB
 *�7��*
dtype0*
_output_shapes
: 
d
m2_hidden3_1/random_uniform/maxConst*
valueB
 *�7�>*
dtype0*
_output_shapes
: 
�
)m2_hidden3_1/random_uniform/RandomUniformRandomUniform!m2_hidden3_1/random_uniform/shape*
seed2�Ԑ*
_output_shapes

:@*
seed�*
T0*
dtype0
�
m2_hidden3_1/random_uniform/subSubm2_hidden3_1/random_uniform/maxm2_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden3_1/random_uniform/mulMul)m2_hidden3_1/random_uniform/RandomUniformm2_hidden3_1/random_uniform/sub*
T0*
_output_shapes

:@
�
m2_hidden3_1/random_uniformAddm2_hidden3_1/random_uniform/mulm2_hidden3_1/random_uniform/min*
T0*
_output_shapes

:@
�
m2_hidden3_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden3_1/kernel*&
_class
loc:@m2_hidden3_1/kernel*
	container *
shape
:@
w
4m2_hidden3_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 
�
m2_hidden3_1/kernel/AssignAssignVariableOpm2_hidden3_1/kernelm2_hidden3_1/random_uniform*&
_class
loc:@m2_hidden3_1/kernel*
dtype0
�
'm2_hidden3_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3_1/kernel*&
_class
loc:@m2_hidden3_1/kernel*
dtype0*
_output_shapes

:@
_
m2_hidden3_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
�
m2_hidden3_1/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3_1/bias*$
_class
loc:@m2_hidden3_1/bias
s
2m2_hidden3_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_1/bias*
_output_shapes
: 
�
m2_hidden3_1/bias/AssignAssignVariableOpm2_hidden3_1/biasm2_hidden3_1/Const*$
_class
loc:@m2_hidden3_1/bias*
dtype0
�
%m2_hidden3_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_1/bias*$
_class
loc:@m2_hidden3_1/bias*
dtype0*
_output_shapes
:
v
"m2_hidden3_1/MatMul/ReadVariableOpReadVariableOpm2_hidden3_1/kernel*
dtype0*
_output_shapes

:@
�
m2_hidden3_1/MatMulMatMulm2_hidden2_1/Relu"m2_hidden3_1/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
q
#m2_hidden3_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_1/bias*
dtype0*
_output_shapes
:
�
m2_hidden3_1/BiasAddBiasAddm2_hidden3_1/MatMul#m2_hidden3_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������
a
m2_hidden3_1/ReluRelum2_hidden3_1/BiasAdd*
T0*'
_output_shapes
:���������
q
 m2_output_1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
c
m2_output_1/random_uniform/minConst*
valueB
 *����*
dtype0*
_output_shapes
: 
c
m2_output_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *���>
�
(m2_output_1/random_uniform/RandomUniformRandomUniform m2_output_1/random_uniform/shape*
seed�*
T0*
dtype0*
seed2���*
_output_shapes

:

�
m2_output_1/random_uniform/subSubm2_output_1/random_uniform/maxm2_output_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_output_1/random_uniform/mulMul(m2_output_1/random_uniform/RandomUniformm2_output_1/random_uniform/sub*
_output_shapes

:
*
T0
�
m2_output_1/random_uniformAddm2_output_1/random_uniform/mulm2_output_1/random_uniform/min*
T0*
_output_shapes

:

�
m2_output_1/kernelVarHandleOp*%
_class
loc:@m2_output_1/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: *#
shared_namem2_output_1/kernel
u
3m2_output_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/kernel*
_output_shapes
: 
�
m2_output_1/kernel/AssignAssignVariableOpm2_output_1/kernelm2_output_1/random_uniform*%
_class
loc:@m2_output_1/kernel*
dtype0
�
&m2_output_1/kernel/Read/ReadVariableOpReadVariableOpm2_output_1/kernel*
dtype0*
_output_shapes

:
*%
_class
loc:@m2_output_1/kernel
^
m2_output_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m2_output_1/biasVarHandleOp*!
shared_namem2_output_1/bias*#
_class
loc:@m2_output_1/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
q
1m2_output_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/bias*
_output_shapes
: 
�
m2_output_1/bias/AssignAssignVariableOpm2_output_1/biasm2_output_1/Const*#
_class
loc:@m2_output_1/bias*
dtype0
�
$m2_output_1/bias/Read/ReadVariableOpReadVariableOpm2_output_1/bias*
_output_shapes
:
*#
_class
loc:@m2_output_1/bias*
dtype0
t
!m2_output_1/MatMul/ReadVariableOpReadVariableOpm2_output_1/kernel*
dtype0*
_output_shapes

:

�
m2_output_1/MatMulMatMulm2_hidden3_1/Relu!m2_output_1/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
o
"m2_output_1/BiasAdd/ReadVariableOpReadVariableOpm2_output_1/bias*
dtype0*
_output_shapes
:

�
m2_output_1/BiasAddBiasAddm2_output_1/MatMul"m2_output_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������
*
T0
e
m2_output_1/SoftmaxSoftmaxm2_output_1/BiasAdd*
T0*'
_output_shapes
:���������

�
+Adam_2/iterations/Initializer/initial_valueConst*
_output_shapes
: *$
_class
loc:@Adam_2/iterations*
value	B	 R *
dtype0	
�
Adam_2/iterationsVarHandleOp*"
shared_nameAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
s
2Adam_2/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
�
Adam_2/iterations/AssignAssignVariableOpAdam_2/iterations+Adam_2/iterations/Initializer/initial_value*$
_class
loc:@Adam_2/iterations*
dtype0	
�
%Adam_2/iterations/Read/ReadVariableOpReadVariableOpAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 
�
.Adam_2/learning_rate/Initializer/initial_valueConst*'
_class
loc:@Adam_2/learning_rate*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
Adam_2/learning_rateVarHandleOp*%
shared_nameAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
y
5Adam_2/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
�
Adam_2/learning_rate/AssignAssignVariableOpAdam_2/learning_rate.Adam_2/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_2/learning_rate*
dtype0
�
(Adam_2/learning_rate/Read/ReadVariableOpReadVariableOpAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
dtype0*
_output_shapes
: 
�
'Adam_2/beta_1/Initializer/initial_valueConst* 
_class
loc:@Adam_2/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
Adam_2/beta_1VarHandleOp*
shared_nameAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_2/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
�
Adam_2/beta_1/AssignAssignVariableOpAdam_2/beta_1'Adam_2/beta_1/Initializer/initial_value* 
_class
loc:@Adam_2/beta_1*
dtype0
�
!Adam_2/beta_1/Read/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_2/beta_1
�
'Adam_2/beta_2/Initializer/initial_valueConst*
_output_shapes
: * 
_class
loc:@Adam_2/beta_2*
valueB
 *w�?*
dtype0
�
Adam_2/beta_2VarHandleOp* 
_class
loc:@Adam_2/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_2/beta_2
k
.Adam_2/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
�
Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value* 
_class
loc:@Adam_2/beta_2*
dtype0
�
!Adam_2/beta_2/Read/ReadVariableOpReadVariableOpAdam_2/beta_2* 
_class
loc:@Adam_2/beta_2*
dtype0*
_output_shapes
: 
�
&Adam_2/decay/Initializer/initial_valueConst*
_class
loc:@Adam_2/decay*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Adam_2/decayVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_2/decay*
_class
loc:@Adam_2/decay*
	container 
i
-Adam_2/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/decay*
_output_shapes
: 
�
Adam_2/decay/AssignAssignVariableOpAdam_2/decay&Adam_2/decay/Initializer/initial_value*
_class
loc:@Adam_2/decay*
dtype0
�
 Adam_2/decay/Read/ReadVariableOpReadVariableOpAdam_2/decay*
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 
�
m2_output_target_1Placeholder*0
_output_shapes
:������������������*%
shape:������������������*
dtype0
u
m2_output_sample_weights_1Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
L
Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
total_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	total_2*
_class
loc:@total_2*
	container *
shape: 
_
(total_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_2*
_output_shapes
: 
]
total_2/AssignAssignVariableOptotal_2Const_6*
_class
loc:@total_2*
dtype0
w
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_class
loc:@total_2*
dtype0*
_output_shapes
: 
L
Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
count_2VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	count_2*
_class
loc:@count_2*
	container 
_
(count_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_2*
_output_shapes
: 
]
count_2/AssignAssignVariableOpcount_2Const_7*
dtype0*
_class
loc:@count_2
w
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_class
loc:@count_2*
dtype0*
_output_shapes
: 
�
metrics_2/accuracy/SqueezeSqueezem2_output_target_1*
T0*#
_output_shapes
:���������*
squeeze_dims

���������
n
#metrics_2/accuracy/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
metrics_2/accuracy/ArgMaxArgMaxm2_output_1/Softmax#metrics_2/accuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
�
metrics_2/accuracy/CastCastmetrics_2/accuracy/ArgMax*

DstT0*#
_output_shapes
:���������*

SrcT0	*
Truncate( 
�
metrics_2/accuracy/EqualEqualmetrics_2/accuracy/Squeezemetrics_2/accuracy/Cast*
T0*#
_output_shapes
:���������
�
metrics_2/accuracy/Cast_1Castmetrics_2/accuracy/Equal*

DstT0*#
_output_shapes
:���������*

SrcT0
*
Truncate( 
b
metrics_2/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics_2/accuracy/SumSummetrics_2/accuracy/Cast_1metrics_2/accuracy/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
k
&metrics_2/accuracy/AssignAddVariableOpAssignAddVariableOptotal_2metrics_2/accuracy/Sum*
dtype0
�
!metrics_2/accuracy/ReadVariableOpReadVariableOptotal_2'^metrics_2/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_2/accuracy/SizeSizemetrics_2/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_2/accuracy/Cast_2Castmetrics_2/accuracy/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
p
(metrics_2/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_2metrics_2/accuracy/Cast_2*
dtype0
�
#metrics_2/accuracy/ReadVariableOp_1ReadVariableOpcount_2)^metrics_2/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
�
#metrics_2/accuracy/ReadVariableOp_2ReadVariableOptotal_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
)metrics_2/accuracy/truediv/ReadVariableOpReadVariableOpcount_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
�
metrics_2/accuracy/truedivRealDiv#metrics_2/accuracy/ReadVariableOp_2)metrics_2/accuracy/truediv/ReadVariableOp*
_output_shapes
: *
T0
d
metrics_2/accuracy/IdentityIdentitymetrics_2/accuracy/truediv*
_output_shapes
: *
T0
�
;loss_2/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
�
;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
9loss_2/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
�
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0
�
Closs_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:���������

�
9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:���������

�
Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
=loss_2/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_1Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
:loss_2/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:���������
�
Eloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogEloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������

�
_loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
�
}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
Tlabels0	*6
_output_shapes$
":���������:���������
*
T0
�
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_1}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:���������*
T0
�
Iloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
�
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
�
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
Q
loss_2/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�

loss_2/mulMulloss_2/mul/xKloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_output_shapes
: 
J
Const_8Const*
dtype0*
_output_shapes
: *
valueB 
a
Mean_2Mean
loss_2/mulConst_8*
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
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0*
_output_shapes
:
�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:*
T0
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
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
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
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
ExpandDimsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������
�
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������

�
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0*
_output_shapes
:
�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0*'
_output_shapes
:���������

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
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    
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
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*'
_output_shapes
:���������

�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
_output_shapes
:*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0
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
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
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
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������
�
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*'
_output_shapes
:���������
*
T0*$
_class
loc:@m1_output/Softmax
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
transpose_a( *'
_output_shapes
:���������*
transpose_b(*
T0*#
_class
loc:@m1_output/MatMul
�
6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1MatMulm1_hidden3/Relu4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
transpose_a(*
_output_shapes

:
*
transpose_b( *
T0*#
_class
loc:@m1_output/MatMul
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
7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1MatMulm1_hidden2/Relu5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden3/MatMul*
transpose_a(*
_output_shapes

:@*
transpose_b( 
�
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*
T0*"
_class
loc:@m1_hidden2/Relu*'
_output_shapes
:���������@
�
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*%
_class
loc:@m1_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@*
T0
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
5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulm1_hidden1/Relu*
T0*"
_class
loc:@m1_hidden1/Relu*(
_output_shapes
:����������
�
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:�*
T0*%
_class
loc:@m1_hidden1/BiasAdd
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
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
_output_shapes
: *
dtype0	
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
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
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
_output_shapes
: *
T0
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
training/Adam/ReadVariableOp_1ReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
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
training/Adam/m_1_1VarHandleOp*
shape:�*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
	container 
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
dtype0*
_output_shapes
:	�@*&
_class
loc:@training/Adam/m_2_1
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
training/Adam/m_3_1/AssignAssignVariableOptraining/Adam/m_3_1training/Adam/m_3*
dtype0*&
_class
loc:@training/Adam/m_3_1
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
'training/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_4_1*
_output_shapes

:@*&
_class
loc:@training/Adam/m_4_1*
dtype0
^
training/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/m_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_5_1*&
_class
loc:@training/Adam/m_5_1*
	container 
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
training/Adam/m_7_1VarHandleOp*$
shared_nametraining/Adam/m_7_1*&
_class
loc:@training/Adam/m_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const* 
_output_shapes
:
��*
T0*

index_type0
�
training/Adam/v_0_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
��
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
training/Adam/v_1Const*
_output_shapes	
:�*
valueB�*    *
dtype0
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
training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training/Adam/v_2_1VarHandleOp*&
_class
loc:@training/Adam/v_2_1*
	container *
shape:	�@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_2_1
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
training/Adam/v_3_1VarHandleOp*$
shared_nametraining/Adam/v_3_1*&
_class
loc:@training/Adam/v_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: 
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
'training/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_4_1*
_output_shapes

:@*&
_class
loc:@training/Adam/v_4_1*
dtype0
^
training/Adam/v_5Const*
valueB*    *
dtype0*
_output_shapes
:
�
training/Adam/v_5_1VarHandleOp*
_output_shapes
: *$
shared_nametraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1*
	container *
shape:*
dtype0
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
training/Adam/v_6_1VarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_6_1*&
_class
loc:@training/Adam/v_6_1*
	container 
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
training/Adam/v_7Const*
dtype0*
_output_shapes
:
*
valueB
*    
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
training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_0_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_0_1*)
_class
loc:@training/Adam/vhat_0_1
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
training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_2_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1
}
7training/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
�
training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*
dtype0*)
_class
loc:@training/Adam/vhat_2_1
�
*training/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_2_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_2_1
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
training/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_4_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1
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
training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_5_1VarHandleOp*'
shared_nametraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
$training/Adam/vhat_6/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_6/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_6_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_6_1*)
_class
loc:@training/Adam/vhat_6_1*
	container *
shape:
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
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1*
	container 
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
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0* 
_output_shapes
:
��
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
%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4* 
_output_shapes
:
��*
T0
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
training/Adam/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
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
training/Adam/sub_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 
�
training/Adam/Square_1Square;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
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
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
_output_shapes	
:�*
T0
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
_output_shapes
:	�@*
dtype0
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
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
_output_shapes
: *
T0
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
training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:	�@
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
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
_output_shapes
: *
T0
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
training/Adam/Const_7Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes
:	�@*
T0
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes
:	�@*
T0
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
_output_shapes
:	�@*
dtype0
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
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
_output_shapes
: *
T0
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
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:@
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
training/Adam/Const_10Const*
_output_shapes
: *
valueB
 *  �*
dtype0
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
training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/v_3_1"^training/Adam/AssignVariableOp_10*
_output_shapes
:@*
dtype0
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
training/Adam/mul_22Multraining/Adam/sub_147training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
_output_shapes

:@*
T0
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/sub_15/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:@
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
_output_shapes

:@*
T0
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:@
[
training/Adam/Const_11Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training/Adam/sub_18/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
:
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
training/Adam/ReadVariableOp_49ReadVariableOpm1_hidden3/bias"^training/Adam/AssignVariableOp_17*
_output_shapes
:*
dtype0
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
training/Adam/sub_20/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
_output_shapes
: *
T0
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
training/Adam/Const_16Const*
dtype0*
_output_shapes
: *
valueB
 *  �
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
training/Adam/sub_23/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/ReadVariableOp_65ReadVariableOpm1_output/bias"^training/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

a
training/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_0_1*
_output_shapes
: 
c
training/VarIsInitializedOp_1VarIsInitializedOptraining/Adam/vhat_7_1*
_output_shapes
: 
`
training/VarIsInitializedOp_2VarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 
^
training/VarIsInitializedOp_3VarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 
T
training/VarIsInitializedOp_4VarIsInitializedOpcount_1*
_output_shapes
: 
^
training/VarIsInitializedOp_5VarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 
[
training/VarIsInitializedOp_6VarIsInitializedOpm2_output/bias*
_output_shapes
: 
`
training/VarIsInitializedOp_7VarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 
`
training/VarIsInitializedOp_8VarIsInitializedOptraining/Adam/m_6_1*
_output_shapes
: 
X
training/VarIsInitializedOp_9VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
a
training/VarIsInitializedOp_10VarIsInitializedOptraining/Adam/v_3_1*
_output_shapes
: 
a
training/VarIsInitializedOp_11VarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 
d
training/VarIsInitializedOp_12VarIsInitializedOptraining/Adam/vhat_3_1*
_output_shapes
: 
[
training/VarIsInitializedOp_13VarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 
_
training/VarIsInitializedOp_14VarIsInitializedOpAdam_1/iterations*
_output_shapes
: 
U
training/VarIsInitializedOp_15VarIsInitializedOptotal_2*
_output_shapes
: 
_
training/VarIsInitializedOp_16VarIsInitializedOpm1_hidden3/kernel*
_output_shapes
: 
`
training/VarIsInitializedOp_17VarIsInitializedOpAdam/learning_rate*
_output_shapes
: 
b
training/VarIsInitializedOp_18VarIsInitializedOpAdam_1/learning_rate*
_output_shapes
: 
^
training/VarIsInitializedOp_19VarIsInitializedOpm2_output_1/bias*
_output_shapes
: 
_
training/VarIsInitializedOp_20VarIsInitializedOpm2_hidden3/kernel*
_output_shapes
: 
_
training/VarIsInitializedOp_21VarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 
_
training/VarIsInitializedOp_22VarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
U
training/VarIsInitializedOp_23VarIsInitializedOpcount_2*
_output_shapes
: 
a
training/VarIsInitializedOp_24VarIsInitializedOptraining/Adam/m_5_1*
_output_shapes
: 
Y
training/VarIsInitializedOp_25VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
_
training/VarIsInitializedOp_26VarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 
Z
training/VarIsInitializedOp_27VarIsInitializedOpAdam_1/decay*
_output_shapes
: 
d
training/VarIsInitializedOp_28VarIsInitializedOptraining/Adam/vhat_1_1*
_output_shapes
: 
S
training/VarIsInitializedOp_29VarIsInitializedOpcount*
_output_shapes
: 
a
training/VarIsInitializedOp_30VarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 
a
training/VarIsInitializedOp_31VarIsInitializedOptraining/Adam/v_4_1*
_output_shapes
: 
]
training/VarIsInitializedOp_32VarIsInitializedOpm2_hidden3/bias*
_output_shapes
: 
S
training/VarIsInitializedOp_33VarIsInitializedOptotal*
_output_shapes
: 
]
training/VarIsInitializedOp_34VarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
^
training/VarIsInitializedOp_35VarIsInitializedOpm2_output/kernel*
_output_shapes
: 
[
training/VarIsInitializedOp_36VarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
b
training/VarIsInitializedOp_37VarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
a
training/VarIsInitializedOp_38VarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 
a
training/VarIsInitializedOp_39VarIsInitializedOptraining/Adam/v_7_1*
_output_shapes
: 
]
training/VarIsInitializedOp_40VarIsInitializedOpm1_hidden1/bias*
_output_shapes
: 
^
training/VarIsInitializedOp_41VarIsInitializedOpm1_output/kernel*
_output_shapes
: 
\
training/VarIsInitializedOp_42VarIsInitializedOpm1_output/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_43VarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 
]
training/VarIsInitializedOp_44VarIsInitializedOpm1_hidden2/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_45VarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 
a
training/VarIsInitializedOp_46VarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 
d
training/VarIsInitializedOp_47VarIsInitializedOptraining/Adam/vhat_4_1*
_output_shapes
: 
]
training/VarIsInitializedOp_48VarIsInitializedOpm2_hidden2/bias*
_output_shapes
: 
[
training/VarIsInitializedOp_49VarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
a
training/VarIsInitializedOp_50VarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
]
training/VarIsInitializedOp_51VarIsInitializedOpm1_hidden3/bias*
_output_shapes
: 
Z
training/VarIsInitializedOp_52VarIsInitializedOpAdam_2/decay*
_output_shapes
: 
a
training/VarIsInitializedOp_53VarIsInitializedOptraining/Adam/v_6_1*
_output_shapes
: 
d
training/VarIsInitializedOp_54VarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 
U
training/VarIsInitializedOp_55VarIsInitializedOptotal_1*
_output_shapes
: 
d
training/VarIsInitializedOp_56VarIsInitializedOptraining/Adam/vhat_2_1*
_output_shapes
: 
a
training/VarIsInitializedOp_57VarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 
a
training/VarIsInitializedOp_58VarIsInitializedOptraining/Adam/m_7_1*
_output_shapes
: 
[
training/VarIsInitializedOp_59VarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 
_
training/VarIsInitializedOp_60VarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 
d
training/VarIsInitializedOp_61VarIsInitializedOptraining/Adam/vhat_6_1*
_output_shapes
: 
X
training/VarIsInitializedOp_62VarIsInitializedOp
Adam/decay*
_output_shapes
: 
`
training/VarIsInitializedOp_63VarIsInitializedOpm2_output_1/kernel*
_output_shapes
: 
_
training/VarIsInitializedOp_64VarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 
a
training/VarIsInitializedOp_65VarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 
a
training/VarIsInitializedOp_66VarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 
]
training/VarIsInitializedOp_67VarIsInitializedOpAdam/iterations*
_output_shapes
: 
_
training/VarIsInitializedOp_68VarIsInitializedOpm2_hidden3_1/bias*
_output_shapes
: 
�
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/learning_rate/Assign^count/Assign^count_1/Assign^count_2/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden1_1/bias/Assign^m2_hidden1_1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden2_1/bias/Assign^m2_hidden2_1/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_hidden3_1/bias/Assign^m2_hidden3_1/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^m2_output_1/bias/Assign^m2_output_1/kernel/Assign^total/Assign^total_1/Assign^total_2/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
�
training/group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
{

group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1""�@
	variables�@�@
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
�
m2_hidden1_1/kernel:0m2_hidden1_1/kernel/Assign)m2_hidden1_1/kernel/Read/ReadVariableOp:0(2m2_hidden1_1/random_uniform:08
r
m2_hidden1_1/bias:0m2_hidden1_1/bias/Assign'm2_hidden1_1/bias/Read/ReadVariableOp:0(2m2_hidden1_1/Const:08
�
m2_hidden2_1/kernel:0m2_hidden2_1/kernel/Assign)m2_hidden2_1/kernel/Read/ReadVariableOp:0(2m2_hidden2_1/random_uniform:08
r
m2_hidden2_1/bias:0m2_hidden2_1/bias/Assign'm2_hidden2_1/bias/Read/ReadVariableOp:0(2m2_hidden2_1/Const:08
�
m2_hidden3_1/kernel:0m2_hidden3_1/kernel/Assign)m2_hidden3_1/kernel/Read/ReadVariableOp:0(2m2_hidden3_1/random_uniform:08
r
m2_hidden3_1/bias:0m2_hidden3_1/bias/Assign'm2_hidden3_1/bias/Read/ReadVariableOp:0(2m2_hidden3_1/Const:08
}
m2_output_1/kernel:0m2_output_1/kernel/Assign(m2_output_1/kernel/Read/ReadVariableOp:0(2m2_output_1/random_uniform:08
n
m2_output_1/bias:0m2_output_1/bias/Assign&m2_output_1/bias/Read/ReadVariableOp:0(2m2_output_1/Const:08
�
Adam_2/iterations:0Adam_2/iterations/Assign'Adam_2/iterations/Read/ReadVariableOp:0(2-Adam_2/iterations/Initializer/initial_value:08
�
Adam_2/learning_rate:0Adam_2/learning_rate/Assign*Adam_2/learning_rate/Read/ReadVariableOp:0(20Adam_2/learning_rate/Initializer/initial_value:08
{
Adam_2/beta_1:0Adam_2/beta_1/Assign#Adam_2/beta_1/Read/ReadVariableOp:0(2)Adam_2/beta_1/Initializer/initial_value:08
{
Adam_2/beta_2:0Adam_2/beta_2/Assign#Adam_2/beta_2/Read/ReadVariableOp:0(2)Adam_2/beta_2/Initializer/initial_value:08
w
Adam_2/decay:0Adam_2/decay/Assign"Adam_2/decay/Read/ReadVariableOp:0(2(Adam_2/decay/Initializer/initial_value:08
I
	total_2:0total_2/Assigntotal_2/Read/ReadVariableOp:0(2	Const_6:08
I
	count_2:0count_2/Assigncount_2/Read/ReadVariableOp:0(2	Const_7:08
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
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08"�@
trainable_variables�@�@
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
�
m2_hidden1_1/kernel:0m2_hidden1_1/kernel/Assign)m2_hidden1_1/kernel/Read/ReadVariableOp:0(2m2_hidden1_1/random_uniform:08
r
m2_hidden1_1/bias:0m2_hidden1_1/bias/Assign'm2_hidden1_1/bias/Read/ReadVariableOp:0(2m2_hidden1_1/Const:08
�
m2_hidden2_1/kernel:0m2_hidden2_1/kernel/Assign)m2_hidden2_1/kernel/Read/ReadVariableOp:0(2m2_hidden2_1/random_uniform:08
r
m2_hidden2_1/bias:0m2_hidden2_1/bias/Assign'm2_hidden2_1/bias/Read/ReadVariableOp:0(2m2_hidden2_1/Const:08
�
m2_hidden3_1/kernel:0m2_hidden3_1/kernel/Assign)m2_hidden3_1/kernel/Read/ReadVariableOp:0(2m2_hidden3_1/random_uniform:08
r
m2_hidden3_1/bias:0m2_hidden3_1/bias/Assign'm2_hidden3_1/bias/Read/ReadVariableOp:0(2m2_hidden3_1/Const:08
}
m2_output_1/kernel:0m2_output_1/kernel/Assign(m2_output_1/kernel/Read/ReadVariableOp:0(2m2_output_1/random_uniform:08
n
m2_output_1/bias:0m2_output_1/bias/Assign&m2_output_1/bias/Read/ReadVariableOp:0(2m2_output_1/Const:08
�
Adam_2/iterations:0Adam_2/iterations/Assign'Adam_2/iterations/Read/ReadVariableOp:0(2-Adam_2/iterations/Initializer/initial_value:08
�
Adam_2/learning_rate:0Adam_2/learning_rate/Assign*Adam_2/learning_rate/Read/ReadVariableOp:0(20Adam_2/learning_rate/Initializer/initial_value:08
{
Adam_2/beta_1:0Adam_2/beta_1/Assign#Adam_2/beta_1/Read/ReadVariableOp:0(2)Adam_2/beta_1/Initializer/initial_value:08
{
Adam_2/beta_2:0Adam_2/beta_2/Assign#Adam_2/beta_2/Read/ReadVariableOp:0(2)Adam_2/beta_2/Initializer/initial_value:08
w
Adam_2/decay:0Adam_2/decay/Assign"Adam_2/decay/Read/ReadVariableOp:0(2(Adam_2/decay/Initializer/initial_value:08
I
	total_2:0total_2/Assigntotal_2/Read/ReadVariableOp:0(2	Const_6:08
I
	count_2:0count_2/Assigncount_2/Read/ReadVariableOp:0(2	Const_7:08
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
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08"�
cond_context��
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
dropout_1_input:0:
dropout_1_input:0%dropout_1/cond/dropout/Shape/Switch:14
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
�
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*�
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0
dropout_1_input:0.
dropout_1_input:0dropout_1/cond/Switch_1:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
�
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *�
dropout_2/cond/dropout/Floor:0
%dropout_2/cond/dropout/Shape/Switch:1
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/add:0
dropout_2/cond/dropout/mul:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/dropout/rate:0
dropout_2/cond/dropout/sub/x:0
dropout_2/cond/dropout/sub:0
 dropout_2/cond/dropout/truediv:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:0
dropout_2_input:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0:
dropout_2_input:0%dropout_2/cond/dropout/Shape/Switch:1
�
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*�
dropout_2/cond/Switch_1:0
dropout_2/cond/Switch_1:1
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:0
dropout_2_input:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0.
dropout_2_input:0dropout_2/cond/Switch_1:0
�
dropout_3/cond/cond_textdropout_3/cond/pred_id:0dropout_3/cond/switch_t:0 *�
dropout_3/cond/dropout/Floor:0
%dropout_3/cond/dropout/Shape/Switch:1
dropout_3/cond/dropout/Shape:0
dropout_3/cond/dropout/add:0
dropout_3/cond/dropout/mul:0
5dropout_3/cond/dropout/random_uniform/RandomUniform:0
+dropout_3/cond/dropout/random_uniform/max:0
+dropout_3/cond/dropout/random_uniform/min:0
+dropout_3/cond/dropout/random_uniform/mul:0
+dropout_3/cond/dropout/random_uniform/sub:0
'dropout_3/cond/dropout/random_uniform:0
dropout_3/cond/dropout/rate:0
dropout_3/cond/dropout/sub/x:0
dropout_3/cond/dropout/sub:0
 dropout_3/cond/dropout/truediv:0
dropout_3/cond/pred_id:0
dropout_3/cond/switch_t:0
m2_hidden1_1/Relu:0<
m2_hidden1_1/Relu:0%dropout_3/cond/dropout/Shape/Switch:14
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0
�
dropout_3/cond/cond_text_1dropout_3/cond/pred_id:0dropout_3/cond/switch_f:0*�
dropout_3/cond/Switch_1:0
dropout_3/cond/Switch_1:1
dropout_3/cond/pred_id:0
dropout_3/cond/switch_f:0
m2_hidden1_1/Relu:00
m2_hidden1_1/Relu:0dropout_3/cond/Switch_1:04
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0�'G       ���	si�����A*

val_lossw�@�m0        )��P	Kj�����A*

val_accuracy-2>����       �K"	�j�����A*

loss��@�$L       ���	�j�����A*

accuracyu�>�ty�       ��2	L����A*

val_loss��@��]"       x=�	4����A*

val_accuracyW[q>��E�       ��-	�����A*

loss�/
@���       ��2	�����A*

accuracyOf>Ι��       ��2	������A*

val_loss��@:b�"       x=�	ٶ����A*

val_accuracy��>�ں       ��-	7�����A*

loss�4@�1       ��2	������A*

accuracy
׃>�U��       ��2	j������A*

val_lossB_�?�?�)"       x=�	Y������A*

val_accuracyڬ�>�>�       ��-	�������A*

lossO�?I�=�       ��2	������A*

accuracyk��>��       ��2	�yZ����A*

val_lossA��?��Y�"       x=�	qzZ����A*

val_accuracy8��>���       ��-	�zZ����A*

loss��? u       ��2	){Z����A*

accuracy�۟>�۟�       ��2	?�Ȫ���A*

val_loss�O�?!"       x=�	�Ȫ���A*

val_accuracy5�>lc       ��-	{�Ȫ���A*

loss�#�?�i��       ��2	ΌȪ���A*

accuracygկ>j�ǋ       ��2	��5����A*

val_loss{u�?e���"       x=�	��5����A*

val_accuracy@��>�2�k       ��-	�5����A*

loss��?��^a       ��2	I�5����A*

accuracy�c�>[y��       ��2	^������A*

val_loss��?��4�"       x=�	,������A*

val_accuracy8g�>�t_�       ��-	�������A*

loss t�?��        ��2	�������A*

accuracyd]�>��M�       ��2	�����A*

val_loss�C�?e���"       x=�	�����A*

val_accuracy���>��       ��-	����A*

loss	,�?�R7�       ��2	i����A*

accuracy�X�>9hq�       ��2	��~����A	*

val_loss}0�?�^��"       x=�	U�~����A	*

val_accuracy�V�>�wc�       ��-	��~����A	*

lossaM�?\�S�       ��2	�~����A	*

accuracyz6�>=+��       ��2		�﬘��A
*

val_loss/e�?��"       x=�	݅﬘��A
*

val_accuracy���>����       ��-	B�﬘��A
*

loss(x�?4'��       ��2	��﬘��A
*

accuracyc��>�+��       ��2	��]����A*

val_lossm�?	�"       x=�	z�]����A*

val_accuracy���>�U��       ��-	ڜ]����A*

loss��?K��b       ��2	3�]����A*

accuracy�b�>S�       ��2	�˭���A*

val_loss���?�\"       x=�	�˭���A*

val_accuracy���>]�S       ��-	˭���A*

loss~#�?^�5�       ��2	[˭���A*

accuracy�J�>�       ��2	�v;����A*

val_loss{�?�:��"       x=�	�w;����A*

val_accuracy���>���'       ��-	x;����A*

lossX$�?e�       ��2	qx;����A*

accuracyz�>B`�T       ��2	�⽮���A*

val_loss���?���"       x=�	�㽮���A*

val_accuracy>y�>�h�       ��-	�㽮���A*

loss��?��K�       ��2	V佮���A*

accuracyB��>1!��       ��2	�kA����A*

val_lossJ!�?;�"       x=�	�lA����A*

val_accuracymV�>ܡ$       ��-	?mA����A*

loss}�?v�0       ��2	�mA����A*

accuracy@�>��3U       ��2	ů���A*

val_loss��?NO�l"       x=�	ů���A*

val_accuracym��>2��/       ��-	�ů���A*

loss���?C%Ig       ��2	�ů���A*

accuracytF�>�Po       ��2	��H����A*

val_lossh�?Y.�"       x=�	��H����A*

val_accuracy�)�>��hE       ��-	n�H����A*

loss�,�?.n��       ��2	��H����A*

accuracy���>�/l�       ��2	1�а���A*

val_loss���?���y"       x=�	'�а���A*

val_accuracy@��>}�)�       ��-	��а���A*

losst<�?ͣ�       ��2	�а���A*

accuracyNb�>x��       ��2	SV����A*

val_loss;�?	�xv"       x=�	IV����A*

val_accuracy8g�>��       ��-	�V����A*

lossX��?���       ��2	MV����A*

accuracy��>�.��       ��2	�rر���A*

val_loss��?�0w"       x=�	�sر���A*

val_accuracy8�>��       ��-	tر���A*

loss���?����       ��2	ztر���A*

accuracy���>X��$       ��2	HZ����A*

val_loss� �?�b9"       x=�	4IZ����A*

val_accuracy0��>�'��       ��-	�IZ����A*

loss4��?A�M       ��2	JZ����A*

accuracy���>@�\�       ��2	 iܲ���A*

val_loss#��?���0"       x=�	jܲ���A*

val_accuracy��>G��o       ��-	�jܲ���A*

lossdl�?-�:k       ��2	�jܲ���A*

accuracy�*�>u�       ��2	��]����A*

val_loss��?�W��"       x=�	��]����A*

val_accuracy���>���       ��-	\�]����A*

loss��?� ]       ��2	��]����A*

accuracy�-�>�X��       ��2	��߳���A*

val_lossD;�?9��"       x=�	��߳���A*

val_accuracy���>,�Q       ��-	_�߳���A*

loss��?S�U(       ��2	��߳���A*

accuracyU��>2!	5       ��2	w�`����A*

val_loss;��?aI$t"       x=�	x�`����A*

val_accuracy�O�>�A��       ��-	��`����A*

loss�?L���       ��2	R�`����A*

accuracy<��>DT��       ��2	�紘��A*

val_loss���?T2�_"       x=�	��紘��A*

val_accuracy��>�%�       ��-	q�紘��A*

loss�;�?f<�x       ��2	��紘��A*

accuracy+�>"]�k       ��2	țh����A*

val_loss+ �?;4j"       x=�	��h����A*

val_accuracyq�>��       ��-	&�h����A*

loss��?��       ��2	��h����A*

accuracy���>F��       ��2	�{鵘��A*

val_lossWm�?zu�_"       x=�	�|鵘��A*

val_accuracy��>E�Rv       ��-	P}鵘��A*

losso�?V��       ��2	�}鵘��A*

accuracy��>�}�       ��2	�qi����A*

val_loss�D�?qlo�"       x=�	�ri����A*

val_accuracyM��>����       ��-	�si����A*

loss7�?��2�       ��2	ti����A*

accuracy���>4 �x       ��2	|붘��A*

val_loss�?��_"       x=�	붘��A*

val_accuracy��>ۏ/~       ��-	�붘��A*

lossG��?F�       ��2	�붘��A*

accuracy���>;�	�       ��2	�l����A*

val_loss�K�?��� "       x=�	�l����A*

val_accuracy���>���&       ��-	��l����A*

loss�!�?<���       ��2	��l����A*

accuracy:��>�i�9       ��2	�������A *

val_loss�X�?���y"       x=�	�������A *

val_accuracy|��> 3�)       ��-	U������A *

loss?׶?�Ŋ       ��2	�������A *

accuracy���>,�F       ��2	��o����A!*

val_loss���?�T�G"       x=�	��o����A!*

val_accuracy)\�>��       ��-	�o����A!*

loss �?ǜP�       ��2	��o����A!*

accuracyRI�>�o��       ��2	�������A"*

val_lossÔ�?!3'�"       x=�	�������A"*

val_accuracy���> �^W       ��-	������A"*

losskc�?���~       ��2	�������A"*

accuracy�
�>X���       ��2	7�y����A#*

val_loss0�?�n�"       x=�	&�y����A#*

val_accuracy<N�>C��       ��-	��y����A#*

loss:�?��=-       ��2	�y����A#*

accuracy�e�>����       ��2	�5�����A$*

val_lossI[�?���"       x=�	7�����A$*

val_accuracy�|�>%߇�       ��-	�7�����A$*

lossL��?���       ��2	�7�����A$*

accuracy���>a�M       ��2	M�|����A%*

val_loss�ͽ?�)��"       x=�	R�|����A%*

val_accuracyaT�>���       ��-	��|����A%*

lossb��?��       ��2	6�|����A%*

accuracy4��>Z�       ��2	�������A&*

val_loss��?W���"       x=�	�������A&*

val_accuracya��>��       ��-	������A&*

loss慲?o1�       ��2	������A&*

accuracy�� ?ay�+       ��2	�����A'*

val_loss���?O�O�"       x=�	�����A'*

val_accuracy���>\zmr       ��-	z�����A'*

loss�^�?��B
       ��2	������A'*

accuracy6<?#�LR       ��2	�� ����A(*

val_loss'M�?�k_�"       x=�	�� ����A(*

val_accuracyF��>�l+�       ��-	!� ����A(*

loss���?� 7z       ��2	�� ����A(*

accuracy'�?Y�)�       ��2	�������A)*

val_loss�A�?F�"       x=�	�������A)*

val_accuracya2�>���       ��-	K������A)*

lossv��?��h       ��2	�������A)*

accuracys�?��+       ��2	�	����A**

val_loss|e�?@�"       x=�	�	����A**

val_accuracy}��>0�^*       ��-	U	����A**

loss*�?4��       ��2	�	����A**

accuracy��?��       ��2	'�����A+*

val_loss:̿?y�rI"       x=�	(�����A+*

val_accuracy��>�b�9       ��-	�(�����A+*

lossz�?���       ��2	�(�����A+*

accuracy�Z?d�I�       ��2	2h����A,*

val_lossi��?�-
�"       x=�	*i����A,*

val_accuracy�1�>���       ��-	�i����A,*

loss�-�?N��       ��2	j����A,*

accuracy=?��_       ��2	
������A-*

val_loss�]�?�!�	"       x=�	������A-*

val_accuracy�7�>Rh��       ��-	t������A-*

loss��?�*�f       ��2	ׅ�����A-*

accuracy؁?����       ��2	������A.*

val_loss*5�?<�_�"       x=�	������A.*

val_accuracy*��>����       ��-	�����A.*

loss4��?x��3       ��2	}�����A.*

accuracy��?��h?       ��2	mK�����A/*

val_lossa�?j��"       x=�	]L�����A/*

val_accuracy}?�>20!�       ��-	�L�����A/*

loss9׬?�ľ�       ��2	&M�����A/*

accuracy�z?f�5       ��2	D:����A0*

val_loss޺?(�p"       x=�	2;����A0*

val_accuracy���>˸pm       ��-	�;����A0*

losso��?AR��       ��2	<����A0*

accuracy?�S       ��2	 �����A1*

val_loss�? ��u"       x=�	%!�����A1*

val_accuracy"��>Cb6x       ��-	�!�����A1*

loss�*�?j�А       ��2	"�����A1*

accuracy�?Z�       ��2	������A2*

val_loss/a�?��>F"       x=�	������A2*

val_accuracyz�>R�H�       ��-	1�����A2*

loss�!�?	]d       ��2	������A2*

accuracyGr?��ʼ       ��2	˝����A3*

val_loss���?��gJ"       x=�	̝����A3*

val_accuracy���>�5P�       ��-	�̝����A3*

loss9��?��x       ��2	�̝����A3*

accuracy��?#M��       ��2	/(��A4*

val_loss0�?7(��"       x=�	!)��A4*

val_accuracy�l�>��O�       ��-	�)��A4*

lossBN�?qФ�       ��2	�)��A4*

accuracy=
?��T�       ��2	Y���A5*

val_lossV��?���i"       x=�	Q���A5*

val_accuracy�0�>�?��       ��-	����A5*

lossz�?����       ��2	$���A5*

accuracyff?HcE       ��2	��Ø��A6*

val_loss,�?5�k"       x=�	��Ø��A6*

val_accuracy�J�>Y��       ��-	*�Ø��A6*

loss�v�?�p�       ��2	��Ø��A6*

accuracy�?�N@�       ��2	���Ø��A7*

val_lossS��?v"       x=�	ό�Ø��A7*

val_accuracya2�>`6�d       ��-	A��Ø��A7*

loss��?>�l�       ��2	���Ø��A7*

accuracyj�?ڃC�       ��2	��!Ę��A8*

val_loss�H�?i�&p"       x=�	��!Ę��A8*

val_accuracyF%�>�(       ��-	 �!Ę��A8*

loss�?W�w       ��2	��!Ę��A8*

accuracy��?3I��       ��2	���Ę��A9*

val_lossl#�?��"       x=�	���Ę��A9*

val_accuracyڬ�>	�2�       ��-	3��Ę��A9*

loss��?���       ��2	���Ę��A9*

accuracy�h?	���       ��2	3�+Ř��A:*

val_loss���?2y�"       x=�	*�+Ř��A:*

val_accuracy���>{���       ��-	��+Ř��A:*

loss�C�?�zY       ��2	�+Ř��A:*

accuracyn4?"0c�       ��2	z��Ř��A;*

val_loss-I�?���"       x=�	l��Ř��A;*

val_accuracy�e�>��       ��-	ݞ�Ř��A;*

loss� �?9��       ��2	D��Ř��A;*

accuracy��	?��].       ��2	Բ,Ƙ��A<*

val_loss��?�ToW"       x=�	��,Ƙ��A<*

val_accuracy4�>�:Ӈ       ��-	2�,Ƙ��A<*

loss%�?�M%       ��2	��,Ƙ��A<*

accuracy�4?�߳�       ��2	|�Ƙ��A=*

val_loss�*�? M"       x=�	q�Ƙ��A=*

val_accuracyvq�>4�U       ��-	��Ƙ��A=*

loss���?�&��       ��2	B�Ƙ��A=*

accuracy��	?韦�       ��2	hJ.ǘ��A>*

val_lossBǿ?�,�"       x=�	XK.ǘ��A>*

val_accuracy<��>�+7       ��-	�K.ǘ��A>*

lossߙ�?E�M�       ��2	/L.ǘ��A>*

accuracyu�?�Jk       ��2	���ǘ��A?*

val_loss��?�T˲"       x=�	�®ǘ��A?*

val_accuracy~�>�ү       ��-	Iîǘ��A?*

lossᨥ?L�]�       ��2	�îǘ��A?*

accuracy��	?b`��       ��2	Û/Ș��A@*

val_loss3Թ?��?"       x=�	Ĝ/Ș��A@*

val_accuracyHP�>��.X       ��-	:�/Ș��A@*

loss�N�?*��X       ��2	��/Ș��A@*

accuracy�Z
?f�v�       ��2	��Ș��AA*

val_loss�F�?�[s"       x=�	��Ș��AA*

val_accuracy��>��9       ��-	K�Ș��AA*

loss�Q�?z��V       ��2	��Ș��AA*

accuracy.�	?U�^w       ��2	�6ɘ��AB*

val_loss�	�??^��"       x=�	)�6ɘ��AB*

val_accuracy���>�9��       ��-	��6ɘ��AB*

lossB�?�t�{       ��2	�6ɘ��AB*

accuracy�{
?��       ��2	���ɘ��AC*

val_lossv�?�e��"       x=�	ҁ�ɘ��AC*

val_accuracyH��>fs�       ��-	F��ɘ��AC*

lossh��?ew�       ��2	���ɘ��AC*

accuracy�?���       ��2	�j9ʘ��AD*

val_loss.:�?�0�"       x=�	vk9ʘ��AD*

val_accuracy���>�R�J       ��-	�k9ʘ��AD*

loss�4�?>��       ��2	Pl9ʘ��AD*

accuracy�C?K���       ��2	E�ʘ��AE*

val_lossRi�?����"       x=�	5��ʘ��AE*

val_accuracy��>����       ��-	���ʘ��AE*

loss?��?:�       ��2	��ʘ��AE*

accuracy�
?4��       ��2	�%;˘��AF*

val_losszW�?����"       x=�	�&;˘��AF*

val_accuracy[��>��g       ��-	!';˘��AF*

loss�D�?b��L       ��2	�';˘��AF*

accuracyTR?�       ��2	`��˘��AG*

val_loss)��?O�B~"       x=�	Q��˘��AG*

val_accuracy4��>���       ��-	���˘��AG*

loss���?�YO+       ��2	"��˘��AG*

accuracy�?mnh�       ��2	��=̘��AH*

val_loss��?��D"       x=�	��=̘��AH*

val_accuracyv��>q�s        ��-	�=̘��AH*

loss9*�?]�x       ��2	k�=̘��AH*

accuracy��?ki�'       ��2	���̘��AI*

val_loss���?7E�"       x=�	��̘��AI*

val_accuracy=�>T&u�       ��-	���̘��AI*

lossᆡ?�PG       ��2	���̘��AI*

accuracy|�?���       ��2	�H͘��AJ*

val_loss���?�/1�"       x=�	ؗH͘��AJ*

val_accuracy�}�>�.�       ��-	O�H͘��AJ*

loss���?|���       ��2	��H͘��AJ*

accuracy?Z��       ��2	�C�͘��AK*

val_loss�(�?t��"       x=�	�D�͘��AK*

val_accuracy-C�>P       ��-	;E�͘��AK*

lossX؟?�ل       ��2	�E�͘��AK*

accuracy#�?�"�       ��2	��KΘ��AL*

val_loss;��?�\�u"       x=�	��KΘ��AL*

val_accuracy��>4�       ��-	�KΘ��AL*

loss�П?%IL�       ��2	j�KΘ��AL*

accuracy��?���       ��2	�9�Θ��AM*

val_loss�ȹ?�DX"       x=�	;�Θ��AM*

val_accuracyvq�>Tg�@       ��-	{;�Θ��AM*

lossڶ�?G��       ��2	�;�Θ��AM*

accuracy�?�Γ       ��2	�NϘ��AN*

val_loss��?�E�"       x=�	�NϘ��AN*

val_accuracy���>_�<       ��-	q�NϘ��AN*

loss��?�H��       ��2	��NϘ��AN*

accuracy��?�L�{       ��2	nf�Ϙ��AO*

val_loss�?v|�"       x=�	�g�Ϙ��AO*

val_accuracyX�>�k^)       ��-	�g�Ϙ��AO*

loss\|�?+��       ��2	^h�Ϙ��AO*

accuracy�~?��)       ��2	�tQИ��AP*

val_losss��?����"       x=�	�uQИ��AP*

val_accuracy�(�>f#��       ��-	@vQИ��AP*

loss�b�?��dH       ��2	�vQИ��AP*

accuracy1�?�Ā       ��2	��И��AQ*

val_loss ٻ?vy<E"       x=�	��И��AQ*

val_accuracy,��>zi��       ��-	>�И��AQ*

loss�l�?��R�       ��2	��И��AQ*

accuracy�J?�V8       ��2	[ј��AR*

val_loss+�?B�]L"       x=�	[ј��AR*

val_accuracyHP�>��x�       ��-	�[ј��AR*

lossI^�?�K�W       ��2	�[ј��AR*

accuracy��?J{�       ��2	W��ј��AS*

val_loss2y�?�*�"       x=�	Y��ј��AS*

val_accuracy��>җI�       ��-	Ψ�ј��AS*

loss��?X�T       ��2	6��ј��AS*

accuracy0�?r	�       ��2	��\Ҙ��AT*

val_loss�e�?� <�"       x=�	��\Ҙ��AT*

val_accuracy�(�>\���       ��-	�\Ҙ��AT*

loss��?T)b�       ��2	~�\Ҙ��AT*

accuracy��?���P       ��2	r��Ҙ��AU*

val_losst�?���"       x=�	f��Ҙ��AU*

val_accuracy,��>G��       ��-	ҳ�Ҙ��AU*

loss���?CUG       ��2	5��Ҙ��AU*

accuracy��?��       ��2	��]Ә��AV*

val_loss�b�?f�("       x=�	��]Ә��AV*

val_accuracyd;�>z�:�       ��-	�]Ә��AV*

loss�G�?�c]�       ��2	i�]Ә��AV*

accuracy]m?�i�       ��2	.��Ә��AW*

val_loss�D�?�u�"       x=�	&��Ә��AW*

val_accuracy	�>*\;�       ��-	���Ә��AW*

lossb��?�<�       ��2	��Ә��AW*

accuracyX9?�y��       ��2	k
_Ԙ��AX*

val_lossS>�?RC�w"       x=�	w_Ԙ��AX*

val_accuracy�\�>z�]�       ��-	�_Ԙ��AX*

lossh��?�P�o       ��2	Q_Ԙ��AX*

accuracyb?��d       ��2	�{�Ԙ��AY*

val_lossNk�?#��"       x=�	�|�Ԙ��AY*

val_accuracy��>�*T�       ��-	�|�Ԙ��AY*

lossf�?�)�:       ��2	^}�Ԙ��AY*

accuracy�?z���       ��2	4�g՘��AZ*

val_lossct�?�x�"       x=�	4�g՘��AZ*

val_accuracy��>�x^	       ��-	��g՘��AZ*

loss��?���       ��2	�g՘��AZ*

accuracy>y?�I       ��2	���՘��A[*

val_loss �?B�q"       x=�	���՘��A[*

val_accuracy�U�>n�@#       ��-	g��՘��A[*

loss��?����       ��2	���՘��A[*

accuracyp�?��&       ��2	�
h֘��A\*

val_loss��?m�M"       x=�	�h֘��A\*

val_accuracy��>Ap��       ��-	fh֘��A\*

loss�ݚ?Y]�       ��2	�h֘��A\*

accuracy��?�Z�\       ��2	�U�֘��A]*

val_lossǳ�?��A"       x=�	�V�֘��A]*

val_accuracy�~�>�`�`       ��-	<W�֘��A]*

loss?[�? _�       ��2	�W�֘��A]*

accuracyN�?�o       ��2	}Ahט��A^*

val_loss���?�`�"       x=�	�Bhט��A^*

val_accuracy�\�>�5�V       ��-	�Bhט��A^*

lossa��?�-       ��2	XChט��A^*

accuracyq=?|�       ��2	���ט��A_*

val_loss�~�?�y�"       x=�	���ט��A_*

val_accuracyk��>�+Q       ��-	F��ט��A_*

lossā�?��U�       ��2	���ט��A_*

accuracyW[?�=�       ��2	�aiؘ��A`*

val_loss���?��b�"       x=�	�biؘ��A`*

val_accuracyt��>N��l       ��-	2ciؘ��A`*

loss���?��=�       ��2	�ciؘ��A`*

accuracyb�?|ӑ       ��2	BT�ؘ��Aa*

val_loss���?��"       x=�	@U�ؘ��Aa*

val_accuracyj�>d��+       ��-	�U�ؘ��Aa*

lossE��?��t�       ��2	V�ؘ��Aa*

accuracy��??�8       ��2	HSq٘��Ab*

val_loss�Z�?�`�"       x=�	DTq٘��Ab*

val_accuracy��>t6R�       ��-	�Tq٘��Ab*

loss㰘?u��       ��2	 Uq٘��Ab*

accuracy�K?ޤ�       ��2	�^�٘��Ac*

val_loss7x�?��	"       x=�	�_�٘��Ac*

val_accuracy��>:m��       ��-	N`�٘��Ac*

loss���?��S�       ��2	�`�٘��Ac*

accuracy�X?�n�