       �K"	   ژ��Abrain.Event:2!�r�1     ��,�	Oژ��A"��
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
m1_hidden1/kernelVarHandleOp*$
_class
loc:@m1_hidden1/kernel*
	container *
shape:
��*
dtype0*
_output_shapes
: *"
shared_namem1_hidden1/kernel
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
dtype0*
_output_shapes
: * 
shared_namem1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
	container *
shape:�
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
m1_hidden2/ReluRelum1_hidden2/BiasAdd*
T0*'
_output_shapes
:���������@
p
m1_hidden3/random_uniform/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
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
_output_shapes

:@*
seed2���*
seed�*
T0*
dtype0
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
m1_hidden3/kernel/AssignAssignVariableOpm1_hidden3/kernelm1_hidden3/random_uniform*
dtype0*$
_class
loc:@m1_hidden3/kernel
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
dtype0*
_output_shapes

:
*
seed2���*
seed�*
T0
�
m1_output/random_uniform/subSubm1_output/random_uniform/maxm1_output/random_uniform/min*
_output_shapes
: *
T0
�
m1_output/random_uniform/mulMul&m1_output/random_uniform/RandomUniformm1_output/random_uniform/sub*
_output_shapes

:
*
T0
�
m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
T0*
_output_shapes

:

�
m1_output/kernelVarHandleOp*!
shared_namem1_output/kernel*#
_class
loc:@m1_output/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: 
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
"m1_output/bias/Read/ReadVariableOpReadVariableOpm1_output/bias*
dtype0*
_output_shapes
:
*!
_class
loc:@m1_output/bias
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
,Adam/learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *o�:*%
_class
loc:@Adam/learning_rate
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
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2
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
m1_output_targetPlaceholder*%
shape:������������������*
dtype0*0
_output_shapes
:������������������
s
m1_output_sample_weightsPlaceholder*
shape:���������*
dtype0*#
_output_shapes
:���������
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
countVarHandleOp*
_class

loc:@count*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namecount
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
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
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
metrics/accuracy/SizeSizemetrics/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
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
!metrics/accuracy/ReadVariableOp_2ReadVariableOptotal ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
_output_shapes
: *
dtype0
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
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*#
_output_shapes
:���������*

DstT0	*

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
=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape7loss/m1_output_loss/sparse_categorical_crossentropy/LogCloss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
�
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":���������:���������
*
Tlabels0	
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
Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
: *
T0*
out_type0
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
MeanMeanloss/mulConst_2*
	keep_dims( *

Tidx0*
T0*
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
#dropout_1/cond/dropout/Shape/SwitchSwitchdropout_1_inputdropout_1/cond/pred_id*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:����������:����������*
T0
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
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*(
_output_shapes
:����������*
seed2**
seed�
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
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*
T0*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:����������:����������
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N**
_output_shapes
:����������: 
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
��*
seed2���*
seed�
�
m2_hidden1/random_uniform/subSubm2_hidden1/random_uniform/maxm2_hidden1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden1/random_uniform/mulMul'm2_hidden1/random_uniform/RandomUniformm2_hidden1/random_uniform/sub* 
_output_shapes
:
��*
T0
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
m2_hidden1/BiasAddBiasAddm2_hidden1/MatMul!m2_hidden1/BiasAdd/ReadVariableOp*(
_output_shapes
:����������*
T0*
data_formatNHWC
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
dtype0*
_output_shapes
:	�@*
seed2���*
seed�
�
m2_hidden2/random_uniform/subSubm2_hidden2/random_uniform/maxm2_hidden2/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden2/random_uniform/mulMul'm2_hidden2/random_uniform/RandomUniformm2_hidden2/random_uniform/sub*
_output_shapes
:	�@*
T0
�
m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
_output_shapes
:	�@*
T0
�
m2_hidden2/kernelVarHandleOp*
shape:	�@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
	container 
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
m2_hidden2/biasVarHandleOp*
_output_shapes
: * 
shared_namem2_hidden2/bias*"
_class
loc:@m2_hidden2/bias*
	container *
shape:@*
dtype0
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
m2_hidden3/random_uniformAddm2_hidden3/random_uniform/mulm2_hidden3/random_uniform/min*
T0*
_output_shapes

:@
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
m2_output/random_uniform/minConst*
_output_shapes
: *
valueB
 *����*
dtype0
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
m2_output/random_uniformAddm2_output/random_uniform/mulm2_output/random_uniform/min*
_output_shapes

:
*
T0
�
m2_output/kernelVarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *!
shared_namem2_output/kernel*#
_class
loc:@m2_output/kernel
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
m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������
*
T0
a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*
T0*'
_output_shapes
:���������

�
+Adam_1/iterations/Initializer/initial_valueConst*
_output_shapes
: *
value	B	 R *$
_class
loc:@Adam_1/iterations*
dtype0	
�
Adam_1/iterationsVarHandleOp*$
_class
loc:@Adam_1/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: *"
shared_nameAdam_1/iterations
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
.Adam_1/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *o�:*'
_class
loc:@Adam_1/learning_rate*
dtype0
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
'Adam_1/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w�?* 
_class
loc:@Adam_1/beta_2*
dtype0
�
Adam_1/beta_2VarHandleOp*
_output_shapes
: *
shared_nameAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2*
	container *
shape: *
dtype0
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
total_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	total_1*
_class
loc:@total_1*
	container *
shape: 
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
]
total_1/AssignAssignVariableOptotal_1Const_3*
dtype0*
_class
loc:@total_1
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
dtype0*
_output_shapes
: *
_class
loc:@total_1
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
count_1/AssignAssignVariableOpcount_1Const_4*
dtype0*
_class
loc:@count_1
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
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
metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
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

SrcT0*
Truncate( *#
_output_shapes
:���������*

DstT0	
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
_loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
out_type0*
_output_shapes
:*
T0	
�
}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*6
_output_shapes$
":���������:���������
*
Tlabels0	*
T0
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
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
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
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
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
Const_5Const*
_output_shapes
: *
valueB *
dtype0
a
Mean_1Mean
loss_1/mulConst_5*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
#dropout_2/cond/dropout/Shape/SwitchSwitchdropout_2_inputdropout_2/cond/pred_id*<
_output_shapes*
(:����������:����������*
T0*"
_class
loc:@dropout_2_input
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
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
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
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:����������
�
dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:����������
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*(
_output_shapes
:����������
�
dropout_2/cond/dropout/truedivRealDiv%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/sub*
T0*(
_output_shapes
:����������
�
dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/truedivdropout_2/cond/dropout/Floor*(
_output_shapes
:����������*
T0
�
dropout_2/cond/Switch_1Switchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:����������:����������
�
dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
N**
_output_shapes
:����������: *
T0
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
)m2_hidden1_1/random_uniform/RandomUniformRandomUniform!m2_hidden1_1/random_uniform/shape*
seed�*
T0*
dtype0* 
_output_shapes
:
��*
seed2���
�
m2_hidden1_1/random_uniform/subSubm2_hidden1_1/random_uniform/maxm2_hidden1_1/random_uniform/min*
_output_shapes
: *
T0
�
m2_hidden1_1/random_uniform/mulMul)m2_hidden1_1/random_uniform/RandomUniformm2_hidden1_1/random_uniform/sub*
T0* 
_output_shapes
:
��
�
m2_hidden1_1/random_uniformAddm2_hidden1_1/random_uniform/mulm2_hidden1_1/random_uniform/min* 
_output_shapes
:
��*
T0
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
m2_hidden1_1/kernel/AssignAssignVariableOpm2_hidden1_1/kernelm2_hidden1_1/random_uniform*&
_class
loc:@m2_hidden1_1/kernel*
dtype0
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
m2_hidden1_1/biasVarHandleOp*
	container *
shape:�*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias
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
_output_shapes
:
��*
dtype0
�
m2_hidden1_1/MatMulMatMuldropout_2/cond/Merge"m2_hidden1_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
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
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

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
#dropout_3/cond/dropout/Shape/SwitchSwitchm2_hidden1_1/Reludropout_3/cond/pred_id*<
_output_shapes*
(:����������:����������*
T0*$
_class
loc:@m2_hidden1_1/Relu
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
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*(
_output_shapes
:����������*
seed2**
seed�*
T0*
dtype0
�
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*(
_output_shapes
:����������*
T0
�
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*(
_output_shapes
:����������*
T0
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
dropout_3/cond/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:����������:����������
�
dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
T0*
N**
_output_shapes
:����������: 
r
!m2_hidden2_1/random_uniform/shapeConst*
valueB"�   @   *
dtype0*
_output_shapes
:
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
m2_hidden2_1/random_uniformAddm2_hidden2_1/random_uniform/mulm2_hidden2_1/random_uniform/min*
_output_shapes
:	�@*
T0
�
m2_hidden2_1/kernelVarHandleOp*
shape:	�@*
dtype0*
_output_shapes
: *$
shared_namem2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel*
	container 
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
m2_hidden2_1/biasVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias
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
m2_hidden2_1/MatMulMatMuldropout_3/cond/Merge"m2_hidden2_1/MatMul/ReadVariableOp*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( *
T0
q
#m2_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@
�
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*'
_output_shapes
:���������@*
T0*
data_formatNHWC
a
m2_hidden2_1/ReluRelum2_hidden2_1/BiasAdd*'
_output_shapes
:���������@*
T0
r
!m2_hidden3_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
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
)m2_hidden3_1/random_uniform/RandomUniformRandomUniform!m2_hidden3_1/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@*
seed2�Ԑ*
seed�
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
m2_hidden3_1/kernelVarHandleOp*&
_class
loc:@m2_hidden3_1/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_namem2_hidden3_1/kernel
w
4m2_hidden3_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 
�
m2_hidden3_1/kernel/AssignAssignVariableOpm2_hidden3_1/kernelm2_hidden3_1/random_uniform*
dtype0*&
_class
loc:@m2_hidden3_1/kernel
�
'm2_hidden3_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3_1/kernel*&
_class
loc:@m2_hidden3_1/kernel*
dtype0*
_output_shapes

:@
_
m2_hidden3_1/ConstConst*
dtype0*
_output_shapes
:*
valueB*    
�
m2_hidden3_1/biasVarHandleOp*"
shared_namem2_hidden3_1/bias*$
_class
loc:@m2_hidden3_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
%m2_hidden3_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_1/bias*
_output_shapes
:*$
_class
loc:@m2_hidden3_1/bias*
dtype0
v
"m2_hidden3_1/MatMul/ReadVariableOpReadVariableOpm2_hidden3_1/kernel*
dtype0*
_output_shapes

:@
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
 m2_output_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"   
   *
dtype0
c
m2_output_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *����
c
m2_output_1/random_uniform/maxConst*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
(m2_output_1/random_uniform/RandomUniformRandomUniform m2_output_1/random_uniform/shape*
dtype0*
_output_shapes

:
*
seed2���*
seed�*
T0
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
m2_output_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namem2_output_1/kernel*%
_class
loc:@m2_output_1/kernel*
	container *
shape
:

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
_output_shapes

:
*%
_class
loc:@m2_output_1/kernel*
dtype0
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
m2_output_1/BiasAddBiasAddm2_output_1/MatMul"m2_output_1/BiasAdd/ReadVariableOp*'
_output_shapes
:���������
*
T0*
data_formatNHWC
e
m2_output_1/SoftmaxSoftmaxm2_output_1/BiasAdd*'
_output_shapes
:���������
*
T0
�
+Adam_2/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *
value	B	 R *$
_class
loc:@Adam_2/iterations
�
Adam_2/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *"
shared_nameAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
	container *
shape: 
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
Adam_2/learning_rateVarHandleOp*
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
	container 
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
'Adam_2/beta_1/Initializer/initial_valueConst*
valueB
 *fff?* 
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 
�
Adam_2/beta_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1
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
'Adam_2/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *w�?* 
_class
loc:@Adam_2/beta_2
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
&Adam_2/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam_2/decay
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
Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
total_2VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	total_2*
_class
loc:@total_2*
	container 
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
count_2/Read/ReadVariableOpReadVariableOpcount_2*
dtype0*
_output_shapes
: *
_class
loc:@count_2
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
metrics_2/accuracy/CastCastmetrics_2/accuracy/ArgMax*#
_output_shapes
:���������*

DstT0*

SrcT0	*
Truncate( 
�
metrics_2/accuracy/EqualEqualmetrics_2/accuracy/Squeezemetrics_2/accuracy/Cast*
T0*#
_output_shapes
:���������
�
metrics_2/accuracy/Cast_1Castmetrics_2/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
b
metrics_2/accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
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
metrics_2/accuracy/SizeSizemetrics_2/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
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
#metrics_2/accuracy/ReadVariableOp_2ReadVariableOptotal_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
_output_shapes
: *
dtype0
�
)metrics_2/accuracy/truediv/ReadVariableOpReadVariableOpcount_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
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
;loss_2/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *���3
�
;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
9loss_2/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
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
=loss_2/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_1Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*#
_output_shapes
:���������*
T0*
Tshape0
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
?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogEloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
_loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
out_type0*
_output_shapes
:*
T0	
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
Iloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
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
Const_8Const*
valueB *
dtype0*
_output_shapes
: 
a
Mean_2Mean
loss_2/mulConst_8*
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
!training/Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?*
_class
	loc:@Mean
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
'training/Adam/gradients/Mean_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB *
_class
	loc:@Mean
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
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0*
_class
loc:@loss/mul
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
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
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
�
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
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
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
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
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
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
ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:���������
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
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
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
�
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*'
_output_shapes
:���������
*
T0*$
_class
loc:@m1_output/Softmax
�
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:���������
*
T0
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
5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad m1_hidden2/MatMul/ReadVariableOp*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0*$
_class
loc:@m1_hidden2/MatMul
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
5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulm1_hidden1/Relu*(
_output_shapes
:����������*
T0*"
_class
loc:@m1_hidden1/Relu
�
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
_output_shapes	
:�*
T0*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC
�
5training/Adam/gradients/m1_hidden1/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad m1_hidden1/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m1_hidden1/MatMul*(
_output_shapes
:����������*
transpose_a( 
�
7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
transpose_b( *
T0*$
_class
loc:@m1_hidden1/MatMul* 
_output_shapes
:
��*
transpose_a(
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
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
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
training/Adam/m_0_1VarHandleOp*
	container *
shape:
��*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1
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
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
dtype0*
_output_shapes
:	�@
^
training/Adam/m_3Const*
dtype0*
_output_shapes
:@*
valueB@*    
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
training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*&
_class
loc:@training/Adam/m_4_1*
dtype0
�
'training/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_4_1*
dtype0*
_output_shapes

:@*&
_class
loc:@training/Adam/m_4_1
^
training/Adam/m_5Const*
dtype0*
_output_shapes
:*
valueB*    
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
'training/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_5_1*
_output_shapes
:*&
_class
loc:@training/Adam/m_5_1*
dtype0
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
training/Adam/m_6_1/AssignAssignVariableOptraining/Adam/m_6_1training/Adam/m_6*
dtype0*&
_class
loc:@training/Adam/m_6_1
�
'training/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_6_1*
dtype0*
_output_shapes

:
*&
_class
loc:@training/Adam/m_6_1
^
training/Adam/m_7Const*
_output_shapes
:
*
valueB
*    *
dtype0
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
'training/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_7_1*
dtype0*
_output_shapes
:
*&
_class
loc:@training/Adam/m_7_1
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
training/Adam/v_0_1VarHandleOp*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
��*
dtype0
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
training/Adam/v_1_1VarHandleOp*&
_class
loc:@training/Adam/v_1_1*
	container *
shape:�*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_1_1
w
4training/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 
�
training/Adam/v_1_1/AssignAssignVariableOptraining/Adam/v_1_1training/Adam/v_1*
dtype0*&
_class
loc:@training/Adam/v_1_1
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
training/Adam/v_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*

index_type0*
_output_shapes
:	�@*
T0
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
training/Adam/v_4Fill!training/Adam/v_4/shape_as_tensortraining/Adam/v_4/Const*
_output_shapes

:@*
T0*

index_type0
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
'training/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_6_1*
dtype0*
_output_shapes

:
*&
_class
loc:@training/Adam/v_6_1
^
training/Adam/v_7Const*
_output_shapes
:
*
valueB
*    *
dtype0
�
training/Adam/v_7_1VarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_7_1*&
_class
loc:@training/Adam/v_7_1
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
*training/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_0_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_0_1
n
$training/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
_
training/Adam/vhat_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
�
training/Adam/vhat_1_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_1_1*)
_class
loc:@training/Adam/vhat_1_1
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
training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*
dtype0*)
_class
loc:@training/Adam/vhat_2_1
�
*training/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_2_1*)
_class
loc:@training/Adam/vhat_2_1*
dtype0*
_output_shapes
:
n
$training/Adam/vhat_3/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training/Adam/vhat_3_1VarHandleOp*'
shared_nametraining/Adam/vhat_3_1*)
_class
loc:@training/Adam/vhat_3_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
*training/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_4_1*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_4_1*
dtype0
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
training/Adam/add_3/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
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
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
_output_shapes
: *
T0
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
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes	
:�*
T0
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
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
_output_shapes	
:�*
T0
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
training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes
:	�@*
T0
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	�@
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes
:	�@*
T0
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
_output_shapes

:@*
dtype0
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
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
_output_shapes

:@*
T0
[
training/Adam/Const_11Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_12Const*
dtype0*
_output_shapes
: *
valueB
 *  �
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
_output_shapes

:@*
dtype0
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
training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
_output_shapes
:*
T0
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
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
:*
T0
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
training/Adam/Const_15Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
s
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/v_7_1*
_output_shapes
:
*
dtype0
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
training/Adam/Const_17Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training/Adam/ReadVariableOp_62ReadVariableOpm1_output/bias*
_output_shapes
:
*
dtype0
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
}
training_1/Adam/gradients/ShapeConst*
valueB *
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
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
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@Mean_1*
_output_shapes
: 
�
3training_1/Adam/gradients/Mean_1_grad/Reshape/shapeConst*
valueB *
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
�
-training_1/Adam/gradients/Mean_1_grad/ReshapeReshapetraining_1/Adam/gradients/Fill3training_1/Adam/gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_1*
_output_shapes
: 
�
+training_1/Adam/gradients/Mean_1_grad/ConstConst*
_output_shapes
: *
valueB *
_class
loc:@Mean_1*
dtype0
�
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*
_class
loc:@Mean_1*
_output_shapes
: *

Tmultiples0*
T0
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
-training_1/Adam/gradients/Mean_1_grad/truedivRealDiv*training_1/Adam/gradients/Mean_1_grad/Tile-training_1/Adam/gradients/Mean_1_grad/Const_1*
T0*
_class
loc:@Mean_1*
_output_shapes
: 
�
-training_1/Adam/gradients/loss_1/mul_grad/MulMul-training_1/Adam/gradients/Mean_1_grad/truedivKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
�
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
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
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
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
: *

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
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
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
�
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
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
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weightsktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:���������
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
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:���������
*
T0*�
_class�
��loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
dtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*
_output_shapes
:*
T0*
out_type0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1
�
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1
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
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������

�
otraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:���������
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
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
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output/Softmax*
out_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0
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
vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������
*
T0*

index_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
straining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:���������

�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:���������
*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
4training_1/Adam/gradients/m2_output/Softmax_grad/SumSum4training_1/Adam/gradients/m2_output/Softmax_grad/mulFtraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
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
6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*
transpose_b(*
T0*#
_class
loc:@m2_output/MatMul*'
_output_shapes
:���������*
transpose_a( 
�
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*#
_class
loc:@m2_output/MatMul*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0
�
7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulm2_hidden3/Relu*
T0*"
_class
loc:@m2_hidden3/Relu*'
_output_shapes
:���������
�
=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:
�
7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad m2_hidden3/MatMul/ReadVariableOp*$
_class
loc:@m2_hidden3/MatMul*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(*
T0
�
9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1MatMulm2_hidden2/Relu7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden3/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( 
�
7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulm2_hidden2/Relu*'
_output_shapes
:���������@*
T0*"
_class
loc:@m2_hidden2/Relu
�
=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad m2_hidden2/MatMul/ReadVariableOp*(
_output_shapes
:����������*
transpose_a( *
transpose_b(*
T0*$
_class
loc:@m2_hidden2/MatMul
�
9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1MatMulm2_hidden1/Relu7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
_output_shapes
:	�@*
transpose_a(*
transpose_b( *
T0*$
_class
loc:@m2_hidden2/MatMul
�
7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulm2_hidden1/Relu*(
_output_shapes
:����������*
T0*"
_class
loc:@m2_hidden1/Relu
�
=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�
�
7training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad m2_hidden1/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m2_hidden1/MatMul*(
_output_shapes
:����������*
transpose_a( 
�
9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden1/MatMul* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
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
training_1/Adam/Const_2Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
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
$training_1/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
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
_output_shapes
:
��*(
_class
loc:@training_1/Adam/m_0_1*
dtype0
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
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0*
_output_shapes	
:�
t
#training_1/Adam/m_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"�   @   
^
training_1/Adam/m_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training_1/Adam/m_2Fill#training_1/Adam/m_2/shape_as_tensortraining_1/Adam/m_2/Const*
_output_shapes
:	�@*
T0*

index_type0
�
training_1/Adam/m_2_1VarHandleOp*(
_class
loc:@training_1/Adam/m_2_1*
	container *
shape:	�@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_2_1
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
)training_1/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*
dtype0*
_output_shapes
:	�@*(
_class
loc:@training_1/Adam/m_2_1
`
training_1/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
�
training_1/Adam/m_3_1VarHandleOp*&
shared_nametraining_1/Adam/m_3_1*(
_class
loc:@training_1/Adam/m_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: 
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
)training_1/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_3_1*
dtype0*
_output_shapes
:@*(
_class
loc:@training_1/Adam/m_3_1
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
training_1/Adam/m_4_1VarHandleOp*
_output_shapes
: *&
shared_nametraining_1/Adam/m_4_1*(
_class
loc:@training_1/Adam/m_4_1*
	container *
shape
:@*
dtype0
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
training_1/Adam/m_5_1VarHandleOp*&
shared_nametraining_1/Adam/m_5_1*(
_class
loc:@training_1/Adam/m_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_1/Adam/m_6_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_6_1*(
_class
loc:@training_1/Adam/m_6_1*
	container *
shape
:

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
training_1/Adam/v_0/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training_1/Adam/v_0Fill#training_1/Adam/v_0/shape_as_tensortraining_1/Adam/v_0/Const* 
_output_shapes
:
��*
T0*

index_type0
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
training_1/Adam/v_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
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
)training_1/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0*
_output_shapes	
:�
t
#training_1/Adam/v_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"�   @   
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
training_1/Adam/v_2_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
	container *
shape:	�@
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
training_1/Adam/v_3_1/AssignAssignVariableOptraining_1/Adam/v_3_1training_1/Adam/v_3*
dtype0*(
_class
loc:@training_1/Adam/v_3_1
�
)training_1/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_3_1*
dtype0*
_output_shapes
:@*(
_class
loc:@training_1/Adam/v_3_1
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
training_1/Adam/v_4_1VarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_4_1*(
_class
loc:@training_1/Adam/v_4_1
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
training_1/Adam/v_5_1VarHandleOp*&
shared_nametraining_1/Adam/v_5_1*(
_class
loc:@training_1/Adam/v_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_1/Adam/v_6_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_6_1*(
_class
loc:@training_1/Adam/v_6_1*
	container *
shape
:

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
training_1/Adam/v_7_1VarHandleOp*&
shared_nametraining_1/Adam/v_7_1*(
_class
loc:@training_1/Adam/v_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
training_1/Adam/vhat_0_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1*
	container *
shape:
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
,training_1/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_0_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_0_1
p
&training_1/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_1Fill&training_1/Adam/vhat_1/shape_as_tensortraining_1/Adam/vhat_1/Const*
_output_shapes
:*
T0*

index_type0
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
training_1/Adam/vhat_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_2_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1*
	container *
shape:
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
&training_1/Adam/vhat_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
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
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
	container 
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
,training_1/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_3_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_3_1
p
&training_1/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_4_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1*+
_class!
loc:@training_1/Adam/vhat_4_1*
	container *
shape:
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
&training_1/Adam/vhat_5/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training_1/Adam/vhat_5_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_1/Adam/vhat_6_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_6_1*+
_class!
loc:@training_1/Adam/vhat_6_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
&training_1/Adam/vhat_7/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training_1/Adam/vhat_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_7Fill&training_1/Adam/vhat_7/shape_as_tensortraining_1/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
�
training_1/Adam/vhat_7_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1
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
_output_shapes
:
��*
dtype0
�
training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp* 
_output_shapes
:
��*
T0
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
training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
u
training_1/Adam/add_1Addtraining_1/Adam/mul_1training_1/Adam/mul_2*
T0* 
_output_shapes
:
��
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
 training_1/Adam/ReadVariableOp_5ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_3/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
x
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/x training_1/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 
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
training_1/Adam/add_2Addtraining_1/Adam/mul_3training_1/Adam/mul_4* 
_output_shapes
:
��*
T0
s
training_1/Adam/mul_5Multraining_1/Adam/multraining_1/Adam/add_1* 
_output_shapes
:
��*
T0
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
training_1/Adam/add_3Addtraining_1/Adam/Sqrt_1training_1/Adam/add_3/y* 
_output_shapes
:
��*
T0
}
training_1/Adam/truediv_1RealDivtraining_1/Adam/mul_5training_1/Adam/add_3* 
_output_shapes
:
��*
T0
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
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
�
training_1/Adam/mul_7Multraining_1/Adam/sub_5=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�*
T0
p
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
T0*
_output_shapes	
:�
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
training_1/Adam/Square_1Square=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
s
training_1/Adam/mul_9Multraining_1/Adam/sub_6training_1/Adam/Square_1*
T0*
_output_shapes	
:�
p
training_1/Adam/add_5Addtraining_1/Adam/mul_8training_1/Adam/mul_9*
_output_shapes	
:�*
T0
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
'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_6*
_output_shapes	
:�*
T0
�
training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
T0*
_output_shapes	
:�
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
!training_1/Adam/ReadVariableOp_14ReadVariableOpm2_hidden1/bias*
_output_shapes	
:�*
dtype0
�
training_1/Adam/sub_7Sub!training_1/Adam/ReadVariableOp_14training_1/Adam/truediv_2*
T0*
_output_shapes	
:�
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
training_1/Adam/mul_11Mul!training_1/Adam/ReadVariableOp_18%training_1/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	�@
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
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
_output_shapes
: *
T0
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
training_1/Adam/Square_2Square9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	�@*
T0
x
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
_output_shapes
:	�@*
T0
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
training_1/Adam/Const_8Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
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
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
T0*
_output_shapes
:	�@
\
training_1/Adam/add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
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
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/x!training_1/Adam/ReadVariableOp_27*
_output_shapes
: *
T0
�
training_1/Adam/mul_17Multraining_1/Adam/sub_11=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
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
%training_1/Adam/mul_18/ReadVariableOpReadVariableOptraining_1/Adam/v_3_1*
_output_shapes
:@*
dtype0
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
training_1/Adam/add_11Addtraining_1/Adam/mul_18training_1/Adam/mul_19*
T0*
_output_shapes
:@
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
!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/v_3_1$^training_1/Adam/AssignVariableOp_10*
_output_shapes
:@*
dtype0
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
training_1/Adam/mul_24Multraining_1/Adam/sub_15training_1/Adam/Square_4*
T0*
_output_shapes

:@
v
training_1/Adam/add_14Addtraining_1/Adam/mul_23training_1/Adam/mul_24*
T0*
_output_shapes

:@
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
training_1/Adam/Const_12Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
�
'training_1/Adam/clip_by_value_5/MinimumMinimumtraining_1/Adam/add_14training_1/Adam/Const_12*
T0*
_output_shapes

:@
�
training_1/Adam/clip_by_value_5Maximum'training_1/Adam/clip_by_value_5/Minimumtraining_1/Adam/Const_11*
T0*
_output_shapes

:@
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
training_1/Adam/add_15Addtraining_1/Adam/Sqrt_5training_1/Adam/add_15/y*
_output_shapes

:@*
T0
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
training_1/Adam/sub_17/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
{
training_1/Adam/sub_17Subtraining_1/Adam/sub_17/x!training_1/Adam/ReadVariableOp_43*
_output_shapes
: *
T0
�
training_1/Adam/mul_27Multraining_1/Adam/sub_17=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
r
training_1/Adam/add_16Addtraining_1/Adam/mul_26training_1/Adam/mul_27*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_44ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
w
%training_1/Adam/mul_28/ReadVariableOpReadVariableOptraining_1/Adam/v_5_1*
_output_shapes
:*
dtype0
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
training_1/Adam/sub_18/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training_1/Adam/mul_29Multraining_1/Adam/sub_18training_1/Adam/Square_5*
_output_shapes
:*
T0
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
'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
T0*
_output_shapes
:
�
training_1/Adam/clip_by_value_6Maximum'training_1/Adam/clip_by_value_6/Minimumtraining_1/Adam/Const_13*
T0*
_output_shapes
:
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
training_1/Adam/sub_19Sub!training_1/Adam/ReadVariableOp_46training_1/Adam/truediv_6*
T0*
_output_shapes
:
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
training_1/Adam/mul_31Mul!training_1/Adam/ReadVariableOp_50%training_1/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_51ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_20/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
{
training_1/Adam/sub_20Subtraining_1/Adam/sub_20/x!training_1/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 
�
training_1/Adam/mul_32Multraining_1/Adam/sub_208training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
v
training_1/Adam/add_19Addtraining_1/Adam/mul_31training_1/Adam/mul_32*
T0*
_output_shapes

:

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
training_1/Adam/sub_21/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training_1/Adam/add_20Addtraining_1/Adam/mul_33training_1/Adam/mul_34*
T0*
_output_shapes

:

s
training_1/Adam/mul_35Multraining_1/Adam/multraining_1/Adam/add_19*
T0*
_output_shapes

:

]
training_1/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_1/Adam/Const_16Const*
dtype0*
_output_shapes
: *
valueB
 *  �
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
training_1/Adam/truediv_7RealDivtraining_1/Adam/mul_35training_1/Adam/add_21*
T0*
_output_shapes

:

r
!training_1/Adam/ReadVariableOp_54ReadVariableOpm2_output/kernel*
dtype0*
_output_shapes

:

�
training_1/Adam/sub_22Sub!training_1/Adam/ReadVariableOp_54training_1/Adam/truediv_7*
T0*
_output_shapes

:

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
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
�
training_1/Adam/mul_37Multraining_1/Adam/sub_23<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

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
training_1/Adam/mul_38Mul!training_1/Adam/ReadVariableOp_60%training_1/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:

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
training_1/Adam/mul_39Multraining_1/Adam/sub_24training_1/Adam/Square_7*
_output_shapes
:
*
T0
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
'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
_output_shapes
:
*
T0
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
training_1/Adam/add_24/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
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
!training_1/Adam/ReadVariableOp_62ReadVariableOpm2_output/bias*
_output_shapes
:
*
dtype0
�
training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
_output_shapes
:
*
T0
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

b
training_1/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_1VarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_2VarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_3VarIsInitializedOptraining_1/Adam/m_6_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_4VarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_5VarIsInitializedOptraining_1/Adam/v_5_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_6VarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_7VarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_8VarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_9VarIsInitializedOptraining_1/Adam/m_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_10VarIsInitializedOptraining_1/Adam/v_6_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_11VarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_12VarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_13VarIsInitializedOptraining_1/Adam/v_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_14VarIsInitializedOptraining_1/Adam/m_3_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_15VarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_16VarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_17VarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_18VarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_19VarIsInitializedOptraining_1/Adam/v_3_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_20VarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_21VarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_22VarIsInitializedOptraining_1/Adam/m_4_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_23VarIsInitializedOptraining_1/Adam/v_4_1*
_output_shapes
: 
�
training_1/initNoOp^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign
�
training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9
�
group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1"ԩ�N��     Œ@}	�ژ��AJ��
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
b'unknown'��
u
m1_hidden1_inputPlaceholder*(
_output_shapes
:����������*
shape:����������*
dtype0
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
m1_hidden1/kernel/AssignAssignVariableOpm1_hidden1/kernelm1_hidden1/random_uniform*
dtype0*$
_class
loc:@m1_hidden1/kernel
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
m1_hidden1/BiasAddBiasAddm1_hidden1/MatMul!m1_hidden1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:����������*
T0
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
'm1_hidden2/random_uniform/RandomUniformRandomUniformm1_hidden2/random_uniform/shape*
seed2��*
_output_shapes
:	�@*
seed�*
T0*
dtype0
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
%m1_hidden2/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2/kernel*
_output_shapes
:	�@*$
_class
loc:@m1_hidden2/kernel*
dtype0
]
m1_hidden2/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    
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
m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:���������@
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
%m1_hidden3/kernel/Read/ReadVariableOpReadVariableOpm1_hidden3/kernel*
dtype0*
_output_shapes

:@*$
_class
loc:@m1_hidden3/kernel
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
#m1_hidden3/bias/Read/ReadVariableOpReadVariableOpm1_hidden3/bias*
_output_shapes
:*"
_class
loc:@m1_hidden3/bias*
dtype0
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
m1_output/random_uniform/minConst*
_output_shapes
: *
valueB
 *����*
dtype0
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
m1_output/random_uniform/mulMul&m1_output/random_uniform/RandomUniformm1_output/random_uniform/sub*
_output_shapes

:
*
T0
�
m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
T0*
_output_shapes

:

�
m1_output/kernelVarHandleOp*!
shared_namem1_output/kernel*#
_class
loc:@m1_output/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: 
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
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������
*
transpose_b( *
T0
k
 m1_output/BiasAdd/ReadVariableOpReadVariableOpm1_output/bias*
_output_shapes
:
*
dtype0
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
,Adam/learning_rate/Initializer/initial_valueConst*%
_class
loc:@Adam/learning_rate*
valueB
 *o�:*
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
dtype0*
_class
loc:@Adam/decay
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
!metrics/accuracy/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
���������
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
metrics/accuracy/EqualEqualmetrics/accuracy/Squeezemetrics/accuracy/Cast*
T0*#
_output_shapes
:���������
�
metrics/accuracy/Cast_1Castmetrics/accuracy/Equal*
Truncate( *

DstT0*#
_output_shapes
:���������*

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
: *

Tidx0*
	keep_dims( *
T0
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
�
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp*
_output_shapes
: *
dtype0
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
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
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
Aloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:���������
*
T0
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
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
�
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
Tlabels0	*6
_output_shapes$
":���������:���������
*
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
: *

Tidx0*
	keep_dims( 
�
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
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
Const_2Const*
_output_shapes
: *
valueB *
dtype0
]
MeanMeanloss/mulConst_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
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
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
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
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
T0*
dtype0*
seed2**(
_output_shapes
:����������*
seed�
�
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*
T0*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:����������:����������
�
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N**
_output_shapes
:����������: 
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
m2_hidden1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�\1=*
dtype0
�
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
dtype0*
seed2���* 
_output_shapes
:
��*
seed�*
T0
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
m2_hidden1/BiasAddBiasAddm2_hidden1/MatMul!m2_hidden1/BiasAdd/ReadVariableOp*(
_output_shapes
:����������*
T0*
data_formatNHWC
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
m2_hidden2/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�5�
b
m2_hidden2/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�5>*
dtype0
�
'm2_hidden2/random_uniform/RandomUniformRandomUniformm2_hidden2/random_uniform/shape*
dtype0*
seed2���*
_output_shapes
:	�@*
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
m2_hidden2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
�
m2_hidden2/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namem2_hidden2/bias*"
_class
loc:@m2_hidden2/bias*
	container *
shape:@
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
m2_hidden2/MatMulMatMulm2_hidden1/Relu m2_hidden2/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������@*
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
m2_hidden3/random_uniform/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
b
m2_hidden3/random_uniform/minConst*
valueB
 *�7��*
dtype0*
_output_shapes
: 
b
m2_hidden3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�7�>*
dtype0
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
m2_hidden3/kernelVarHandleOp*"
shared_namem2_hidden3/kernel*$
_class
loc:@m2_hidden3/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
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
m2_hidden3/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namem2_hidden3/bias*"
_class
loc:@m2_hidden3/bias*
	container *
shape:
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
m2_hidden3/MatMulMatMulm2_hidden2/Relu m2_hidden3/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������*
transpose_b( *
T0
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
+Adam_1/iterations/Initializer/initial_valueConst*$
_class
loc:@Adam_1/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
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
Adam_1/learning_rateVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate
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
'Adam_1/beta_1/Initializer/initial_valueConst*
_output_shapes
: * 
_class
loc:@Adam_1/beta_1*
valueB
 *fff?*
dtype0
�
Adam_1/beta_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
	container 
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
!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1*
_output_shapes
: * 
_class
loc:@Adam_1/beta_1*
dtype0
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
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_1/decay*
_class
loc:@Adam_1/decay*
	container 
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
total_1VarHandleOp*
_class
loc:@total_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	total_1
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
count_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	count_1*
_class
loc:@count_1
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
#metrics_1/accuracy/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
metrics_1/accuracy/ArgMaxArgMaxm2_output/Softmax#metrics_1/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
�
metrics_1/accuracy/CastCastmetrics_1/accuracy/ArgMax*
Truncate( *

DstT0*#
_output_shapes
:���������*

SrcT0	
�
metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*
T0*#
_output_shapes
:���������
�
metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:���������
b
metrics_1/accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
metrics_1/accuracy/SumSummetrics_1/accuracy/Cast_1metrics_1/accuracy/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
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
Truncate( *

DstT0*
_output_shapes
: 
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
9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:���������
*
T0
�
Closs_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
=loss_1/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_targetCloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
:loss_1/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape*
Truncate( *

DstT0	*#
_output_shapes
:���������*

SrcT0
�
Eloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"����
   *
dtype0*
_output_shapes
:
�
?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogEloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*'
_output_shapes
:���������
*
T0*
Tshape0
�
_loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
�
}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
Tlabels0	*6
_output_shapes$
":���������:���������
*
T0
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
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
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
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
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
loss_1/mulConst_5*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
t
dropout_2_inputPlaceholder*(
_output_shapes
:����������*
shape:����������*
dtype0
�
dropout_2/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

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
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

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
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
�
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
dtype0*
seed2**(
_output_shapes
:����������*
seed�*
T0
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
dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:����������
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*(
_output_shapes
:����������
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
)m2_hidden1_1/random_uniform/RandomUniformRandomUniform!m2_hidden1_1/random_uniform/shape*
T0*
dtype0*
seed2���* 
_output_shapes
:
��*
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
m2_hidden1_1/kernelVarHandleOp*$
shared_namem2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
	container *
shape:
��*
dtype0*
_output_shapes
: 
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
m2_hidden1_1/biasVarHandleOp*"
shared_namem2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
	container *
shape:�*
dtype0*
_output_shapes
: 
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
#m2_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_1/bias*
_output_shapes	
:�*
dtype0
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
dropout_3/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

z
dropout_3/cond/dropout/rateConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  �>
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
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*(
_output_shapes
:����������*
T0
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
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*(
_output_shapes
:����������
�
dropout_3/cond/dropout/truedivRealDiv%dropout_3/cond/dropout/Shape/Switch:1dropout_3/cond/dropout/sub*
T0*(
_output_shapes
:����������
�
dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/truedivdropout_3/cond/dropout/Floor*
T0*(
_output_shapes
:����������
�
dropout_3/cond/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:����������:����������
�
dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
T0*
N**
_output_shapes
:����������: 
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
seed�*
T0*
dtype0*
seed2з�*
_output_shapes
:	�@
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
m2_hidden2_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel*
	container *
shape:	�@
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
m2_hidden2_1/biasVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias
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
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:���������@*
T0
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
m2_hidden3_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *�7��*
dtype0
d
m2_hidden3_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *�7�>*
dtype0
�
)m2_hidden3_1/random_uniform/RandomUniformRandomUniform!m2_hidden3_1/random_uniform/shape*
dtype0*
seed2�Ԑ*
_output_shapes

:@*
seed�*
T0
�
m2_hidden3_1/random_uniform/subSubm2_hidden3_1/random_uniform/maxm2_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 
�
m2_hidden3_1/random_uniform/mulMul)m2_hidden3_1/random_uniform/RandomUniformm2_hidden3_1/random_uniform/sub*
_output_shapes

:@*
T0
�
m2_hidden3_1/random_uniformAddm2_hidden3_1/random_uniform/mulm2_hidden3_1/random_uniform/min*
T0*
_output_shapes

:@
�
m2_hidden3_1/kernelVarHandleOp*&
_class
loc:@m2_hidden3_1/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_namem2_hidden3_1/kernel
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
m2_hidden3_1/biasVarHandleOp*"
shared_namem2_hidden3_1/bias*$
_class
loc:@m2_hidden3_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
m2_hidden3_1/MatMulMatMulm2_hidden2_1/Relu"m2_hidden3_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:���������
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
m2_hidden3_1/ReluRelum2_hidden3_1/BiasAdd*'
_output_shapes
:���������*
T0
q
 m2_output_1/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
m2_output_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *����*
dtype0
c
m2_output_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *���>
�
(m2_output_1/random_uniform/RandomUniformRandomUniform m2_output_1/random_uniform/shape*
dtype0*
seed2���*
_output_shapes

:
*
seed�*
T0
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
m2_output_1/kernelVarHandleOp*#
shared_namem2_output_1/kernel*%
_class
loc:@m2_output_1/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: 
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
&m2_output_1/kernel/Read/ReadVariableOpReadVariableOpm2_output_1/kernel*%
_class
loc:@m2_output_1/kernel*
dtype0*
_output_shapes

:

^
m2_output_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

�
m2_output_1/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namem2_output_1/bias*#
_class
loc:@m2_output_1/bias*
	container *
shape:

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
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:���������

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
m2_output_1/SoftmaxSoftmaxm2_output_1/BiasAdd*
T0*'
_output_shapes
:���������

�
+Adam_2/iterations/Initializer/initial_valueConst*
dtype0	*
_output_shapes
: *$
_class
loc:@Adam_2/iterations*
value	B	 R 
�
Adam_2/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *"
shared_nameAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
	container *
shape: 
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
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 
�
'Adam_2/beta_2/Initializer/initial_valueConst* 
_class
loc:@Adam_2/beta_2*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
Adam_2/beta_2VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_2/beta_2* 
_class
loc:@Adam_2/beta_2
k
.Adam_2/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
�
Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_2/beta_2
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
Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 
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
Const_7Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
#metrics_2/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
���������*
dtype0
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
Truncate( *

DstT0*#
_output_shapes
:���������
�
metrics_2/accuracy/EqualEqualmetrics_2/accuracy/Squeezemetrics_2/accuracy/Cast*#
_output_shapes
:���������*
T0
�
metrics_2/accuracy/Cast_1Castmetrics_2/accuracy/Equal*
Truncate( *

DstT0*#
_output_shapes
:���������*

SrcT0

b
metrics_2/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
metrics_2/accuracy/SumSummetrics_2/accuracy/Cast_1metrics_2/accuracy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
k
&metrics_2/accuracy/AssignAddVariableOpAssignAddVariableOptotal_2metrics_2/accuracy/Sum*
dtype0
�
!metrics_2/accuracy/ReadVariableOpReadVariableOptotal_2'^metrics_2/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_2/accuracy/SizeSizemetrics_2/accuracy/Cast_1*
_output_shapes
: *
T0*
out_type0
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
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:���������
*
T0
�
Closs_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:���������
*
T0
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
:loss_2/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape*
Truncate( *

DstT0	*#
_output_shapes
:���������*

SrcT0
�
Eloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"����
   
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
T0*
Tlabels0	*6
_output_shapes$
":���������:���������

�
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_1}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:���������
�
Iloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
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
Truncate( *

DstT0*
_output_shapes
: 
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
Const_8Const*
valueB *
dtype0*
_output_shapes
: 
a
Mean_2Mean
loss_2/mulConst_8*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
y
training/Adam/gradients/ShapeConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
_output_shapes
: *
_class
	loc:@Mean*
valueB
 *  �?*
dtype0
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
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*
_class
	loc:@Mean
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
_output_shapes
: *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0
�
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:���������:���������*
T0
�
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0
�
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
�
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0
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
xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgshtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
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
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*#
_output_shapes
:���������*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0
�
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weightsgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*#
_output_shapes
:���������*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
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
�training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*�
_class�
��loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:���������

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
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0*
_output_shapes
:
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
ReciprocalAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valuec^training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*'
_output_shapes
:���������
*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log
�
Xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulbtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:���������
*
T0
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:*
T0
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
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:���������
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*'
_output_shapes
:���������

�
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
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
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
Dtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *$
_class
loc:@m1_output/Softmax*
valueB :
���������*
dtype0
�
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:���������*
	keep_dims(*

Tidx0*
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
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
_output_shapes
:
*
T0*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC
�
4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*#
_class
loc:@m1_output/MatMul*
transpose_a( *'
_output_shapes
:���������*
transpose_b(*
T0
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
transpose_b( *
T0*$
_class
loc:@m1_hidden3/MatMul*
transpose_a(*
_output_shapes

:@
�
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*'
_output_shapes
:���������@*
T0*"
_class
loc:@m1_hidden2/Relu
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
loc:@m1_hidden2/MatMul*
transpose_a( *(
_output_shapes
:����������
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
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�*
T0
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
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0	
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
training/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  �
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
_output_shapes
: *
T0
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
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
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
'training/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_0_1*
dtype0* 
_output_shapes
:
��*&
_class
loc:@training/Adam/m_0_1
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
_output_shapes
:	�@*&
_class
loc:@training/Adam/m_2_1*
dtype0
^
training/Adam/m_3Const*
dtype0*
_output_shapes
:@*
valueB@*    
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
'training/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_6_1*&
_class
loc:@training/Adam/m_6_1*
dtype0*
_output_shapes

:

^
training/Adam/m_7Const*
dtype0*
_output_shapes
:
*
valueB
*    
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
training/Adam/m_7_1/AssignAssignVariableOptraining/Adam/m_7_1training/Adam/m_7*
dtype0*&
_class
loc:@training/Adam/m_7_1
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
training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const*

index_type0* 
_output_shapes
:
��*
T0
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
training/Adam/v_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training/Adam/v_1_1VarHandleOp*
shape:�*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
	container 
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
training/Adam/v_2_1/AssignAssignVariableOptraining/Adam/v_2_1training/Adam/v_2*&
_class
loc:@training/Adam/v_2_1*
dtype0
�
'training/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_2_1*
_output_shapes
:	�@*&
_class
loc:@training/Adam/v_2_1*
dtype0
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
training/Adam/v_4Fill!training/Adam/v_4/shape_as_tensortraining/Adam/v_4/Const*
_output_shapes

:@*
T0*

index_type0
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
training/Adam/v_6_1/AssignAssignVariableOptraining/Adam/v_6_1training/Adam/v_6*
dtype0*&
_class
loc:@training/Adam/v_6_1
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
$training/Adam/vhat_0/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
$training/Adam/vhat_1/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training/Adam/vhat_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
$training/Adam/vhat_3/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
_
training/Adam/vhat_3/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
_output_shapes
:*
T0*

index_type0
�
training/Adam/vhat_4_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
	container *
shape:
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
training/Adam/vhat_5/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
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
training/Adam/sub_3/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes	
:�
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
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
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
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
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
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	�@
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes
:	�@*
T0
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
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	�@
Z
training/Adam/add_9/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes
:	�@*
T0
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
training/Adam/ReadVariableOp_30ReadVariableOpm1_hidden2/bias*
_output_shapes
:@*
dtype0
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
:@*
T0
l
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/m_3_1training/Adam/add_10*
dtype0
�
training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/m_3_1!^training/Adam/AssignVariableOp_9*
_output_shapes
:@*
dtype0
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
training/Adam/sub_15/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
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
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
:*
T0
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
training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/v_5_1"^training/Adam/AssignVariableOp_16*
_output_shapes
:*
dtype0
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
training/Adam/sub_20/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
[
training/Adam/sub_21/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
_output_shapes

:
*
T0
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
%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
_output_shapes

:
*
T0
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
%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
_output_shapes
:
*
T0
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
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
_output_shapes
:
*
T0
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
+training_1/Adam/gradients/Mean_1_grad/ConstConst*
_output_shapes
: *
_class
loc:@Mean_1*
valueB *
dtype0
�
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*

Tmultiples0*
T0*
_class
loc:@Mean_1*
_output_shapes
: 
�
-training_1/Adam/gradients/Mean_1_grad/Const_1Const*
_class
loc:@Mean_1*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
-training_1/Adam/gradients/Mean_1_grad/truedivRealDiv*training_1/Adam/gradients/Mean_1_grad/Tile-training_1/Adam/gradients/Mean_1_grad/Const_1*
T0*
_class
loc:@Mean_1*
_output_shapes
: 
�
-training_1/Adam/gradients/loss_1/mul_grad/MulMul-training_1/Adam/gradients/Mean_1_grad/truedivKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
�
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
_class
loc:@loss_1/mul*
_output_shapes
: *
T0
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
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_1/Adam/gradients/loss_1/mul_grad/Mul_1ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0*
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
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:���������*
T0
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weightsktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*#
_output_shapes
:���������*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
�
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:���������
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
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0*'
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
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    
�
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:���������

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
itraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:���������
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
�
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:���������
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
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
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0
�
vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0
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
�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
straining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*'
_output_shapes
:���������
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
�
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:���������

�
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1�training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
�
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 
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
4training_1/Adam/gradients/m2_output/Softmax_grad/subSubrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape4training_1/Adam/gradients/m2_output/Softmax_grad/Sum*'
_output_shapes
:���������
*
T0*$
_class
loc:@m2_output/Softmax
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
6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*#
_class
loc:@m2_output/MatMul*
transpose_a( *'
_output_shapes
:���������*
transpose_b(*
T0
�
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*#
_class
loc:@m2_output/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( *
T0
�
7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulm2_hidden3/Relu*
T0*"
_class
loc:@m2_hidden3/Relu*'
_output_shapes
:���������
�
=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:
�
7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad m2_hidden3/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:���������@*
transpose_b(*
T0*$
_class
loc:@m2_hidden3/MatMul
�
9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1MatMulm2_hidden2/Relu7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden3/MatMul*
transpose_a(*
_output_shapes

:@*
transpose_b( 
�
7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulm2_hidden2/Relu*"
_class
loc:@m2_hidden2/Relu*'
_output_shapes
:���������@*
T0
�
=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@
�
7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad m2_hidden2/MatMul/ReadVariableOp*$
_class
loc:@m2_hidden2/MatMul*
transpose_a( *(
_output_shapes
:����������*
transpose_b(*
T0
�
9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1MatMulm2_hidden1/Relu7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes
:	�@*
transpose_b( *
T0*$
_class
loc:@m2_hidden2/MatMul
�
7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulm2_hidden1/Relu*
T0*"
_class
loc:@m2_hidden1/Relu*(
_output_shapes
:����������
�
=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*%
_class
loc:@m2_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:�*
T0
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
9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
transpose_a(* 
_output_shapes
:
��*
transpose_b( *
T0*$
_class
loc:@m2_hidden1/MatMul
W
training_1/Adam/ConstConst*
_output_shapes
: *
value	B	 R*
dtype0	
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
%training_1/Adam/clip_by_value/MinimumMinimumtraining_1/Adam/subtraining_1/Adam/Const_2*
T0*
_output_shapes
: 
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
training_1/Adam/mulMul training_1/Adam/ReadVariableOp_1training_1/Adam/truediv*
_output_shapes
: *
T0
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
training_1/Adam/m_0_1VarHandleOp*(
_class
loc:@training_1/Adam/m_0_1*
	container *
shape:
��*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_0_1
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
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0*
_output_shapes	
:�
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
training_1/Adam/m_2Fill#training_1/Adam/m_2/shape_as_tensortraining_1/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	�@
�
training_1/Adam/m_2_1VarHandleOp*
shape:	�@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
	container 
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
training_1/Adam/m_3_1VarHandleOp*(
_class
loc:@training_1/Adam/m_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_3_1
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
)training_1/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_3_1*
_output_shapes
:@*(
_class
loc:@training_1/Adam/m_3_1*
dtype0
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
training_1/Adam/m_4_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_4_1*(
_class
loc:@training_1/Adam/m_4_1*
	container *
shape
:@
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
training_1/Adam/m_5_1VarHandleOp*(
_class
loc:@training_1/Adam/m_5_1*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_5_1
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
dtype0*
_output_shapes

:
*
valueB
*    
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
training_1/Adam/m_7_1VarHandleOp*&
shared_nametraining_1/Adam/m_7_1*(
_class
loc:@training_1/Adam/m_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
training_1/Adam/v_0Fill#training_1/Adam/v_0/shape_as_tensortraining_1/Adam/v_0/Const* 
_output_shapes
:
��*
T0*

index_type0
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
)training_1/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1* 
_output_shapes
:
��*(
_class
loc:@training_1/Adam/v_0_1*
dtype0
b
training_1/Adam/v_1Const*
valueB�*    *
dtype0*
_output_shapes	
:�
�
training_1/Adam/v_1_1VarHandleOp*
	container *
shape:�*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1
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
training_1/Adam/v_2Fill#training_1/Adam/v_2/shape_as_tensortraining_1/Adam/v_2/Const*

index_type0*
_output_shapes
:	�@*
T0
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
training_1/Adam/v_3_1VarHandleOp*(
_class
loc:@training_1/Adam/v_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_3_1
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
)training_1/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_3_1*
_output_shapes
:@*(
_class
loc:@training_1/Adam/v_3_1*
dtype0
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
training_1/Adam/v_4_1VarHandleOp*(
_class
loc:@training_1/Adam/v_4_1*
	container *
shape
:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_4_1
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
training_1/Adam/v_6_1VarHandleOp*(
_class
loc:@training_1/Adam/v_6_1*
	container *
shape
:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_6_1
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
training_1/Adam/v_7_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_7_1*(
_class
loc:@training_1/Adam/v_7_1*
	container *
shape:

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
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1*
	container 
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
training_1/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_1Fill&training_1/Adam/vhat_1/shape_as_tensortraining_1/Adam/vhat_1/Const*
_output_shapes
:*
T0*

index_type0
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
training_1/Adam/vhat_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
�
training_1/Adam/vhat_2_1VarHandleOp*+
_class!
loc:@training_1/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_2_1
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
,training_1/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_2_1*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_2_1*
dtype0
p
&training_1/Adam/vhat_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
training_1/Adam/vhat_3Fill&training_1/Adam/vhat_3/shape_as_tensortraining_1/Adam/vhat_3/Const*

index_type0*
_output_shapes
:*
T0
�
training_1/Adam/vhat_3_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*
_output_shapes
:*
T0*

index_type0
�
training_1/Adam/vhat_4_1VarHandleOp*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1*+
_class!
loc:@training_1/Adam/vhat_4_1*
	container *
shape:*
dtype0
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
&training_1/Adam/vhat_5/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training_1/Adam/vhat_5_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_1/Adam/sub_2/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
x
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
_output_shapes
: *
T0
�
training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
��
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
training_1/Adam/sub_3/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
x
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/x training_1/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 
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
training_1/Adam/Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3* 
_output_shapes
:
��*
T0
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
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
�
training_1/Adam/mul_7Multraining_1/Adam/sub_5=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:�
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
training_1/Adam/mul_10Multraining_1/Adam/multraining_1/Adam/add_4*
_output_shapes	
:�*
T0
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
training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
T0*
_output_shapes	
:�
e
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
_output_shapes	
:�*
T0
\
training_1/Adam/add_6/yConst*
_output_shapes
: *
valueB
 *���3*
dtype0
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
training_1/Adam/sub_7Sub!training_1/Adam/ReadVariableOp_14training_1/Adam/truediv_2*
T0*
_output_shapes	
:�
q
"training_1/Adam/AssignVariableOp_3AssignVariableOptraining_1/Adam/m_1_1training_1/Adam/add_4*
dtype0
�
!training_1/Adam/ReadVariableOp_15ReadVariableOptraining_1/Adam/m_1_1#^training_1/Adam/AssignVariableOp_3*
_output_shapes	
:�*
dtype0
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
training_1/Adam/mul_11Mul!training_1/Adam/ReadVariableOp_18%training_1/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	�@
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
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
_output_shapes
:	�@*
T0
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
'training_1/Adam/clip_by_value_3/MinimumMinimumtraining_1/Adam/add_8training_1/Adam/Const_8*
_output_shapes
:	�@*
T0
�
training_1/Adam/clip_by_value_3Maximum'training_1/Adam/clip_by_value_3/Minimumtraining_1/Adam/Const_7*
T0*
_output_shapes
:	�@
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
_output_shapes
:	�@*
dtype0
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
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/x!training_1/Adam/ReadVariableOp_27*
_output_shapes
: *
T0
�
training_1/Adam/mul_17Multraining_1/Adam/sub_11=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
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
training_1/Adam/mul_18Mul!training_1/Adam/ReadVariableOp_28%training_1/Adam/mul_18/ReadVariableOp*
_output_shapes
:@*
T0
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
training_1/Adam/Square_3Square=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
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
training_1/Adam/Const_10Const*
dtype0*
_output_shapes
: *
valueB
 *  �
�
'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_10*
T0*
_output_shapes
:@
�
training_1/Adam/clip_by_value_4Maximum'training_1/Adam/clip_by_value_4/Minimumtraining_1/Adam/Const_9*
T0*
_output_shapes
:@
d
training_1/Adam/Sqrt_4Sqrttraining_1/Adam/clip_by_value_4*
_output_shapes
:@*
T0
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
training_1/Adam/sub_13Sub!training_1/Adam/ReadVariableOp_30training_1/Adam/truediv_4*
_output_shapes
:@*
T0
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
!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/v_3_1$^training_1/Adam/AssignVariableOp_10*
_output_shapes
:@*
dtype0
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
training_1/Adam/Const_11Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training_1/Adam/Const_12Const*
valueB
 *  �*
dtype0*
_output_shapes
: 
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
!training_1/Adam/ReadVariableOp_42ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
w
%training_1/Adam/mul_26/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*
dtype0*
_output_shapes
:
�
training_1/Adam/mul_26Mul!training_1/Adam/ReadVariableOp_42%training_1/Adam/mul_26/ReadVariableOp*
_output_shapes
:*
T0
g
!training_1/Adam/ReadVariableOp_43ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
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
training_1/Adam/add_16Addtraining_1/Adam/mul_26training_1/Adam/mul_27*
T0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_44ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
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
training_1/Adam/sub_18Subtraining_1/Adam/sub_18/x!training_1/Adam/ReadVariableOp_45*
_output_shapes
: *
T0
�
training_1/Adam/Square_5Square=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
t
training_1/Adam/mul_29Multraining_1/Adam/sub_18training_1/Adam/Square_5*
T0*
_output_shapes
:
r
training_1/Adam/add_17Addtraining_1/Adam/mul_28training_1/Adam/mul_29*
_output_shapes
:*
T0
o
training_1/Adam/mul_30Multraining_1/Adam/multraining_1/Adam/add_16*
T0*
_output_shapes
:
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
training_1/Adam/add_18Addtraining_1/Adam/Sqrt_6training_1/Adam/add_18/y*
_output_shapes
:*
T0
y
training_1/Adam/truediv_6RealDivtraining_1/Adam/mul_30training_1/Adam/add_18*
_output_shapes
:*
T0
m
!training_1/Adam/ReadVariableOp_46ReadVariableOpm2_hidden3/bias*
_output_shapes
:*
dtype0
�
training_1/Adam/sub_19Sub!training_1/Adam/ReadVariableOp_46training_1/Adam/truediv_6*
T0*
_output_shapes
:
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
_output_shapes

:
*
dtype0
�
training_1/Adam/mul_33Mul!training_1/Adam/ReadVariableOp_52%training_1/Adam/mul_33/ReadVariableOp*
_output_shapes

:
*
T0
g
!training_1/Adam/ReadVariableOp_53ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_21/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
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
training_1/Adam/Const_15Const*
dtype0*
_output_shapes
: *
valueB
 *    
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
training_1/Adam/add_21/yConst*
dtype0*
_output_shapes
: *
valueB
 *���3
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
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
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
training_1/Adam/Square_7Square<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

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
training_1/Adam/Const_18Const*
_output_shapes
: *
valueB
 *  �*
dtype0
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
training_1/Adam/Sqrt_8Sqrttraining_1/Adam/clip_by_value_8*
T0*
_output_shapes
:

]
training_1/Adam/add_24/yConst*
valueB
 *���3*
dtype0*
_output_shapes
: 
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
training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
_output_shapes
:
*
T0
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

b
training_1/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_1VarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_2VarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_3VarIsInitializedOptraining_1/Adam/m_6_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_4VarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_5VarIsInitializedOptraining_1/Adam/v_5_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_6VarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_7VarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 
g
training_1/VarIsInitializedOp_8VarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 
d
training_1/VarIsInitializedOp_9VarIsInitializedOptraining_1/Adam/m_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_10VarIsInitializedOptraining_1/Adam/v_6_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_11VarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_12VarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_13VarIsInitializedOptraining_1/Adam/v_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_14VarIsInitializedOptraining_1/Adam/m_3_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_15VarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_16VarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_17VarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_18VarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_19VarIsInitializedOptraining_1/Adam/v_3_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_20VarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 
h
 training_1/VarIsInitializedOp_21VarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_22VarIsInitializedOptraining_1/Adam/m_4_1*
_output_shapes
: 
e
 training_1/VarIsInitializedOp_23VarIsInitializedOptraining_1/Adam/v_4_1*
_output_shapes
: 
�
training_1/initNoOp^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign
�
training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9
�
group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1""�Y
	variables�Y�Y
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
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08
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
training_1/Adam/vhat_7_1:0training_1/Adam/vhat_7_1/Assign.training_1/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_7:08"�Y
trainable_variables�Y�Y
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
training/Adam/vhat_7_1:0training/Adam/vhat_7_1/Assign,training/Adam/vhat_7_1/Read/ReadVariableOp:0(2training/Adam/vhat_7:08
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
training_1/Adam/vhat_7_1:0training_1/Adam/vhat_7_1/Assign.training_1/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_7:08"�
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
dropout_2_input:0.
dropout_2_input:0dropout_2/cond/Switch_1:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
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
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0��.�       ���	��ژ��A*

val_lossV�@��>8        )��P	&��ژ��A*

val_accuracyG8>q1-�       �K"	���ژ��A*

lossP@n��       ���	���ژ��A*

accuracyxz%>���(       ��2	]�oۘ��A*

val_loss�`	@�3�"       x=�	O�oۘ��A*

val_accuracy_�L>�2�4       ��-	��oۘ��A*

lossHd@���m       ��2	$�oۘ��A*

accuracy��?>���}       ��2	zܘ��A*

val_loss�e@�o[�"       x=�	�ܘ��A*

val_accuracy�Sc>�Ț�       ��-	�ܘ��A*

loss�@s��       ��2	]ܘ��A*

accuracy/nS>@8�*       ��2	���ܘ��A*

val_loss�f@h�?�"       x=�	���ܘ��A*

val_accuracyYw>�%:       ��-	a��ܘ��A*

loss�@�:6s       ��2	���ܘ��A*

accuracy��o>�)	�       ��2	�rlݘ��A*

val_loss-W�?�"       x=�	�slݘ��A*

val_accuracy��>@r�       ��-	�slݘ��A*

loss�@(�w�       ��2	ftlݘ��A*

accuracyΪ>2�ߜ       ��2	��ޘ��A*

val_lossp��?w�>"       x=�	��ޘ��A*

val_accuracy^K�>m�'+       ��-	�ޘ��A*

loss��?��+�       ��2	z�ޘ��A*

accuracyZ��>��G�       ��2	��ޘ��A*

val_lossX��?<�=8"       x=�	ꀶޘ��A*

val_accuracyO��>z� `       ��-	c��ޘ��A*

loss 1�?���       ��2	ǁ�ޘ��A*

accuracy'1�>vV�2       ��2	��\ߘ��A*

val_loss��?�P��"       x=�	��\ߘ��A*

val_accuracya�>��q!       ��-	�\ߘ��A*

loss�a�?�6��       ��2	s�\ߘ��A*

accuracy�Ú>瀃�       ��2	������A*

val_lossC^�?b���"       x=�	ھ����A*

val_accuracy鷯>��u       ��-	X�����A*

loss`&�?��       ��2	ſ����A*

accuracy3ĩ>=?v1       ��2	-J�����A	*

val_loss���?tlQ�"       x=�	K�����A	*

val_accuracy���>BzI       ��-	�K�����A	*

loss���?ځ��       ��2	�K�����A	*

accuracy٭>ş��       ��2	q.Tᘴ�A
*

val_loss^E�?S�"       x=�	�/Tᘴ�A
*

val_accuracy�ȶ>�n��       ��-	�/Tᘴ�A
*

loss���?D+i       ��2	d0Tᘴ�A
*

accuracy�s�>J�N�       ��2	�%�ᘴ�A*

val_loss\	�?:��"       x=�	�&�ᘴ�A*

val_accuracym�>�)��       ��-	L'�ᘴ�A*

loss���?�J��       ��2	�'�ᘴ�A*

accuracy�q�>]w�       ��2	�d�☴�A*

val_lossگ�?!�L"       x=�	�e�☴�A*

val_accuracy��>@x#�       ��-	f�☴�A*

loss��?xF�       ��2	wf�☴�A*

accuracy�ؿ>'��       ��2	#{B㘴�A*

val_lossZ��?@�*"       x=�	|B㘴�A*

val_accuracy���>��>S       ��-	�|B㘴�A*

lossX)�?�̅$       ��2	}B㘴�A*

accuracy*:�>$+��       ��2	��㘴�A*

val_loss��?q��R"       x=�	��㘴�A*

val_accuracyL7�>!y�\       ��-	M �㘴�A*

loss���?+��i       ��2	� �㘴�A*

accuracy$(�>��6p       ��2	~��䘴�A*

val_loss�'�?Ӓ]U"       x=�	u��䘴�A*

val_accuracy���>�s�       ��-	Ή䘴�A*

lossX�?8��9       ��2	D��䘴�A*

accuracy$��>�Cj?       ��2	��7嘴�A*

val_loss��?��E"       x=�	��7嘴�A*

val_accuracy���>\�^q       ��-	d�7嘴�A*

lossJ��?�tw�       ��2	��7嘴�A*

accuracy���>pdG       ��2	�`�嘴�A*

val_lossJ��?/��e"       x=�	�a�嘴�A*

val_accuracy��>(��u       ��-	Hb�嘴�A*

loss�6�?���)       ��2	�b�嘴�A*

accuracy}��>��"|       ��2	't�昴�A*

val_loss�y�?��6b"       x=�	u�昴�A*

val_accuracyEG�>ًN�       ��-	�u�昴�A*

loss߾�?��i       ��2	�u�昴�A*

accuracy2��>��       ��2	b�%瘴�A*

val_loss+�?Q�	"       x=�	O�%瘴�A*

val_accuracy��>�iO       ��-	��%瘴�A*

loss2��??�)       ��2	$�%瘴�A*

accuracy�C�>�1�       ��2	*U�瘴�A*

val_loss���?�-Y�"       x=�	V�瘴�A*

val_accuracy<��>p�{       ��-	{V�瘴�A*

loss#��?;��T       ��2	�V�瘴�A*

accuracy�@�>R       ��2	��n蘴�A*

val_loss|
�?�DZx"       x=�	�n蘴�A*

val_accuracy���>�!A       ��-	��n蘴�A*

loss��?��|�       ��2	�n蘴�A*

accuracy���>���       ��2	-�阴�A*

val_lossZ��?���{"       x=�	%�阴�A*

val_accuracy=
�>����       ��-	��阴�A*

lossH��?co^p       ��2	��阴�A*

accuracy8�>P@��       ��2	�9�阴�A*

val_lossJY�?�|��"       x=�	�:�阴�A*

val_accuracyг�>��B�       ��-	7;�阴�A*

lossW��?�s �       ��2	�;�阴�A*

accuracy�>^�       ��2	�;c꘴�A*

val_loss���?~��"       x=�	�<c꘴�A*

val_accuracytF�>Ϊ�*       ��-	 =c꘴�A*

loss*��?��       ��2	�=c꘴�A*

accuracy:#�>CDh�       ��2	�똴�A*

val_loss��?P)h�"       x=�	�똴�A*

val_accuracy��>q���       ��-	�똴�A*

loss�;�?'�kg       ��2	\똴�A*

accuracy��>XJ�h       ��2	B��똴�A*

val_lossfo�?%K�h"       x=�	.��똴�A*

val_accuracylx�>I�qm       ��-	���똴�A*

losshH�?*�)d       ��2	��똴�A*

accuracy�,�>(���       ��2	�Q옴�A*

val_loss�7�?R�i�"       x=�	�Q옴�A*

val_accuracyv��>��X       ��-	+Q옴�A*

lossX��?���       ��2	�Q옴�A*

accuracyD��>F!��       ��2	�)�옴�A*

val_loss�x�?K�D"       x=�	�*�옴�A*

val_accuracym��>�x��       ��-	+�옴�A*

loss�>�?mc       ��2	}+�옴�A*

accuracy'��>��K       ��2	��혴�A*

val_loss�k�?<�+�"       x=�	��혴�A*

val_accuracy�U�>�:L       ��-	��혴�A*

lossic�?���       ��2	L�혴�A*

accuracy�'�>�'�Z       ��2	`@F�A*

val_lossOJ�?.A�"       x=�	MAF�A*

val_accuracyRI�>�A�       ��-	�AF�A*

loss��?;o��       ��2	BF�A*

accuracyP��>�?�       ��2	���A*

val_loss3"�?�r�"       x=�	���A*

val_accuracy��>���,       ��-	��A*

loss��?
Y�       ��2	}��A*

accuracys��>�ރ�       ��2	��A *

val_loss�I�?m��"       x=�	����A *

val_accuracy�U�>׫��       ��-	$���A *

loss���?����       ��2	����A *

accuracyC��>�[u�       ��2	Y6��A!*

val_loss�,�?��F�"       x=�	Z6��A!*

val_accuracy���>�jY1       ��-	~Z6��A!*

loss��?�u>P       ��2	�Z6��A!*

accuracy��>9�d       ��2	����A"*

val_loss��?�rh�"       x=�	���A"*

val_accuracy o�>Q�       ��-	���A"*

loss��?���       ��2	����A"*

accuracy���>K���       ��2	�j���A#*

val_loss�g�?8S�$"       x=�	�k���A#*

val_accuracy&��>g��       ��-	)l���A#*

loss��?�'��       ��2	�l���A#*

accuracy�l�>��U:       ��2	/��A$*

val_loss���?�SO"       x=�	 /��A$*

val_accuracy���>8p��       ��-	q/��A$*

loss���?Ctb       ��2	�/��A$*

accuracyޓ�>��       ��2	[����A%*

val_loss�=�?t��"       x=�	K����A%*

val_accuracy0L�>�V&�       ��-	�����A%*

lossT
�?��F       ��2	#����A%*

accuracy�:�>r>c�       ��2	�z��A&*

val_loss���?~��"       x=�	�z��A&*

val_accuracyR'�>'��       ��-	%z��A&*

loss&P�?ݨI�       ��2	�z��A&*

accuracy�M�>���-       ��2	�O����A'*

val_loss���?�ؾL"       x=�	�P����A'*

val_accuracy�9�>*��       ��-	5Q����A'*

loss\d�?S�{=       ��2	�Q����A'*

accuracy���>w��       ��2	� �����A(*

val_loss��?\��"       x=�	������A(*

val_accuracy��>9�       ��-	W�����A(*

lossz^�?*�}\       ��2	������A(*

accuracyV��>�!�O       ��2	�Ap����A)*

val_loss�5�?$-�"       x=�	�Bp����A)*

val_accuracy���>�![       ��-	`Cp����A)*

loss�Ͽ?�E9       ��2	�Cp����A)*

accuracyF��>2i5       ��2	������A**

val_loss���?�6u"       x=�	������A**

val_accuracy���>ܹ�       ��-	<�����A**

loss!�?Vv'       ��2	������A**

accuracy[B�>X�#e       ��2	�������A+*

val_loss<��?)M�"       x=�	�������A+*

val_accuracy���>O��       ��-	�������A+*

lossD�?�n�"       ��2	e������A+*

accuracy�R�>_9�s       ��2	�^^����A,*

val_loss�Y�?�ه"       x=�	�_^����A,*

val_accuracy��>R���       ��-	
`^����A,*

loss��?x�       ��2	m`^����A,*

accuracyff�>�{�       ��2	ϭ����A-*

val_loss�:�?T��"       x=�	������A-*

val_accuracy^��>�[       ��-	1�����A-*

loss���?�ϋ�       ��2	������A-*

accuracy��>���5       ��2	@ا����A.*

val_lossn6�?���&"       x=�	3٧����A.*

val_accuracy�P�>��`�       ��-	�٧����A.*

loss��?�I�3       ��2	ڧ����A.*

accuracyvO�>EX       ��2	ɘS����A/*

val_loss޿?�fy0"       x=�	ЙS����A/*

val_accuracyV��>2�P       ��-	E�S����A/*

loss��?�lb       ��2	��S����A/*

accuracy�r�>ײY�       ��2	�g�����A0*

val_lossij�?��{�"       x=�	wh�����A0*

val_accuracy�c�>Ky�M       ��-	�h�����A0*

loss�a�?s�M       ��2	Ei�����A0*

accuracy^��>k��q       ��2	a�����A1*

val_loss��?�v�y"       x=�	T�����A1*

val_accuracy�/�>�_�       ��-	������A1*

loss�?X1��       ��2	#�����A1*

accuracyio�>�l/�       ��2	Q1A����A2*

val_lossc�?��(�"       x=�	E2A����A2*

val_accuracy���>�ߎ       ��-	�2A����A2*

loss�ź?�"�F       ��2	3A����A2*

accuracy�Z�>�Y       ��2	�Q�����A3*

val_loss��?���"       x=�	�R�����A3*

val_accuracyO�>��P       ��-	[S�����A3*

lossX�?/�ړ       ��2	�S�����A3*

accuracylx�>֮�*       ��2	�������A4*

val_loss;��?����"       x=�	�������A4*

val_accuracyq�>@{{       ��-	�������A4*

loss�׺?�K��       ��2	^������A4*

accuracy
��>�cq       ��2	�5����A5*

val_loss���?����"       x=�	�5����A5*

val_accuracy�^�>�x+E       ��-	#5����A5*

loss�u�? ���       ��2	�5����A5*

accuracy&��>A�C       ��2	5������A6*

val_loss�F�?5��"       x=�	/������A6*

val_accuracyi �>=��z       ��-	�������A6*

loss���?w�,�       ��2	�������A6*

accuracy2w�>�@��       ��2	|~����A7*

val_loss��?KâN"       x=�	�~����A7*

val_accuracy�H�>��e�       ��-		~����A7*

loss�(�?�l��       ��2	m~����A7*

accuracy��>�WG       ��2	x�!����A8*

val_loss(^�?���"       x=�	m�!����A8*

val_accuracy<��>�Y/       ��-	��!����A8*

lossIb�?BF       ��2	<�!����A8*

accuracy�|�>frm       ��2	9������A9*

val_losstx�?�8��"       x=�	)������A9*

val_accuracy;�>���       ��-	�������A9*

loss�,�?E*
�       ��2	�������A9*

accuracy�}�>E��       ��2	�j ���A:*

val_loss�D�?��"       x=�	�j ���A:*

val_accuracy�&�>�$W       ��-	lj ���A:*

lossy-�?n0��       ��2	�j ���A:*

accuracy�y�>����       ��2	9����A;*

val_loss��?�}�"       x=�	X����A;*

val_accuracy��>��Xa       ��-	�����A;*

loss��?���,       ��2	?����A;*

accuracyB>�>c�e�       ��2	�����A<*

val_loss��?��k"       x=�	�����A<*

val_accuracy�:�>��l�       ��-	#����A<*

loss�|�?���}       ��2	�����A<*

accuracyG�>�HJ       ��2	��]���A=*

val_loss���?�~"       x=�	��]���A=*

val_accuracy�j�>�Ck       ��-	�]���A=*

lossj��?W�e       ��2	y�]���A=*

accuracy|�>t�J�       ��2	l����A>*

val_loss`��?��>"       x=�	~����A>*

val_accuracy�L�>����       ��-	�����A>*

loss�N�?�o�       ��2	N ���A>*

accuracy)��>'+=�       ��2	_)����A?*

val_lossAɺ?aX��"       x=�	G*����A?*

val_accuracy<��>��
       ��-	�*����A?*

loss�0�?�1�       ��2	+����A?*

accuracy�&�>8�%       ��2	��J���A@*

val_loss6ؼ?����"       x=�	��J���A@*

val_accuracy��>��ũ       ��-	%�J���A@*

loss���?�͗o       ��2	��J���A@*

accuracy��>��	�       ��2	n����AA*

val_loss(�?,�e"       x=�	e	����AA*

val_accuracy���>�ײ�       ��-	�	����AA*

loss�r�?��h       ��2	9
����AA*

accuracy��>���       ��2	W^����AB*

val_loss��?���$"       x=�	O_����AB*

val_accuracyN��>�}d       ��-	�_����AB*

loss(^�?�<>�       ��2	`����AB*

accuracy�j�>�E�       ��2	�U@���AC*

val_loss�@�?��"       x=�	�V@���AC*

val_accuracyEG�>?�       ��-	?W@���AC*

loss���?$���       ��2	�W@���AC*

accuracy��>D�M        ��2	&b����AD*

val_loss���?����"       x=�	1c����AD*

val_accuracy���>��d"       ��-	�c����AD*

lossM�?����       ��2	d����AD*

accuracy�j�>m�oT       ��2	(?����AE*

val_loss��?GZ+"       x=�	@����AE*

val_accuracy-�>�7       ��-	}@����AE*

loss/o�?l��H       ��2	�@����AE*

accuracy���>��S�       ��2	�\.���AF*

val_lossȤ�?���E"       x=�	�].���AF*

val_accuracy�{�>S�       ��-	�].���AF*

loss���?fѮ�       ��2	Y^.���AF*

accuracyj�>"���       ��2	�=����AG*

val_lossg�?��Θ"       x=�	�>����AG*

val_accuracy���>�7��       ��-	I?����AG*

loss�:�?f%�y       ��2	�?����AG*

accuracy?5�>M��o       ��2	z�~	���AH*

val_loss4͹?Q��"       x=�	l�~	���AH*

val_accuracy�`�>���       ��-	Ճ~	���AH*

lossT=�?p�wm       ��2	:�~	���AH*

accuracyB> ?\X��       ��2	ru#
���AI*

val_loss�4�?M�"       x=�	bv#
���AI*

val_accuracy�m�>(rs�       ��-	�v#
���AI*

lossɱ�?y��	       ��2	1w#
���AI*

accuracy	�>)��v       ��2	�t�
���AJ*

val_lossT��?r��m"       x=�	�u�
���AJ*

val_accuracy���>"r       ��-	bv�
���AJ*

loss?��?{:3�       ��2	�v�
���AJ*

accuracy���>�<3       ��2	�n���AK*

val_lossj��?�8!�"       x=�	��n���AK*

val_accuracyг�>�#�       ��-	n�n���AK*

lossw+�?��
       ��2	ҿn���AK*

accuracy�Q ?�il�       ��2	¢���AL*

val_loss��?F¼k"       x=�	�����AL*

val_accuracyk��>؞�       ��-	����AL*

loss��?Z       ��2	�����AL*

accuracy ?�Of�       ��2	������AM*

val_loss:H�?w��\"       x=�	������AM*

val_accuracya2�>�3�       ��-	5�����AM*

loss䖲?�fy�       ��2	������AM*

accuracy� ?B�g       ��2	8e���AN*

val_lossr�?oD"       x=�	$e���AN*

val_accuracyF��>�R^       ��-	�e���AN*

loss�Z�?�p       ��2	�e���AN*

accuracy�z ?���2       ��2	��
���AO*

val_loss{��?@q�"       x=�	�
���AO*

val_accuracy�e�>��       ��-	`�
���AO*

loss	��?�
��       ��2	¼
���AO*

accuracy�?f� �       ��2	����AP*

val_loss�ӷ?y�"       x=�	�����AP*

val_accuracy���>����       ��-	&����AP*

loss��?Y�       ��2	�����AP*

accuracyI� ?�u:       ��2	$U���AQ*

val_lossP��?6f	"       x=�	%U���AQ*

val_accuracy�e�><�k�       ��-	�%U���AQ*

loss���?"R�       ��2	�%U���AQ*

accuracy�r ?Ӹ�6       ��2	������AR*

val_loss���?�^M"       x=�	������AR*

val_accuracy���>��r       ��-	T�����AR*

lossl=�?�R�       ��2	������AR*

accuracy�5?_�h       ��2	�����AS*

val_loss���?ئ�\"       x=�	������AS*

val_accuracy4��>pA �       ��-	n�����AS*

lossUʯ?�_��       ��2	Љ����AS*

accuracy�� ?n��       ��2	RlL���AT*

val_loss���?��y"       x=�	HmL���AT*

val_accuracy#J�>W�t�       ��-	�mL���AT*

loss�'�?#yV       ��2	nL���AT*

accuracy�x?E���       ��2	T�����AU*

val_loss�0�?lf�H"       x=�	@�����AU*

val_accuracy�>2�`�       ��-	������AU*

loss>�?��;y       ��2	�����AU*

accuracy A?���       ��2	 �����AV*

val_loss?-�?b�p"       x=�	�����AV*

val_accuracyX��>Y�       ��-	������AV*

loss��?��Y       ��2	ߪ����AV*

accuracy|?)77�       ��2	qo:���AW*

val_lossٷ?����"       x=�	ap:���AW*

val_accuracy�7�>��|�       ��-	�p:���AW*

loss��?!�F       ��2	2q:���AW*

accuracy�?�o�       ��2	o����AX*

val_loss�-�?�i�b"       x=�	�����AX*

val_accuracy���>���       ��-	�����AX*

lossF�?%rR       ��2	c����AX*

accuracy�?�C�       ��2	����AY*

val_loss+Ÿ?FO,*"       x=�	�����AY*

val_accuracy���>�/:t       ��-	Z����AY*

lossD�?=W7U       ��2	�����AY*

accuracy
h?Ŷ�3       ��2	&g/���AZ*

val_lossdB�?NS-�"       x=�	h/���AZ*

val_accuracy�8�>�9[�       ��-	�h/���AZ*

loss^N�?6o�       ��2	�h/���AZ*

accuracy�J?|g�       ��2	^o����A[*

val_loss8n�?�{="       x=�	Lp����A[*

val_accuracy���>1�q�       ��-	�p����A[*

loss��?y@��       ��2	 q����A[*

accuracy�?��)�       ��2	�Zy���A\*

val_loss��?���v"       x=�	�[y���A\*

val_accuracy��>���       ��-	8\y���A\*

lossV��?�օO       ��2	�\y���A\*

accuracy��?�{R;       ��2	 
���A]*

val_loss�ܵ?����"       x=�	�
���A]*

val_accuracy��>�H��       ��-	]���A]*

loss6z�?���       ��2	����A]*

accuracy�?fD�       ��2	
����A^*

val_loss�]�?l	��"       x=�	�����A^*

val_accuracyڬ�>9ƽv       ��-	q����A^*

loss�9�?)��       ��2	�����A^*

accuracy	�?v�~       ��2	<&g���A_*

val_loss	�?��!�"       x=�	L'g���A_*

val_accuracy-��>��7       ��-	�'g���A_*

loss2�?�_�(       ��2	$(g���A_*

accuracy$?2�z�       ��2	dB���A`*

val_loss0@�?9��G"       x=�	WC���A`*

val_accuracy"��>^v��       ��-	�C���A`*

loss�ʬ?[��       ��2	.D���A`*

accuracy�?N��       ��2	^n����Aa*

val_loss4��?��I_"       x=�	No����Aa*

val_accuracy���>2�{       ��-	�o����Aa*

loss��?ɝ�H       ��2	!p����Aa*

accuracy*�?��,       ��2	N:\���Ab*

val_loss�Z�?��H�"       x=�	A;\���Ab*

val_accuracy���>	�N       ��-	�;\���Ab*

loss�ج?R�f�       ��2	<\���Ab*

accuracy�H?{>��       ��2	z[ ���Ac*

val_lossT��?GҴ�"       x=�	d\ ���Ac*

val_accuracy���>M���       ��-	�\ ���Ac*

loss.Ȭ?3ٲ=       ��2	,] ���Ac*

accuracy?��3