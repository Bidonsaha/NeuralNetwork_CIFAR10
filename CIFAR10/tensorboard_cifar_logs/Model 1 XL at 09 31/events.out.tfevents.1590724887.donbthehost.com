       £K"	  ĄE"“×Abrain.Event:2ų>ž     xyą,	E×E"“×A"ü
u
m1_hidden1_inputPlaceholder*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
p
m1_hidden1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
b
m1_hidden1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *¬\1½
b
m1_hidden1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *¬\1=
­
'm1_hidden1/random_uniform/RandomUniformRandomUniformm1_hidden1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
*
seed2žÓ0*
seed

m1_hidden1/random_uniform/subSubm1_hidden1/random_uniform/maxm1_hidden1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden1/random_uniform/mulMul'm1_hidden1/random_uniform/RandomUniformm1_hidden1/random_uniform/sub* 
_output_shapes
:
*
T0

m1_hidden1/random_uniformAddm1_hidden1/random_uniform/mulm1_hidden1/random_uniform/min* 
_output_shapes
:
*
T0
·
m1_hidden1/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel*
	container *
shape:

s
2m1_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 

m1_hidden1/kernel/AssignAssignVariableOpm1_hidden1/kernelm1_hidden1/random_uniform*$
_class
loc:@m1_hidden1/kernel*
dtype0

%m1_hidden1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel*
dtype0* 
_output_shapes
:

_
m1_hidden1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
¬
m1_hidden1/biasVarHandleOp*"
_class
loc:@m1_hidden1/bias*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_namem1_hidden1/bias
o
0m1_hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1/bias*
_output_shapes
: 
~
m1_hidden1/bias/AssignAssignVariableOpm1_hidden1/biasm1_hidden1/Const*"
_class
loc:@m1_hidden1/bias*
dtype0

#m1_hidden1/bias/Read/ReadVariableOpReadVariableOpm1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
dtype0*
_output_shapes	
:
t
 m1_hidden1/MatMul/ReadVariableOpReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:

Ø
m1_hidden1/MatMulMatMulm1_hidden1_input m1_hidden1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
!m1_hidden1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden1/bias*
_output_shapes	
:*
dtype0

m1_hidden1/BiasAddBiasAddm1_hidden1/MatMul!m1_hidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
^
m1_hidden1/ReluRelum1_hidden1/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’
p
m1_hidden2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
b
m1_hidden2/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
b
m1_hidden2/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
­
'm1_hidden2/random_uniform/RandomUniformRandomUniformm1_hidden2/random_uniform/shape*
dtype0*
_output_shapes
:	@*
seed2ķó*
seed*
T0

m1_hidden2/random_uniform/subSubm1_hidden2/random_uniform/maxm1_hidden2/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden2/random_uniform/mulMul'm1_hidden2/random_uniform/RandomUniformm1_hidden2/random_uniform/sub*
T0*
_output_shapes
:	@

m1_hidden2/random_uniformAddm1_hidden2/random_uniform/mulm1_hidden2/random_uniform/min*
_output_shapes
:	@*
T0
¶
m1_hidden2/kernelVarHandleOp*
_output_shapes
: *"
shared_namem1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
	container *
shape:	@*
dtype0
s
2m1_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 

m1_hidden2/kernel/AssignAssignVariableOpm1_hidden2/kernelm1_hidden2/random_uniform*
dtype0*$
_class
loc:@m1_hidden2/kernel

%m1_hidden2/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
dtype0*
_output_shapes
:	@
]
m1_hidden2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
«
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

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
:	@
¦
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b( *
T0
m
!m1_hidden2/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2/bias*
_output_shapes
:@*
dtype0

m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
]
m1_hidden2/ReluRelum1_hidden2/BiasAdd*'
_output_shapes
:’’’’’’’’’@*
T0
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
 *7¾
b
m1_hidden3/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
¬
'm1_hidden3/random_uniform/RandomUniformRandomUniformm1_hidden3/random_uniform/shape*
dtype0*
_output_shapes

:@*
seed2®Æ*
seed*
T0

m1_hidden3/random_uniform/subSubm1_hidden3/random_uniform/maxm1_hidden3/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden3/random_uniform/mulMul'm1_hidden3/random_uniform/RandomUniformm1_hidden3/random_uniform/sub*
_output_shapes

:@*
T0

m1_hidden3/random_uniformAddm1_hidden3/random_uniform/mulm1_hidden3/random_uniform/min*
T0*
_output_shapes

:@
µ
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

m1_hidden3/kernel/AssignAssignVariableOpm1_hidden3/kernelm1_hidden3/random_uniform*$
_class
loc:@m1_hidden3/kernel*
dtype0

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
«
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

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
¦
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:

m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
]
m1_hidden3/ReluRelum1_hidden3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
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
 *ōōõ¾*
dtype0*
_output_shapes
: 
a
m1_output/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
Ŗ
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
_output_shapes

:
*
seed2ó*
seed*
T0*
dtype0

m1_output/random_uniform/subSubm1_output/random_uniform/maxm1_output/random_uniform/min*
T0*
_output_shapes
: 

m1_output/random_uniform/mulMul&m1_output/random_uniform/RandomUniformm1_output/random_uniform/sub*
T0*
_output_shapes

:


m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
T0*
_output_shapes

:

²
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

m1_output/kernel/AssignAssignVariableOpm1_output/kernelm1_output/random_uniform*#
_class
loc:@m1_output/kernel*
dtype0

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

Ø
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

"m1_output/bias/Read/ReadVariableOpReadVariableOpm1_output/bias*!
_class
loc:@m1_output/bias*
dtype0*
_output_shapes
:

p
m1_output/MatMul/ReadVariableOpReadVariableOpm1_output/kernel*
_output_shapes

:
*
dtype0
¤
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
transpose_b( 
k
 m1_output/BiasAdd/ReadVariableOpReadVariableOpm1_output/bias*
dtype0*
_output_shapes
:


m1_output/BiasAddBiasAddm1_output/MatMul m1_output/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
*
T0
a
m1_output/SoftmaxSoftmaxm1_output/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
§
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

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*
_output_shapes
: *"
_class
loc:@Adam/iterations*
dtype0	

,Adam/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *o:*%
_class
loc:@Adam/learning_rate*
dtype0
°
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
£
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0

&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
dtype0*
_output_shapes
: *%
_class
loc:@Adam/learning_rate

%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

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

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w¾?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

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

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 


Adam/decayVarHandleOp*
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam/decay

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

m1_output_targetPlaceholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
s
m1_output_sample_weightsPlaceholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
J
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

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
Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0

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

metrics/accuracy/SqueezeSqueezem1_output_target*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’
l
!metrics/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0
¤
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’

metrics/accuracy/CastCastmetrics/accuracy/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
~
metrics/accuracy/EqualEqualmetrics/accuracy/Squeezemetrics/accuracy/Cast*#
_output_shapes
:’’’’’’’’’*
T0

metrics/accuracy/Cast_1Castmetrics/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
`
metrics/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics/accuracy/SumSummetrics/accuracy/Cast_1metrics/accuracy/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0

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

!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
„
!metrics/accuracy/ReadVariableOp_2ReadVariableOptotal ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
«
'metrics/accuracy/truediv/ReadVariableOpReadVariableOpcount ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

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
 *æÖ3*
dtype0*
_output_shapes
: 
~
9loss/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Õ
7loss/m1_output_loss/sparse_categorical_crossentropy/subSub9loss/m1_output_loss/sparse_categorical_crossentropy/sub/x9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
Ņ
Iloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:’’’’’’’’’


Aloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
³
7loss/m1_output_loss/sparse_categorical_crossentropy/LogLogAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0

Aloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
×
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
Tshape0*#
_output_shapes
:’’’’’’’’’*
T0
Ź
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0	

Closs/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
_output_shapes
:*
valueB"’’’’
   *
dtype0

=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape7loss/m1_output_loss/sparse_categorical_crossentropy/LogCloss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Õ
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
ė
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
Tlabels0	*
T0

Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0

Gloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Ó
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
š
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Iloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

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
 *  ?*
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
²
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
	loc:@Mean

/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB *
_class
	loc:@Mean
Ė
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_class
	loc:@Mean*
_output_shapes
: 

'training/Adam/gradients/Mean_grad/ConstConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
Ī
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*

Tmultiples0*
T0*
_class
	loc:@Mean*
_output_shapes
: 

)training/Adam/gradients/Mean_grad/Const_1Const*
valueB
 *  ?*
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
Į
)training/Adam/gradients/Mean_grad/truedivRealDiv&training/Adam/gradients/Mean_grad/Tile)training/Adam/gradients/Mean_grad/Const_1*
_output_shapes
: *
T0*
_class
	loc:@Mean
ä
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
§
+training/Adam/gradients/loss/mul_grad/Mul_1Mul)training/Adam/gradients/Mean_grad/truediv
loss/mul/x*
_class
loc:@loss/mul*
_output_shapes
: *
T0

ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 

ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 

|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ś
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
ū
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
ą
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
_output_shapes
: *
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
·
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
»
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Į
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ū
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
ę
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
ä
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
Ē
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
ß
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’*

Tmultiples0

htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
’
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
ž
xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgshtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ū
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
é
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
Ż
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ś
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weightsgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ļ
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
ć
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ō
"training/Adam/gradients/zeros_like	ZerosLike}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
ø
Øtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’


§training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0

£training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1§training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
»
training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul£training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsØtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
©
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
_output_shapes
:*
T0*
out_type0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1

btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshapetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1

_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valuec^training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

¢
Xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulbtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ć
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
’
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
valueB *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
Ō
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
_output_shapes
:*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value

jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0
Ś
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*
T0*

index_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value

ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0
ī
ttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¤
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:’’’’’’’’’
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
¦
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

Ü
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ń
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0
ā
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
Ę
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapedtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: *
T0

ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output/Softmax*
T0*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:

ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
ņ
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:

rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ś
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

Ł
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ļ
mtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0
Ń
otraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ü
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
ń
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
ę
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
: 

2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
µ
Dtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*$
_class
loc:@m1_output/Softmax*
dtype0*
_output_shapes
: 
Ø
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:’’’’’’’’’*

Tidx0*
	keep_dims(*
T0*$
_class
loc:@m1_output/Softmax
µ
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’

Ś
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’

į
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0*$
_class
loc:@m1_output/BiasAdd

4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0*#
_class
loc:@m1_output/MatMul
ū
6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1MatMulm1_hidden3/Relu4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*#
_class
loc:@m1_output/MatMul*
_output_shapes

:
*
transpose_a(*
transpose_b( 
Ž
5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGradReluGrad4training/Adam/gradients/m1_output/MatMul_grad/MatMulm1_hidden3/Relu*
T0*"
_class
loc:@m1_hidden3/Relu*'
_output_shapes
:’’’’’’’’’
ä
;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:

5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad m1_hidden3/MatMul/ReadVariableOp*$
_class
loc:@m1_hidden3/MatMul*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b(*
T0
ž
7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1MatMulm1_hidden2/Relu5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*$
_class
loc:@m1_hidden3/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
ß
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*
T0*"
_class
loc:@m1_hidden2/Relu*'
_output_shapes
:’’’’’’’’’@
ä
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0*%
_class
loc:@m1_hidden2/BiasAdd

5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad m1_hidden2/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m1_hidden2/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
’
7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1MatMulm1_hidden1/Relu5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden2/MatMul*
_output_shapes
:	@*
transpose_a(*
transpose_b( 
ą
5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulm1_hidden1/Relu*
T0*"
_class
loc:@m1_hidden1/Relu*(
_output_shapes
:’’’’’’’’’
å
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:

5training/Adam/gradients/m1_hidden1/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad m1_hidden1/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(

7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad* 
_output_shapes
:
*
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

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
 *  ?*
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
training/Adam/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
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
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
_output_shapes
: *
T0

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
 *  ?
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
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
r
!training/Adam/m_0/shape_as_tensorConst*
valueB"      *
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

training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:

½
training/Adam/m_0_1VarHandleOp*
shape:
*
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

training/Adam/m_0_1/AssignAssignVariableOptraining/Adam/m_0_1training/Adam/m_0*&
_class
loc:@training/Adam/m_0_1*
dtype0
„
'training/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
dtype0* 
_output_shapes
:

`
training/Adam/m_1Const*
dtype0*
_output_shapes	
:*
valueB*    
ø
training/Adam/m_1_1VarHandleOp*
	container *
shape:*
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

training/Adam/m_1_1/AssignAssignVariableOptraining/Adam/m_1_1training/Adam/m_1*&
_class
loc:@training/Adam/m_1_1*
dtype0
 
'training/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes	
:*&
_class
loc:@training/Adam/m_1_1
r
!training/Adam/m_2/shape_as_tensorConst*
valueB"   @   *
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

training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*
_output_shapes
:	@*
T0*

index_type0
¼
training/Adam/m_2_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
	container *
shape:	@
w
4training/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 

training/Adam/m_2_1/AssignAssignVariableOptraining/Adam/m_2_1training/Adam/m_2*&
_class
loc:@training/Adam/m_2_1*
dtype0
¤
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
dtype0*
_output_shapes
:	@
^
training/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
·
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

training/Adam/m_3_1/AssignAssignVariableOptraining/Adam/m_3_1training/Adam/m_3*&
_class
loc:@training/Adam/m_3_1*
dtype0

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

training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
»
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

training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*&
_class
loc:@training/Adam/m_4_1*
dtype0
£
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
·
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

training/Adam/m_5_1/AssignAssignVariableOptraining/Adam/m_5_1training/Adam/m_5*&
_class
loc:@training/Adam/m_5_1*
dtype0

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
»
training/Adam/m_6_1VarHandleOp*&
_class
loc:@training/Adam/m_6_1*
	container *
shape
:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_6_1
w
4training/Adam/m_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_6_1*
_output_shapes
: 

training/Adam/m_6_1/AssignAssignVariableOptraining/Adam/m_6_1training/Adam/m_6*&
_class
loc:@training/Adam/m_6_1*
dtype0
£
'training/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_6_1*&
_class
loc:@training/Adam/m_6_1*
dtype0*
_output_shapes

:

^
training/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

·
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

training/Adam/m_7_1/AssignAssignVariableOptraining/Adam/m_7_1training/Adam/m_7*&
_class
loc:@training/Adam/m_7_1*
dtype0

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
valueB"      *
dtype0
\
training/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:

½
training/Adam/v_0_1VarHandleOp*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1
w
4training/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 

training/Adam/v_0_1/AssignAssignVariableOptraining/Adam/v_0_1training/Adam/v_0*&
_class
loc:@training/Adam/v_0_1*
dtype0
„
'training/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
dtype0* 
_output_shapes
:

`
training/Adam/v_1Const*
_output_shapes	
:*
valueB*    *
dtype0
ø
training/Adam/v_1_1VarHandleOp*
	container *
shape:*
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

training/Adam/v_1_1/AssignAssignVariableOptraining/Adam/v_1_1training/Adam/v_1*&
_class
loc:@training/Adam/v_1_1*
dtype0
 
'training/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
dtype0*
_output_shapes	
:
r
!training/Adam/v_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   
\
training/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	@
¼
training/Adam/v_2_1VarHandleOp*&
_class
loc:@training/Adam/v_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_2_1
w
4training/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 

training/Adam/v_2_1/AssignAssignVariableOptraining/Adam/v_2_1training/Adam/v_2*&
_class
loc:@training/Adam/v_2_1*
dtype0
¤
'training/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
dtype0*
_output_shapes
:	@
^
training/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
·
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

training/Adam/v_3_1/AssignAssignVariableOptraining/Adam/v_3_1training/Adam/v_3*&
_class
loc:@training/Adam/v_3_1*
dtype0

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

training/Adam/v_4Fill!training/Adam/v_4/shape_as_tensortraining/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
»
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

training/Adam/v_4_1/AssignAssignVariableOptraining/Adam/v_4_1training/Adam/v_4*&
_class
loc:@training/Adam/v_4_1*
dtype0
£
'training/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_4_1*
dtype0*
_output_shapes

:@*&
_class
loc:@training/Adam/v_4_1
^
training/Adam/v_5Const*
dtype0*
_output_shapes
:*
valueB*    
·
training/Adam/v_5_1VarHandleOp*$
shared_nametraining/Adam/v_5_1*&
_class
loc:@training/Adam/v_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
w
4training/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_5_1*
_output_shapes
: 

training/Adam/v_5_1/AssignAssignVariableOptraining/Adam/v_5_1training/Adam/v_5*&
_class
loc:@training/Adam/v_5_1*
dtype0

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

»
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

training/Adam/v_6_1/AssignAssignVariableOptraining/Adam/v_6_1training/Adam/v_6*
dtype0*&
_class
loc:@training/Adam/v_6_1
£
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

·
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

training/Adam/v_7_1/AssignAssignVariableOptraining/Adam/v_7_1training/Adam/v_7*&
_class
loc:@training/Adam/v_7_1*
dtype0

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

training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_0_1/AssignAssignVariableOptraining/Adam/vhat_0_1training/Adam/vhat_0*)
_class
loc:@training/Adam/vhat_0_1*
dtype0
Ø
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

training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
_output_shapes
:*
T0*

index_type0
Ą
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

training/Adam/vhat_1_1/AssignAssignVariableOptraining/Adam/vhat_1_1training/Adam/vhat_1*)
_class
loc:@training/Adam/vhat_1_1*
dtype0
Ø
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

training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*)
_class
loc:@training/Adam/vhat_2_1*
dtype0
Ø
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

training/Adam/vhat_3Fill$training/Adam/vhat_3/shape_as_tensortraining/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_3_1/AssignAssignVariableOptraining/Adam/vhat_3_1training/Adam/vhat_3*)
_class
loc:@training/Adam/vhat_3_1*
dtype0
Ø
*training/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_3_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_3_1
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

training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_4_1/AssignAssignVariableOptraining/Adam/vhat_4_1training/Adam/vhat_4*)
_class
loc:@training/Adam/vhat_4_1*
dtype0
Ø
*training/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_4_1*)
_class
loc:@training/Adam/vhat_4_1*
dtype0*
_output_shapes
:
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

training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
Ą
training/Adam/vhat_5_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_5_1*)
_class
loc:@training/Adam/vhat_5_1
}
7training/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_5_1*
_output_shapes
: 

training/Adam/vhat_5_1/AssignAssignVariableOptraining/Adam/vhat_5_1training/Adam/vhat_5*)
_class
loc:@training/Adam/vhat_5_1*
dtype0
Ø
*training/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_5_1*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_5_1*
dtype0
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

training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_6_1/AssignAssignVariableOptraining/Adam/vhat_6_1training/Adam/vhat_6*)
_class
loc:@training/Adam/vhat_6_1*
dtype0
Ø
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

training/Adam/vhat_7Fill$training/Adam/vhat_7/shape_as_tensortraining/Adam/vhat_7/Const*

index_type0*
_output_shapes
:*
T0
Ą
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

training/Adam/vhat_7_1/AssignAssignVariableOptraining/Adam/vhat_7_1training/Adam/vhat_7*
dtype0*)
_class
loc:@training/Adam/vhat_7_1
Ø
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


training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:

b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training/Adam/mul_2Multraining/Adam/sub_27training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0* 
_output_shapes
:

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


training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:

b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 

training/Adam/SquareSquare7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square* 
_output_shapes
:
*
T0
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0* 
_output_shapes
:

m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0* 
_output_shapes
:

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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4* 
_output_shapes
:
*
T0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0* 
_output_shapes
:

f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0* 
_output_shapes
:

Z
training/Adam/add_3/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0* 
_output_shapes
:

w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0* 
_output_shapes
:

r
training/Adam/ReadVariableOp_6ReadVariableOpm1_hidden1/kernel* 
_output_shapes
:
*
dtype0
~
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0* 
_output_shapes
:

i
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/m_0_1training/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/m_0_1^training/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:

k
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/v_0_1training/Adam/add_2*
dtype0

training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/v_0_1!^training/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:

i
 training/Adam/AssignVariableOp_2AssignVariableOpm1_hidden1/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpm1_hidden1/kernel!^training/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes	
:

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
_output_shapes
: *
T0

training/Adam/mul_7Multraining/Adam/sub_5;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
s
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/v_1_1*
dtype0*
_output_shapes	
:

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0

training/Adam/Square_1Square;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes	
:
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes	
:
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes	
:
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*
_output_shapes	
:

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
_output_shapes	
:*
T0
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes	
:
Z
training/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes	
:
s
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes	
:*
T0
l
training/Adam/ReadVariableOp_14ReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:
z
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
_output_shapes	
:*
T0
k
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/m_1_1training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/m_1_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:
k
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/v_1_1training/Adam/add_5*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/v_1_1!^training/Adam/AssignVariableOp_4*
_output_shapes	
:*
dtype0
g
 training/Adam/AssignVariableOp_5AssignVariableOpm1_hidden1/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpm1_hidden1/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/m_2_1*
dtype0*
_output_shapes
:	@

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	@
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	@*
T0
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes
:	@
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/v_2_1*
dtype0*
_output_shapes
:	@

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:	@
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	@*
T0
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes
:	@*
T0
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	@
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes
:	@*
T0
Z
training/Adam/Const_7Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_8Const*
_output_shapes
: *
valueB
 *  *
dtype0

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
_output_shapes
:	@*
T0

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*
_output_shapes
:	@
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes
:	@*
T0
Z
training/Adam/add_9/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	@
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes
:	@*
T0
r
training/Adam/ReadVariableOp_22ReadVariableOpm1_hidden2/kernel*
dtype0*
_output_shapes
:	@

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes
:	@
k
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/m_2_1training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/m_2_1!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	@
k
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/v_2_1training/Adam/add_8*
dtype0

training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/v_2_1!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	@
j
 training/Adam/AssignVariableOp_8AssignVariableOpm1_hidden2/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpm1_hidden2/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	@
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

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

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

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

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
training/Adam/Const_9Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
_output_shapes
:@*
T0

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
 *æÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:@
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

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/m_3_1!^training/Adam/AssignVariableOp_9*
_output_shapes
:@*
dtype0
m
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/v_3_1training/Adam/add_11*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/v_3_1"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
i
!training/Adam/AssignVariableOp_11AssignVariableOpm1_hidden2/biastraining/Adam/sub_13*
dtype0

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

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
_output_shapes
: *
T0

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

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes

:@

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
_output_shapes

:@*
T0
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
_output_shapes

:@*
T0
[
training/Adam/add_15/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:@
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

training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/m_4_1"^training/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
m
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/v_4_1training/Adam/add_14*
dtype0

training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/v_4_1"^training/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
k
!training/Adam/AssignVariableOp_14AssignVariableOpm1_hidden3/kerneltraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOpm1_hidden3/kernel"^training/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
s
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/m_5_1*
_output_shapes
:*
dtype0

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_17;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
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

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
_output_shapes
: *
T0

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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:

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
training/Adam/add_18/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
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

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/m_5_1"^training/Adam/AssignVariableOp_15*
_output_shapes
:*
dtype0
m
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/v_5_1training/Adam/add_17*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/v_5_1"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
i
!training/Adam/AssignVariableOp_17AssignVariableOpm1_hidden3/biastraining/Adam/sub_19*
dtype0

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


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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 

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
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
w
#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/v_6_1*
dtype0*
_output_shapes

:


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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
_output_shapes
: *
T0

training/Adam/Square_6Square6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
_output_shapes

:
*
T0

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
_output_shapes

:
*
T0
d
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
_output_shapes

:
*
T0
[
training/Adam/add_21/yConst*
valueB
 *æÖ3*
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
training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
_output_shapes

:
*
T0
m
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/m_6_1training/Adam/add_19*
dtype0

training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/m_6_1"^training/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

m
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/v_6_1training/Adam/add_20*
dtype0

training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/v_6_1"^training/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

j
!training/Adam/AssignVariableOp_20AssignVariableOpm1_output/kerneltraining/Adam/sub_22*
dtype0

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


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
 *  ?*
dtype0
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

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


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
training/Adam/sub_24/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

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
training/Adam/Const_18Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
_output_shapes
:
*
T0

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
 *æÖ3*
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

training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/m_7_1"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

m
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/v_7_1training/Adam/add_23*
dtype0

training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/v_7_1"^training/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

h
!training/Adam/AssignVariableOp_23AssignVariableOpm1_output/biastraining/Adam/sub_25*
dtype0

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
Ä
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^count/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^total/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
Š
training/group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
{

group_depsNoOp^Mean^metrics/accuracy/Identity ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1
L
PlaceholderPlaceholder*
_output_shapes
: *
shape: *
dtype0
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
:’’’’’’’’’*
shape:’’’’’’’’’
f
$dropout_1/keras_learning_phase/inputConst*
_output_shapes
: *
value	B
 Z *
dtype0


dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 

dropout_1/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

c
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 

dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_1/cond/dropout/Shape/SwitchSwitchdropout_1_inputdropout_1/cond/pred_id*
T0*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
¼
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2*
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_1/cond/dropout/addAdddropout_1/cond/dropout/sub%dropout_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_1/cond/dropout/truedivRealDiv%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/sub*(
_output_shapes
:’’’’’’’’’*
T0

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
µ
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*
T0*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
p
m2_hidden1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
b
m2_hidden1/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
b
m2_hidden1/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
­
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
dtype0* 
_output_shapes
:
*
seed2”¢*
seed*
T0

m2_hidden1/random_uniform/subSubm2_hidden1/random_uniform/maxm2_hidden1/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden1/random_uniform/mulMul'm2_hidden1/random_uniform/RandomUniformm2_hidden1/random_uniform/sub* 
_output_shapes
:
*
T0

m2_hidden1/random_uniformAddm2_hidden1/random_uniform/mulm2_hidden1/random_uniform/min* 
_output_shapes
:
*
T0
·
m2_hidden1/kernelVarHandleOp*$
_class
loc:@m2_hidden1/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1/kernel
s
2m2_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 

m2_hidden1/kernel/AssignAssignVariableOpm2_hidden1/kernelm2_hidden1/random_uniform*$
_class
loc:@m2_hidden1/kernel*
dtype0

%m2_hidden1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1/kernel*$
_class
loc:@m2_hidden1/kernel*
dtype0* 
_output_shapes
:

_
m2_hidden1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
¬
m2_hidden1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: * 
shared_namem2_hidden1/bias*"
_class
loc:@m2_hidden1/bias*
	container 
o
0m2_hidden1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/bias*
_output_shapes
: 
~
m2_hidden1/bias/AssignAssignVariableOpm2_hidden1/biasm2_hidden1/Const*"
_class
loc:@m2_hidden1/bias*
dtype0

#m2_hidden1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1/bias*"
_class
loc:@m2_hidden1/bias*
dtype0*
_output_shapes	
:
t
 m2_hidden1/MatMul/ReadVariableOpReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:

¬
m2_hidden1/MatMulMatMuldropout_1/cond/Merge m2_hidden1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
n
!m2_hidden1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:

m2_hidden1/BiasAddBiasAddm2_hidden1/MatMul!m2_hidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
^
m2_hidden1/ReluRelum2_hidden1/BiasAdd*(
_output_shapes
:’’’’’’’’’*
T0
p
m2_hidden2/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
b
m2_hidden2/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
b
m2_hidden2/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
­
'm2_hidden2/random_uniform/RandomUniformRandomUniformm2_hidden2/random_uniform/shape*
seed*
T0*
dtype0*
_output_shapes
:	@*
seed2¼Å

m2_hidden2/random_uniform/subSubm2_hidden2/random_uniform/maxm2_hidden2/random_uniform/min*
_output_shapes
: *
T0

m2_hidden2/random_uniform/mulMul'm2_hidden2/random_uniform/RandomUniformm2_hidden2/random_uniform/sub*
_output_shapes
:	@*
T0

m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
T0*
_output_shapes
:	@
¶
m2_hidden2/kernelVarHandleOp*$
_class
loc:@m2_hidden2/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2/kernel
s
2m2_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 

m2_hidden2/kernel/AssignAssignVariableOpm2_hidden2/kernelm2_hidden2/random_uniform*$
_class
loc:@m2_hidden2/kernel*
dtype0

%m2_hidden2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
dtype0*
_output_shapes
:	@
]
m2_hidden2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
«
m2_hidden2/biasVarHandleOp*
shape:@*
dtype0*
_output_shapes
: * 
shared_namem2_hidden2/bias*"
_class
loc:@m2_hidden2/bias*
	container 
o
0m2_hidden2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/bias*
_output_shapes
: 
~
m2_hidden2/bias/AssignAssignVariableOpm2_hidden2/biasm2_hidden2/Const*"
_class
loc:@m2_hidden2/bias*
dtype0

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
:	@
¦
m2_hidden2/MatMulMatMulm2_hidden1/Relu m2_hidden2/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’@*
transpose_a( 
m
!m2_hidden2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@

m2_hidden2/BiasAddBiasAddm2_hidden2/MatMul!m2_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
]
m2_hidden2/ReluRelum2_hidden2/BiasAdd*'
_output_shapes
:’’’’’’’’’@*
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
 *7¾*
dtype0*
_output_shapes
: 
b
m2_hidden3/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
«
'm2_hidden3/random_uniform/RandomUniformRandomUniformm2_hidden3/random_uniform/shape*
seed*
T0*
dtype0*
_output_shapes

:@*
seed2Ē	

m2_hidden3/random_uniform/subSubm2_hidden3/random_uniform/maxm2_hidden3/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden3/random_uniform/mulMul'm2_hidden3/random_uniform/RandomUniformm2_hidden3/random_uniform/sub*
T0*
_output_shapes

:@

m2_hidden3/random_uniformAddm2_hidden3/random_uniform/mulm2_hidden3/random_uniform/min*
T0*
_output_shapes

:@
µ
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

m2_hidden3/kernel/AssignAssignVariableOpm2_hidden3/kernelm2_hidden3/random_uniform*
dtype0*$
_class
loc:@m2_hidden3/kernel

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
«
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

#m2_hidden3/bias/Read/ReadVariableOpReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:*"
_class
loc:@m2_hidden3/bias
r
 m2_hidden3/MatMul/ReadVariableOpReadVariableOpm2_hidden3/kernel*
_output_shapes

:@*
dtype0
¦
m2_hidden3/MatMulMatMulm2_hidden2/Relu m2_hidden3/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
m
!m2_hidden3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3/bias*
_output_shapes
:*
dtype0

m2_hidden3/BiasAddBiasAddm2_hidden3/MatMul!m2_hidden3/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
T0*
data_formatNHWC
]
m2_hidden3/ReluRelum2_hidden3/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
o
m2_output/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
a
m2_output/random_uniform/minConst*
valueB
 *ōōõ¾*
dtype0*
_output_shapes
: 
a
m2_output/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
Ŗ
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
T0*
dtype0*
_output_shapes

:
*
seed2ėĒ«*
seed

m2_output/random_uniform/subSubm2_output/random_uniform/maxm2_output/random_uniform/min*
T0*
_output_shapes
: 

m2_output/random_uniform/mulMul&m2_output/random_uniform/RandomUniformm2_output/random_uniform/sub*
T0*
_output_shapes

:


m2_output/random_uniformAddm2_output/random_uniform/mulm2_output/random_uniform/min*
_output_shapes

:
*
T0
²
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

m2_output/kernel/AssignAssignVariableOpm2_output/kernelm2_output/random_uniform*#
_class
loc:@m2_output/kernel*
dtype0

$m2_output/kernel/Read/ReadVariableOpReadVariableOpm2_output/kernel*
dtype0*
_output_shapes

:
*#
_class
loc:@m2_output/kernel
\
m2_output/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

Ø
m2_output/biasVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namem2_output/bias*!
_class
loc:@m2_output/bias
m
/m2_output/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output/bias*
_output_shapes
: 
z
m2_output/bias/AssignAssignVariableOpm2_output/biasm2_output/Const*!
_class
loc:@m2_output/bias*
dtype0

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

¤
m2_output/MatMulMatMulm2_hidden3/Relum2_output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
transpose_b( 
k
 m2_output/BiasAdd/ReadVariableOpReadVariableOpm2_output/bias*
dtype0*
_output_shapes
:


m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
T0*
data_formatNHWC
a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


+Adam_1/iterations/Initializer/initial_valueConst*
value	B	 R *$
_class
loc:@Adam_1/iterations*
dtype0	*
_output_shapes
: 
­
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

Adam_1/iterations/AssignAssignVariableOpAdam_1/iterations+Adam_1/iterations/Initializer/initial_value*$
_class
loc:@Adam_1/iterations*
dtype0	

%Adam_1/iterations/Read/ReadVariableOpReadVariableOpAdam_1/iterations*
dtype0	*
_output_shapes
: *$
_class
loc:@Adam_1/iterations

.Adam_1/learning_rate/Initializer/initial_valueConst*
valueB
 *o:*'
_class
loc:@Adam_1/learning_rate*
dtype0*
_output_shapes
: 
¶
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
«
Adam_1/learning_rate/AssignAssignVariableOpAdam_1/learning_rate.Adam_1/learning_rate/Initializer/initial_value*
dtype0*'
_class
loc:@Adam_1/learning_rate

(Adam_1/learning_rate/Read/ReadVariableOpReadVariableOpAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
dtype0*
_output_shapes
: 

'Adam_1/beta_1/Initializer/initial_valueConst*
valueB
 *fff?* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 
”
Adam_1/beta_1VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1
k
.Adam_1/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 

Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value* 
_class
loc:@Adam_1/beta_1*
dtype0

!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_1/beta_1

'Adam_1/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w¾?* 
_class
loc:@Adam_1/beta_2*
dtype0
”
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

Adam_1/beta_2/AssignAssignVariableOpAdam_1/beta_2'Adam_1/beta_2/Initializer/initial_value* 
_class
loc:@Adam_1/beta_2*
dtype0

!Adam_1/beta_2/Read/ReadVariableOpReadVariableOpAdam_1/beta_2* 
_class
loc:@Adam_1/beta_2*
dtype0*
_output_shapes
: 

&Adam_1/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 

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

Adam_1/decay/AssignAssignVariableOpAdam_1/decay&Adam_1/decay/Initializer/initial_value*
_class
loc:@Adam_1/decay*
dtype0

 Adam_1/decay/Read/ReadVariableOpReadVariableOpAdam_1/decay*
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 

m2_output_targetPlaceholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
s
m2_output_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
L
Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 

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

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
count_1/Read/ReadVariableOpReadVariableOpcount_1*
dtype0*
_output_shapes
: *
_class
loc:@count_1

metrics_1/accuracy/SqueezeSqueezem2_output_target*
squeeze_dims

’’’’’’’’’*
T0*#
_output_shapes
:’’’’’’’’’
n
#metrics_1/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ø
metrics_1/accuracy/ArgMaxArgMaxm2_output/Softmax#metrics_1/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0

metrics_1/accuracy/CastCastmetrics_1/accuracy/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0

metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*#
_output_shapes
:’’’’’’’’’*
T0

metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
b
metrics_1/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_1/accuracy/SumSummetrics_1/accuracy/Cast_1metrics_1/accuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
&metrics_1/accuracy/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/accuracy/Sum*
dtype0

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

#metrics_1/accuracy/ReadVariableOp_1ReadVariableOpcount_1)^metrics_1/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_1/accuracy/ReadVariableOp_2ReadVariableOptotal_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_1/accuracy/truediv/ReadVariableOpReadVariableOpcount_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_1/accuracy/truedivRealDiv#metrics_1/accuracy/ReadVariableOp_2)metrics_1/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_1/accuracy/IdentityIdentitymetrics_1/accuracy/truediv*
_output_shapes
: *
T0

;loss_1/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ū
9loss_1/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ö
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:’’’’’’’’’


Closs_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:’’’’’’’’’

·
9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ū
=loss_1/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_targetCloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_1/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0	

Eloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogEloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0
Ł
_loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ń
}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
Tlabels0	

Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0

Iloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
×
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 

Kloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_1/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


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
loss_1/mulConst_5*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
}
training_1/Adam/gradients/ShapeConst*
valueB *
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 

#training_1/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
ŗ
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*

index_type0*
_class
loc:@Mean_1*
_output_shapes
: *
T0

3training_1/Adam/gradients/Mean_1_grad/Reshape/shapeConst*
valueB *
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
×
-training_1/Adam/gradients/Mean_1_grad/ReshapeReshapetraining_1/Adam/gradients/Fill3training_1/Adam/gradients/Mean_1_grad/Reshape/shape*
_output_shapes
: *
T0*
Tshape0*
_class
loc:@Mean_1

+training_1/Adam/gradients/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@Mean_1
Ü
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*
_class
loc:@Mean_1

-training_1/Adam/gradients/Mean_1_grad/Const_1Const*
valueB
 *  ?*
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
Ļ
-training_1/Adam/gradients/Mean_1_grad/truedivRealDiv*training_1/Adam/gradients/Mean_1_grad/Tile-training_1/Adam/gradients/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
_class
loc:@Mean_1
š
-training_1/Adam/gradients/loss_1/mul_grad/MulMul-training_1/Adam/gradients/Mean_1_grad/truedivKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
³
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
_class
loc:@loss_1/mul*
_output_shapes
: *
T0

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
valueB *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 

rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
valueB *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 

training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ī
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
æ
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Ē
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
Ķ
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_1/Adam/gradients/loss_1/mul_grad/Mul_1ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ō
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
valueB:*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
dtype0*
_output_shapes
:
ņ
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
Ļ
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
ķ
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*#
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
 
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem2_output_sample_weights*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:

|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ē
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
÷
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
ė
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’*
T0

ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weightsktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ż
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ń
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*#
_output_shapes
:’’’’’’’’’*
T0*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ś
$training_1/Adam/gradients/zeros_like	ZerosLikeloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

Ą
¬training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits

«training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: 
Ŗ
§training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1«training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
É
 training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul§training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims¬training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

±
dtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*
T0*
out_type0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
_output_shapes
:

ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*
Tshape0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:’’’’’’’’’


ctraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

°
\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ė
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0*
out_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value

jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
valueB *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
Ž
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*
out_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0
č
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’


otraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ü
xtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¶
itraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ø
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
ź
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ß
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
š
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
Ō
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: 
”
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output/Softmax*
T0*
out_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:

rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
valueB *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ü
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:

vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

į
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
į
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ć
straining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Selecttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
’
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
ō
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

4training_1/Adam/gradients/m2_output/Softmax_grad/mulMulrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem2_output/Softmax*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’

·
Ftraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*$
_class
loc:@m2_output/Softmax*
dtype0*
_output_shapes
: 
®
4training_1/Adam/gradients/m2_output/Softmax_grad/SumSum4training_1/Adam/gradients/m2_output/Softmax_grad/mulFtraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indices*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’*

Tidx0*
	keep_dims(*
T0
½
4training_1/Adam/gradients/m2_output/Softmax_grad/subSubrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape4training_1/Adam/gradients/m2_output/Softmax_grad/Sum*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’

Ž
6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1Mul4training_1/Adam/gradients/m2_output/Softmax_grad/subm2_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0*$
_class
loc:@m2_output/Softmax
å
<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGradBiasAddGrad6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
_output_shapes
:
*
T0*$
_class
loc:@m2_output/BiasAdd*
data_formatNHWC

6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*
T0*#
_class
loc:@m2_output/MatMul*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(
’
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0*#
_class
loc:@m2_output/MatMul
ā
7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulm2_hidden3/Relu*'
_output_shapes
:’’’’’’’’’*
T0*"
_class
loc:@m2_hidden3/Relu
č
=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*%
_class
loc:@m2_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0

7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad m2_hidden3/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden3/MatMul*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b(

9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1MatMulm2_hidden2/Relu7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden3/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( 
ć
7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulm2_hidden2/Relu*
T0*"
_class
loc:@m2_hidden2/Relu*'
_output_shapes
:’’’’’’’’’@
č
=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@

7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad m2_hidden2/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden2/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(

9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1MatMulm2_hidden1/Relu7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*$
_class
loc:@m2_hidden2/MatMul*
_output_shapes
:	@*
transpose_a(*
transpose_b( *
T0
ä
7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulm2_hidden1/Relu*
T0*"
_class
loc:@m2_hidden1/Relu*(
_output_shapes
:’’’’’’’’’
é
=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0*%
_class
loc:@m2_hidden1/BiasAdd

7training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad m2_hidden1/MatMul/ReadVariableOp*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0*$
_class
loc:@m2_hidden1/MatMul

9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden1/MatMul* 
_output_shapes
:
*
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

training_1/Adam/ReadVariableOpReadVariableOpAdam_1/iterations$^training_1/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_1/Adam/Cast/ReadVariableOpReadVariableOpAdam_1/iterations*
dtype0	*
_output_shapes
: 

training_1/Adam/CastCast#training_1/Adam/Cast/ReadVariableOp*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
Z
training_1/Adam/add/yConst*
valueB
 *  ?*
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
 *  ?*
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
 *  *
dtype0*
_output_shapes
: 

%training_1/Adam/clip_by_value/MinimumMinimumtraining_1/Adam/subtraining_1/Adam/Const_2*
_output_shapes
: *
T0

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
training_1/Adam/Pow_1Pow$training_1/Adam/Pow_1/ReadVariableOptraining_1/Adam/add*
T0*
_output_shapes
: 
\
training_1/Adam/sub_1/xConst*
valueB
 *  ?*
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
training_1/Adam/mulMul training_1/Adam/ReadVariableOp_1training_1/Adam/truediv*
_output_shapes
: *
T0
t
#training_1/Adam/m_0/shape_as_tensorConst*
valueB"      *
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

training_1/Adam/m_0Fill#training_1/Adam/m_0/shape_as_tensortraining_1/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:

Ć
training_1/Adam/m_0_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_0_1*(
_class
loc:@training_1/Adam/m_0_1*
	container *
shape:

{
6training_1/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 

training_1/Adam/m_0_1/AssignAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/m_0*(
_class
loc:@training_1/Adam/m_0_1*
dtype0
«
)training_1/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_0_1*(
_class
loc:@training_1/Adam/m_0_1*
dtype0* 
_output_shapes
:

b
training_1/Adam/m_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_1/Adam/m_1_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_1_1*(
_class
loc:@training_1/Adam/m_1_1*
	container *
shape:
{
6training_1/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 

training_1/Adam/m_1_1/AssignAssignVariableOptraining_1/Adam/m_1_1training_1/Adam/m_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0
¦
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0*
_output_shapes	
:
t
#training_1/Adam/m_2/shape_as_tensorConst*
valueB"   @   *
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

training_1/Adam/m_2Fill#training_1/Adam/m_2/shape_as_tensortraining_1/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	@
Ā
training_1/Adam/m_2_1VarHandleOp*
_output_shapes
: *&
shared_nametraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
	container *
shape:	@*
dtype0
{
6training_1/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 

training_1/Adam/m_2_1/AssignAssignVariableOptraining_1/Adam/m_2_1training_1/Adam/m_2*(
_class
loc:@training_1/Adam/m_2_1*
dtype0
Ŗ
)training_1/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
dtype0*
_output_shapes
:	@
`
training_1/Adam/m_3Const*
dtype0*
_output_shapes
:@*
valueB@*    
½
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

training_1/Adam/m_3_1/AssignAssignVariableOptraining_1/Adam/m_3_1training_1/Adam/m_3*
dtype0*(
_class
loc:@training_1/Adam/m_3_1
„
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

training_1/Adam/m_4Fill#training_1/Adam/m_4/shape_as_tensortraining_1/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
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

training_1/Adam/m_4_1/AssignAssignVariableOptraining_1/Adam/m_4_1training_1/Adam/m_4*
dtype0*(
_class
loc:@training_1/Adam/m_4_1
©
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
½
training_1/Adam/m_5_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_5_1*(
_class
loc:@training_1/Adam/m_5_1*
	container *
shape:
{
6training_1/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 

training_1/Adam/m_5_1/AssignAssignVariableOptraining_1/Adam/m_5_1training_1/Adam/m_5*(
_class
loc:@training_1/Adam/m_5_1*
dtype0
„
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

Į
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

training_1/Adam/m_6_1/AssignAssignVariableOptraining_1/Adam/m_6_1training_1/Adam/m_6*(
_class
loc:@training_1/Adam/m_6_1*
dtype0
©
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

½
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

training_1/Adam/m_7_1/AssignAssignVariableOptraining_1/Adam/m_7_1training_1/Adam/m_7*(
_class
loc:@training_1/Adam/m_7_1*
dtype0
„
)training_1/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_7_1*(
_class
loc:@training_1/Adam/m_7_1*
dtype0*
_output_shapes
:

t
#training_1/Adam/v_0/shape_as_tensorConst*
valueB"      *
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

training_1/Adam/v_0Fill#training_1/Adam/v_0/shape_as_tensortraining_1/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:

Ć
training_1/Adam/v_0_1VarHandleOp*(
_class
loc:@training_1/Adam/v_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_0_1
{
6training_1/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 

training_1/Adam/v_0_1/AssignAssignVariableOptraining_1/Adam/v_0_1training_1/Adam/v_0*(
_class
loc:@training_1/Adam/v_0_1*
dtype0
«
)training_1/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1*
dtype0* 
_output_shapes
:
*(
_class
loc:@training_1/Adam/v_0_1
b
training_1/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_1/Adam/v_1_1VarHandleOp*&
shared_nametraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
{
6training_1/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 

training_1/Adam/v_1_1/AssignAssignVariableOptraining_1/Adam/v_1_1training_1/Adam/v_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0
¦
)training_1/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0*
_output_shapes	
:
t
#training_1/Adam/v_2/shape_as_tensorConst*
valueB"   @   *
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

training_1/Adam/v_2Fill#training_1/Adam/v_2/shape_as_tensortraining_1/Adam/v_2/Const*
_output_shapes
:	@*
T0*

index_type0
Ā
training_1/Adam/v_2_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
	container *
shape:	@
{
6training_1/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 

training_1/Adam/v_2_1/AssignAssignVariableOptraining_1/Adam/v_2_1training_1/Adam/v_2*
dtype0*(
_class
loc:@training_1/Adam/v_2_1
Ŗ
)training_1/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*
dtype0*
_output_shapes
:	@*(
_class
loc:@training_1/Adam/v_2_1
`
training_1/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
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

training_1/Adam/v_3_1/AssignAssignVariableOptraining_1/Adam/v_3_1training_1/Adam/v_3*(
_class
loc:@training_1/Adam/v_3_1*
dtype0
„
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

training_1/Adam/v_4Fill#training_1/Adam/v_4/shape_as_tensortraining_1/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
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

training_1/Adam/v_4_1/AssignAssignVariableOptraining_1/Adam/v_4_1training_1/Adam/v_4*(
_class
loc:@training_1/Adam/v_4_1*
dtype0
©
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
½
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

training_1/Adam/v_5_1/AssignAssignVariableOptraining_1/Adam/v_5_1training_1/Adam/v_5*(
_class
loc:@training_1/Adam/v_5_1*
dtype0
„
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

Į
training_1/Adam/v_6_1VarHandleOp*
_output_shapes
: *&
shared_nametraining_1/Adam/v_6_1*(
_class
loc:@training_1/Adam/v_6_1*
	container *
shape
:
*
dtype0
{
6training_1/Adam/v_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_6_1*
_output_shapes
: 

training_1/Adam/v_6_1/AssignAssignVariableOptraining_1/Adam/v_6_1training_1/Adam/v_6*(
_class
loc:@training_1/Adam/v_6_1*
dtype0
©
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

½
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

training_1/Adam/v_7_1/AssignAssignVariableOptraining_1/Adam/v_7_1training_1/Adam/v_7*(
_class
loc:@training_1/Adam/v_7_1*
dtype0
„
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

training_1/Adam/vhat_0Fill&training_1/Adam/vhat_0/shape_as_tensortraining_1/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_0_1VarHandleOp*+
_class!
loc:@training_1/Adam/vhat_0_1*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_0_1

9training_1/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 

training_1/Adam/vhat_0_1/AssignAssignVariableOptraining_1/Adam/vhat_0_1training_1/Adam/vhat_0*
dtype0*+
_class!
loc:@training_1/Adam/vhat_0_1
®
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

training_1/Adam/vhat_1Fill&training_1/Adam/vhat_1/shape_as_tensortraining_1/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_1_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_1_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
	container *
shape:

9training_1/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 

training_1/Adam/vhat_1_1/AssignAssignVariableOptraining_1/Adam/vhat_1_1training_1/Adam/vhat_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0
®
,training_1/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_1_1*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0
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

training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_1/Adam/vhat_2_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 

training_1/Adam/vhat_2_1/AssignAssignVariableOptraining_1/Adam/vhat_2_1training_1/Adam/vhat_2*+
_class!
loc:@training_1/Adam/vhat_2_1*
dtype0
®
,training_1/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_2_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_2_1
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

training_1/Adam/vhat_3Fill&training_1/Adam/vhat_3/shape_as_tensortraining_1/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_3_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
	container *
shape:

9training_1/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 

training_1/Adam/vhat_3_1/AssignAssignVariableOptraining_1/Adam/vhat_3_1training_1/Adam/vhat_3*+
_class!
loc:@training_1/Adam/vhat_3_1*
dtype0
®
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

training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_4_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1*+
_class!
loc:@training_1/Adam/vhat_4_1*
	container *
shape:

9training_1/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 

training_1/Adam/vhat_4_1/AssignAssignVariableOptraining_1/Adam/vhat_4_1training_1/Adam/vhat_4*+
_class!
loc:@training_1/Adam/vhat_4_1*
dtype0
®
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

training_1/Adam/vhat_5Fill&training_1/Adam/vhat_5/shape_as_tensortraining_1/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_5_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 

training_1/Adam/vhat_5_1/AssignAssignVariableOptraining_1/Adam/vhat_5_1training_1/Adam/vhat_5*
dtype0*+
_class!
loc:@training_1/Adam/vhat_5_1
®
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

training_1/Adam/vhat_6Fill&training_1/Adam/vhat_6/shape_as_tensortraining_1/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_6_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_6_1*+
_class!
loc:@training_1/Adam/vhat_6_1*
	container 

9training_1/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 

training_1/Adam/vhat_6_1/AssignAssignVariableOptraining_1/Adam/vhat_6_1training_1/Adam/vhat_6*+
_class!
loc:@training_1/Adam/vhat_6_1*
dtype0
®
,training_1/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_6_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_6_1
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

training_1/Adam/vhat_7Fill&training_1/Adam/vhat_7/shape_as_tensortraining_1/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_7_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 

training_1/Adam/vhat_7_1/AssignAssignVariableOptraining_1/Adam/vhat_7_1training_1/Adam/vhat_7*+
_class!
loc:@training_1/Adam/vhat_7_1*
dtype0
®
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


training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:

f
 training_1/Adam/ReadVariableOp_3ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
_output_shapes
: *
T0

training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

u
training_1/Adam/add_1Addtraining_1/Adam/mul_1training_1/Adam/mul_2*
T0* 
_output_shapes
:

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


training_1/Adam/mul_3Mul training_1/Adam/ReadVariableOp_4$training_1/Adam/mul_3/ReadVariableOp* 
_output_shapes
:
*
T0
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
 *  ?
x
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/x training_1/Adam/ReadVariableOp_5*
_output_shapes
: *
T0

training_1/Adam/SquareSquare9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
v
training_1/Adam/mul_4Multraining_1/Adam/sub_3training_1/Adam/Square*
T0* 
_output_shapes
:

u
training_1/Adam/add_2Addtraining_1/Adam/mul_3training_1/Adam/mul_4* 
_output_shapes
:
*
T0
s
training_1/Adam/mul_5Multraining_1/Adam/multraining_1/Adam/add_1*
T0* 
_output_shapes
:

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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_1/MinimumMinimumtraining_1/Adam/add_2training_1/Adam/Const_4* 
_output_shapes
:
*
T0

training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3*
T0* 
_output_shapes
:

j
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1*
T0* 
_output_shapes
:

\
training_1/Adam/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
x
training_1/Adam/add_3Addtraining_1/Adam/Sqrt_1training_1/Adam/add_3/y*
T0* 
_output_shapes
:

}
training_1/Adam/truediv_1RealDivtraining_1/Adam/mul_5training_1/Adam/add_3*
T0* 
_output_shapes
:

t
 training_1/Adam/ReadVariableOp_6ReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:


training_1/Adam/sub_4Sub training_1/Adam/ReadVariableOp_6training_1/Adam/truediv_1*
T0* 
_output_shapes
:

o
 training_1/Adam/AssignVariableOpAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/add_1*
dtype0

 training_1/Adam/ReadVariableOp_7ReadVariableOptraining_1/Adam/m_0_1!^training_1/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:

q
"training_1/Adam/AssignVariableOp_1AssignVariableOptraining_1/Adam/v_0_1training_1/Adam/add_2*
dtype0

 training_1/Adam/ReadVariableOp_8ReadVariableOptraining_1/Adam/v_0_1#^training_1/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:

m
"training_1/Adam/AssignVariableOp_2AssignVariableOpm2_hidden1/kerneltraining_1/Adam/sub_4*
dtype0

 training_1/Adam/ReadVariableOp_9ReadVariableOpm2_hidden1/kernel#^training_1/Adam/AssignVariableOp_2* 
_output_shapes
:
*
dtype0
g
!training_1/Adam/ReadVariableOp_10ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_6/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
dtype0*
_output_shapes	
:

training_1/Adam/mul_6Mul!training_1/Adam/ReadVariableOp_10$training_1/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_11ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
_output_shapes
: *
T0

training_1/Adam/mul_7Multraining_1/Adam/sub_5=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
p
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
T0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_12ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_8/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*
dtype0*
_output_shapes	
:

training_1/Adam/mul_8Mul!training_1/Adam/ReadVariableOp_12$training_1/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_13ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_6Subtraining_1/Adam/sub_6/x!training_1/Adam/ReadVariableOp_13*
_output_shapes
: *
T0

training_1/Adam/Square_1Square=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
s
training_1/Adam/mul_9Multraining_1/Adam/sub_6training_1/Adam/Square_1*
T0*
_output_shapes	
:
p
training_1/Adam/add_5Addtraining_1/Adam/mul_8training_1/Adam/mul_9*
T0*
_output_shapes	
:
o
training_1/Adam/mul_10Multraining_1/Adam/multraining_1/Adam/add_4*
T0*
_output_shapes	
:
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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_6*
T0*
_output_shapes	
:

training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
_output_shapes	
:*
T0
e
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
T0*
_output_shapes	
:
\
training_1/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
s
training_1/Adam/add_6Addtraining_1/Adam/Sqrt_2training_1/Adam/add_6/y*
_output_shapes	
:*
T0
y
training_1/Adam/truediv_2RealDivtraining_1/Adam/mul_10training_1/Adam/add_6*
_output_shapes	
:*
T0
n
!training_1/Adam/ReadVariableOp_14ReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:

training_1/Adam/sub_7Sub!training_1/Adam/ReadVariableOp_14training_1/Adam/truediv_2*
_output_shapes	
:*
T0
q
"training_1/Adam/AssignVariableOp_3AssignVariableOptraining_1/Adam/m_1_1training_1/Adam/add_4*
dtype0

!training_1/Adam/ReadVariableOp_15ReadVariableOptraining_1/Adam/m_1_1#^training_1/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:
q
"training_1/Adam/AssignVariableOp_4AssignVariableOptraining_1/Adam/v_1_1training_1/Adam/add_5*
dtype0

!training_1/Adam/ReadVariableOp_16ReadVariableOptraining_1/Adam/v_1_1#^training_1/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:
k
"training_1/Adam/AssignVariableOp_5AssignVariableOpm2_hidden1/biastraining_1/Adam/sub_7*
dtype0

!training_1/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1/bias#^training_1/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_18ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_11/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*
dtype0*
_output_shapes
:	@

training_1/Adam/mul_11Mul!training_1/Adam/ReadVariableOp_18%training_1/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	@
g
!training_1/Adam/ReadVariableOp_19ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
_output_shapes
: *
T0

training_1/Adam/mul_12Multraining_1/Adam/sub_89training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
v
training_1/Adam/add_7Addtraining_1/Adam/mul_11training_1/Adam/mul_12*
T0*
_output_shapes
:	@
g
!training_1/Adam/ReadVariableOp_20ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_13/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*
dtype0*
_output_shapes
:	@

training_1/Adam/mul_13Mul!training_1/Adam/ReadVariableOp_20%training_1/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:	@
g
!training_1/Adam/ReadVariableOp_21ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_9Subtraining_1/Adam/sub_9/x!training_1/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training_1/Adam/Square_2Square9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
x
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
T0*
_output_shapes
:	@
v
training_1/Adam/add_8Addtraining_1/Adam/mul_13training_1/Adam/mul_14*
T0*
_output_shapes
:	@
s
training_1/Adam/mul_15Multraining_1/Adam/multraining_1/Adam/add_7*
T0*
_output_shapes
:	@
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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_3/MinimumMinimumtraining_1/Adam/add_8training_1/Adam/Const_8*
_output_shapes
:	@*
T0

training_1/Adam/clip_by_value_3Maximum'training_1/Adam/clip_by_value_3/Minimumtraining_1/Adam/Const_7*
T0*
_output_shapes
:	@
i
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
T0*
_output_shapes
:	@
\
training_1/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
w
training_1/Adam/add_9Addtraining_1/Adam/Sqrt_3training_1/Adam/add_9/y*
T0*
_output_shapes
:	@
}
training_1/Adam/truediv_3RealDivtraining_1/Adam/mul_15training_1/Adam/add_9*
T0*
_output_shapes
:	@
t
!training_1/Adam/ReadVariableOp_22ReadVariableOpm2_hidden2/kernel*
dtype0*
_output_shapes
:	@

training_1/Adam/sub_10Sub!training_1/Adam/ReadVariableOp_22training_1/Adam/truediv_3*
T0*
_output_shapes
:	@
q
"training_1/Adam/AssignVariableOp_6AssignVariableOptraining_1/Adam/m_2_1training_1/Adam/add_7*
dtype0

!training_1/Adam/ReadVariableOp_23ReadVariableOptraining_1/Adam/m_2_1#^training_1/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	@
q
"training_1/Adam/AssignVariableOp_7AssignVariableOptraining_1/Adam/v_2_1training_1/Adam/add_8*
dtype0

!training_1/Adam/ReadVariableOp_24ReadVariableOptraining_1/Adam/v_2_1#^training_1/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	@
n
"training_1/Adam/AssignVariableOp_8AssignVariableOpm2_hidden2/kerneltraining_1/Adam/sub_10*
dtype0

!training_1/Adam/ReadVariableOp_25ReadVariableOpm2_hidden2/kernel#^training_1/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	@
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

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/x!training_1/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

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

training_1/Adam/mul_18Mul!training_1/Adam/ReadVariableOp_28%training_1/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:@
g
!training_1/Adam/ReadVariableOp_29ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_12Subtraining_1/Adam/sub_12/x!training_1/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

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
training_1/Adam/add_11Addtraining_1/Adam/mul_18training_1/Adam/mul_19*
T0*
_output_shapes
:@
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
 *  

'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_10*
T0*
_output_shapes
:@

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
training_1/Adam/add_12/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
t
training_1/Adam/add_12Addtraining_1/Adam/Sqrt_4training_1/Adam/add_12/y*
T0*
_output_shapes
:@
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

training_1/Adam/sub_13Sub!training_1/Adam/ReadVariableOp_30training_1/Adam/truediv_4*
T0*
_output_shapes
:@
r
"training_1/Adam/AssignVariableOp_9AssignVariableOptraining_1/Adam/m_3_1training_1/Adam/add_10*
dtype0

!training_1/Adam/ReadVariableOp_31ReadVariableOptraining_1/Adam/m_3_1#^training_1/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
s
#training_1/Adam/AssignVariableOp_10AssignVariableOptraining_1/Adam/v_3_1training_1/Adam/add_11*
dtype0

!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/v_3_1$^training_1/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
m
#training_1/Adam/AssignVariableOp_11AssignVariableOpm2_hidden2/biastraining_1/Adam/sub_13*
dtype0

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

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_14Subtraining_1/Adam/sub_14/x!training_1/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 

training_1/Adam/mul_22Multraining_1/Adam/sub_149training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
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

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_15Subtraining_1/Adam/sub_15/x!training_1/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

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
training_1/Adam/mul_25Multraining_1/Adam/multraining_1/Adam/add_13*
T0*
_output_shapes

:@
]
training_1/Adam/Const_11Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training_1/Adam/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_5/MinimumMinimumtraining_1/Adam/add_14training_1/Adam/Const_12*
_output_shapes

:@*
T0

training_1/Adam/clip_by_value_5Maximum'training_1/Adam/clip_by_value_5/Minimumtraining_1/Adam/Const_11*
_output_shapes

:@*
T0
h
training_1/Adam/Sqrt_5Sqrttraining_1/Adam/clip_by_value_5*
_output_shapes

:@*
T0
]
training_1/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
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

training_1/Adam/sub_16Sub!training_1/Adam/ReadVariableOp_38training_1/Adam/truediv_5*
_output_shapes

:@*
T0
s
#training_1/Adam/AssignVariableOp_12AssignVariableOptraining_1/Adam/m_4_1training_1/Adam/add_13*
dtype0

!training_1/Adam/ReadVariableOp_39ReadVariableOptraining_1/Adam/m_4_1$^training_1/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
s
#training_1/Adam/AssignVariableOp_13AssignVariableOptraining_1/Adam/v_4_1training_1/Adam/add_14*
dtype0

!training_1/Adam/ReadVariableOp_40ReadVariableOptraining_1/Adam/v_4_1$^training_1/Adam/AssignVariableOp_13*
_output_shapes

:@*
dtype0
o
#training_1/Adam/AssignVariableOp_14AssignVariableOpm2_hidden3/kerneltraining_1/Adam/sub_16*
dtype0

!training_1/Adam/ReadVariableOp_41ReadVariableOpm2_hidden3/kernel$^training_1/Adam/AssignVariableOp_14*
_output_shapes

:@*
dtype0
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

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_17Subtraining_1/Adam/sub_17/x!training_1/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

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

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_18Subtraining_1/Adam/sub_18/x!training_1/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
T0*
_output_shapes
:

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
 *æÖ3*
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

training_1/Adam/sub_19Sub!training_1/Adam/ReadVariableOp_46training_1/Adam/truediv_6*
T0*
_output_shapes
:
s
#training_1/Adam/AssignVariableOp_15AssignVariableOptraining_1/Adam/m_5_1training_1/Adam/add_16*
dtype0

!training_1/Adam/ReadVariableOp_47ReadVariableOptraining_1/Adam/m_5_1$^training_1/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
s
#training_1/Adam/AssignVariableOp_16AssignVariableOptraining_1/Adam/v_5_1training_1/Adam/add_17*
dtype0

!training_1/Adam/ReadVariableOp_48ReadVariableOptraining_1/Adam/v_5_1$^training_1/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
m
#training_1/Adam/AssignVariableOp_17AssignVariableOpm2_hidden3/biastraining_1/Adam/sub_19*
dtype0

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


training_1/Adam/mul_31Mul!training_1/Adam/ReadVariableOp_50%training_1/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_51ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_20Subtraining_1/Adam/sub_20/x!training_1/Adam/ReadVariableOp_51*
_output_shapes
: *
T0

training_1/Adam/mul_32Multraining_1/Adam/sub_208training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

v
training_1/Adam/add_19Addtraining_1/Adam/mul_31training_1/Adam/mul_32*
T0*
_output_shapes

:

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


training_1/Adam/mul_33Mul!training_1/Adam/ReadVariableOp_52%training_1/Adam/mul_33/ReadVariableOp*
_output_shapes

:
*
T0
g
!training_1/Adam/ReadVariableOp_53ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_21Subtraining_1/Adam/sub_21/x!training_1/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training_1/Adam/Square_6Square8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

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
training_1/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_7/MinimumMinimumtraining_1/Adam/add_20training_1/Adam/Const_16*
T0*
_output_shapes

:


training_1/Adam/clip_by_value_7Maximum'training_1/Adam/clip_by_value_7/Minimumtraining_1/Adam/Const_15*
T0*
_output_shapes

:

h
training_1/Adam/Sqrt_7Sqrttraining_1/Adam/clip_by_value_7*
T0*
_output_shapes

:

]
training_1/Adam/add_21/yConst*
valueB
 *æÖ3*
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
dtype0*
_output_shapes

:


training_1/Adam/sub_22Sub!training_1/Adam/ReadVariableOp_54training_1/Adam/truediv_7*
T0*
_output_shapes

:

s
#training_1/Adam/AssignVariableOp_18AssignVariableOptraining_1/Adam/m_6_1training_1/Adam/add_19*
dtype0

!training_1/Adam/ReadVariableOp_55ReadVariableOptraining_1/Adam/m_6_1$^training_1/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

s
#training_1/Adam/AssignVariableOp_19AssignVariableOptraining_1/Adam/v_6_1training_1/Adam/add_20*
dtype0

!training_1/Adam/ReadVariableOp_56ReadVariableOptraining_1/Adam/v_6_1$^training_1/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

n
#training_1/Adam/AssignVariableOp_20AssignVariableOpm2_output/kerneltraining_1/Adam/sub_22*
dtype0

!training_1/Adam/ReadVariableOp_57ReadVariableOpm2_output/kernel$^training_1/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_58ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
w
%training_1/Adam/mul_36/ReadVariableOpReadVariableOptraining_1/Adam/m_7_1*
dtype0*
_output_shapes
:


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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

training_1/Adam/mul_37Multraining_1/Adam/sub_23<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
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


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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_24Subtraining_1/Adam/sub_24/x!training_1/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

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
training_1/Adam/mul_40Multraining_1/Adam/multraining_1/Adam/add_22*
_output_shapes
:
*
T0
]
training_1/Adam/Const_17Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training_1/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
_output_shapes
:
*
T0

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
 *æÖ3*
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
!training_1/Adam/ReadVariableOp_62ReadVariableOpm2_output/bias*
dtype0*
_output_shapes
:


training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
T0*
_output_shapes
:

s
#training_1/Adam/AssignVariableOp_21AssignVariableOptraining_1/Adam/m_7_1training_1/Adam/add_22*
dtype0

!training_1/Adam/ReadVariableOp_63ReadVariableOptraining_1/Adam/m_7_1$^training_1/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

s
#training_1/Adam/AssignVariableOp_22AssignVariableOptraining_1/Adam/v_7_1training_1/Adam/add_23*
dtype0

!training_1/Adam/ReadVariableOp_64ReadVariableOptraining_1/Adam/v_7_1$^training_1/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

l
#training_1/Adam/AssignVariableOp_23AssignVariableOpm2_output/biastraining_1/Adam/sub_25*
dtype0

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
	
training_1/initNoOp^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^count_1/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^total_1/Assign^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign

training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9

group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1
N
Placeholder_2Placeholder*
dtype0*
_output_shapes
: *
shape: 
K
AssignVariableOp_2AssignVariableOptotal_1Placeholder_2*
dtype0
e
ReadVariableOp_2ReadVariableOptotal_1^AssignVariableOp_2*
dtype0*
_output_shapes
: 
N
Placeholder_3Placeholder*
shape: *
dtype0*
_output_shapes
: 
K
AssignVariableOp_3AssignVariableOpcount_1Placeholder_3*
dtype0
e
ReadVariableOp_3ReadVariableOpcount_1^AssignVariableOp_3*
dtype0*
_output_shapes
: 
t
dropout_2_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

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
dropout_2/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 

dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_2/cond/dropout/Shape/SwitchSwitchdropout_2_inputdropout_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_2_input
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
_output_shapes
: *
T0

)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
seed*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2*
§
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
µ
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_2/cond/dropout/truedivRealDiv%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/sub*(
_output_shapes
:’’’’’’’’’*
T0

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/truedivdropout_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
µ
dropout_2/cond/Switch_1Switchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N
r
!m2_hidden1_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
d
m2_hidden1_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *¬\1½*
dtype0
d
m2_hidden1_1/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
²
)m2_hidden1_1/random_uniform/RandomUniformRandomUniform!m2_hidden1_1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
*
seed2ć®”*
seed

m2_hidden1_1/random_uniform/subSubm2_hidden1_1/random_uniform/maxm2_hidden1_1/random_uniform/min*
_output_shapes
: *
T0

m2_hidden1_1/random_uniform/mulMul)m2_hidden1_1/random_uniform/RandomUniformm2_hidden1_1/random_uniform/sub*
T0* 
_output_shapes
:


m2_hidden1_1/random_uniformAddm2_hidden1_1/random_uniform/mulm2_hidden1_1/random_uniform/min*
T0* 
_output_shapes
:

½
m2_hidden1_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
	container *
shape:

w
4m2_hidden1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 

m2_hidden1_1/kernel/AssignAssignVariableOpm2_hidden1_1/kernelm2_hidden1_1/random_uniform*&
_class
loc:@m2_hidden1_1/kernel*
dtype0
„
'm2_hidden1_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
dtype0* 
_output_shapes
:

a
m2_hidden1_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
²
m2_hidden1_1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
	container 
s
2m2_hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 

m2_hidden1_1/bias/AssignAssignVariableOpm2_hidden1_1/biasm2_hidden1_1/Const*$
_class
loc:@m2_hidden1_1/bias*
dtype0

%m2_hidden1_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_1/bias*
_output_shapes	
:*$
_class
loc:@m2_hidden1_1/bias*
dtype0
x
"m2_hidden1_1/MatMul/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*
dtype0* 
_output_shapes
:

°
m2_hidden1_1/MatMulMatMuldropout_2/cond/Merge"m2_hidden1_1/MatMul/ReadVariableOp*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
r
#m2_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_1/bias*
dtype0*
_output_shapes	
:
£
m2_hidden1_1/BiasAddBiasAddm2_hidden1_1/MatMul#m2_hidden1_1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’*
T0
b
m2_hidden1_1/ReluRelum2_hidden1_1/BiasAdd*(
_output_shapes
:’’’’’’’’’*
T0

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
 *  >*
dtype0*
_output_shapes
: 

dropout_3/cond/dropout/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0
Å
#dropout_3/cond/dropout/Shape/SwitchSwitchm2_hidden1_1/Reludropout_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*$
_class
loc:@m2_hidden1_1/Relu
{
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
_output_shapes
: *
T0

)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2**
seed*
T0
§
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_3/cond/dropout/addAdddropout_3/cond/dropout/sub%dropout_3/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_3/cond/dropout/truedivRealDiv%dropout_3/cond/dropout/Shape/Switch:1dropout_3/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/truedivdropout_3/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
¹
dropout_3/cond/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*$
_class
loc:@m2_hidden1_1/Relu

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden2_1/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
m2_hidden2_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *ó5¾*
dtype0
d
m2_hidden2_1/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m2_hidden2_1/random_uniform/RandomUniformRandomUniform!m2_hidden2_1/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	@*
seed2Ę»Ä*
seed

m2_hidden2_1/random_uniform/subSubm2_hidden2_1/random_uniform/maxm2_hidden2_1/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden2_1/random_uniform/mulMul)m2_hidden2_1/random_uniform/RandomUniformm2_hidden2_1/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2_1/random_uniformAddm2_hidden2_1/random_uniform/mulm2_hidden2_1/random_uniform/min*
T0*
_output_shapes
:	@
¼
m2_hidden2_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel*
	container *
shape:	@
w
4m2_hidden2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 

m2_hidden2_1/kernel/AssignAssignVariableOpm2_hidden2_1/kernelm2_hidden2_1/random_uniform*&
_class
loc:@m2_hidden2_1/kernel*
dtype0
¤
'm2_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel*
dtype0*
_output_shapes
:	@
_
m2_hidden2_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
±
m2_hidden2_1/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias*
	container *
shape:@
s
2m2_hidden2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 

m2_hidden2_1/bias/AssignAssignVariableOpm2_hidden2_1/biasm2_hidden2_1/Const*
dtype0*$
_class
loc:@m2_hidden2_1/bias

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
:	@
Æ
m2_hidden2_1/MatMulMatMuldropout_3/cond/Merge"m2_hidden2_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b( 
q
#m2_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
_output_shapes
:@*
dtype0
¢
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’@*
T0*
data_formatNHWC
a
m2_hidden2_1/ReluRelum2_hidden2_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
r
!m2_hidden3_1/random_uniform/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
d
m2_hidden3_1/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
d
m2_hidden3_1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
°
)m2_hidden3_1/random_uniform/RandomUniformRandomUniform!m2_hidden3_1/random_uniform/shape*
_output_shapes

:@*
seed2ć“*
seed*
T0*
dtype0

m2_hidden3_1/random_uniform/subSubm2_hidden3_1/random_uniform/maxm2_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden3_1/random_uniform/mulMul)m2_hidden3_1/random_uniform/RandomUniformm2_hidden3_1/random_uniform/sub*
T0*
_output_shapes

:@

m2_hidden3_1/random_uniformAddm2_hidden3_1/random_uniform/mulm2_hidden3_1/random_uniform/min*
_output_shapes

:@*
T0
»
m2_hidden3_1/kernelVarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_namem2_hidden3_1/kernel*&
_class
loc:@m2_hidden3_1/kernel
w
4m2_hidden3_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 

m2_hidden3_1/kernel/AssignAssignVariableOpm2_hidden3_1/kernelm2_hidden3_1/random_uniform*&
_class
loc:@m2_hidden3_1/kernel*
dtype0
£
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
±
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

m2_hidden3_1/bias/AssignAssignVariableOpm2_hidden3_1/biasm2_hidden3_1/Const*$
_class
loc:@m2_hidden3_1/bias*
dtype0

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
¬
m2_hidden3_1/MatMulMatMulm2_hidden2_1/Relu"m2_hidden3_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
q
#m2_hidden3_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_1/bias*
dtype0*
_output_shapes
:
¢
m2_hidden3_1/BiasAddBiasAddm2_hidden3_1/MatMul#m2_hidden3_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’*
T0
a
m2_hidden3_1/ReluRelum2_hidden3_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
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
 *ōōõ¾*
dtype0*
_output_shapes
: 
c
m2_output_1/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
®
(m2_output_1/random_uniform/RandomUniformRandomUniform m2_output_1/random_uniform/shape*
_output_shapes

:
*
seed2”*
seed*
T0*
dtype0

m2_output_1/random_uniform/subSubm2_output_1/random_uniform/maxm2_output_1/random_uniform/min*
_output_shapes
: *
T0

m2_output_1/random_uniform/mulMul(m2_output_1/random_uniform/RandomUniformm2_output_1/random_uniform/sub*
T0*
_output_shapes

:


m2_output_1/random_uniformAddm2_output_1/random_uniform/mulm2_output_1/random_uniform/min*
_output_shapes

:
*
T0
ø
m2_output_1/kernelVarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *#
shared_namem2_output_1/kernel*%
_class
loc:@m2_output_1/kernel*
	container 
u
3m2_output_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/kernel*
_output_shapes
: 

m2_output_1/kernel/AssignAssignVariableOpm2_output_1/kernelm2_output_1/random_uniform*%
_class
loc:@m2_output_1/kernel*
dtype0
 
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

®
m2_output_1/biasVarHandleOp*
_output_shapes
: *!
shared_namem2_output_1/bias*#
_class
loc:@m2_output_1/bias*
	container *
shape:
*
dtype0
q
1m2_output_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/bias*
_output_shapes
: 

m2_output_1/bias/AssignAssignVariableOpm2_output_1/biasm2_output_1/Const*#
_class
loc:@m2_output_1/bias*
dtype0

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

Ŗ
m2_output_1/MatMulMatMulm2_hidden3_1/Relu!m2_output_1/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
transpose_b( *
T0
o
"m2_output_1/BiasAdd/ReadVariableOpReadVariableOpm2_output_1/bias*
dtype0*
_output_shapes
:


m2_output_1/BiasAddBiasAddm2_output_1/MatMul"m2_output_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
*
T0
e
m2_output_1/SoftmaxSoftmaxm2_output_1/BiasAdd*'
_output_shapes
:’’’’’’’’’
*
T0

+Adam_2/iterations/Initializer/initial_valueConst*
value	B	 R *$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 
­
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

Adam_2/iterations/AssignAssignVariableOpAdam_2/iterations+Adam_2/iterations/Initializer/initial_value*$
_class
loc:@Adam_2/iterations*
dtype0	

%Adam_2/iterations/Read/ReadVariableOpReadVariableOpAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 

.Adam_2/learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *o:*'
_class
loc:@Adam_2/learning_rate
¶
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
«
Adam_2/learning_rate/AssignAssignVariableOpAdam_2/learning_rate.Adam_2/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_2/learning_rate*
dtype0

(Adam_2/learning_rate/Read/ReadVariableOpReadVariableOpAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
dtype0*
_output_shapes
: 

'Adam_2/beta_1/Initializer/initial_valueConst*
valueB
 *fff?* 
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 
”
Adam_2/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
	container *
shape: 
k
.Adam_2/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 

Adam_2/beta_1/AssignAssignVariableOpAdam_2/beta_1'Adam_2/beta_1/Initializer/initial_value* 
_class
loc:@Adam_2/beta_1*
dtype0

!Adam_2/beta_1/Read/ReadVariableOpReadVariableOpAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
dtype0*
_output_shapes
: 

'Adam_2/beta_2/Initializer/initial_valueConst*
valueB
 *w¾?* 
_class
loc:@Adam_2/beta_2*
dtype0*
_output_shapes
: 
”
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

Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value* 
_class
loc:@Adam_2/beta_2*
dtype0

!Adam_2/beta_2/Read/ReadVariableOpReadVariableOpAdam_2/beta_2* 
_class
loc:@Adam_2/beta_2*
dtype0*
_output_shapes
: 

&Adam_2/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 

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

Adam_2/decay/AssignAssignVariableOpAdam_2/decay&Adam_2/decay/Initializer/initial_value*
_class
loc:@Adam_2/decay*
dtype0

 Adam_2/decay/Read/ReadVariableOpReadVariableOpAdam_2/decay*
_output_shapes
: *
_class
loc:@Adam_2/decay*
dtype0

m2_output_target_1Placeholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
u
m2_output_sample_weights_1Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
L
Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *    

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

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

metrics_2/accuracy/SqueezeSqueezem2_output_target_1*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’
n
#metrics_2/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
metrics_2/accuracy/ArgMaxArgMaxm2_output_1/Softmax#metrics_2/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’

metrics_2/accuracy/CastCastmetrics_2/accuracy/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0

metrics_2/accuracy/EqualEqualmetrics_2/accuracy/Squeezemetrics_2/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_2/accuracy/Cast_1Castmetrics_2/accuracy/Equal*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

b
metrics_2/accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0

metrics_2/accuracy/SumSummetrics_2/accuracy/Cast_1metrics_2/accuracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
&metrics_2/accuracy/AssignAddVariableOpAssignAddVariableOptotal_2metrics_2/accuracy/Sum*
dtype0

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
metrics_2/accuracy/Cast_2Castmetrics_2/accuracy/Size*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
p
(metrics_2/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_2metrics_2/accuracy/Cast_2*
dtype0

#metrics_2/accuracy/ReadVariableOp_1ReadVariableOpcount_2)^metrics_2/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_2/accuracy/ReadVariableOp_2ReadVariableOptotal_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_2/accuracy/truediv/ReadVariableOpReadVariableOpcount_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_2/accuracy/truedivRealDiv#metrics_2/accuracy/ReadVariableOp_2)metrics_2/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_2/accuracy/IdentityIdentitymetrics_2/accuracy/truediv*
T0*
_output_shapes
: 

;loss_2/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ū
9loss_2/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
Ų
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:’’’’’’’’’


Closs_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:’’’’’’’’’

·
9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ż
=loss_2/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_1Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_2/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0	

Eloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
_output_shapes
:*
valueB"’’’’
   *
dtype0

?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogEloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ł
_loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ń
}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
Tlabels0	

Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_1}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0

Iloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
×
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

Kloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_2/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


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
loss_2/mulConst_8*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
w
m1_hidden1_input_1Placeholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
r
!m1_hidden1_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
d
m1_hidden1_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *¬\1½
d
m1_hidden1_1/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
±
)m1_hidden1_1/random_uniform/RandomUniformRandomUniform!m1_hidden1_1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
*
seed2½Ń*
seed

m1_hidden1_1/random_uniform/subSubm1_hidden1_1/random_uniform/maxm1_hidden1_1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden1_1/random_uniform/mulMul)m1_hidden1_1/random_uniform/RandomUniformm1_hidden1_1/random_uniform/sub* 
_output_shapes
:
*
T0

m1_hidden1_1/random_uniformAddm1_hidden1_1/random_uniform/mulm1_hidden1_1/random_uniform/min* 
_output_shapes
:
*
T0
½
m1_hidden1_1/kernelVarHandleOp*&
_class
loc:@m1_hidden1_1/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_namem1_hidden1_1/kernel
w
4m1_hidden1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1_1/kernel*
_output_shapes
: 

m1_hidden1_1/kernel/AssignAssignVariableOpm1_hidden1_1/kernelm1_hidden1_1/random_uniform*
dtype0*&
_class
loc:@m1_hidden1_1/kernel
„
'm1_hidden1_1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden1_1/kernel* 
_output_shapes
:
*&
_class
loc:@m1_hidden1_1/kernel*
dtype0
a
m1_hidden1_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
²
m1_hidden1_1/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem1_hidden1_1/bias*$
_class
loc:@m1_hidden1_1/bias*
	container *
shape:
s
2m1_hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1_1/bias*
_output_shapes
: 

m1_hidden1_1/bias/AssignAssignVariableOpm1_hidden1_1/biasm1_hidden1_1/Const*$
_class
loc:@m1_hidden1_1/bias*
dtype0

%m1_hidden1_1/bias/Read/ReadVariableOpReadVariableOpm1_hidden1_1/bias*$
_class
loc:@m1_hidden1_1/bias*
dtype0*
_output_shapes	
:
x
"m1_hidden1_1/MatMul/ReadVariableOpReadVariableOpm1_hidden1_1/kernel*
dtype0* 
_output_shapes
:

®
m1_hidden1_1/MatMulMatMulm1_hidden1_input_1"m1_hidden1_1/MatMul/ReadVariableOp*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
r
#m1_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden1_1/bias*
dtype0*
_output_shapes	
:
£
m1_hidden1_1/BiasAddBiasAddm1_hidden1_1/MatMul#m1_hidden1_1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’*
T0
b
m1_hidden1_1/ReluRelum1_hidden1_1/BiasAdd*(
_output_shapes
:’’’’’’’’’*
T0
r
!m1_hidden2_1/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
m1_hidden2_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *ó5¾*
dtype0
d
m1_hidden2_1/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m1_hidden2_1/random_uniform/RandomUniformRandomUniform!m1_hidden2_1/random_uniform/shape*
dtype0*
_output_shapes
:	@*
seed2æÅÄ*
seed*
T0

m1_hidden2_1/random_uniform/subSubm1_hidden2_1/random_uniform/maxm1_hidden2_1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden2_1/random_uniform/mulMul)m1_hidden2_1/random_uniform/RandomUniformm1_hidden2_1/random_uniform/sub*
_output_shapes
:	@*
T0

m1_hidden2_1/random_uniformAddm1_hidden2_1/random_uniform/mulm1_hidden2_1/random_uniform/min*
T0*
_output_shapes
:	@
¼
m1_hidden2_1/kernelVarHandleOp*$
shared_namem1_hidden2_1/kernel*&
_class
loc:@m1_hidden2_1/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
: 
w
4m1_hidden2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2_1/kernel*
_output_shapes
: 

m1_hidden2_1/kernel/AssignAssignVariableOpm1_hidden2_1/kernelm1_hidden2_1/random_uniform*&
_class
loc:@m1_hidden2_1/kernel*
dtype0
¤
'm1_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2_1/kernel*&
_class
loc:@m1_hidden2_1/kernel*
dtype0*
_output_shapes
:	@
_
m1_hidden2_1/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
±
m1_hidden2_1/biasVarHandleOp*$
_class
loc:@m1_hidden2_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem1_hidden2_1/bias
s
2m1_hidden2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2_1/bias*
_output_shapes
: 

m1_hidden2_1/bias/AssignAssignVariableOpm1_hidden2_1/biasm1_hidden2_1/Const*$
_class
loc:@m1_hidden2_1/bias*
dtype0

%m1_hidden2_1/bias/Read/ReadVariableOpReadVariableOpm1_hidden2_1/bias*$
_class
loc:@m1_hidden2_1/bias*
dtype0*
_output_shapes
:@
w
"m1_hidden2_1/MatMul/ReadVariableOpReadVariableOpm1_hidden2_1/kernel*
dtype0*
_output_shapes
:	@
¬
m1_hidden2_1/MatMulMatMulm1_hidden1_1/Relu"m1_hidden2_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’@*
transpose_a( 
q
#m1_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2_1/bias*
dtype0*
_output_shapes
:@
¢
m1_hidden2_1/BiasAddBiasAddm1_hidden2_1/MatMul#m1_hidden2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m1_hidden2_1/ReluRelum1_hidden2_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
r
!m1_hidden3_1/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m1_hidden3_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *7¾
d
m1_hidden3_1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
°
)m1_hidden3_1/random_uniform/RandomUniformRandomUniform!m1_hidden3_1/random_uniform/shape*
seed*
T0*
dtype0*
_output_shapes

:@*
seed2ń„

m1_hidden3_1/random_uniform/subSubm1_hidden3_1/random_uniform/maxm1_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden3_1/random_uniform/mulMul)m1_hidden3_1/random_uniform/RandomUniformm1_hidden3_1/random_uniform/sub*
T0*
_output_shapes

:@

m1_hidden3_1/random_uniformAddm1_hidden3_1/random_uniform/mulm1_hidden3_1/random_uniform/min*
_output_shapes

:@*
T0
»
m1_hidden3_1/kernelVarHandleOp*&
_class
loc:@m1_hidden3_1/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_namem1_hidden3_1/kernel
w
4m1_hidden3_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3_1/kernel*
_output_shapes
: 

m1_hidden3_1/kernel/AssignAssignVariableOpm1_hidden3_1/kernelm1_hidden3_1/random_uniform*&
_class
loc:@m1_hidden3_1/kernel*
dtype0
£
'm1_hidden3_1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden3_1/kernel*&
_class
loc:@m1_hidden3_1/kernel*
dtype0*
_output_shapes

:@
_
m1_hidden3_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
±
m1_hidden3_1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *"
shared_namem1_hidden3_1/bias*$
_class
loc:@m1_hidden3_1/bias*
	container 
s
2m1_hidden3_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3_1/bias*
_output_shapes
: 

m1_hidden3_1/bias/AssignAssignVariableOpm1_hidden3_1/biasm1_hidden3_1/Const*$
_class
loc:@m1_hidden3_1/bias*
dtype0

%m1_hidden3_1/bias/Read/ReadVariableOpReadVariableOpm1_hidden3_1/bias*$
_class
loc:@m1_hidden3_1/bias*
dtype0*
_output_shapes
:
v
"m1_hidden3_1/MatMul/ReadVariableOpReadVariableOpm1_hidden3_1/kernel*
dtype0*
_output_shapes

:@
¬
m1_hidden3_1/MatMulMatMulm1_hidden2_1/Relu"m1_hidden3_1/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
q
#m1_hidden3_1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3_1/bias*
dtype0*
_output_shapes
:
¢
m1_hidden3_1/BiasAddBiasAddm1_hidden3_1/MatMul#m1_hidden3_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
m1_hidden3_1/ReluRelum1_hidden3_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
q
 m1_output_1/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
m1_output_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ōōõ¾
c
m1_output_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ōōõ>*
dtype0
®
(m1_output_1/random_uniform/RandomUniformRandomUniform m1_output_1/random_uniform/shape*
dtype0*
_output_shapes

:
*
seed2Õ*
seed*
T0

m1_output_1/random_uniform/subSubm1_output_1/random_uniform/maxm1_output_1/random_uniform/min*
T0*
_output_shapes
: 

m1_output_1/random_uniform/mulMul(m1_output_1/random_uniform/RandomUniformm1_output_1/random_uniform/sub*
_output_shapes

:
*
T0

m1_output_1/random_uniformAddm1_output_1/random_uniform/mulm1_output_1/random_uniform/min*
_output_shapes

:
*
T0
ø
m1_output_1/kernelVarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *#
shared_namem1_output_1/kernel*%
_class
loc:@m1_output_1/kernel*
	container 
u
3m1_output_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output_1/kernel*
_output_shapes
: 

m1_output_1/kernel/AssignAssignVariableOpm1_output_1/kernelm1_output_1/random_uniform*%
_class
loc:@m1_output_1/kernel*
dtype0
 
&m1_output_1/kernel/Read/ReadVariableOpReadVariableOpm1_output_1/kernel*%
_class
loc:@m1_output_1/kernel*
dtype0*
_output_shapes

:

^
m1_output_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

®
m1_output_1/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namem1_output_1/bias*#
_class
loc:@m1_output_1/bias*
	container *
shape:

q
1m1_output_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output_1/bias*
_output_shapes
: 

m1_output_1/bias/AssignAssignVariableOpm1_output_1/biasm1_output_1/Const*#
_class
loc:@m1_output_1/bias*
dtype0

$m1_output_1/bias/Read/ReadVariableOpReadVariableOpm1_output_1/bias*#
_class
loc:@m1_output_1/bias*
dtype0*
_output_shapes
:

t
!m1_output_1/MatMul/ReadVariableOpReadVariableOpm1_output_1/kernel*
dtype0*
_output_shapes

:

Ŗ
m1_output_1/MatMulMatMulm1_hidden3_1/Relu!m1_output_1/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
transpose_b( *
T0
o
"m1_output_1/BiasAdd/ReadVariableOpReadVariableOpm1_output_1/bias*
_output_shapes
:
*
dtype0

m1_output_1/BiasAddBiasAddm1_output_1/MatMul"m1_output_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

e
m1_output_1/SoftmaxSoftmaxm1_output_1/BiasAdd*'
_output_shapes
:’’’’’’’’’
*
T0

+Adam_3/iterations/Initializer/initial_valueConst*
_output_shapes
: *
value	B	 R *$
_class
loc:@Adam_3/iterations*
dtype0	
­
Adam_3/iterationsVarHandleOp*"
shared_nameAdam_3/iterations*$
_class
loc:@Adam_3/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
s
2Adam_3/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/iterations*
_output_shapes
: 

Adam_3/iterations/AssignAssignVariableOpAdam_3/iterations+Adam_3/iterations/Initializer/initial_value*$
_class
loc:@Adam_3/iterations*
dtype0	

%Adam_3/iterations/Read/ReadVariableOpReadVariableOpAdam_3/iterations*$
_class
loc:@Adam_3/iterations*
dtype0	*
_output_shapes
: 

.Adam_3/learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *o:*'
_class
loc:@Adam_3/learning_rate
¶
Adam_3/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam_3/learning_rate*'
_class
loc:@Adam_3/learning_rate*
	container *
shape: 
y
5Adam_3/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/learning_rate*
_output_shapes
: 
«
Adam_3/learning_rate/AssignAssignVariableOpAdam_3/learning_rate.Adam_3/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_3/learning_rate*
dtype0

(Adam_3/learning_rate/Read/ReadVariableOpReadVariableOpAdam_3/learning_rate*
_output_shapes
: *'
_class
loc:@Adam_3/learning_rate*
dtype0

'Adam_3/beta_1/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?* 
_class
loc:@Adam_3/beta_1
”
Adam_3/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_3/beta_1* 
_class
loc:@Adam_3/beta_1*
	container *
shape: 
k
.Adam_3/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/beta_1*
_output_shapes
: 

Adam_3/beta_1/AssignAssignVariableOpAdam_3/beta_1'Adam_3/beta_1/Initializer/initial_value* 
_class
loc:@Adam_3/beta_1*
dtype0

!Adam_3/beta_1/Read/ReadVariableOpReadVariableOpAdam_3/beta_1* 
_class
loc:@Adam_3/beta_1*
dtype0*
_output_shapes
: 

'Adam_3/beta_2/Initializer/initial_valueConst*
valueB
 *w¾?* 
_class
loc:@Adam_3/beta_2*
dtype0*
_output_shapes
: 
”
Adam_3/beta_2VarHandleOp*
shared_nameAdam_3/beta_2* 
_class
loc:@Adam_3/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_3/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/beta_2*
_output_shapes
: 

Adam_3/beta_2/AssignAssignVariableOpAdam_3/beta_2'Adam_3/beta_2/Initializer/initial_value* 
_class
loc:@Adam_3/beta_2*
dtype0

!Adam_3/beta_2/Read/ReadVariableOpReadVariableOpAdam_3/beta_2* 
_class
loc:@Adam_3/beta_2*
dtype0*
_output_shapes
: 

&Adam_3/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_3/decay*
dtype0*
_output_shapes
: 

Adam_3/decayVarHandleOp*
shared_nameAdam_3/decay*
_class
loc:@Adam_3/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
i
-Adam_3/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/decay*
_output_shapes
: 

Adam_3/decay/AssignAssignVariableOpAdam_3/decay&Adam_3/decay/Initializer/initial_value*
_class
loc:@Adam_3/decay*
dtype0

 Adam_3/decay/Read/ReadVariableOpReadVariableOpAdam_3/decay*
_class
loc:@Adam_3/decay*
dtype0*
_output_shapes
: 

m1_output_target_1Placeholder*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0
u
m1_output_sample_weights_1Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
L
Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 

total_3VarHandleOp*
_output_shapes
: *
shared_name	total_3*
_class
loc:@total_3*
	container *
shape: *
dtype0
_
(total_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_3*
_output_shapes
: 
]
total_3/AssignAssignVariableOptotal_3Const_9*
_class
loc:@total_3*
dtype0
w
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_class
loc:@total_3*
dtype0*
_output_shapes
: 
M
Const_10Const*
_output_shapes
: *
valueB
 *    *
dtype0

count_3VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	count_3*
_class
loc:@count_3*
	container 
_
(count_3/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_3*
_output_shapes
: 
^
count_3/AssignAssignVariableOpcount_3Const_10*
_class
loc:@count_3*
dtype0
w
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_class
loc:@count_3*
dtype0*
_output_shapes
: 

metrics_3/accuracy/SqueezeSqueezem1_output_target_1*
squeeze_dims

’’’’’’’’’*
T0*#
_output_shapes
:’’’’’’’’’
n
#metrics_3/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
metrics_3/accuracy/ArgMaxArgMaxm1_output_1/Softmax#metrics_3/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0

metrics_3/accuracy/CastCastmetrics_3/accuracy/ArgMax*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0	*
Truncate( 

metrics_3/accuracy/EqualEqualmetrics_3/accuracy/Squeezemetrics_3/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_3/accuracy/Cast_1Castmetrics_3/accuracy/Equal*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0
*
Truncate( 
b
metrics_3/accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

metrics_3/accuracy/SumSummetrics_3/accuracy/Cast_1metrics_3/accuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
&metrics_3/accuracy/AssignAddVariableOpAssignAddVariableOptotal_3metrics_3/accuracy/Sum*
dtype0

!metrics_3/accuracy/ReadVariableOpReadVariableOptotal_3'^metrics_3/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_3/accuracy/SizeSizemetrics_3/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_3/accuracy/Cast_2Castmetrics_3/accuracy/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
p
(metrics_3/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_3metrics_3/accuracy/Cast_2*
dtype0

#metrics_3/accuracy/ReadVariableOp_1ReadVariableOpcount_3)^metrics_3/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_3/accuracy/ReadVariableOp_2ReadVariableOptotal_3"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_3/accuracy/truediv/ReadVariableOpReadVariableOpcount_3"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_3/accuracy/truedivRealDiv#metrics_3/accuracy/ReadVariableOp_2)metrics_3/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_3/accuracy/IdentityIdentitymetrics_3/accuracy/truediv*
T0*
_output_shapes
: 

;loss_3/m1_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_3/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ū
9loss_3/m1_output_loss/sparse_categorical_crossentropy/subSub;loss_3/m1_output_loss/sparse_categorical_crossentropy/sub/x;loss_3/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ų
Kloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output_1/Softmax9loss_3/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_3/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:’’’’’’’’’

·
9loss_3/m1_output_loss/sparse_categorical_crossentropy/LogLogCloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_3/m1_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ż
=loss_3/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_target_1Closs_3/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_3/m1_output_loss/sparse_categorical_crossentropy/CastCast=loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0	*

SrcT0

Eloss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_3/m1_output_loss/sparse_categorical_crossentropy/LogEloss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
Tshape0*'
_output_shapes
:’’’’’’’’’
*
T0
Ł
_loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_3/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
ń
}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_3/m1_output_loss/sparse_categorical_crossentropy/Cast*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
Tlabels0	*
T0

Gloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights_1}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0

Iloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
 
Gloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
×
Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
: *
T0*
out_type0
ō
Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Kloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
Q
loss_3/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


loss_3/mulMulloss_3/mul/xKloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
K
Const_11Const*
valueB *
dtype0*
_output_shapes
: 
b
Mean_3Mean
loss_3/mulConst_11*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
t
dropout_4_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

dropout_4/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
_output_shapes
: *
T0

c
dropout_4/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

z
dropout_4/cond/dropout/rateConst^dropout_4/cond/switch_t*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 

dropout_4/cond/dropout/ShapeShape%dropout_4/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_4/cond/dropout/Shape/SwitchSwitchdropout_4_inputdropout_4/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_4_input
{
dropout_4/cond/dropout/sub/xConst^dropout_4/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_4/cond/dropout/subSubdropout_4/cond/dropout/sub/xdropout_4/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
seed*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2*
§
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/dropout/addAdddropout_4/cond/dropout/sub%dropout_4/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4/cond/dropout/truedivRealDiv%dropout_4/cond/dropout/Shape/Switch:1dropout_4/cond/dropout/sub*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/truedivdropout_4/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
µ
dropout_4/cond/Switch_1Switchdropout_4_inputdropout_4/cond/pred_id*
T0*"
_class
loc:@dropout_4_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden1_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
d
m2_hidden1_2/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
d
m2_hidden1_2/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
²
)m2_hidden1_2/random_uniform/RandomUniformRandomUniform!m2_hidden1_2/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
*
seed2öų*
seed

m2_hidden1_2/random_uniform/subSubm2_hidden1_2/random_uniform/maxm2_hidden1_2/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden1_2/random_uniform/mulMul)m2_hidden1_2/random_uniform/RandomUniformm2_hidden1_2/random_uniform/sub*
T0* 
_output_shapes
:


m2_hidden1_2/random_uniformAddm2_hidden1_2/random_uniform/mulm2_hidden1_2/random_uniform/min*
T0* 
_output_shapes
:

½
m2_hidden1_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden1_2/kernel*&
_class
loc:@m2_hidden1_2/kernel*
	container *
shape:

w
4m2_hidden1_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_2/kernel*
_output_shapes
: 

m2_hidden1_2/kernel/AssignAssignVariableOpm2_hidden1_2/kernelm2_hidden1_2/random_uniform*&
_class
loc:@m2_hidden1_2/kernel*
dtype0
„
'm2_hidden1_2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_2/kernel*&
_class
loc:@m2_hidden1_2/kernel*
dtype0* 
_output_shapes
:

a
m2_hidden1_2/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
²
m2_hidden1_2/biasVarHandleOp*"
shared_namem2_hidden1_2/bias*$
_class
loc:@m2_hidden1_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2m2_hidden1_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_2/bias*
_output_shapes
: 

m2_hidden1_2/bias/AssignAssignVariableOpm2_hidden1_2/biasm2_hidden1_2/Const*$
_class
loc:@m2_hidden1_2/bias*
dtype0

%m2_hidden1_2/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_2/bias*$
_class
loc:@m2_hidden1_2/bias*
dtype0*
_output_shapes	
:
x
"m2_hidden1_2/MatMul/ReadVariableOpReadVariableOpm2_hidden1_2/kernel*
dtype0* 
_output_shapes
:

°
m2_hidden1_2/MatMulMatMuldropout_4/cond/Merge"m2_hidden1_2/MatMul/ReadVariableOp*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
r
#m2_hidden1_2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_2/bias*
dtype0*
_output_shapes	
:
£
m2_hidden1_2/BiasAddBiasAddm2_hidden1_2/MatMul#m2_hidden1_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
b
m2_hidden1_2/ReluRelum2_hidden1_2/BiasAdd*(
_output_shapes
:’’’’’’’’’*
T0
r
!m2_hidden2_2/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
m2_hidden2_2/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
d
m2_hidden2_2/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m2_hidden2_2/random_uniform/RandomUniformRandomUniform!m2_hidden2_2/random_uniform/shape*
dtype0*
_output_shapes
:	@*
seed2ėØ·*
seed*
T0

m2_hidden2_2/random_uniform/subSubm2_hidden2_2/random_uniform/maxm2_hidden2_2/random_uniform/min*
_output_shapes
: *
T0

m2_hidden2_2/random_uniform/mulMul)m2_hidden2_2/random_uniform/RandomUniformm2_hidden2_2/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2_2/random_uniformAddm2_hidden2_2/random_uniform/mulm2_hidden2_2/random_uniform/min*
T0*
_output_shapes
:	@
¼
m2_hidden2_2/kernelVarHandleOp*&
_class
loc:@m2_hidden2_2/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
: *$
shared_namem2_hidden2_2/kernel
w
4m2_hidden2_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_2/kernel*
_output_shapes
: 

m2_hidden2_2/kernel/AssignAssignVariableOpm2_hidden2_2/kernelm2_hidden2_2/random_uniform*
dtype0*&
_class
loc:@m2_hidden2_2/kernel
¤
'm2_hidden2_2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_2/kernel*&
_class
loc:@m2_hidden2_2/kernel*
dtype0*
_output_shapes
:	@
_
m2_hidden2_2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
±
m2_hidden2_2/biasVarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_2/bias*$
_class
loc:@m2_hidden2_2/bias
s
2m2_hidden2_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_2/bias*
_output_shapes
: 

m2_hidden2_2/bias/AssignAssignVariableOpm2_hidden2_2/biasm2_hidden2_2/Const*$
_class
loc:@m2_hidden2_2/bias*
dtype0

%m2_hidden2_2/bias/Read/ReadVariableOpReadVariableOpm2_hidden2_2/bias*$
_class
loc:@m2_hidden2_2/bias*
dtype0*
_output_shapes
:@
w
"m2_hidden2_2/MatMul/ReadVariableOpReadVariableOpm2_hidden2_2/kernel*
dtype0*
_output_shapes
:	@
¬
m2_hidden2_2/MatMulMatMulm2_hidden1_2/Relu"m2_hidden2_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b( 
q
#m2_hidden2_2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_2/bias*
dtype0*
_output_shapes
:@
¢
m2_hidden2_2/BiasAddBiasAddm2_hidden2_2/MatMul#m2_hidden2_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m2_hidden2_2/ReluRelum2_hidden2_2/BiasAdd*'
_output_shapes
:’’’’’’’’’@*
T0
r
!m2_hidden3_2/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m2_hidden3_2/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
d
m2_hidden3_2/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
°
)m2_hidden3_2/random_uniform/RandomUniformRandomUniform!m2_hidden3_2/random_uniform/shape*
dtype0*
_output_shapes

:@*
seed2ļÓß*
seed*
T0

m2_hidden3_2/random_uniform/subSubm2_hidden3_2/random_uniform/maxm2_hidden3_2/random_uniform/min*
_output_shapes
: *
T0

m2_hidden3_2/random_uniform/mulMul)m2_hidden3_2/random_uniform/RandomUniformm2_hidden3_2/random_uniform/sub*
T0*
_output_shapes

:@

m2_hidden3_2/random_uniformAddm2_hidden3_2/random_uniform/mulm2_hidden3_2/random_uniform/min*
T0*
_output_shapes

:@
»
m2_hidden3_2/kernelVarHandleOp*&
_class
loc:@m2_hidden3_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_namem2_hidden3_2/kernel
w
4m2_hidden3_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_2/kernel*
_output_shapes
: 

m2_hidden3_2/kernel/AssignAssignVariableOpm2_hidden3_2/kernelm2_hidden3_2/random_uniform*
dtype0*&
_class
loc:@m2_hidden3_2/kernel
£
'm2_hidden3_2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3_2/kernel*&
_class
loc:@m2_hidden3_2/kernel*
dtype0*
_output_shapes

:@
_
m2_hidden3_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
±
m2_hidden3_2/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3_2/bias*$
_class
loc:@m2_hidden3_2/bias*
	container *
shape:
s
2m2_hidden3_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_2/bias*
_output_shapes
: 

m2_hidden3_2/bias/AssignAssignVariableOpm2_hidden3_2/biasm2_hidden3_2/Const*$
_class
loc:@m2_hidden3_2/bias*
dtype0

%m2_hidden3_2/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_2/bias*
dtype0*
_output_shapes
:*$
_class
loc:@m2_hidden3_2/bias
v
"m2_hidden3_2/MatMul/ReadVariableOpReadVariableOpm2_hidden3_2/kernel*
dtype0*
_output_shapes

:@
¬
m2_hidden3_2/MatMulMatMulm2_hidden2_2/Relu"m2_hidden3_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
q
#m2_hidden3_2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_2/bias*
dtype0*
_output_shapes
:
¢
m2_hidden3_2/BiasAddBiasAddm2_hidden3_2/MatMul#m2_hidden3_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
m2_hidden3_2/ReluRelum2_hidden3_2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
q
 m2_output_2/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
m2_output_2/random_uniform/minConst*
valueB
 *ōōõ¾*
dtype0*
_output_shapes
: 
c
m2_output_2/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
®
(m2_output_2/random_uniform/RandomUniformRandomUniform m2_output_2/random_uniform/shape*
seed*
T0*
dtype0*
_output_shapes

:
*
seed2Ķ”

m2_output_2/random_uniform/subSubm2_output_2/random_uniform/maxm2_output_2/random_uniform/min*
T0*
_output_shapes
: 

m2_output_2/random_uniform/mulMul(m2_output_2/random_uniform/RandomUniformm2_output_2/random_uniform/sub*
_output_shapes

:
*
T0

m2_output_2/random_uniformAddm2_output_2/random_uniform/mulm2_output_2/random_uniform/min*
T0*
_output_shapes

:

ø
m2_output_2/kernelVarHandleOp*#
shared_namem2_output_2/kernel*%
_class
loc:@m2_output_2/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: 
u
3m2_output_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_2/kernel*
_output_shapes
: 

m2_output_2/kernel/AssignAssignVariableOpm2_output_2/kernelm2_output_2/random_uniform*%
_class
loc:@m2_output_2/kernel*
dtype0
 
&m2_output_2/kernel/Read/ReadVariableOpReadVariableOpm2_output_2/kernel*%
_class
loc:@m2_output_2/kernel*
dtype0*
_output_shapes

:

^
m2_output_2/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

®
m2_output_2/biasVarHandleOp*!
shared_namem2_output_2/bias*#
_class
loc:@m2_output_2/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
q
1m2_output_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_2/bias*
_output_shapes
: 

m2_output_2/bias/AssignAssignVariableOpm2_output_2/biasm2_output_2/Const*#
_class
loc:@m2_output_2/bias*
dtype0

$m2_output_2/bias/Read/ReadVariableOpReadVariableOpm2_output_2/bias*#
_class
loc:@m2_output_2/bias*
dtype0*
_output_shapes
:

t
!m2_output_2/MatMul/ReadVariableOpReadVariableOpm2_output_2/kernel*
dtype0*
_output_shapes

:

Ŗ
m2_output_2/MatMulMatMulm2_hidden3_2/Relu!m2_output_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
transpose_b( 
o
"m2_output_2/BiasAdd/ReadVariableOpReadVariableOpm2_output_2/bias*
dtype0*
_output_shapes
:


m2_output_2/BiasAddBiasAddm2_output_2/MatMul"m2_output_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

e
m2_output_2/SoftmaxSoftmaxm2_output_2/BiasAdd*'
_output_shapes
:’’’’’’’’’
*
T0

+Adam_4/iterations/Initializer/initial_valueConst*
value	B	 R *$
_class
loc:@Adam_4/iterations*
dtype0	*
_output_shapes
: 
­
Adam_4/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *"
shared_nameAdam_4/iterations*$
_class
loc:@Adam_4/iterations*
	container *
shape: 
s
2Adam_4/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/iterations*
_output_shapes
: 

Adam_4/iterations/AssignAssignVariableOpAdam_4/iterations+Adam_4/iterations/Initializer/initial_value*$
_class
loc:@Adam_4/iterations*
dtype0	

%Adam_4/iterations/Read/ReadVariableOpReadVariableOpAdam_4/iterations*$
_class
loc:@Adam_4/iterations*
dtype0	*
_output_shapes
: 

.Adam_4/learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *o:*'
_class
loc:@Adam_4/learning_rate
¶
Adam_4/learning_rateVarHandleOp*'
_class
loc:@Adam_4/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam_4/learning_rate
y
5Adam_4/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/learning_rate*
_output_shapes
: 
«
Adam_4/learning_rate/AssignAssignVariableOpAdam_4/learning_rate.Adam_4/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_4/learning_rate*
dtype0

(Adam_4/learning_rate/Read/ReadVariableOpReadVariableOpAdam_4/learning_rate*'
_class
loc:@Adam_4/learning_rate*
dtype0*
_output_shapes
: 

'Adam_4/beta_1/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *fff?* 
_class
loc:@Adam_4/beta_1*
dtype0
”
Adam_4/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_4/beta_1* 
_class
loc:@Adam_4/beta_1*
	container *
shape: 
k
.Adam_4/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/beta_1*
_output_shapes
: 

Adam_4/beta_1/AssignAssignVariableOpAdam_4/beta_1'Adam_4/beta_1/Initializer/initial_value* 
_class
loc:@Adam_4/beta_1*
dtype0

!Adam_4/beta_1/Read/ReadVariableOpReadVariableOpAdam_4/beta_1* 
_class
loc:@Adam_4/beta_1*
dtype0*
_output_shapes
: 

'Adam_4/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w¾?* 
_class
loc:@Adam_4/beta_2*
dtype0
”
Adam_4/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_4/beta_2* 
_class
loc:@Adam_4/beta_2*
	container *
shape: 
k
.Adam_4/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/beta_2*
_output_shapes
: 

Adam_4/beta_2/AssignAssignVariableOpAdam_4/beta_2'Adam_4/beta_2/Initializer/initial_value* 
_class
loc:@Adam_4/beta_2*
dtype0

!Adam_4/beta_2/Read/ReadVariableOpReadVariableOpAdam_4/beta_2* 
_class
loc:@Adam_4/beta_2*
dtype0*
_output_shapes
: 

&Adam_4/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam_4/decay

Adam_4/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_4/decay*
_class
loc:@Adam_4/decay*
	container *
shape: 
i
-Adam_4/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/decay*
_output_shapes
: 

Adam_4/decay/AssignAssignVariableOpAdam_4/decay&Adam_4/decay/Initializer/initial_value*
_class
loc:@Adam_4/decay*
dtype0

 Adam_4/decay/Read/ReadVariableOpReadVariableOpAdam_4/decay*
_class
loc:@Adam_4/decay*
dtype0*
_output_shapes
: 

m2_output_target_2Placeholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
u
m2_output_sample_weights_2Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
M
Const_12Const*
_output_shapes
: *
valueB
 *    *
dtype0

total_4VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	total_4*
_class
loc:@total_4*
	container 
_
(total_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_4*
_output_shapes
: 
^
total_4/AssignAssignVariableOptotal_4Const_12*
dtype0*
_class
loc:@total_4
w
total_4/Read/ReadVariableOpReadVariableOptotal_4*
dtype0*
_output_shapes
: *
_class
loc:@total_4
M
Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 

count_4VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	count_4*
_class
loc:@count_4*
	container *
shape: 
_
(count_4/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_4*
_output_shapes
: 
^
count_4/AssignAssignVariableOpcount_4Const_13*
_class
loc:@count_4*
dtype0
w
count_4/Read/ReadVariableOpReadVariableOpcount_4*
dtype0*
_output_shapes
: *
_class
loc:@count_4

metrics_4/accuracy/SqueezeSqueezem2_output_target_2*
squeeze_dims

’’’’’’’’’*
T0*#
_output_shapes
:’’’’’’’’’
n
#metrics_4/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0
Ŗ
metrics_4/accuracy/ArgMaxArgMaxm2_output_2/Softmax#metrics_4/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’

metrics_4/accuracy/CastCastmetrics_4/accuracy/ArgMax*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0	*
Truncate( 

metrics_4/accuracy/EqualEqualmetrics_4/accuracy/Squeezemetrics_4/accuracy/Cast*#
_output_shapes
:’’’’’’’’’*
T0

metrics_4/accuracy/Cast_1Castmetrics_4/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
b
metrics_4/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_4/accuracy/SumSummetrics_4/accuracy/Cast_1metrics_4/accuracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
k
&metrics_4/accuracy/AssignAddVariableOpAssignAddVariableOptotal_4metrics_4/accuracy/Sum*
dtype0

!metrics_4/accuracy/ReadVariableOpReadVariableOptotal_4'^metrics_4/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_4/accuracy/SizeSizemetrics_4/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_4/accuracy/Cast_2Castmetrics_4/accuracy/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
p
(metrics_4/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_4metrics_4/accuracy/Cast_2*
dtype0

#metrics_4/accuracy/ReadVariableOp_1ReadVariableOpcount_4)^metrics_4/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_4/accuracy/ReadVariableOp_2ReadVariableOptotal_4"^metrics_4/accuracy/ReadVariableOp$^metrics_4/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_4/accuracy/truediv/ReadVariableOpReadVariableOpcount_4"^metrics_4/accuracy/ReadVariableOp$^metrics_4/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_4/accuracy/truedivRealDiv#metrics_4/accuracy/ReadVariableOp_2)metrics_4/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_4/accuracy/IdentityIdentitymetrics_4/accuracy/truediv*
T0*
_output_shapes
: 

;loss_4/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3

;loss_4/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ū
9loss_4/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_4/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_4/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ų
Kloss_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_2/Softmax9loss_4/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_4/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:’’’’’’’’’

·
9loss_4/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_4/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
Ż
=loss_4/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_2Closs_4/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_4/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0	

Eloss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
_output_shapes
:*
valueB"’’’’
   *
dtype0

?loss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_4/m2_output_loss/sparse_categorical_crossentropy/LogEloss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0
Ł
_loss_4/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_4/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ń
}loss_4/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_4/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
Tlabels0	

Gloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_2}loss_4/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’

Iloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
×
Uloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

Kloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_4/mul/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0


loss_4/mulMulloss_4/mul/xKloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_output_shapes
: 
K
Const_14Const*
valueB *
dtype0*
_output_shapes
: 
b
Mean_4Mean
loss_4/mulConst_14*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
t
dropout_5_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

dropout_5/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_5/cond/switch_tIdentitydropout_5/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
_output_shapes
: *
T0

c
dropout_5/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_5/cond/dropout/rateConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL>

dropout_5/cond/dropout/ShapeShape%dropout_5/cond/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
Į
#dropout_5/cond/dropout/Shape/SwitchSwitchdropout_5_inputdropout_5/cond/pred_id*
T0*"
_class
loc:@dropout_5_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_5/cond/dropout/sub/xConst^dropout_5/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_5/cond/dropout/subSubdropout_5/cond/dropout/sub/xdropout_5/cond/dropout/rate*
_output_shapes
: *
T0

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2**
seed
§
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5/cond/dropout/addAdddropout_5/cond/dropout/sub%dropout_5/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_5/cond/dropout/FloorFloordropout_5/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_5/cond/dropout/truedivRealDiv%dropout_5/cond/dropout/Shape/Switch:1dropout_5/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/mulMuldropout_5/cond/dropout/truedivdropout_5/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
µ
dropout_5/cond/Switch_1Switchdropout_5_inputdropout_5/cond/pred_id*
T0*"
_class
loc:@dropout_5_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden1_3/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
d
m2_hidden1_3/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
d
m2_hidden1_3/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
²
)m2_hidden1_3/random_uniform/RandomUniformRandomUniform!m2_hidden1_3/random_uniform/shape*
dtype0* 
_output_shapes
:
*
seed2“ĢŻ*
seed*
T0

m2_hidden1_3/random_uniform/subSubm2_hidden1_3/random_uniform/maxm2_hidden1_3/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden1_3/random_uniform/mulMul)m2_hidden1_3/random_uniform/RandomUniformm2_hidden1_3/random_uniform/sub*
T0* 
_output_shapes
:


m2_hidden1_3/random_uniformAddm2_hidden1_3/random_uniform/mulm2_hidden1_3/random_uniform/min* 
_output_shapes
:
*
T0
½
m2_hidden1_3/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden1_3/kernel*&
_class
loc:@m2_hidden1_3/kernel*
	container *
shape:

w
4m2_hidden1_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_3/kernel*
_output_shapes
: 

m2_hidden1_3/kernel/AssignAssignVariableOpm2_hidden1_3/kernelm2_hidden1_3/random_uniform*&
_class
loc:@m2_hidden1_3/kernel*
dtype0
„
'm2_hidden1_3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_3/kernel*&
_class
loc:@m2_hidden1_3/kernel*
dtype0* 
_output_shapes
:

a
m2_hidden1_3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
²
m2_hidden1_3/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_3/bias*$
_class
loc:@m2_hidden1_3/bias
s
2m2_hidden1_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_3/bias*
_output_shapes
: 

m2_hidden1_3/bias/AssignAssignVariableOpm2_hidden1_3/biasm2_hidden1_3/Const*$
_class
loc:@m2_hidden1_3/bias*
dtype0

%m2_hidden1_3/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_3/bias*$
_class
loc:@m2_hidden1_3/bias*
dtype0*
_output_shapes	
:
x
"m2_hidden1_3/MatMul/ReadVariableOpReadVariableOpm2_hidden1_3/kernel*
dtype0* 
_output_shapes
:

°
m2_hidden1_3/MatMulMatMuldropout_5/cond/Merge"m2_hidden1_3/MatMul/ReadVariableOp*
T0*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
r
#m2_hidden1_3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_3/bias*
dtype0*
_output_shapes	
:
£
m2_hidden1_3/BiasAddBiasAddm2_hidden1_3/MatMul#m2_hidden1_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
b
m2_hidden1_3/ReluRelum2_hidden1_3/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_6/cond/switch_fIdentitydropout_6/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_6/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

z
dropout_6/cond/dropout/rateConst^dropout_6/cond/switch_t*
valueB
 *  >*
dtype0*
_output_shapes
: 

dropout_6/cond/dropout/ShapeShape%dropout_6/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Å
#dropout_6/cond/dropout/Shape/SwitchSwitchm2_hidden1_3/Reludropout_6/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_3/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_6/cond/dropout/sub/xConst^dropout_6/cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
}
dropout_6/cond/dropout/subSubdropout_6/cond/dropout/sub/xdropout_6/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2**
seed
§
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
µ
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/dropout/addAdddropout_6/cond/dropout/sub%dropout_6/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_6/cond/dropout/FloorFloordropout_6/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6/cond/dropout/truedivRealDiv%dropout_6/cond/dropout/Shape/Switch:1dropout_6/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/dropout/mulMuldropout_6/cond/dropout/truedivdropout_6/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
¹
dropout_6/cond/Switch_1Switchm2_hidden1_3/Reludropout_6/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_3/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden2_3/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
m2_hidden2_3/random_uniform/minConst*
_output_shapes
: *
valueB
 *ó5¾*
dtype0
d
m2_hidden2_3/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m2_hidden2_3/random_uniform/RandomUniformRandomUniform!m2_hidden2_3/random_uniform/shape*
dtype0*
_output_shapes
:	@*
seed2ćē *
seed*
T0

m2_hidden2_3/random_uniform/subSubm2_hidden2_3/random_uniform/maxm2_hidden2_3/random_uniform/min*
_output_shapes
: *
T0

m2_hidden2_3/random_uniform/mulMul)m2_hidden2_3/random_uniform/RandomUniformm2_hidden2_3/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2_3/random_uniformAddm2_hidden2_3/random_uniform/mulm2_hidden2_3/random_uniform/min*
_output_shapes
:	@*
T0
¼
m2_hidden2_3/kernelVarHandleOp*
_output_shapes
: *$
shared_namem2_hidden2_3/kernel*&
_class
loc:@m2_hidden2_3/kernel*
	container *
shape:	@*
dtype0
w
4m2_hidden2_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_3/kernel*
_output_shapes
: 

m2_hidden2_3/kernel/AssignAssignVariableOpm2_hidden2_3/kernelm2_hidden2_3/random_uniform*&
_class
loc:@m2_hidden2_3/kernel*
dtype0
¤
'm2_hidden2_3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_3/kernel*&
_class
loc:@m2_hidden2_3/kernel*
dtype0*
_output_shapes
:	@
_
m2_hidden2_3/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
±
m2_hidden2_3/biasVarHandleOp*$
_class
loc:@m2_hidden2_3/bias*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_3/bias
s
2m2_hidden2_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_3/bias*
_output_shapes
: 

m2_hidden2_3/bias/AssignAssignVariableOpm2_hidden2_3/biasm2_hidden2_3/Const*$
_class
loc:@m2_hidden2_3/bias*
dtype0

%m2_hidden2_3/bias/Read/ReadVariableOpReadVariableOpm2_hidden2_3/bias*$
_class
loc:@m2_hidden2_3/bias*
dtype0*
_output_shapes
:@
w
"m2_hidden2_3/MatMul/ReadVariableOpReadVariableOpm2_hidden2_3/kernel*
dtype0*
_output_shapes
:	@
Æ
m2_hidden2_3/MatMulMatMuldropout_6/cond/Merge"m2_hidden2_3/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b( *
T0
q
#m2_hidden2_3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_3/bias*
dtype0*
_output_shapes
:@
¢
m2_hidden2_3/BiasAddBiasAddm2_hidden2_3/MatMul#m2_hidden2_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m2_hidden2_3/ReluRelum2_hidden2_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
r
!m2_hidden3_3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m2_hidden3_3/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
d
m2_hidden3_3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *7>*
dtype0
°
)m2_hidden3_3/random_uniform/RandomUniformRandomUniform!m2_hidden3_3/random_uniform/shape*
seed*
T0*
dtype0*
_output_shapes

:@*
seed2’¾Ō

m2_hidden3_3/random_uniform/subSubm2_hidden3_3/random_uniform/maxm2_hidden3_3/random_uniform/min*
_output_shapes
: *
T0

m2_hidden3_3/random_uniform/mulMul)m2_hidden3_3/random_uniform/RandomUniformm2_hidden3_3/random_uniform/sub*
_output_shapes

:@*
T0

m2_hidden3_3/random_uniformAddm2_hidden3_3/random_uniform/mulm2_hidden3_3/random_uniform/min*
T0*
_output_shapes

:@
»
m2_hidden3_3/kernelVarHandleOp*$
shared_namem2_hidden3_3/kernel*&
_class
loc:@m2_hidden3_3/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
w
4m2_hidden3_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_3/kernel*
_output_shapes
: 

m2_hidden3_3/kernel/AssignAssignVariableOpm2_hidden3_3/kernelm2_hidden3_3/random_uniform*&
_class
loc:@m2_hidden3_3/kernel*
dtype0
£
'm2_hidden3_3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3_3/kernel*
_output_shapes

:@*&
_class
loc:@m2_hidden3_3/kernel*
dtype0
_
m2_hidden3_3/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
±
m2_hidden3_3/biasVarHandleOp*"
shared_namem2_hidden3_3/bias*$
_class
loc:@m2_hidden3_3/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2m2_hidden3_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_3/bias*
_output_shapes
: 

m2_hidden3_3/bias/AssignAssignVariableOpm2_hidden3_3/biasm2_hidden3_3/Const*$
_class
loc:@m2_hidden3_3/bias*
dtype0

%m2_hidden3_3/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_3/bias*$
_class
loc:@m2_hidden3_3/bias*
dtype0*
_output_shapes
:
v
"m2_hidden3_3/MatMul/ReadVariableOpReadVariableOpm2_hidden3_3/kernel*
dtype0*
_output_shapes

:@
¬
m2_hidden3_3/MatMulMatMulm2_hidden2_3/Relu"m2_hidden3_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
q
#m2_hidden3_3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_3/bias*
dtype0*
_output_shapes
:
¢
m2_hidden3_3/BiasAddBiasAddm2_hidden3_3/MatMul#m2_hidden3_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
m2_hidden3_3/ReluRelum2_hidden3_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
q
 m2_output_3/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
m2_output_3/random_uniform/minConst*
valueB
 *ōōõ¾*
dtype0*
_output_shapes
: 
c
m2_output_3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ōōõ>*
dtype0
®
(m2_output_3/random_uniform/RandomUniformRandomUniform m2_output_3/random_uniform/shape*
_output_shapes

:
*
seed2Ā*
seed*
T0*
dtype0

m2_output_3/random_uniform/subSubm2_output_3/random_uniform/maxm2_output_3/random_uniform/min*
T0*
_output_shapes
: 

m2_output_3/random_uniform/mulMul(m2_output_3/random_uniform/RandomUniformm2_output_3/random_uniform/sub*
_output_shapes

:
*
T0

m2_output_3/random_uniformAddm2_output_3/random_uniform/mulm2_output_3/random_uniform/min*
T0*
_output_shapes

:

ø
m2_output_3/kernelVarHandleOp*#
shared_namem2_output_3/kernel*%
_class
loc:@m2_output_3/kernel*
	container *
shape
:
*
dtype0*
_output_shapes
: 
u
3m2_output_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_3/kernel*
_output_shapes
: 

m2_output_3/kernel/AssignAssignVariableOpm2_output_3/kernelm2_output_3/random_uniform*%
_class
loc:@m2_output_3/kernel*
dtype0
 
&m2_output_3/kernel/Read/ReadVariableOpReadVariableOpm2_output_3/kernel*
_output_shapes

:
*%
_class
loc:@m2_output_3/kernel*
dtype0
^
m2_output_3/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

®
m2_output_3/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namem2_output_3/bias*#
_class
loc:@m2_output_3/bias*
	container *
shape:

q
1m2_output_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_3/bias*
_output_shapes
: 

m2_output_3/bias/AssignAssignVariableOpm2_output_3/biasm2_output_3/Const*
dtype0*#
_class
loc:@m2_output_3/bias

$m2_output_3/bias/Read/ReadVariableOpReadVariableOpm2_output_3/bias*#
_class
loc:@m2_output_3/bias*
dtype0*
_output_shapes
:

t
!m2_output_3/MatMul/ReadVariableOpReadVariableOpm2_output_3/kernel*
dtype0*
_output_shapes

:

Ŗ
m2_output_3/MatMulMatMulm2_hidden3_3/Relu!m2_output_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
transpose_b( 
o
"m2_output_3/BiasAdd/ReadVariableOpReadVariableOpm2_output_3/bias*
dtype0*
_output_shapes
:


m2_output_3/BiasAddBiasAddm2_output_3/MatMul"m2_output_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

e
m2_output_3/SoftmaxSoftmaxm2_output_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


+Adam_5/iterations/Initializer/initial_valueConst*
value	B	 R *$
_class
loc:@Adam_5/iterations*
dtype0	*
_output_shapes
: 
­
Adam_5/iterationsVarHandleOp*
_output_shapes
: *"
shared_nameAdam_5/iterations*$
_class
loc:@Adam_5/iterations*
	container *
shape: *
dtype0	
s
2Adam_5/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/iterations*
_output_shapes
: 

Adam_5/iterations/AssignAssignVariableOpAdam_5/iterations+Adam_5/iterations/Initializer/initial_value*$
_class
loc:@Adam_5/iterations*
dtype0	

%Adam_5/iterations/Read/ReadVariableOpReadVariableOpAdam_5/iterations*$
_class
loc:@Adam_5/iterations*
dtype0	*
_output_shapes
: 

.Adam_5/learning_rate/Initializer/initial_valueConst*
valueB
 *o:*'
_class
loc:@Adam_5/learning_rate*
dtype0*
_output_shapes
: 
¶
Adam_5/learning_rateVarHandleOp*%
shared_nameAdam_5/learning_rate*'
_class
loc:@Adam_5/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 
y
5Adam_5/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/learning_rate*
_output_shapes
: 
«
Adam_5/learning_rate/AssignAssignVariableOpAdam_5/learning_rate.Adam_5/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_5/learning_rate*
dtype0

(Adam_5/learning_rate/Read/ReadVariableOpReadVariableOpAdam_5/learning_rate*'
_class
loc:@Adam_5/learning_rate*
dtype0*
_output_shapes
: 

'Adam_5/beta_1/Initializer/initial_valueConst*
valueB
 *fff?* 
_class
loc:@Adam_5/beta_1*
dtype0*
_output_shapes
: 
”
Adam_5/beta_1VarHandleOp* 
_class
loc:@Adam_5/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_5/beta_1
k
.Adam_5/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/beta_1*
_output_shapes
: 

Adam_5/beta_1/AssignAssignVariableOpAdam_5/beta_1'Adam_5/beta_1/Initializer/initial_value* 
_class
loc:@Adam_5/beta_1*
dtype0

!Adam_5/beta_1/Read/ReadVariableOpReadVariableOpAdam_5/beta_1*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_5/beta_1

'Adam_5/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w¾?* 
_class
loc:@Adam_5/beta_2*
dtype0
”
Adam_5/beta_2VarHandleOp*
shared_nameAdam_5/beta_2* 
_class
loc:@Adam_5/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: 
k
.Adam_5/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/beta_2*
_output_shapes
: 

Adam_5/beta_2/AssignAssignVariableOpAdam_5/beta_2'Adam_5/beta_2/Initializer/initial_value* 
_class
loc:@Adam_5/beta_2*
dtype0

!Adam_5/beta_2/Read/ReadVariableOpReadVariableOpAdam_5/beta_2* 
_class
loc:@Adam_5/beta_2*
dtype0*
_output_shapes
: 

&Adam_5/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam_5/decay*
dtype0*
_output_shapes
: 

Adam_5/decayVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_5/decay*
_class
loc:@Adam_5/decay*
	container 
i
-Adam_5/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/decay*
_output_shapes
: 

Adam_5/decay/AssignAssignVariableOpAdam_5/decay&Adam_5/decay/Initializer/initial_value*
_class
loc:@Adam_5/decay*
dtype0

 Adam_5/decay/Read/ReadVariableOpReadVariableOpAdam_5/decay*
_class
loc:@Adam_5/decay*
dtype0*
_output_shapes
: 

m2_output_target_3Placeholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
u
m2_output_sample_weights_3Placeholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
M
Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 

total_5VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	total_5*
_class
loc:@total_5*
	container *
shape: 
_
(total_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_5*
_output_shapes
: 
^
total_5/AssignAssignVariableOptotal_5Const_15*
_class
loc:@total_5*
dtype0
w
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_class
loc:@total_5*
dtype0*
_output_shapes
: 
M
Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 

count_5VarHandleOp*
dtype0*
_output_shapes
: *
shared_name	count_5*
_class
loc:@count_5*
	container *
shape: 
_
(count_5/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_5*
_output_shapes
: 
^
count_5/AssignAssignVariableOpcount_5Const_16*
_class
loc:@count_5*
dtype0
w
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
_class
loc:@count_5*
dtype0

metrics_5/accuracy/SqueezeSqueezem2_output_target_3*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’*
T0
n
#metrics_5/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
metrics_5/accuracy/ArgMaxArgMaxm2_output_3/Softmax#metrics_5/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’

metrics_5/accuracy/CastCastmetrics_5/accuracy/ArgMax*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0	*
Truncate( 

metrics_5/accuracy/EqualEqualmetrics_5/accuracy/Squeezemetrics_5/accuracy/Cast*#
_output_shapes
:’’’’’’’’’*
T0

metrics_5/accuracy/Cast_1Castmetrics_5/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
b
metrics_5/accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

metrics_5/accuracy/SumSummetrics_5/accuracy/Cast_1metrics_5/accuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
k
&metrics_5/accuracy/AssignAddVariableOpAssignAddVariableOptotal_5metrics_5/accuracy/Sum*
dtype0

!metrics_5/accuracy/ReadVariableOpReadVariableOptotal_5'^metrics_5/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_5/accuracy/SizeSizemetrics_5/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_5/accuracy/Cast_2Castmetrics_5/accuracy/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
p
(metrics_5/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_5metrics_5/accuracy/Cast_2*
dtype0

#metrics_5/accuracy/ReadVariableOp_1ReadVariableOpcount_5)^metrics_5/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_5/accuracy/ReadVariableOp_2ReadVariableOptotal_5"^metrics_5/accuracy/ReadVariableOp$^metrics_5/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_5/accuracy/truediv/ReadVariableOpReadVariableOpcount_5"^metrics_5/accuracy/ReadVariableOp$^metrics_5/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_5/accuracy/truedivRealDiv#metrics_5/accuracy/ReadVariableOp_2)metrics_5/accuracy/truediv/ReadVariableOp*
_output_shapes
: *
T0
d
metrics_5/accuracy/IdentityIdentitymetrics_5/accuracy/truediv*
_output_shapes
: *
T0

;loss_5/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_5/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ū
9loss_5/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_5/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_5/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ų
Kloss_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_3/Softmax9loss_5/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:’’’’’’’’’


Closs_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_5/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
·
9loss_5/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_5/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ż
=loss_5/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_3Closs_5/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_5/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0	

Eloss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_5/m2_output_loss/sparse_categorical_crossentropy/LogEloss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0
Ł
_loss_5/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_5/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ń
}loss_5/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_5/m2_output_loss/sparse_categorical_crossentropy/Cast*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
Tlabels0	*
T0

Gloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_3}loss_5/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’

Iloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
_output_shapes
:*
valueB: *
dtype0
 
Gloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
×
Uloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

Kloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_5/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


loss_5/mulMulloss_5/mul/xKloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_output_shapes
: 
K
Const_17Const*
dtype0*
_output_shapes
: *
valueB 
b
Mean_5Mean
loss_5/mulConst_17*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
}
training_2/Adam/gradients/ShapeConst*
_output_shapes
: *
valueB *
_class
loc:@Mean_3*
dtype0

#training_2/Adam/gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@Mean_3*
dtype0
ŗ
training_2/Adam/gradients/FillFilltraining_2/Adam/gradients/Shape#training_2/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@Mean_3*
_output_shapes
: 

3training_2/Adam/gradients/Mean_3_grad/Reshape/shapeConst*
valueB *
_class
loc:@Mean_3*
dtype0*
_output_shapes
: 
×
-training_2/Adam/gradients/Mean_3_grad/ReshapeReshapetraining_2/Adam/gradients/Fill3training_2/Adam/gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_3*
_output_shapes
: 

+training_2/Adam/gradients/Mean_3_grad/ConstConst*
valueB *
_class
loc:@Mean_3*
dtype0*
_output_shapes
: 
Ü
*training_2/Adam/gradients/Mean_3_grad/TileTile-training_2/Adam/gradients/Mean_3_grad/Reshape+training_2/Adam/gradients/Mean_3_grad/Const*

Tmultiples0*
T0*
_class
loc:@Mean_3*
_output_shapes
: 

-training_2/Adam/gradients/Mean_3_grad/Const_1Const*
valueB
 *  ?*
_class
loc:@Mean_3*
dtype0*
_output_shapes
: 
Ļ
-training_2/Adam/gradients/Mean_3_grad/truedivRealDiv*training_2/Adam/gradients/Mean_3_grad/Tile-training_2/Adam/gradients/Mean_3_grad/Const_1*
T0*
_class
loc:@Mean_3*
_output_shapes
: 
š
-training_2/Adam/gradients/loss_3/mul_grad/MulMul-training_2/Adam/gradients/Mean_3_grad/truedivKloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_3/mul*
_output_shapes
: 
³
/training_2/Adam/gradients/loss_3/mul_grad/Mul_1Mul-training_2/Adam/gradients/Mean_3_grad/truedivloss_3/mul/x*
T0*
_class
loc:@loss_3/mul*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
_output_shapes
: *
valueB *^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0

rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
valueB *^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 

training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_2/Adam/gradients/loss_3/mul_grad/Mul_1Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
ī
rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
Tshape0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
æ
ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
Ē
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
Ķ
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_2/Adam/gradients/loss_3/mul_grad/Mul_1ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ō
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*
Tshape0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
dtype0
ņ
ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
Tshape0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:*
T0
Ļ
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:*
T0
ķ
ktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’*

Tmultiples0
¢
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights_1*
T0*
out_type0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul

|training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ē
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’*
T0
÷
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
ė
ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*
Tshape0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’

ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weights_1ktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*#
_output_shapes
:’’’’’’’’’*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ż
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
ń
ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*
Tshape0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ś
$training_2/Adam/gradients/zeros_like	ZerosLikeloss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ą
¬training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits

«training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0
Ŗ
§training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1«training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
É
 training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul§training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims¬training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*
T0
±
dtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_3/m1_output_loss/sparse_categorical_crossentropy/Log*
_output_shapes
:*
T0*
out_type0*R
_classH
FDloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1

ftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
Tshape0*R
_classH
FDloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:’’’’’’’’’
*
T0

ctraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

°
\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*L
_classB
@>loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ė
htraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*
out_type0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:

jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
Ž
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*
out_type0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
č
htraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*
T0*

index_type0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value

otraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_3/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
ü
xtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
¶
itraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ø
ktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ź
ftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
ß
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

š
htraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
Ō
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*
Tshape0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: 
£
ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output_1/Softmax*
out_type0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0

rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
valueB *^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ü
rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*
out_type0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:

vtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ć
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output_1/Softmax9loss_3/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
į
qtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ć
straining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Selecttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
’
rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
Tshape0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
ō
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
 
6training_2/Adam/gradients/m1_output_1/Softmax_grad/mulMulrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output_1/Softmax*&
_class
loc:@m1_output_1/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
»
Htraining_2/Adam/gradients/m1_output_1/Softmax_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*&
_class
loc:@m1_output_1/Softmax*
dtype0*
_output_shapes
: 
¶
6training_2/Adam/gradients/m1_output_1/Softmax_grad/SumSum6training_2/Adam/gradients/m1_output_1/Softmax_grad/mulHtraining_2/Adam/gradients/m1_output_1/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:’’’’’’’’’*

Tidx0*
	keep_dims(*
T0*&
_class
loc:@m1_output_1/Softmax
Ć
6training_2/Adam/gradients/m1_output_1/Softmax_grad/subSubrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape6training_2/Adam/gradients/m1_output_1/Softmax_grad/Sum*
T0*&
_class
loc:@m1_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

ę
8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1Mul6training_2/Adam/gradients/m1_output_1/Softmax_grad/subm1_output_1/Softmax*
T0*&
_class
loc:@m1_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

ė
>training_2/Adam/gradients/m1_output_1/BiasAdd_grad/BiasAddGradBiasAddGrad8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1*
_output_shapes
:
*
T0*&
_class
loc:@m1_output_1/BiasAdd*
data_formatNHWC

8training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMulMatMul8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1!m1_output_1/MatMul/ReadVariableOp*
T0*%
_class
loc:@m1_output_1/MatMul*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(

:training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMul_1MatMulm1_hidden3_1/Relu8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1*
T0*%
_class
loc:@m1_output_1/MatMul*
_output_shapes

:
*
transpose_a(*
transpose_b( 
ź
9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGradReluGrad8training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMulm1_hidden3_1/Relu*
T0*$
_class
loc:@m1_hidden3_1/Relu*'
_output_shapes
:’’’’’’’’’
ī
?training_2/Adam/gradients/m1_hidden3_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@m1_hidden3_1/BiasAdd*
data_formatNHWC*
_output_shapes
:
¢
9training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGrad"m1_hidden3_1/MatMul/ReadVariableOp*
transpose_b(*
T0*&
_class
loc:@m1_hidden3_1/MatMul*'
_output_shapes
:’’’’’’’’’@*
transpose_a( 

;training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMul_1MatMulm1_hidden2_1/Relu9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGrad*
T0*&
_class
loc:@m1_hidden3_1/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( 
ė
9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGradReluGrad9training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMulm1_hidden2_1/Relu*
T0*$
_class
loc:@m1_hidden2_1/Relu*'
_output_shapes
:’’’’’’’’’@
ī
?training_2/Adam/gradients/m1_hidden2_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGrad*'
_class
loc:@m1_hidden2_1/BiasAdd*
data_formatNHWC*
_output_shapes
:@*
T0
£
9training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGrad"m1_hidden2_1/MatMul/ReadVariableOp*&
_class
loc:@m1_hidden2_1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0

;training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMul_1MatMulm1_hidden1_1/Relu9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGrad*
_output_shapes
:	@*
transpose_a(*
transpose_b( *
T0*&
_class
loc:@m1_hidden2_1/MatMul
ģ
9training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGradReluGrad9training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMulm1_hidden1_1/Relu*
T0*$
_class
loc:@m1_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
ļ
?training_2/Adam/gradients/m1_hidden1_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGrad*'
_class
loc:@m1_hidden1_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:*
T0
£
9training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGrad"m1_hidden1_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m1_hidden1_1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(

;training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMul_1MatMulm1_hidden1_input_19training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGrad* 
_output_shapes
:
*
transpose_a(*
transpose_b( *
T0*&
_class
loc:@m1_hidden1_1/MatMul
W
training_2/Adam/ConstConst*
_output_shapes
: *
value	B	 R*
dtype0	
q
#training_2/Adam/AssignAddVariableOpAssignAddVariableOpAdam_3/iterationstraining_2/Adam/Const*
dtype0	

training_2/Adam/ReadVariableOpReadVariableOpAdam_3/iterations$^training_2/Adam/AssignAddVariableOp*
_output_shapes
: *
dtype0	
m
#training_2/Adam/Cast/ReadVariableOpReadVariableOpAdam_3/iterations*
dtype0	*
_output_shapes
: 

training_2/Adam/CastCast#training_2/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *
_output_shapes
: *

DstT0
Z
training_2/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training_2/Adam/addAddtraining_2/Adam/Casttraining_2/Adam/add/y*
_output_shapes
: *
T0
h
"training_2/Adam/Pow/ReadVariableOpReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
t
training_2/Adam/PowPow"training_2/Adam/Pow/ReadVariableOptraining_2/Adam/add*
T0*
_output_shapes
: 
Z
training_2/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training_2/Adam/subSubtraining_2/Adam/sub/xtraining_2/Adam/Pow*
_output_shapes
: *
T0
\
training_2/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training_2/Adam/clip_by_value/MinimumMinimumtraining_2/Adam/subtraining_2/Adam/Const_2*
_output_shapes
: *
T0

training_2/Adam/clip_by_valueMaximum%training_2/Adam/clip_by_value/Minimumtraining_2/Adam/Const_1*
T0*
_output_shapes
: 
\
training_2/Adam/SqrtSqrttraining_2/Adam/clip_by_value*
T0*
_output_shapes
: 
j
$training_2/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
x
training_2/Adam/Pow_1Pow$training_2/Adam/Pow_1/ReadVariableOptraining_2/Adam/add*
T0*
_output_shapes
: 
\
training_2/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
m
training_2/Adam/sub_1Subtraining_2/Adam/sub_1/xtraining_2/Adam/Pow_1*
T0*
_output_shapes
: 
p
training_2/Adam/truedivRealDivtraining_2/Adam/Sqrttraining_2/Adam/sub_1*
_output_shapes
: *
T0
m
 training_2/Adam/ReadVariableOp_1ReadVariableOpAdam_3/learning_rate*
dtype0*
_output_shapes
: 
v
training_2/Adam/mulMul training_2/Adam/ReadVariableOp_1training_2/Adam/truediv*
_output_shapes
: *
T0
t
#training_2/Adam/m_0/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
^
training_2/Adam/m_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/m_0Fill#training_2/Adam/m_0/shape_as_tensortraining_2/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:

Ć
training_2/Adam/m_0_1VarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_0_1*(
_class
loc:@training_2/Adam/m_0_1
{
6training_2/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_0_1*
_output_shapes
: 

training_2/Adam/m_0_1/AssignAssignVariableOptraining_2/Adam/m_0_1training_2/Adam/m_0*(
_class
loc:@training_2/Adam/m_0_1*
dtype0
«
)training_2/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_0_1*(
_class
loc:@training_2/Adam/m_0_1*
dtype0* 
_output_shapes
:

b
training_2/Adam/m_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_2/Adam/m_1_1VarHandleOp*&
shared_nametraining_2/Adam/m_1_1*(
_class
loc:@training_2/Adam/m_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
{
6training_2/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_1_1*
_output_shapes
: 

training_2/Adam/m_1_1/AssignAssignVariableOptraining_2/Adam/m_1_1training_2/Adam/m_1*(
_class
loc:@training_2/Adam/m_1_1*
dtype0
¦
)training_2/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_1_1*
dtype0*
_output_shapes	
:*(
_class
loc:@training_2/Adam/m_1_1
t
#training_2/Adam/m_2/shape_as_tensorConst*
valueB"   @   *
dtype0*
_output_shapes
:
^
training_2/Adam/m_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_2/Adam/m_2Fill#training_2/Adam/m_2/shape_as_tensortraining_2/Adam/m_2/Const*

index_type0*
_output_shapes
:	@*
T0
Ā
training_2/Adam/m_2_1VarHandleOp*
	container *
shape:	@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_2_1*(
_class
loc:@training_2/Adam/m_2_1
{
6training_2/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_2_1*
_output_shapes
: 

training_2/Adam/m_2_1/AssignAssignVariableOptraining_2/Adam/m_2_1training_2/Adam/m_2*(
_class
loc:@training_2/Adam/m_2_1*
dtype0
Ŗ
)training_2/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_2_1*(
_class
loc:@training_2/Adam/m_2_1*
dtype0*
_output_shapes
:	@
`
training_2/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
training_2/Adam/m_3_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_3_1*(
_class
loc:@training_2/Adam/m_3_1*
	container *
shape:@
{
6training_2/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_3_1*
_output_shapes
: 

training_2/Adam/m_3_1/AssignAssignVariableOptraining_2/Adam/m_3_1training_2/Adam/m_3*
dtype0*(
_class
loc:@training_2/Adam/m_3_1
„
)training_2/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_3_1*(
_class
loc:@training_2/Adam/m_3_1*
dtype0*
_output_shapes
:@
t
#training_2/Adam/m_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_2/Adam/m_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/m_4Fill#training_2/Adam/m_4/shape_as_tensortraining_2/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
training_2/Adam/m_4_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_4_1*(
_class
loc:@training_2/Adam/m_4_1*
	container *
shape
:@
{
6training_2/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_4_1*
_output_shapes
: 

training_2/Adam/m_4_1/AssignAssignVariableOptraining_2/Adam/m_4_1training_2/Adam/m_4*(
_class
loc:@training_2/Adam/m_4_1*
dtype0
©
)training_2/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_4_1*
dtype0*
_output_shapes

:@*(
_class
loc:@training_2/Adam/m_4_1
`
training_2/Adam/m_5Const*
_output_shapes
:*
valueB*    *
dtype0
½
training_2/Adam/m_5_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_5_1*(
_class
loc:@training_2/Adam/m_5_1*
	container *
shape:
{
6training_2/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_5_1*
_output_shapes
: 

training_2/Adam/m_5_1/AssignAssignVariableOptraining_2/Adam/m_5_1training_2/Adam/m_5*(
_class
loc:@training_2/Adam/m_5_1*
dtype0
„
)training_2/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_5_1*(
_class
loc:@training_2/Adam/m_5_1*
dtype0*
_output_shapes
:
h
training_2/Adam/m_6Const*
valueB
*    *
dtype0*
_output_shapes

:

Į
training_2/Adam/m_6_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_6_1*(
_class
loc:@training_2/Adam/m_6_1*
	container *
shape
:

{
6training_2/Adam/m_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_6_1*
_output_shapes
: 

training_2/Adam/m_6_1/AssignAssignVariableOptraining_2/Adam/m_6_1training_2/Adam/m_6*(
_class
loc:@training_2/Adam/m_6_1*
dtype0
©
)training_2/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_6_1*
dtype0*
_output_shapes

:
*(
_class
loc:@training_2/Adam/m_6_1
`
training_2/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

½
training_2/Adam/m_7_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_7_1*(
_class
loc:@training_2/Adam/m_7_1*
	container *
shape:

{
6training_2/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_7_1*
_output_shapes
: 

training_2/Adam/m_7_1/AssignAssignVariableOptraining_2/Adam/m_7_1training_2/Adam/m_7*(
_class
loc:@training_2/Adam/m_7_1*
dtype0
„
)training_2/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_7_1*
dtype0*
_output_shapes
:
*(
_class
loc:@training_2/Adam/m_7_1
t
#training_2/Adam/v_0/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
^
training_2/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/v_0Fill#training_2/Adam/v_0/shape_as_tensortraining_2/Adam/v_0/Const* 
_output_shapes
:
*
T0*

index_type0
Ć
training_2/Adam/v_0_1VarHandleOp*
_output_shapes
: *&
shared_nametraining_2/Adam/v_0_1*(
_class
loc:@training_2/Adam/v_0_1*
	container *
shape:
*
dtype0
{
6training_2/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_0_1*
_output_shapes
: 

training_2/Adam/v_0_1/AssignAssignVariableOptraining_2/Adam/v_0_1training_2/Adam/v_0*(
_class
loc:@training_2/Adam/v_0_1*
dtype0
«
)training_2/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_0_1*(
_class
loc:@training_2/Adam/v_0_1*
dtype0* 
_output_shapes
:

b
training_2/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_2/Adam/v_1_1VarHandleOp*(
_class
loc:@training_2/Adam/v_1_1*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_1_1
{
6training_2/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_1_1*
_output_shapes
: 

training_2/Adam/v_1_1/AssignAssignVariableOptraining_2/Adam/v_1_1training_2/Adam/v_1*
dtype0*(
_class
loc:@training_2/Adam/v_1_1
¦
)training_2/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_1_1*(
_class
loc:@training_2/Adam/v_1_1*
dtype0*
_output_shapes	
:
t
#training_2/Adam/v_2/shape_as_tensorConst*
valueB"   @   *
dtype0*
_output_shapes
:
^
training_2/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/v_2Fill#training_2/Adam/v_2/shape_as_tensortraining_2/Adam/v_2/Const*
_output_shapes
:	@*
T0*

index_type0
Ā
training_2/Adam/v_2_1VarHandleOp*(
_class
loc:@training_2/Adam/v_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_2_1
{
6training_2/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_2_1*
_output_shapes
: 

training_2/Adam/v_2_1/AssignAssignVariableOptraining_2/Adam/v_2_1training_2/Adam/v_2*(
_class
loc:@training_2/Adam/v_2_1*
dtype0
Ŗ
)training_2/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_2_1*
dtype0*
_output_shapes
:	@*(
_class
loc:@training_2/Adam/v_2_1
`
training_2/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
training_2/Adam/v_3_1VarHandleOp*
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_3_1*(
_class
loc:@training_2/Adam/v_3_1*
	container 
{
6training_2/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_3_1*
_output_shapes
: 

training_2/Adam/v_3_1/AssignAssignVariableOptraining_2/Adam/v_3_1training_2/Adam/v_3*(
_class
loc:@training_2/Adam/v_3_1*
dtype0
„
)training_2/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_3_1*(
_class
loc:@training_2/Adam/v_3_1*
dtype0*
_output_shapes
:@
t
#training_2/Adam/v_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_2/Adam/v_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/v_4Fill#training_2/Adam/v_4/shape_as_tensortraining_2/Adam/v_4/Const*
_output_shapes

:@*
T0*

index_type0
Į
training_2/Adam/v_4_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_4_1*(
_class
loc:@training_2/Adam/v_4_1*
	container *
shape
:@
{
6training_2/Adam/v_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_4_1*
_output_shapes
: 

training_2/Adam/v_4_1/AssignAssignVariableOptraining_2/Adam/v_4_1training_2/Adam/v_4*(
_class
loc:@training_2/Adam/v_4_1*
dtype0
©
)training_2/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_4_1*(
_class
loc:@training_2/Adam/v_4_1*
dtype0*
_output_shapes

:@
`
training_2/Adam/v_5Const*
valueB*    *
dtype0*
_output_shapes
:
½
training_2/Adam/v_5_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_5_1*(
_class
loc:@training_2/Adam/v_5_1
{
6training_2/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_5_1*
_output_shapes
: 

training_2/Adam/v_5_1/AssignAssignVariableOptraining_2/Adam/v_5_1training_2/Adam/v_5*(
_class
loc:@training_2/Adam/v_5_1*
dtype0
„
)training_2/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_5_1*(
_class
loc:@training_2/Adam/v_5_1*
dtype0*
_output_shapes
:
h
training_2/Adam/v_6Const*
valueB
*    *
dtype0*
_output_shapes

:

Į
training_2/Adam/v_6_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_6_1*(
_class
loc:@training_2/Adam/v_6_1*
	container *
shape
:

{
6training_2/Adam/v_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_6_1*
_output_shapes
: 

training_2/Adam/v_6_1/AssignAssignVariableOptraining_2/Adam/v_6_1training_2/Adam/v_6*(
_class
loc:@training_2/Adam/v_6_1*
dtype0
©
)training_2/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_6_1*(
_class
loc:@training_2/Adam/v_6_1*
dtype0*
_output_shapes

:

`
training_2/Adam/v_7Const*
valueB
*    *
dtype0*
_output_shapes
:

½
training_2/Adam/v_7_1VarHandleOp*&
shared_nametraining_2/Adam/v_7_1*(
_class
loc:@training_2/Adam/v_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
{
6training_2/Adam/v_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_7_1*
_output_shapes
: 

training_2/Adam/v_7_1/AssignAssignVariableOptraining_2/Adam/v_7_1training_2/Adam/v_7*
dtype0*(
_class
loc:@training_2/Adam/v_7_1
„
)training_2/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_7_1*(
_class
loc:@training_2/Adam/v_7_1*
dtype0*
_output_shapes
:

p
&training_2/Adam/vhat_0/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_0Fill&training_2/Adam/vhat_0/shape_as_tensortraining_2/Adam/vhat_0/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_2/Adam/vhat_0_1VarHandleOp*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_0_1*+
_class!
loc:@training_2/Adam/vhat_0_1*
	container *
shape:*
dtype0

9training_2/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_0_1*
_output_shapes
: 

training_2/Adam/vhat_0_1/AssignAssignVariableOptraining_2/Adam/vhat_0_1training_2/Adam/vhat_0*+
_class!
loc:@training_2/Adam/vhat_0_1*
dtype0
®
,training_2/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_0_1*+
_class!
loc:@training_2/Adam/vhat_0_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_1Fill&training_2/Adam/vhat_1/shape_as_tensortraining_2/Adam/vhat_1/Const*

index_type0*
_output_shapes
:*
T0
Ę
training_2/Adam/vhat_1_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_1_1*+
_class!
loc:@training_2/Adam/vhat_1_1*
	container *
shape:

9training_2/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_1_1*
_output_shapes
: 

training_2/Adam/vhat_1_1/AssignAssignVariableOptraining_2/Adam/vhat_1_1training_2/Adam/vhat_1*
dtype0*+
_class!
loc:@training_2/Adam/vhat_1_1
®
,training_2/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_1_1*+
_class!
loc:@training_2/Adam/vhat_1_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_2/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training_2/Adam/vhat_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_2Fill&training_2/Adam/vhat_2/shape_as_tensortraining_2/Adam/vhat_2/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_2_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_2_1*+
_class!
loc:@training_2/Adam/vhat_2_1*
	container *
shape:

9training_2/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_2_1*
_output_shapes
: 

training_2/Adam/vhat_2_1/AssignAssignVariableOptraining_2/Adam/vhat_2_1training_2/Adam/vhat_2*+
_class!
loc:@training_2/Adam/vhat_2_1*
dtype0
®
,training_2/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_2_1*+
_class!
loc:@training_2/Adam/vhat_2_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_3Fill&training_2/Adam/vhat_3/shape_as_tensortraining_2/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_3_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_3_1*+
_class!
loc:@training_2/Adam/vhat_3_1

9training_2/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_3_1*
_output_shapes
: 

training_2/Adam/vhat_3_1/AssignAssignVariableOptraining_2/Adam/vhat_3_1training_2/Adam/vhat_3*
dtype0*+
_class!
loc:@training_2/Adam/vhat_3_1
®
,training_2/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_3_1*+
_class!
loc:@training_2/Adam/vhat_3_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_4Fill&training_2/Adam/vhat_4/shape_as_tensortraining_2/Adam/vhat_4/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_2/Adam/vhat_4_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_4_1*+
_class!
loc:@training_2/Adam/vhat_4_1

9training_2/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_4_1*
_output_shapes
: 

training_2/Adam/vhat_4_1/AssignAssignVariableOptraining_2/Adam/vhat_4_1training_2/Adam/vhat_4*+
_class!
loc:@training_2/Adam/vhat_4_1*
dtype0
®
,training_2/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_4_1*+
_class!
loc:@training_2/Adam/vhat_4_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_5/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_2/Adam/vhat_5Fill&training_2/Adam/vhat_5/shape_as_tensortraining_2/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_5_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_5_1*+
_class!
loc:@training_2/Adam/vhat_5_1

9training_2/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_5_1*
_output_shapes
: 

training_2/Adam/vhat_5_1/AssignAssignVariableOptraining_2/Adam/vhat_5_1training_2/Adam/vhat_5*+
_class!
loc:@training_2/Adam/vhat_5_1*
dtype0
®
,training_2/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_5_1*+
_class!
loc:@training_2/Adam/vhat_5_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_6/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_6Fill&training_2/Adam/vhat_6/shape_as_tensortraining_2/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_6_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_6_1*+
_class!
loc:@training_2/Adam/vhat_6_1*
	container *
shape:

9training_2/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_6_1*
_output_shapes
: 

training_2/Adam/vhat_6_1/AssignAssignVariableOptraining_2/Adam/vhat_6_1training_2/Adam/vhat_6*+
_class!
loc:@training_2/Adam/vhat_6_1*
dtype0
®
,training_2/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_6_1*+
_class!
loc:@training_2/Adam/vhat_6_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_7Fill&training_2/Adam/vhat_7/shape_as_tensortraining_2/Adam/vhat_7/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_2/Adam/vhat_7_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_7_1*+
_class!
loc:@training_2/Adam/vhat_7_1*
	container *
shape:

9training_2/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_7_1*
_output_shapes
: 

training_2/Adam/vhat_7_1/AssignAssignVariableOptraining_2/Adam/vhat_7_1training_2/Adam/vhat_7*+
_class!
loc:@training_2/Adam/vhat_7_1*
dtype0
®
,training_2/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_7_1*+
_class!
loc:@training_2/Adam/vhat_7_1*
dtype0*
_output_shapes
:
f
 training_2/Adam/ReadVariableOp_2ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
|
$training_2/Adam/mul_1/ReadVariableOpReadVariableOptraining_2/Adam/m_0_1*
dtype0* 
_output_shapes
:


training_2/Adam/mul_1Mul training_2/Adam/ReadVariableOp_2$training_2/Adam/mul_1/ReadVariableOp* 
_output_shapes
:
*
T0
f
 training_2/Adam/ReadVariableOp_3ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
training_2/Adam/sub_2Subtraining_2/Adam/sub_2/x training_2/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training_2/Adam/mul_2Multraining_2/Adam/sub_2;training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

u
training_2/Adam/add_1Addtraining_2/Adam/mul_1training_2/Adam/mul_2*
T0* 
_output_shapes
:

f
 training_2/Adam/ReadVariableOp_4ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
|
$training_2/Adam/mul_3/ReadVariableOpReadVariableOptraining_2/Adam/v_0_1*
dtype0* 
_output_shapes
:


training_2/Adam/mul_3Mul training_2/Adam/ReadVariableOp_4$training_2/Adam/mul_3/ReadVariableOp* 
_output_shapes
:
*
T0
f
 training_2/Adam/ReadVariableOp_5ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_3/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
x
training_2/Adam/sub_3Subtraining_2/Adam/sub_3/x training_2/Adam/ReadVariableOp_5*
_output_shapes
: *
T0

training_2/Adam/SquareSquare;training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

v
training_2/Adam/mul_4Multraining_2/Adam/sub_3training_2/Adam/Square*
T0* 
_output_shapes
:

u
training_2/Adam/add_2Addtraining_2/Adam/mul_3training_2/Adam/mul_4* 
_output_shapes
:
*
T0
s
training_2/Adam/mul_5Multraining_2/Adam/multraining_2/Adam/add_1*
T0* 
_output_shapes
:

\
training_2/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *  

'training_2/Adam/clip_by_value_1/MinimumMinimumtraining_2/Adam/add_2training_2/Adam/Const_4*
T0* 
_output_shapes
:


training_2/Adam/clip_by_value_1Maximum'training_2/Adam/clip_by_value_1/Minimumtraining_2/Adam/Const_3*
T0* 
_output_shapes
:

j
training_2/Adam/Sqrt_1Sqrttraining_2/Adam/clip_by_value_1* 
_output_shapes
:
*
T0
\
training_2/Adam/add_3/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
x
training_2/Adam/add_3Addtraining_2/Adam/Sqrt_1training_2/Adam/add_3/y* 
_output_shapes
:
*
T0
}
training_2/Adam/truediv_1RealDivtraining_2/Adam/mul_5training_2/Adam/add_3* 
_output_shapes
:
*
T0
v
 training_2/Adam/ReadVariableOp_6ReadVariableOpm1_hidden1_1/kernel*
dtype0* 
_output_shapes
:


training_2/Adam/sub_4Sub training_2/Adam/ReadVariableOp_6training_2/Adam/truediv_1*
T0* 
_output_shapes
:

o
 training_2/Adam/AssignVariableOpAssignVariableOptraining_2/Adam/m_0_1training_2/Adam/add_1*
dtype0

 training_2/Adam/ReadVariableOp_7ReadVariableOptraining_2/Adam/m_0_1!^training_2/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:

q
"training_2/Adam/AssignVariableOp_1AssignVariableOptraining_2/Adam/v_0_1training_2/Adam/add_2*
dtype0

 training_2/Adam/ReadVariableOp_8ReadVariableOptraining_2/Adam/v_0_1#^training_2/Adam/AssignVariableOp_1* 
_output_shapes
:
*
dtype0
o
"training_2/Adam/AssignVariableOp_2AssignVariableOpm1_hidden1_1/kerneltraining_2/Adam/sub_4*
dtype0

 training_2/Adam/ReadVariableOp_9ReadVariableOpm1_hidden1_1/kernel#^training_2/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_10ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
w
$training_2/Adam/mul_6/ReadVariableOpReadVariableOptraining_2/Adam/m_1_1*
dtype0*
_output_shapes	
:

training_2/Adam/mul_6Mul!training_2/Adam/ReadVariableOp_10$training_2/Adam/mul_6/ReadVariableOp*
_output_shapes	
:*
T0
g
!training_2/Adam/ReadVariableOp_11ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_5Subtraining_2/Adam/sub_5/x!training_2/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training_2/Adam/mul_7Multraining_2/Adam/sub_5?training_2/Adam/gradients/m1_hidden1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training_2/Adam/add_4Addtraining_2/Adam/mul_6training_2/Adam/mul_7*
T0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_12ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
w
$training_2/Adam/mul_8/ReadVariableOpReadVariableOptraining_2/Adam/v_1_1*
_output_shapes	
:*
dtype0

training_2/Adam/mul_8Mul!training_2/Adam/ReadVariableOp_12$training_2/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_13ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_6Subtraining_2/Adam/sub_6/x!training_2/Adam/ReadVariableOp_13*
_output_shapes
: *
T0

training_2/Adam/Square_1Square?training_2/Adam/gradients/m1_hidden1_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
s
training_2/Adam/mul_9Multraining_2/Adam/sub_6training_2/Adam/Square_1*
T0*
_output_shapes	
:
p
training_2/Adam/add_5Addtraining_2/Adam/mul_8training_2/Adam/mul_9*
T0*
_output_shapes	
:
o
training_2/Adam/mul_10Multraining_2/Adam/multraining_2/Adam/add_4*
_output_shapes	
:*
T0
\
training_2/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_2/MinimumMinimumtraining_2/Adam/add_5training_2/Adam/Const_6*
T0*
_output_shapes	
:

training_2/Adam/clip_by_value_2Maximum'training_2/Adam/clip_by_value_2/Minimumtraining_2/Adam/Const_5*
T0*
_output_shapes	
:
e
training_2/Adam/Sqrt_2Sqrttraining_2/Adam/clip_by_value_2*
T0*
_output_shapes	
:
\
training_2/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
s
training_2/Adam/add_6Addtraining_2/Adam/Sqrt_2training_2/Adam/add_6/y*
_output_shapes	
:*
T0
y
training_2/Adam/truediv_2RealDivtraining_2/Adam/mul_10training_2/Adam/add_6*
T0*
_output_shapes	
:
p
!training_2/Adam/ReadVariableOp_14ReadVariableOpm1_hidden1_1/bias*
dtype0*
_output_shapes	
:

training_2/Adam/sub_7Sub!training_2/Adam/ReadVariableOp_14training_2/Adam/truediv_2*
T0*
_output_shapes	
:
q
"training_2/Adam/AssignVariableOp_3AssignVariableOptraining_2/Adam/m_1_1training_2/Adam/add_4*
dtype0

!training_2/Adam/ReadVariableOp_15ReadVariableOptraining_2/Adam/m_1_1#^training_2/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:
q
"training_2/Adam/AssignVariableOp_4AssignVariableOptraining_2/Adam/v_1_1training_2/Adam/add_5*
dtype0

!training_2/Adam/ReadVariableOp_16ReadVariableOptraining_2/Adam/v_1_1#^training_2/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:
m
"training_2/Adam/AssignVariableOp_5AssignVariableOpm1_hidden1_1/biastraining_2/Adam/sub_7*
dtype0

!training_2/Adam/ReadVariableOp_17ReadVariableOpm1_hidden1_1/bias#^training_2/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_18ReadVariableOpAdam_3/beta_1*
_output_shapes
: *
dtype0
|
%training_2/Adam/mul_11/ReadVariableOpReadVariableOptraining_2/Adam/m_2_1*
dtype0*
_output_shapes
:	@

training_2/Adam/mul_11Mul!training_2/Adam/ReadVariableOp_18%training_2/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_19ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_8Subtraining_2/Adam/sub_8/x!training_2/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training_2/Adam/mul_12Multraining_2/Adam/sub_8;training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
v
training_2/Adam/add_7Addtraining_2/Adam/mul_11training_2/Adam/mul_12*
T0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_20ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
|
%training_2/Adam/mul_13/ReadVariableOpReadVariableOptraining_2/Adam/v_2_1*
dtype0*
_output_shapes
:	@

training_2/Adam/mul_13Mul!training_2/Adam/ReadVariableOp_20%training_2/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_21ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_9Subtraining_2/Adam/sub_9/x!training_2/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training_2/Adam/Square_2Square;training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
x
training_2/Adam/mul_14Multraining_2/Adam/sub_9training_2/Adam/Square_2*
T0*
_output_shapes
:	@
v
training_2/Adam/add_8Addtraining_2/Adam/mul_13training_2/Adam/mul_14*
T0*
_output_shapes
:	@
s
training_2/Adam/mul_15Multraining_2/Adam/multraining_2/Adam/add_7*
_output_shapes
:	@*
T0
\
training_2/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_8Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_3/MinimumMinimumtraining_2/Adam/add_8training_2/Adam/Const_8*
_output_shapes
:	@*
T0

training_2/Adam/clip_by_value_3Maximum'training_2/Adam/clip_by_value_3/Minimumtraining_2/Adam/Const_7*
T0*
_output_shapes
:	@
i
training_2/Adam/Sqrt_3Sqrttraining_2/Adam/clip_by_value_3*
T0*
_output_shapes
:	@
\
training_2/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
w
training_2/Adam/add_9Addtraining_2/Adam/Sqrt_3training_2/Adam/add_9/y*
T0*
_output_shapes
:	@
}
training_2/Adam/truediv_3RealDivtraining_2/Adam/mul_15training_2/Adam/add_9*
T0*
_output_shapes
:	@
v
!training_2/Adam/ReadVariableOp_22ReadVariableOpm1_hidden2_1/kernel*
dtype0*
_output_shapes
:	@

training_2/Adam/sub_10Sub!training_2/Adam/ReadVariableOp_22training_2/Adam/truediv_3*
_output_shapes
:	@*
T0
q
"training_2/Adam/AssignVariableOp_6AssignVariableOptraining_2/Adam/m_2_1training_2/Adam/add_7*
dtype0

!training_2/Adam/ReadVariableOp_23ReadVariableOptraining_2/Adam/m_2_1#^training_2/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	@
q
"training_2/Adam/AssignVariableOp_7AssignVariableOptraining_2/Adam/v_2_1training_2/Adam/add_8*
dtype0

!training_2/Adam/ReadVariableOp_24ReadVariableOptraining_2/Adam/v_2_1#^training_2/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	@
p
"training_2/Adam/AssignVariableOp_8AssignVariableOpm1_hidden2_1/kerneltraining_2/Adam/sub_10*
dtype0

!training_2/Adam/ReadVariableOp_25ReadVariableOpm1_hidden2_1/kernel#^training_2/Adam/AssignVariableOp_8*
_output_shapes
:	@*
dtype0
g
!training_2/Adam/ReadVariableOp_26ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_16/ReadVariableOpReadVariableOptraining_2/Adam/m_3_1*
dtype0*
_output_shapes
:@

training_2/Adam/mul_16Mul!training_2/Adam/ReadVariableOp_26%training_2/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_27ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_11/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_2/Adam/sub_11Subtraining_2/Adam/sub_11/x!training_2/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

training_2/Adam/mul_17Multraining_2/Adam/sub_11?training_2/Adam/gradients/m1_hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
r
training_2/Adam/add_10Addtraining_2/Adam/mul_16training_2/Adam/mul_17*
T0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_28ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_18/ReadVariableOpReadVariableOptraining_2/Adam/v_3_1*
dtype0*
_output_shapes
:@

training_2/Adam/mul_18Mul!training_2/Adam/ReadVariableOp_28%training_2/Adam/mul_18/ReadVariableOp*
_output_shapes
:@*
T0
g
!training_2/Adam/ReadVariableOp_29ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_12Subtraining_2/Adam/sub_12/x!training_2/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

training_2/Adam/Square_3Square?training_2/Adam/gradients/m1_hidden2_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
t
training_2/Adam/mul_19Multraining_2/Adam/sub_12training_2/Adam/Square_3*
T0*
_output_shapes
:@
r
training_2/Adam/add_11Addtraining_2/Adam/mul_18training_2/Adam/mul_19*
T0*
_output_shapes
:@
o
training_2/Adam/mul_20Multraining_2/Adam/multraining_2/Adam/add_10*
T0*
_output_shapes
:@
\
training_2/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_2/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_4/MinimumMinimumtraining_2/Adam/add_11training_2/Adam/Const_10*
T0*
_output_shapes
:@

training_2/Adam/clip_by_value_4Maximum'training_2/Adam/clip_by_value_4/Minimumtraining_2/Adam/Const_9*
T0*
_output_shapes
:@
d
training_2/Adam/Sqrt_4Sqrttraining_2/Adam/clip_by_value_4*
_output_shapes
:@*
T0
]
training_2/Adam/add_12/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
t
training_2/Adam/add_12Addtraining_2/Adam/Sqrt_4training_2/Adam/add_12/y*
T0*
_output_shapes
:@
y
training_2/Adam/truediv_4RealDivtraining_2/Adam/mul_20training_2/Adam/add_12*
T0*
_output_shapes
:@
o
!training_2/Adam/ReadVariableOp_30ReadVariableOpm1_hidden2_1/bias*
dtype0*
_output_shapes
:@

training_2/Adam/sub_13Sub!training_2/Adam/ReadVariableOp_30training_2/Adam/truediv_4*
T0*
_output_shapes
:@
r
"training_2/Adam/AssignVariableOp_9AssignVariableOptraining_2/Adam/m_3_1training_2/Adam/add_10*
dtype0

!training_2/Adam/ReadVariableOp_31ReadVariableOptraining_2/Adam/m_3_1#^training_2/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
s
#training_2/Adam/AssignVariableOp_10AssignVariableOptraining_2/Adam/v_3_1training_2/Adam/add_11*
dtype0

!training_2/Adam/ReadVariableOp_32ReadVariableOptraining_2/Adam/v_3_1$^training_2/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
o
#training_2/Adam/AssignVariableOp_11AssignVariableOpm1_hidden2_1/biastraining_2/Adam/sub_13*
dtype0

!training_2/Adam/ReadVariableOp_33ReadVariableOpm1_hidden2_1/bias$^training_2/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_34ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_21/ReadVariableOpReadVariableOptraining_2/Adam/m_4_1*
dtype0*
_output_shapes

:@

training_2/Adam/mul_21Mul!training_2/Adam/ReadVariableOp_34%training_2/Adam/mul_21/ReadVariableOp*
_output_shapes

:@*
T0
g
!training_2/Adam/ReadVariableOp_35ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_14Subtraining_2/Adam/sub_14/x!training_2/Adam/ReadVariableOp_35*
_output_shapes
: *
T0

training_2/Adam/mul_22Multraining_2/Adam/sub_14;training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
v
training_2/Adam/add_13Addtraining_2/Adam/mul_21training_2/Adam/mul_22*
_output_shapes

:@*
T0
g
!training_2/Adam/ReadVariableOp_36ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_23/ReadVariableOpReadVariableOptraining_2/Adam/v_4_1*
dtype0*
_output_shapes

:@

training_2/Adam/mul_23Mul!training_2/Adam/ReadVariableOp_36%training_2/Adam/mul_23/ReadVariableOp*
_output_shapes

:@*
T0
g
!training_2/Adam/ReadVariableOp_37ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_15Subtraining_2/Adam/sub_15/x!training_2/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

training_2/Adam/Square_4Square;training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
x
training_2/Adam/mul_24Multraining_2/Adam/sub_15training_2/Adam/Square_4*
_output_shapes

:@*
T0
v
training_2/Adam/add_14Addtraining_2/Adam/mul_23training_2/Adam/mul_24*
T0*
_output_shapes

:@
s
training_2/Adam/mul_25Multraining_2/Adam/multraining_2/Adam/add_13*
T0*
_output_shapes

:@
]
training_2/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_2/Adam/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_5/MinimumMinimumtraining_2/Adam/add_14training_2/Adam/Const_12*
_output_shapes

:@*
T0

training_2/Adam/clip_by_value_5Maximum'training_2/Adam/clip_by_value_5/Minimumtraining_2/Adam/Const_11*
_output_shapes

:@*
T0
h
training_2/Adam/Sqrt_5Sqrttraining_2/Adam/clip_by_value_5*
T0*
_output_shapes

:@
]
training_2/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
x
training_2/Adam/add_15Addtraining_2/Adam/Sqrt_5training_2/Adam/add_15/y*
_output_shapes

:@*
T0
}
training_2/Adam/truediv_5RealDivtraining_2/Adam/mul_25training_2/Adam/add_15*
_output_shapes

:@*
T0
u
!training_2/Adam/ReadVariableOp_38ReadVariableOpm1_hidden3_1/kernel*
dtype0*
_output_shapes

:@

training_2/Adam/sub_16Sub!training_2/Adam/ReadVariableOp_38training_2/Adam/truediv_5*
T0*
_output_shapes

:@
s
#training_2/Adam/AssignVariableOp_12AssignVariableOptraining_2/Adam/m_4_1training_2/Adam/add_13*
dtype0

!training_2/Adam/ReadVariableOp_39ReadVariableOptraining_2/Adam/m_4_1$^training_2/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
s
#training_2/Adam/AssignVariableOp_13AssignVariableOptraining_2/Adam/v_4_1training_2/Adam/add_14*
dtype0

!training_2/Adam/ReadVariableOp_40ReadVariableOptraining_2/Adam/v_4_1$^training_2/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
q
#training_2/Adam/AssignVariableOp_14AssignVariableOpm1_hidden3_1/kerneltraining_2/Adam/sub_16*
dtype0

!training_2/Adam/ReadVariableOp_41ReadVariableOpm1_hidden3_1/kernel$^training_2/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
g
!training_2/Adam/ReadVariableOp_42ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_26/ReadVariableOpReadVariableOptraining_2/Adam/m_5_1*
dtype0*
_output_shapes
:

training_2/Adam/mul_26Mul!training_2/Adam/ReadVariableOp_42%training_2/Adam/mul_26/ReadVariableOp*
_output_shapes
:*
T0
g
!training_2/Adam/ReadVariableOp_43ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_17Subtraining_2/Adam/sub_17/x!training_2/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training_2/Adam/mul_27Multraining_2/Adam/sub_17?training_2/Adam/gradients/m1_hidden3_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
r
training_2/Adam/add_16Addtraining_2/Adam/mul_26training_2/Adam/mul_27*
_output_shapes
:*
T0
g
!training_2/Adam/ReadVariableOp_44ReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
w
%training_2/Adam/mul_28/ReadVariableOpReadVariableOptraining_2/Adam/v_5_1*
dtype0*
_output_shapes
:

training_2/Adam/mul_28Mul!training_2/Adam/ReadVariableOp_44%training_2/Adam/mul_28/ReadVariableOp*
_output_shapes
:*
T0
g
!training_2/Adam/ReadVariableOp_45ReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
]
training_2/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_18Subtraining_2/Adam/sub_18/x!training_2/Adam/ReadVariableOp_45*
_output_shapes
: *
T0

training_2/Adam/Square_5Square?training_2/Adam/gradients/m1_hidden3_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
t
training_2/Adam/mul_29Multraining_2/Adam/sub_18training_2/Adam/Square_5*
T0*
_output_shapes
:
r
training_2/Adam/add_17Addtraining_2/Adam/mul_28training_2/Adam/mul_29*
_output_shapes
:*
T0
o
training_2/Adam/mul_30Multraining_2/Adam/multraining_2/Adam/add_16*
T0*
_output_shapes
:
]
training_2/Adam/Const_13Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training_2/Adam/Const_14Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_6/MinimumMinimumtraining_2/Adam/add_17training_2/Adam/Const_14*
T0*
_output_shapes
:

training_2/Adam/clip_by_value_6Maximum'training_2/Adam/clip_by_value_6/Minimumtraining_2/Adam/Const_13*
_output_shapes
:*
T0
d
training_2/Adam/Sqrt_6Sqrttraining_2/Adam/clip_by_value_6*
_output_shapes
:*
T0
]
training_2/Adam/add_18/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
t
training_2/Adam/add_18Addtraining_2/Adam/Sqrt_6training_2/Adam/add_18/y*
_output_shapes
:*
T0
y
training_2/Adam/truediv_6RealDivtraining_2/Adam/mul_30training_2/Adam/add_18*
T0*
_output_shapes
:
o
!training_2/Adam/ReadVariableOp_46ReadVariableOpm1_hidden3_1/bias*
_output_shapes
:*
dtype0

training_2/Adam/sub_19Sub!training_2/Adam/ReadVariableOp_46training_2/Adam/truediv_6*
_output_shapes
:*
T0
s
#training_2/Adam/AssignVariableOp_15AssignVariableOptraining_2/Adam/m_5_1training_2/Adam/add_16*
dtype0

!training_2/Adam/ReadVariableOp_47ReadVariableOptraining_2/Adam/m_5_1$^training_2/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
s
#training_2/Adam/AssignVariableOp_16AssignVariableOptraining_2/Adam/v_5_1training_2/Adam/add_17*
dtype0

!training_2/Adam/ReadVariableOp_48ReadVariableOptraining_2/Adam/v_5_1$^training_2/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
o
#training_2/Adam/AssignVariableOp_17AssignVariableOpm1_hidden3_1/biastraining_2/Adam/sub_19*
dtype0

!training_2/Adam/ReadVariableOp_49ReadVariableOpm1_hidden3_1/bias$^training_2/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_50ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_31/ReadVariableOpReadVariableOptraining_2/Adam/m_6_1*
_output_shapes

:
*
dtype0

training_2/Adam/mul_31Mul!training_2/Adam/ReadVariableOp_50%training_2/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_51ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_20Subtraining_2/Adam/sub_20/x!training_2/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 

training_2/Adam/mul_32Multraining_2/Adam/sub_20:training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
v
training_2/Adam/add_19Addtraining_2/Adam/mul_31training_2/Adam/mul_32*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_52ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_33/ReadVariableOpReadVariableOptraining_2/Adam/v_6_1*
dtype0*
_output_shapes

:


training_2/Adam/mul_33Mul!training_2/Adam/ReadVariableOp_52%training_2/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_53ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_21Subtraining_2/Adam/sub_21/x!training_2/Adam/ReadVariableOp_53*
_output_shapes
: *
T0

training_2/Adam/Square_6Square:training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

x
training_2/Adam/mul_34Multraining_2/Adam/sub_21training_2/Adam/Square_6*
T0*
_output_shapes

:

v
training_2/Adam/add_20Addtraining_2/Adam/mul_33training_2/Adam/mul_34*
_output_shapes

:
*
T0
s
training_2/Adam/mul_35Multraining_2/Adam/multraining_2/Adam/add_19*
_output_shapes

:
*
T0
]
training_2/Adam/Const_15Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training_2/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_7/MinimumMinimumtraining_2/Adam/add_20training_2/Adam/Const_16*
T0*
_output_shapes

:


training_2/Adam/clip_by_value_7Maximum'training_2/Adam/clip_by_value_7/Minimumtraining_2/Adam/Const_15*
_output_shapes

:
*
T0
h
training_2/Adam/Sqrt_7Sqrttraining_2/Adam/clip_by_value_7*
T0*
_output_shapes

:

]
training_2/Adam/add_21/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
x
training_2/Adam/add_21Addtraining_2/Adam/Sqrt_7training_2/Adam/add_21/y*
T0*
_output_shapes

:

}
training_2/Adam/truediv_7RealDivtraining_2/Adam/mul_35training_2/Adam/add_21*
_output_shapes

:
*
T0
t
!training_2/Adam/ReadVariableOp_54ReadVariableOpm1_output_1/kernel*
dtype0*
_output_shapes

:


training_2/Adam/sub_22Sub!training_2/Adam/ReadVariableOp_54training_2/Adam/truediv_7*
T0*
_output_shapes

:

s
#training_2/Adam/AssignVariableOp_18AssignVariableOptraining_2/Adam/m_6_1training_2/Adam/add_19*
dtype0

!training_2/Adam/ReadVariableOp_55ReadVariableOptraining_2/Adam/m_6_1$^training_2/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

s
#training_2/Adam/AssignVariableOp_19AssignVariableOptraining_2/Adam/v_6_1training_2/Adam/add_20*
dtype0

!training_2/Adam/ReadVariableOp_56ReadVariableOptraining_2/Adam/v_6_1$^training_2/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

p
#training_2/Adam/AssignVariableOp_20AssignVariableOpm1_output_1/kerneltraining_2/Adam/sub_22*
dtype0

!training_2/Adam/ReadVariableOp_57ReadVariableOpm1_output_1/kernel$^training_2/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_58ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_36/ReadVariableOpReadVariableOptraining_2/Adam/m_7_1*
dtype0*
_output_shapes
:


training_2/Adam/mul_36Mul!training_2/Adam/ReadVariableOp_58%training_2/Adam/mul_36/ReadVariableOp*
_output_shapes
:
*
T0
g
!training_2/Adam/ReadVariableOp_59ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_23/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_2/Adam/sub_23Subtraining_2/Adam/sub_23/x!training_2/Adam/ReadVariableOp_59*
_output_shapes
: *
T0

training_2/Adam/mul_37Multraining_2/Adam/sub_23>training_2/Adam/gradients/m1_output_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
r
training_2/Adam/add_22Addtraining_2/Adam/mul_36training_2/Adam/mul_37*
_output_shapes
:
*
T0
g
!training_2/Adam/ReadVariableOp_60ReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
w
%training_2/Adam/mul_38/ReadVariableOpReadVariableOptraining_2/Adam/v_7_1*
dtype0*
_output_shapes
:


training_2/Adam/mul_38Mul!training_2/Adam/ReadVariableOp_60%training_2/Adam/mul_38/ReadVariableOp*
_output_shapes
:
*
T0
g
!training_2/Adam/ReadVariableOp_61ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_24Subtraining_2/Adam/sub_24/x!training_2/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training_2/Adam/Square_7Square>training_2/Adam/gradients/m1_output_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

t
training_2/Adam/mul_39Multraining_2/Adam/sub_24training_2/Adam/Square_7*
T0*
_output_shapes
:

r
training_2/Adam/add_23Addtraining_2/Adam/mul_38training_2/Adam/mul_39*
_output_shapes
:
*
T0
o
training_2/Adam/mul_40Multraining_2/Adam/multraining_2/Adam/add_22*
T0*
_output_shapes
:

]
training_2/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
training_2/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_8/MinimumMinimumtraining_2/Adam/add_23training_2/Adam/Const_18*
T0*
_output_shapes
:


training_2/Adam/clip_by_value_8Maximum'training_2/Adam/clip_by_value_8/Minimumtraining_2/Adam/Const_17*
T0*
_output_shapes
:

d
training_2/Adam/Sqrt_8Sqrttraining_2/Adam/clip_by_value_8*
T0*
_output_shapes
:

]
training_2/Adam/add_24/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
t
training_2/Adam/add_24Addtraining_2/Adam/Sqrt_8training_2/Adam/add_24/y*
T0*
_output_shapes
:

y
training_2/Adam/truediv_8RealDivtraining_2/Adam/mul_40training_2/Adam/add_24*
T0*
_output_shapes
:

n
!training_2/Adam/ReadVariableOp_62ReadVariableOpm1_output_1/bias*
dtype0*
_output_shapes
:


training_2/Adam/sub_25Sub!training_2/Adam/ReadVariableOp_62training_2/Adam/truediv_8*
T0*
_output_shapes
:

s
#training_2/Adam/AssignVariableOp_21AssignVariableOptraining_2/Adam/m_7_1training_2/Adam/add_22*
dtype0

!training_2/Adam/ReadVariableOp_63ReadVariableOptraining_2/Adam/m_7_1$^training_2/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

s
#training_2/Adam/AssignVariableOp_22AssignVariableOptraining_2/Adam/v_7_1training_2/Adam/add_23*
dtype0

!training_2/Adam/ReadVariableOp_64ReadVariableOptraining_2/Adam/v_7_1$^training_2/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

n
#training_2/Adam/AssignVariableOp_23AssignVariableOpm1_output_1/biastraining_2/Adam/sub_25*
dtype0

!training_2/Adam/ReadVariableOp_65ReadVariableOpm1_output_1/bias$^training_2/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

_
training_2/VarIsInitializedOpVarIsInitializedOpm1_output_1/kernel*
_output_shapes
: 
_
training_2/VarIsInitializedOp_1VarIsInitializedOpm2_output_1/bias*
_output_shapes
: 
V
training_2/VarIsInitializedOp_2VarIsInitializedOpcount_2*
_output_shapes
: 
\
training_2/VarIsInitializedOp_3VarIsInitializedOpAdam_4/beta_2*
_output_shapes
: 
_
training_2/VarIsInitializedOp_4VarIsInitializedOpm2_output_2/bias*
_output_shapes
: 
\
training_2/VarIsInitializedOp_5VarIsInitializedOpAdam_5/beta_2*
_output_shapes
: 
V
training_2/VarIsInitializedOp_6VarIsInitializedOptotal_2*
_output_shapes
: 
`
training_2/VarIsInitializedOp_7VarIsInitializedOpm2_hidden1_2/bias*
_output_shapes
: 
b
training_2/VarIsInitializedOp_8VarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 
\
training_2/VarIsInitializedOp_9VarIsInitializedOpAdam_5/beta_1*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_10VarIsInitializedOpAdam_5/decay*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_11VarIsInitializedOptraining_2/Adam/v_0_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_12VarIsInitializedOptraining_2/Adam/m_1_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_13VarIsInitializedOpm1_hidden3_1/bias*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_14VarIsInitializedOpcount_4*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_15VarIsInitializedOpm2_hidden3_2/bias*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_16VarIsInitializedOpm1_hidden3_1/kernel*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_17VarIsInitializedOpm1_hidden1_1/kernel*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_18VarIsInitializedOpAdam_5/iterations*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_19VarIsInitializedOpm2_hidden1_2/kernel*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_20VarIsInitializedOptraining_2/Adam/m_0_1*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_21VarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_22VarIsInitializedOptraining_2/Adam/v_6_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_23VarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_24VarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
b
 training_2/VarIsInitializedOp_25VarIsInitializedOpm2_output_3/kernel*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_26VarIsInitializedOpm1_hidden2_1/kernel*
_output_shapes
: 
`
 training_2/VarIsInitializedOp_27VarIsInitializedOpm2_output_3/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_28VarIsInitializedOptraining_2/Adam/v_4_1*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_29VarIsInitializedOpcount_5*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_30VarIsInitializedOpAdam_4/iterations*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_31VarIsInitializedOpm1_hidden2_1/bias*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_32VarIsInitializedOpm2_hidden3_1/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_33VarIsInitializedOptraining_2/Adam/v_1_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_34VarIsInitializedOpm2_hidden2_3/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_35VarIsInitializedOptraining_2/Adam/v_2_1*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_36VarIsInitializedOpAdam_2/decay*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_37VarIsInitializedOpm2_hidden3_2/kernel*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_38VarIsInitializedOpAdam_4/beta_1*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_39VarIsInitializedOptotal_5*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_40VarIsInitializedOptraining_2/Adam/v_7_1*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_41VarIsInitializedOpAdam_4/learning_rate*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_42VarIsInitializedOptraining_2/Adam/vhat_0_1*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_43VarIsInitializedOpAdam_4/decay*
_output_shapes
: 
b
 training_2/VarIsInitializedOp_44VarIsInitializedOpm2_output_2/kernel*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_45VarIsInitializedOptraining_2/Adam/m_2_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_46VarIsInitializedOptraining_2/Adam/v_5_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_47VarIsInitializedOptraining_2/Adam/m_3_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_48VarIsInitializedOptraining_2/Adam/m_6_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_49VarIsInitializedOptraining_2/Adam/vhat_3_1*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_50VarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
`
 training_2/VarIsInitializedOp_51VarIsInitializedOpm1_output_1/bias*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_52VarIsInitializedOpAdam_3/beta_2*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_53VarIsInitializedOptraining_2/Adam/m_4_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_54VarIsInitializedOptraining_2/Adam/v_3_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_55VarIsInitializedOptraining_2/Adam/m_5_1*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_56VarIsInitializedOpAdam_5/learning_rate*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_57VarIsInitializedOpAdam_3/beta_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_58VarIsInitializedOpm2_hidden2_2/bias*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_59VarIsInitializedOptotal_4*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_60VarIsInitializedOpAdam_3/iterations*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_61VarIsInitializedOptotal_3*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_62VarIsInitializedOpm1_hidden1_1/bias*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_63VarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_64VarIsInitializedOpAdam_3/learning_rate*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_65VarIsInitializedOpm2_hidden2_2/kernel*
_output_shapes
: 
b
 training_2/VarIsInitializedOp_66VarIsInitializedOpm2_output_1/kernel*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_67VarIsInitializedOpcount_3*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_68VarIsInitializedOpm2_hidden1_3/kernel*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_69VarIsInitializedOptraining_2/Adam/vhat_4_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_70VarIsInitializedOpm2_hidden3_3/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_71VarIsInitializedOptraining_2/Adam/m_7_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_72VarIsInitializedOptraining_2/Adam/vhat_2_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_73VarIsInitializedOptraining_2/Adam/vhat_5_1*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_74VarIsInitializedOpm2_hidden3_3/kernel*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_75VarIsInitializedOptraining_2/Adam/vhat_1_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_76VarIsInitializedOptraining_2/Adam/vhat_6_1*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_77VarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_78VarIsInitializedOpm2_hidden1_3/bias*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_79VarIsInitializedOpm2_hidden2_3/kernel*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_80VarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_81VarIsInitializedOpAdam_3/decay*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_82VarIsInitializedOptraining_2/Adam/vhat_7_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_83VarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 

training_2/initNoOp^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/learning_rate/Assign^Adam_3/beta_1/Assign^Adam_3/beta_2/Assign^Adam_3/decay/Assign^Adam_3/iterations/Assign^Adam_3/learning_rate/Assign^Adam_4/beta_1/Assign^Adam_4/beta_2/Assign^Adam_4/decay/Assign^Adam_4/iterations/Assign^Adam_4/learning_rate/Assign^Adam_5/beta_1/Assign^Adam_5/beta_2/Assign^Adam_5/decay/Assign^Adam_5/iterations/Assign^Adam_5/learning_rate/Assign^count_2/Assign^count_3/Assign^count_4/Assign^count_5/Assign^m1_hidden1_1/bias/Assign^m1_hidden1_1/kernel/Assign^m1_hidden2_1/bias/Assign^m1_hidden2_1/kernel/Assign^m1_hidden3_1/bias/Assign^m1_hidden3_1/kernel/Assign^m1_output_1/bias/Assign^m1_output_1/kernel/Assign^m2_hidden1_1/bias/Assign^m2_hidden1_1/kernel/Assign^m2_hidden1_2/bias/Assign^m2_hidden1_2/kernel/Assign^m2_hidden1_3/bias/Assign^m2_hidden1_3/kernel/Assign^m2_hidden2_1/bias/Assign^m2_hidden2_1/kernel/Assign^m2_hidden2_2/bias/Assign^m2_hidden2_2/kernel/Assign^m2_hidden2_3/bias/Assign^m2_hidden2_3/kernel/Assign^m2_hidden3_1/bias/Assign^m2_hidden3_1/kernel/Assign^m2_hidden3_2/bias/Assign^m2_hidden3_2/kernel/Assign^m2_hidden3_3/bias/Assign^m2_hidden3_3/kernel/Assign^m2_output_1/bias/Assign^m2_output_1/kernel/Assign^m2_output_2/bias/Assign^m2_output_2/kernel/Assign^m2_output_3/bias/Assign^m2_output_3/kernel/Assign^total_2/Assign^total_3/Assign^total_4/Assign^total_5/Assign^training_2/Adam/m_0_1/Assign^training_2/Adam/m_1_1/Assign^training_2/Adam/m_2_1/Assign^training_2/Adam/m_3_1/Assign^training_2/Adam/m_4_1/Assign^training_2/Adam/m_5_1/Assign^training_2/Adam/m_6_1/Assign^training_2/Adam/m_7_1/Assign^training_2/Adam/v_0_1/Assign^training_2/Adam/v_1_1/Assign^training_2/Adam/v_2_1/Assign^training_2/Adam/v_3_1/Assign^training_2/Adam/v_4_1/Assign^training_2/Adam/v_5_1/Assign^training_2/Adam/v_6_1/Assign^training_2/Adam/v_7_1/Assign ^training_2/Adam/vhat_0_1/Assign ^training_2/Adam/vhat_1_1/Assign ^training_2/Adam/vhat_2_1/Assign ^training_2/Adam/vhat_3_1/Assign ^training_2/Adam/vhat_4_1/Assign ^training_2/Adam/vhat_5_1/Assign ^training_2/Adam/vhat_6_1/Assign ^training_2/Adam/vhat_7_1/Assign

training_2/group_depsNoOp^Mean_3^metrics_3/accuracy/Identity"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1^training_2/Adam/ReadVariableOp"^training_2/Adam/ReadVariableOp_15"^training_2/Adam/ReadVariableOp_16"^training_2/Adam/ReadVariableOp_17"^training_2/Adam/ReadVariableOp_23"^training_2/Adam/ReadVariableOp_24"^training_2/Adam/ReadVariableOp_25"^training_2/Adam/ReadVariableOp_31"^training_2/Adam/ReadVariableOp_32"^training_2/Adam/ReadVariableOp_33"^training_2/Adam/ReadVariableOp_39"^training_2/Adam/ReadVariableOp_40"^training_2/Adam/ReadVariableOp_41"^training_2/Adam/ReadVariableOp_47"^training_2/Adam/ReadVariableOp_48"^training_2/Adam/ReadVariableOp_49"^training_2/Adam/ReadVariableOp_55"^training_2/Adam/ReadVariableOp_56"^training_2/Adam/ReadVariableOp_57"^training_2/Adam/ReadVariableOp_63"^training_2/Adam/ReadVariableOp_64"^training_2/Adam/ReadVariableOp_65!^training_2/Adam/ReadVariableOp_7!^training_2/Adam/ReadVariableOp_8!^training_2/Adam/ReadVariableOp_9

group_deps_2NoOp^Mean_3^metrics_3/accuracy/Identity"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1"ųu
O¼Å     ķ G	ĘŻE"“×AJÆ
Ā«
:
Add
x"T
y"T
z"T"
Ttype:
2	

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
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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

2	

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

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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

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

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
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype*1.13.12
b'unknown'ü
u
m1_hidden1_inputPlaceholder*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
p
m1_hidden1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
b
m1_hidden1/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
b
m1_hidden1/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
­
'm1_hidden1/random_uniform/RandomUniformRandomUniformm1_hidden1/random_uniform/shape*
seed2žÓ0* 
_output_shapes
:
*
seed*
T0*
dtype0

m1_hidden1/random_uniform/subSubm1_hidden1/random_uniform/maxm1_hidden1/random_uniform/min*
_output_shapes
: *
T0

m1_hidden1/random_uniform/mulMul'm1_hidden1/random_uniform/RandomUniformm1_hidden1/random_uniform/sub*
T0* 
_output_shapes
:


m1_hidden1/random_uniformAddm1_hidden1/random_uniform/mulm1_hidden1/random_uniform/min*
T0* 
_output_shapes
:

·
m1_hidden1/kernelVarHandleOp*
shape:
*
dtype0*
_output_shapes
: *"
shared_namem1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel*
	container 
s
2m1_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1/kernel*
_output_shapes
: 

m1_hidden1/kernel/AssignAssignVariableOpm1_hidden1/kernelm1_hidden1/random_uniform*$
_class
loc:@m1_hidden1/kernel*
dtype0

%m1_hidden1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:
*$
_class
loc:@m1_hidden1/kernel
_
m1_hidden1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
¬
m1_hidden1/biasVarHandleOp* 
shared_namem1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
	container *
shape:*
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

#m1_hidden1/bias/Read/ReadVariableOpReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:*"
_class
loc:@m1_hidden1/bias
t
 m1_hidden1/MatMul/ReadVariableOpReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:

Ø
m1_hidden1/MatMulMatMulm1_hidden1_input m1_hidden1/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b( 
n
!m1_hidden1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:

m1_hidden1/BiasAddBiasAddm1_hidden1/MatMul!m1_hidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
^
m1_hidden1/ReluRelum1_hidden1/BiasAdd*(
_output_shapes
:’’’’’’’’’*
T0
p
m1_hidden2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
b
m1_hidden2/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
b
m1_hidden2/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
­
'm1_hidden2/random_uniform/RandomUniformRandomUniformm1_hidden2/random_uniform/shape*
T0*
dtype0*
seed2ķó*
_output_shapes
:	@*
seed

m1_hidden2/random_uniform/subSubm1_hidden2/random_uniform/maxm1_hidden2/random_uniform/min*
_output_shapes
: *
T0

m1_hidden2/random_uniform/mulMul'm1_hidden2/random_uniform/RandomUniformm1_hidden2/random_uniform/sub*
T0*
_output_shapes
:	@

m1_hidden2/random_uniformAddm1_hidden2/random_uniform/mulm1_hidden2/random_uniform/min*
T0*
_output_shapes
:	@
¶
m1_hidden2/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
	container *
shape:	@
s
2m1_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2/kernel*
_output_shapes
: 

m1_hidden2/kernel/AssignAssignVariableOpm1_hidden2/kernelm1_hidden2/random_uniform*$
_class
loc:@m1_hidden2/kernel*
dtype0

%m1_hidden2/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2/kernel*
_output_shapes
:	@*$
_class
loc:@m1_hidden2/kernel*
dtype0
]
m1_hidden2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
«
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

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
:	@
¦
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b( *
T0
m
!m1_hidden2/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@

m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@*
T0
]
m1_hidden2/ReluRelum1_hidden2/BiasAdd*'
_output_shapes
:’’’’’’’’’@*
T0
p
m1_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m1_hidden3/random_uniform/minConst*
_output_shapes
: *
valueB
 *7¾*
dtype0
b
m1_hidden3/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
¬
'm1_hidden3/random_uniform/RandomUniformRandomUniformm1_hidden3/random_uniform/shape*
dtype0*
seed2®Æ*
_output_shapes

:@*
seed*
T0

m1_hidden3/random_uniform/subSubm1_hidden3/random_uniform/maxm1_hidden3/random_uniform/min*
_output_shapes
: *
T0

m1_hidden3/random_uniform/mulMul'm1_hidden3/random_uniform/RandomUniformm1_hidden3/random_uniform/sub*
_output_shapes

:@*
T0

m1_hidden3/random_uniformAddm1_hidden3/random_uniform/mulm1_hidden3/random_uniform/min*
T0*
_output_shapes

:@
µ
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

m1_hidden3/kernel/AssignAssignVariableOpm1_hidden3/kernelm1_hidden3/random_uniform*$
_class
loc:@m1_hidden3/kernel*
dtype0

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
«
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

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
¦
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
m
!m1_hidden3/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3/bias*
dtype0*
_output_shapes
:

m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
]
m1_hidden3/ReluRelum1_hidden3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
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
 *ōōõ¾*
dtype0*
_output_shapes
: 
a
m1_output/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ōōõ>
Ŗ
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
dtype0*
seed2ó*
_output_shapes

:
*
seed*
T0

m1_output/random_uniform/subSubm1_output/random_uniform/maxm1_output/random_uniform/min*
_output_shapes
: *
T0

m1_output/random_uniform/mulMul&m1_output/random_uniform/RandomUniformm1_output/random_uniform/sub*
_output_shapes

:
*
T0

m1_output/random_uniformAddm1_output/random_uniform/mulm1_output/random_uniform/min*
_output_shapes

:
*
T0
²
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

m1_output/kernel/AssignAssignVariableOpm1_output/kernelm1_output/random_uniform*#
_class
loc:@m1_output/kernel*
dtype0

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

Ø
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

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

¤
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( 
k
 m1_output/BiasAdd/ReadVariableOpReadVariableOpm1_output/bias*
dtype0*
_output_shapes
:


m1_output/BiasAddBiasAddm1_output/MatMul m1_output/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
T0*
data_formatNHWC
a
m1_output/SoftmaxSoftmaxm1_output/BiasAdd*'
_output_shapes
:’’’’’’’’’
*
T0

)Adam/iterations/Initializer/initial_valueConst*"
_class
loc:@Adam/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
§
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

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

,Adam/learning_rate/Initializer/initial_valueConst*%
_class
loc:@Adam/learning_rate*
valueB
 *o:*
dtype0*
_output_shapes
: 
°
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
£
Adam/learning_rate/AssignAssignVariableOpAdam/learning_rate,Adam/learning_rate/Initializer/initial_value*%
_class
loc:@Adam/learning_rate*
dtype0

&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 

%Adam/beta_1/Initializer/initial_valueConst*
_class
loc:@Adam/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 

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

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
_class
loc:@Adam/beta_1*
dtype0

%Adam/beta_2/Initializer/initial_valueConst*
_class
loc:@Adam/beta_2*
valueB
 *w¾?*
dtype0*
_output_shapes
: 

Adam/beta_2VarHandleOp*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: *
dtype0
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_2

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
_class
loc:@Adam/decay*
valueB
 *    *
dtype0*
_output_shapes
: 


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

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

m1_output_targetPlaceholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
s
m1_output_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
J
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

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
Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    

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

metrics/accuracy/SqueezeSqueezem1_output_target*
squeeze_dims

’’’’’’’’’*
T0*#
_output_shapes
:’’’’’’’’’
l
!metrics/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
¤
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0

metrics/accuracy/CastCastmetrics/accuracy/ArgMax*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’
~
metrics/accuracy/EqualEqualmetrics/accuracy/Squeezemetrics/accuracy/Cast*#
_output_shapes
:’’’’’’’’’*
T0

metrics/accuracy/Cast_1Castmetrics/accuracy/Equal*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0
*
Truncate( 
`
metrics/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics/accuracy/SumSummetrics/accuracy/Cast_1metrics/accuracy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0

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
Truncate( *

DstT0*
_output_shapes
: 
j
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_2*
dtype0

!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
„
!metrics/accuracy/ReadVariableOp_2ReadVariableOptotal ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
«
'metrics/accuracy/truediv/ReadVariableOpReadVariableOpcount ^metrics/accuracy/ReadVariableOp"^metrics/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

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
 *æÖ3*
dtype0*
_output_shapes
: 
~
9loss/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Õ
7loss/m1_output_loss/sparse_categorical_crossentropy/subSub9loss/m1_output_loss/sparse_categorical_crossentropy/sub/x9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
Ņ
Iloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:’’’’’’’’’


Aloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
³
7loss/m1_output_loss/sparse_categorical_crossentropy/LogLogAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0

Aloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
×
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*#
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
Ź
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’*

SrcT0

Closs/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape7loss/m1_output_loss/sparse_categorical_crossentropy/LogCloss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Õ
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ė
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’


Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0

Gloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ó
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
š
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0

Iloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

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
 *  ?*
dtype0*
_output_shapes
: 
²
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
_output_shapes
: *
T0*
_class
	loc:@Mean*

index_type0

/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
_class
	loc:@Mean*
valueB 
Ė
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
_output_shapes
: *
T0*
_class
	loc:@Mean*
Tshape0

'training/Adam/gradients/Mean_grad/ConstConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 
Ī
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*
_class
	loc:@Mean

)training/Adam/gradients/Mean_grad/Const_1Const*
_class
	loc:@Mean*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Į
)training/Adam/gradients/Mean_grad/truedivRealDiv&training/Adam/gradients/Mean_grad/Tile)training/Adam/gradients/Mean_grad/Const_1*
_output_shapes
: *
T0*
_class
	loc:@Mean
ä
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0*
_class
loc:@loss/mul
§
+training/Adam/gradients/loss/mul_grad/Mul_1Mul)training/Adam/gradients/Mean_grad/truediv
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 

ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 

ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 

|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ś
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ū
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ą
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
·
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
»
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Į
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
ū
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ę
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0

ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
ä
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0
Ē
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0
ß
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0

htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:
’
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0
ž
xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgshtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ū
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
é
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
Ż
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’*
T0
ś
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weightsgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*#
_output_shapes
:’’’’’’’’’*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ļ
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1ztraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ć
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’
ō
"training/Adam/gradients/zeros_like	ZerosLike}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

ø
Øtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()

§training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

£training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1§training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:’’’’’’’’’*

Tdim0*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
»
training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul£training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsØtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

©
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0*
_output_shapes
:

btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshapetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
T0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0

_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalAloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valuec^training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

¢
Xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulbtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*'
_output_shapes
:’’’’’’’’’
*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log
Ć
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
’
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
_output_shapes
: *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB *
dtype0
Ō
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
_output_shapes
:*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0

jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
Ś
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:’’’’’’’’’


ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ī
ttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
¤
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

¦
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:’’’’’’’’’
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
Ü
btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
Ń
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*'
_output_shapes
:’’’’’’’’’
*
T0
ā
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
Ę
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapedtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*
_output_shapes
: 

ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output/Softmax*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:

ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 
ņ
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
_output_shapes
:*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0

rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0
ś
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0*'
_output_shapes
:’’’’’’’’’
*
T0
Ł
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ļ
mtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

Ń
otraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0
ü
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
ń
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:’’’’’’’’’


ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
ę
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*
_output_shapes
: *
T0

2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’

µ
Dtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *$
_class
loc:@m1_output/Softmax*
valueB :
’’’’’’’’’*
dtype0
Ø
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’
µ
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*'
_output_shapes
:’’’’’’’’’
*
T0*$
_class
loc:@m1_output/Softmax
Ś
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0*$
_class
loc:@m1_output/Softmax
į
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC*
_output_shapes
:


4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*
T0*#
_class
loc:@m1_output/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b(
ū
6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1MatMulm1_hidden3/Relu4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*#
_class
loc:@m1_output/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
Ž
5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGradReluGrad4training/Adam/gradients/m1_output/MatMul_grad/MatMulm1_hidden3/Relu*
T0*"
_class
loc:@m1_hidden3/Relu*'
_output_shapes
:’’’’’’’’’
ä
;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
_output_shapes
:*
T0*%
_class
loc:@m1_hidden3/BiasAdd*
data_formatNHWC

5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad m1_hidden3/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden3/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b(
ž
7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1MatMulm1_hidden2/Relu5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden3/MatMul*
transpose_a(*
_output_shapes

:@*
transpose_b( 
ß
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*
T0*"
_class
loc:@m1_hidden2/Relu*'
_output_shapes
:’’’’’’’’’@
ä
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@

5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad m1_hidden2/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden2/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(
’
7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1MatMulm1_hidden1/Relu5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden2/MatMul*
transpose_a(*
_output_shapes
:	@*
transpose_b( 
ą
5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulm1_hidden1/Relu*
T0*"
_class
loc:@m1_hidden1/Relu*(
_output_shapes
:’’’’’’’’’
å
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
T0*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:

5training/Adam/gradients/m1_hidden1/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad m1_hidden1/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden1/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(

7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1MatMulm1_hidden1_input5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
T0*$
_class
loc:@m1_hidden1/MatMul*
transpose_a(* 
_output_shapes
:
*
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

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
 *  ?*
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
 *  ?*
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
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 

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
 *  ?
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
valueB"      *
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

training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:

½
training/Adam/m_0_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
	container *
shape:

w
4training/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_0_1*
_output_shapes
: 

training/Adam/m_0_1/AssignAssignVariableOptraining/Adam/m_0_1training/Adam/m_0*
dtype0*&
_class
loc:@training/Adam/m_0_1
„
'training/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
dtype0* 
_output_shapes
:

`
training/Adam/m_1Const*
valueB*    *
dtype0*
_output_shapes	
:
ø
training/Adam/m_1_1VarHandleOp*&
_class
loc:@training/Adam/m_1_1*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_1_1
w
4training/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_1_1*
_output_shapes
: 

training/Adam/m_1_1/AssignAssignVariableOptraining/Adam/m_1_1training/Adam/m_1*&
_class
loc:@training/Adam/m_1_1*
dtype0
 
'training/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
dtype0*
_output_shapes	
:
r
!training/Adam/m_2/shape_as_tensorConst*
valueB"   @   *
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

training/Adam/m_2Fill!training/Adam/m_2/shape_as_tensortraining/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	@
¼
training/Adam/m_2_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
	container *
shape:	@
w
4training/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_2_1*
_output_shapes
: 

training/Adam/m_2_1/AssignAssignVariableOptraining/Adam/m_2_1training/Adam/m_2*&
_class
loc:@training/Adam/m_2_1*
dtype0
¤
'training/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_2_1*&
_class
loc:@training/Adam/m_2_1*
dtype0*
_output_shapes
:	@
^
training/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
·
training/Adam/m_3_1VarHandleOp*
shape:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_3_1*&
_class
loc:@training/Adam/m_3_1*
	container 
w
4training/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_3_1*
_output_shapes
: 

training/Adam/m_3_1/AssignAssignVariableOptraining/Adam/m_3_1training/Adam/m_3*
dtype0*&
_class
loc:@training/Adam/m_3_1

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

training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*

index_type0*
_output_shapes

:@*
T0
»
training/Adam/m_4_1VarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_4_1*&
_class
loc:@training/Adam/m_4_1
w
4training/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_4_1*
_output_shapes
: 

training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*&
_class
loc:@training/Adam/m_4_1*
dtype0
£
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
·
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

training/Adam/m_5_1/AssignAssignVariableOptraining/Adam/m_5_1training/Adam/m_5*
dtype0*&
_class
loc:@training/Adam/m_5_1

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
»
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

training/Adam/m_6_1/AssignAssignVariableOptraining/Adam/m_6_1training/Adam/m_6*&
_class
loc:@training/Adam/m_6_1*
dtype0
£
'training/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_6_1*
_output_shapes

:
*&
_class
loc:@training/Adam/m_6_1*
dtype0
^
training/Adam/m_7Const*
dtype0*
_output_shapes
:
*
valueB
*    
·
training/Adam/m_7_1VarHandleOp*
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_7_1*&
_class
loc:@training/Adam/m_7_1*
	container 
w
4training/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/m_7_1*
_output_shapes
: 

training/Adam/m_7_1/AssignAssignVariableOptraining/Adam/m_7_1training/Adam/m_7*&
_class
loc:@training/Adam/m_7_1*
dtype0

'training/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_7_1*
_output_shapes
:
*&
_class
loc:@training/Adam/m_7_1*
dtype0
r
!training/Adam/v_0/shape_as_tensorConst*
_output_shapes
:*
valueB"      *
dtype0
\
training/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:

½
training/Adam/v_0_1VarHandleOp*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1
w
4training/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_0_1*
_output_shapes
: 

training/Adam/v_0_1/AssignAssignVariableOptraining/Adam/v_0_1training/Adam/v_0*&
_class
loc:@training/Adam/v_0_1*
dtype0
„
'training/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_0_1*
dtype0* 
_output_shapes
:
*&
_class
loc:@training/Adam/v_0_1
`
training/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
ø
training/Adam/v_1_1VarHandleOp*&
_class
loc:@training/Adam/v_1_1*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_1_1
w
4training/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_1_1*
_output_shapes
: 

training/Adam/v_1_1/AssignAssignVariableOptraining/Adam/v_1_1training/Adam/v_1*&
_class
loc:@training/Adam/v_1_1*
dtype0
 
'training/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
dtype0*
_output_shapes	
:
r
!training/Adam/v_2/shape_as_tensorConst*
valueB"   @   *
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

training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*
_output_shapes
:	@*
T0*

index_type0
¼
training/Adam/v_2_1VarHandleOp*&
_class
loc:@training/Adam/v_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_2_1
w
4training/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/v_2_1*
_output_shapes
: 

training/Adam/v_2_1/AssignAssignVariableOptraining/Adam/v_2_1training/Adam/v_2*&
_class
loc:@training/Adam/v_2_1*
dtype0
¤
'training/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
dtype0*
_output_shapes
:	@
^
training/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
·
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

training/Adam/v_3_1/AssignAssignVariableOptraining/Adam/v_3_1training/Adam/v_3*&
_class
loc:@training/Adam/v_3_1*
dtype0

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

training/Adam/v_4Fill!training/Adam/v_4/shape_as_tensortraining/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
»
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

training/Adam/v_4_1/AssignAssignVariableOptraining/Adam/v_4_1training/Adam/v_4*&
_class
loc:@training/Adam/v_4_1*
dtype0
£
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
·
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

training/Adam/v_5_1/AssignAssignVariableOptraining/Adam/v_5_1training/Adam/v_5*&
_class
loc:@training/Adam/v_5_1*
dtype0

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

»
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

training/Adam/v_6_1/AssignAssignVariableOptraining/Adam/v_6_1training/Adam/v_6*&
_class
loc:@training/Adam/v_6_1*
dtype0
£
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

·
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

training/Adam/v_7_1/AssignAssignVariableOptraining/Adam/v_7_1training/Adam/v_7*&
_class
loc:@training/Adam/v_7_1*
dtype0

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

training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_0_1/AssignAssignVariableOptraining/Adam/vhat_0_1training/Adam/vhat_0*)
_class
loc:@training/Adam/vhat_0_1*
dtype0
Ø
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
training/Adam/vhat_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
_output_shapes
:*
T0*

index_type0
Ą
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

training/Adam/vhat_1_1/AssignAssignVariableOptraining/Adam/vhat_1_1training/Adam/vhat_1*)
_class
loc:@training/Adam/vhat_1_1*
dtype0
Ø
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

training/Adam/vhat_2Fill$training/Adam/vhat_2/shape_as_tensortraining/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
Ą
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

training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*)
_class
loc:@training/Adam/vhat_2_1*
dtype0
Ø
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

training/Adam/vhat_3Fill$training/Adam/vhat_3/shape_as_tensortraining/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_3_1/AssignAssignVariableOptraining/Adam/vhat_3_1training/Adam/vhat_3*)
_class
loc:@training/Adam/vhat_3_1*
dtype0
Ø
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

training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
_output_shapes
:*
T0*

index_type0
Ą
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

training/Adam/vhat_4_1/AssignAssignVariableOptraining/Adam/vhat_4_1training/Adam/vhat_4*)
_class
loc:@training/Adam/vhat_4_1*
dtype0
Ø
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

training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_5_1/AssignAssignVariableOptraining/Adam/vhat_5_1training/Adam/vhat_5*)
_class
loc:@training/Adam/vhat_5_1*
dtype0
Ø
*training/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_5_1*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_5_1*
dtype0
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

training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
_output_shapes
:*
T0*

index_type0
Ą
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

training/Adam/vhat_6_1/AssignAssignVariableOptraining/Adam/vhat_6_1training/Adam/vhat_6*
dtype0*)
_class
loc:@training/Adam/vhat_6_1
Ø
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

training/Adam/vhat_7Fill$training/Adam/vhat_7/shape_as_tensortraining/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
Ą
training/Adam/vhat_7_1VarHandleOp*
_output_shapes
: *'
shared_nametraining/Adam/vhat_7_1*)
_class
loc:@training/Adam/vhat_7_1*
	container *
shape:*
dtype0
}
7training/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/vhat_7_1*
_output_shapes
: 

training/Adam/vhat_7_1/AssignAssignVariableOptraining/Adam/vhat_7_1training/Adam/vhat_7*)
_class
loc:@training/Adam/vhat_7_1*
dtype0
Ø
*training/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_7_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_7_1
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
x
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/m_0_1*
dtype0* 
_output_shapes
:


training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:

b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training/Adam/mul_2Multraining/Adam/sub_27training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
o
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2* 
_output_shapes
:
*
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


training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp* 
_output_shapes
:
*
T0
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0

training/Adam/SquareSquare7training/Adam/gradients/m1_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
p
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square* 
_output_shapes
:
*
T0
o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4* 
_output_shapes
:
*
T0
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0* 
_output_shapes
:

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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4* 
_output_shapes
:
*
T0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0* 
_output_shapes
:

f
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1* 
_output_shapes
:
*
T0
Z
training/Adam/add_3/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0* 
_output_shapes
:

w
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0* 
_output_shapes
:

r
training/Adam/ReadVariableOp_6ReadVariableOpm1_hidden1/kernel*
dtype0* 
_output_shapes
:

~
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0* 
_output_shapes
:

i
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/m_0_1training/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/m_0_1^training/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:

k
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/v_0_1training/Adam/add_2*
dtype0

training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/v_0_1!^training/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:

i
 training/Adam/AssignVariableOp_2AssignVariableOpm1_hidden1/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpm1_hidden1/kernel!^training/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/m_1_1*
dtype0*
_output_shapes	
:

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
_output_shapes
: *
T0

training/Adam/mul_7Multraining/Adam/sub_5;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes	
:*
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
:

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
_output_shapes	
:*
T0
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0

training/Adam/Square_1Square;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
m
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes	
:
j
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes	
:
i
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes	
:*
T0
Z
training/Adam/Const_5Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
_output_shapes	
:*
T0

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
_output_shapes	
:*
T0
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes	
:
Z
training/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
m
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes	
:
s
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes	
:*
T0
l
training/Adam/ReadVariableOp_14ReadVariableOpm1_hidden1/bias*
dtype0*
_output_shapes	
:
z
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes	
:
k
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/m_1_1training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/m_1_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:
k
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/v_1_1training/Adam/add_5*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/v_1_1!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:
g
 training/Adam/AssignVariableOp_5AssignVariableOpm1_hidden1/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpm1_hidden1/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/m_2_1*
dtype0*
_output_shapes
:	@

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	@
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
p
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes
:	@*
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
:	@

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
_output_shapes
:	@*
T0
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	@*
T0
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes
:	@*
T0
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	@
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
_output_shapes
:	@*
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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*
_output_shapes
:	@

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes
:	@*
T0
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes
:	@*
T0
Z
training/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
_output_shapes
:	@*
T0
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes
:	@*
T0
r
training/Adam/ReadVariableOp_22ReadVariableOpm1_hidden2/kernel*
dtype0*
_output_shapes
:	@

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes
:	@
k
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/m_2_1training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/m_2_1!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	@
k
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/v_2_1training/Adam/add_8*
dtype0

training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/v_2_1!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	@
j
 training/Adam/AssignVariableOp_8AssignVariableOpm1_hidden2/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpm1_hidden2/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	@
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

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
training/Adam/sub_11/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

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
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
s
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/v_3_1*
dtype0*
_output_shapes
:@

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

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
 *  *
dtype0

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
_output_shapes
:@*
T0

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
_output_shapes
:@*
T0
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:@
[
training/Adam/add_12/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:@
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

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/m_3_1!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
m
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/v_3_1training/Adam/add_11*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/v_3_1"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
i
!training/Adam/AssignVariableOp_11AssignVariableOpm1_hidden2/biastraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpm1_hidden2/bias"^training/Adam/AssignVariableOp_11*
_output_shapes
:@*
dtype0
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
w
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/m_4_1*
dtype0*
_output_shapes

:@

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
_output_shapes
: *
T0

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
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/v_4_1*
dtype0*
_output_shapes

:@

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
T0*
_output_shapes

:@

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
 *æÖ3*
dtype0*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:@
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

training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/m_4_1"^training/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
m
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/v_4_1training/Adam/add_14*
dtype0

training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/v_4_1"^training/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
k
!training/Adam/AssignVariableOp_14AssignVariableOpm1_hidden3/kerneltraining/Adam/sub_16*
dtype0

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

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

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

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

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
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
_output_shapes
:*
T0

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
 *æÖ3*
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

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/m_5_1"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
m
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/v_5_1training/Adam/add_17*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/v_5_1"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
i
!training/Adam/AssignVariableOp_17AssignVariableOpm1_hidden3/biastraining/Adam/sub_19*
dtype0

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


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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
_output_shapes
: *
T0

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
_output_shapes

:
*
dtype0

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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

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
training/Adam/Const_16Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
T0*
_output_shapes

:


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
 *æÖ3*
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

training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/m_6_1"^training/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

m
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/v_6_1training/Adam/add_20*
dtype0

training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/v_6_1"^training/Adam/AssignVariableOp_19*
dtype0*
_output_shapes

:

j
!training/Adam/AssignVariableOp_20AssignVariableOpm1_output/kerneltraining/Adam/sub_22*
dtype0

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


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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
_output_shapes
: *
T0

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


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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

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
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
_output_shapes
:
*
T0
[
training/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_18Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
_output_shapes
:
*
T0

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
 *æÖ3*
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
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
_output_shapes
:
*
T0
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

training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/m_7_1"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

m
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/v_7_1training/Adam/add_23*
dtype0

training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/v_7_1"^training/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

h
!training/Adam/AssignVariableOp_23AssignVariableOpm1_output/biastraining/Adam/sub_25*
dtype0

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
Ä
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^count/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^total/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
Š
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
ReadVariableOpReadVariableOptotal^AssignVariableOp*
_output_shapes
: *
dtype0
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
shape:’’’’’’’’’*
dtype0*(
_output_shapes
:’’’’’’’’’
f
$dropout_1/keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 

dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 

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
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 

dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_1/cond/dropout/Shape/SwitchSwitchdropout_1_inputdropout_1/cond/pred_id*
T0*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
¼
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed2**(
_output_shapes
:’’’’’’’’’*
seed*
T0*
dtype0
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_1/cond/dropout/addAdddropout_1/cond/dropout/sub%dropout_1/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_1/cond/dropout/truedivRealDiv%dropout_1/cond/dropout/Shape/Switch:1dropout_1/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
µ
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*
T0*"
_class
loc:@dropout_1_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N
p
m2_hidden1/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
b
m2_hidden1/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
b
m2_hidden1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *¬\1=
­
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
T0*
dtype0*
seed2”¢* 
_output_shapes
:
*
seed

m2_hidden1/random_uniform/subSubm2_hidden1/random_uniform/maxm2_hidden1/random_uniform/min*
_output_shapes
: *
T0

m2_hidden1/random_uniform/mulMul'm2_hidden1/random_uniform/RandomUniformm2_hidden1/random_uniform/sub*
T0* 
_output_shapes
:


m2_hidden1/random_uniformAddm2_hidden1/random_uniform/mulm2_hidden1/random_uniform/min*
T0* 
_output_shapes
:

·
m2_hidden1/kernelVarHandleOp*"
shared_namem2_hidden1/kernel*$
_class
loc:@m2_hidden1/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
s
2m2_hidden1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1/kernel*
_output_shapes
: 

m2_hidden1/kernel/AssignAssignVariableOpm2_hidden1/kernelm2_hidden1/random_uniform*$
_class
loc:@m2_hidden1/kernel*
dtype0

%m2_hidden1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1/kernel*$
_class
loc:@m2_hidden1/kernel*
dtype0* 
_output_shapes
:

_
m2_hidden1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
¬
m2_hidden1/biasVarHandleOp* 
shared_namem2_hidden1/bias*"
_class
loc:@m2_hidden1/bias*
	container *
shape:*
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

#m2_hidden1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:*"
_class
loc:@m2_hidden1/bias
t
 m2_hidden1/MatMul/ReadVariableOpReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:

¬
m2_hidden1/MatMulMatMuldropout_1/cond/Merge m2_hidden1/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b( 
n
!m2_hidden1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:

m2_hidden1/BiasAddBiasAddm2_hidden1/MatMul!m2_hidden1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
^
m2_hidden1/ReluRelum2_hidden1/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’
p
m2_hidden2/random_uniform/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
b
m2_hidden2/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
b
m2_hidden2/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
­
'm2_hidden2/random_uniform/RandomUniformRandomUniformm2_hidden2/random_uniform/shape*
dtype0*
seed2¼Å*
_output_shapes
:	@*
seed*
T0

m2_hidden2/random_uniform/subSubm2_hidden2/random_uniform/maxm2_hidden2/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden2/random_uniform/mulMul'm2_hidden2/random_uniform/RandomUniformm2_hidden2/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
T0*
_output_shapes
:	@
¶
m2_hidden2/kernelVarHandleOp*
	container *
shape:	@*
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

m2_hidden2/kernel/AssignAssignVariableOpm2_hidden2/kernelm2_hidden2/random_uniform*$
_class
loc:@m2_hidden2/kernel*
dtype0

%m2_hidden2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
dtype0*
_output_shapes
:	@
]
m2_hidden2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
«
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

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
:	@
¦
m2_hidden2/MatMulMatMulm2_hidden1/Relu m2_hidden2/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b( *
T0
m
!m2_hidden2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@

m2_hidden2/BiasAddBiasAddm2_hidden2/MatMul!m2_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
]
m2_hidden2/ReluRelum2_hidden2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
p
m2_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m2_hidden3/random_uniform/minConst*
_output_shapes
: *
valueB
 *7¾*
dtype0
b
m2_hidden3/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
«
'm2_hidden3/random_uniform/RandomUniformRandomUniformm2_hidden3/random_uniform/shape*
seed2Ē	*
_output_shapes

:@*
seed*
T0*
dtype0

m2_hidden3/random_uniform/subSubm2_hidden3/random_uniform/maxm2_hidden3/random_uniform/min*
_output_shapes
: *
T0

m2_hidden3/random_uniform/mulMul'm2_hidden3/random_uniform/RandomUniformm2_hidden3/random_uniform/sub*
T0*
_output_shapes

:@

m2_hidden3/random_uniformAddm2_hidden3/random_uniform/mulm2_hidden3/random_uniform/min*
_output_shapes

:@*
T0
µ
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

m2_hidden3/kernel/AssignAssignVariableOpm2_hidden3/kernelm2_hidden3/random_uniform*$
_class
loc:@m2_hidden3/kernel*
dtype0

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
«
m2_hidden3/biasVarHandleOp* 
shared_namem2_hidden3/bias*"
_class
loc:@m2_hidden3/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
o
0m2_hidden3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3/bias*
_output_shapes
: 
~
m2_hidden3/bias/AssignAssignVariableOpm2_hidden3/biasm2_hidden3/Const*"
_class
loc:@m2_hidden3/bias*
dtype0

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
¦
m2_hidden3/MatMulMatMulm2_hidden2/Relu m2_hidden3/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
m
!m2_hidden3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3/bias*
_output_shapes
:*
dtype0

m2_hidden3/BiasAddBiasAddm2_hidden3/MatMul!m2_hidden3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
]
m2_hidden3/ReluRelum2_hidden3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
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
 *ōōõ¾*
dtype0*
_output_shapes
: 
a
m2_output/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ōōõ>
Ŗ
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
seed*
T0*
dtype0*
seed2ėĒ«*
_output_shapes

:


m2_output/random_uniform/subSubm2_output/random_uniform/maxm2_output/random_uniform/min*
_output_shapes
: *
T0

m2_output/random_uniform/mulMul&m2_output/random_uniform/RandomUniformm2_output/random_uniform/sub*
_output_shapes

:
*
T0

m2_output/random_uniformAddm2_output/random_uniform/mulm2_output/random_uniform/min*
T0*
_output_shapes

:

²
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

m2_output/kernel/AssignAssignVariableOpm2_output/kernelm2_output/random_uniform*#
_class
loc:@m2_output/kernel*
dtype0

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

Ø
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

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

¤
m2_output/MatMulMatMulm2_hidden3/Relum2_output/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( *
T0
k
 m2_output/BiasAdd/ReadVariableOpReadVariableOpm2_output/bias*
_output_shapes
:
*
dtype0

m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
T0*
data_formatNHWC
a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


+Adam_1/iterations/Initializer/initial_valueConst*$
_class
loc:@Adam_1/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
­
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

Adam_1/iterations/AssignAssignVariableOpAdam_1/iterations+Adam_1/iterations/Initializer/initial_value*$
_class
loc:@Adam_1/iterations*
dtype0	

%Adam_1/iterations/Read/ReadVariableOpReadVariableOpAdam_1/iterations*$
_class
loc:@Adam_1/iterations*
dtype0	*
_output_shapes
: 

.Adam_1/learning_rate/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *'
_class
loc:@Adam_1/learning_rate*
valueB
 *o:
¶
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
«
Adam_1/learning_rate/AssignAssignVariableOpAdam_1/learning_rate.Adam_1/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_1/learning_rate*
dtype0

(Adam_1/learning_rate/Read/ReadVariableOpReadVariableOpAdam_1/learning_rate*'
_class
loc:@Adam_1/learning_rate*
dtype0*
_output_shapes
: 

'Adam_1/beta_1/Initializer/initial_valueConst* 
_class
loc:@Adam_1/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
”
Adam_1/beta_1VarHandleOp* 
_class
loc:@Adam_1/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_1
k
.Adam_1/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_1*
_output_shapes
: 

Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value* 
_class
loc:@Adam_1/beta_1*
dtype0

!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1* 
_class
loc:@Adam_1/beta_1*
dtype0*
_output_shapes
: 

'Adam_1/beta_2/Initializer/initial_valueConst* 
_class
loc:@Adam_1/beta_2*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
”
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

Adam_1/beta_2/AssignAssignVariableOpAdam_1/beta_2'Adam_1/beta_2/Initializer/initial_value* 
_class
loc:@Adam_1/beta_2*
dtype0

!Adam_1/beta_2/Read/ReadVariableOpReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_1/beta_2

&Adam_1/decay/Initializer/initial_valueConst*
_class
loc:@Adam_1/decay*
valueB
 *    *
dtype0*
_output_shapes
: 

Adam_1/decayVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_1/decay*
_class
loc:@Adam_1/decay
i
-Adam_1/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/decay*
_output_shapes
: 

Adam_1/decay/AssignAssignVariableOpAdam_1/decay&Adam_1/decay/Initializer/initial_value*
_class
loc:@Adam_1/decay*
dtype0

 Adam_1/decay/Read/ReadVariableOpReadVariableOpAdam_1/decay*
_class
loc:@Adam_1/decay*
dtype0*
_output_shapes
: 

m2_output_targetPlaceholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
s
m2_output_sample_weightsPlaceholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
L
Const_3Const*
dtype0*
_output_shapes
: *
valueB
 *    

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

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
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 

metrics_1/accuracy/SqueezeSqueezem2_output_target*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’
n
#metrics_1/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ø
metrics_1/accuracy/ArgMaxArgMaxm2_output/Softmax#metrics_1/accuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0*
T0

metrics_1/accuracy/CastCastmetrics_1/accuracy/ArgMax*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	*
Truncate( 

metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0

b
metrics_1/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_1/accuracy/SumSummetrics_1/accuracy/Cast_1metrics_1/accuracy/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
k
&metrics_1/accuracy/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/accuracy/Sum*
dtype0

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

#metrics_1/accuracy/ReadVariableOp_1ReadVariableOpcount_1)^metrics_1/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_1/accuracy/ReadVariableOp_2ReadVariableOptotal_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_1/accuracy/truediv/ReadVariableOpReadVariableOpcount_1"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_1/accuracy/truedivRealDiv#metrics_1/accuracy/ReadVariableOp_2)metrics_1/accuracy/truediv/ReadVariableOp*
_output_shapes
: *
T0
d
metrics_1/accuracy/IdentityIdentitymetrics_1/accuracy/truediv*
T0*
_output_shapes
: 

;loss_1/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0

;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ū
9loss_1/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_1/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ö
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
·
9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ū
=loss_1/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_targetCloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_1/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’

Eloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogEloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
Tshape0*'
_output_shapes
:’’’’’’’’’
*
T0
Ł
_loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
ń
}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_1/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’


Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0

Iloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
×
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
ō
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 

Kloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_1/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


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
}
training_1/Adam/gradients/ShapeConst*
_class
loc:@Mean_1*
valueB *
dtype0*
_output_shapes
: 

#training_1/Adam/gradients/grad_ys_0Const*
_class
loc:@Mean_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*
T0*
_class
loc:@Mean_1*

index_type0*
_output_shapes
: 

3training_1/Adam/gradients/Mean_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
_class
loc:@Mean_1*
valueB 
×
-training_1/Adam/gradients/Mean_1_grad/ReshapeReshapetraining_1/Adam/gradients/Fill3training_1/Adam/gradients/Mean_1_grad/Reshape/shape*
_class
loc:@Mean_1*
Tshape0*
_output_shapes
: *
T0

+training_1/Adam/gradients/Mean_1_grad/ConstConst*
_output_shapes
: *
_class
loc:@Mean_1*
valueB *
dtype0
Ü
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*
_class
loc:@Mean_1

-training_1/Adam/gradients/Mean_1_grad/Const_1Const*
_class
loc:@Mean_1*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ļ
-training_1/Adam/gradients/Mean_1_grad/truedivRealDiv*training_1/Adam/gradients/Mean_1_grad/Tile-training_1/Adam/gradients/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
_class
loc:@Mean_1
š
-training_1/Adam/gradients/loss_1/mul_grad/MulMul-training_1/Adam/gradients/Mean_1_grad/truedivKloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 
³
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss_1/mul

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
_output_shapes
: *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0

rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 

training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ī
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
æ
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Ē
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Ķ
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_1/Adam/gradients/loss_1/mul_grad/Mul_1ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ō
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 

ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0
ņ
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0
Ļ
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0
ķ
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*

Tmultiples0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’
 
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem2_output_sample_weights*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0

|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ē
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
÷
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
ė
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’

ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weightsktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ż
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
ń
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’
ś
$training_1/Adam/gradients/zeros_like	ZerosLikeloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

Ą
¬training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0

«training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
§training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1«training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’*

Tdim0
É
 training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul§training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims¬training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

±
dtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*
T0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0*
_output_shapes
:

ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0*'
_output_shapes
:’’’’’’’’’
*
T0

ctraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

°
\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*'
_output_shapes
:’’’’’’’’’
*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log
Ė
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:*
T0

jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
Ž
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:*
T0

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    
č
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:’’’’’’’’’


otraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ü
xtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¶
itraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ø
ktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ź
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
ß
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*'
_output_shapes
:’’’’’’’’’

š
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
Ō
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*
_output_shapes
: *
T0
”
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output/Softmax*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0

rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 
ü
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:

vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0
į
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
į
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ć
straining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Selecttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
’
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:’’’’’’’’’


ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:
ō
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 

4training_1/Adam/gradients/m2_output/Softmax_grad/mulMulrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem2_output/Softmax*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’

·
Ftraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indicesConst*$
_class
loc:@m2_output/Softmax*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
®
4training_1/Adam/gradients/m2_output/Softmax_grad/SumSum4training_1/Adam/gradients/m2_output/Softmax_grad/mulFtraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indices*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’*
	keep_dims(*

Tidx0
½
4training_1/Adam/gradients/m2_output/Softmax_grad/subSubrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape4training_1/Adam/gradients/m2_output/Softmax_grad/Sum*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’

Ž
6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1Mul4training_1/Adam/gradients/m2_output/Softmax_grad/subm2_output/Softmax*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’

å
<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGradBiasAddGrad6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:
*
T0*$
_class
loc:@m2_output/BiasAdd

6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*#
_class
loc:@m2_output/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b(*
T0
’
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
T0*#
_class
loc:@m2_output/MatMul*
transpose_a(*
_output_shapes

:
*
transpose_b( 
ā
7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulm2_hidden3/Relu*
T0*"
_class
loc:@m2_hidden3/Relu*'
_output_shapes
:’’’’’’’’’
č
=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*%
_class
loc:@m2_hidden3/BiasAdd

7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad m2_hidden3/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden3/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b(

9training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1MatMulm2_hidden2/Relu7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden3/MatMul*
transpose_a(*
_output_shapes

:@*
transpose_b( 
ć
7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulm2_hidden2/Relu*
T0*"
_class
loc:@m2_hidden2/Relu*'
_output_shapes
:’’’’’’’’’@
č
=training_1/Adam/gradients/m2_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@

7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad m2_hidden2/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden2/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(

9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1MatMulm2_hidden1/Relu7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*$
_class
loc:@m2_hidden2/MatMul*
transpose_a(*
_output_shapes
:	@*
transpose_b( *
T0
ä
7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMulm2_hidden1/Relu*
T0*"
_class
loc:@m2_hidden1/Relu*(
_output_shapes
:’’’’’’’’’
é
=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden1/BiasAdd*
data_formatNHWC*
_output_shapes	
:

7training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad m2_hidden1/MatMul/ReadVariableOp*
T0*$
_class
loc:@m2_hidden1/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(

9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
T0*$
_class
loc:@m2_hidden1/MatMul*
transpose_a(* 
_output_shapes
:
*
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

training_1/Adam/ReadVariableOpReadVariableOpAdam_1/iterations$^training_1/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_1/Adam/Cast/ReadVariableOpReadVariableOpAdam_1/iterations*
dtype0	*
_output_shapes
: 

training_1/Adam/CastCast#training_1/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
Z
training_1/Adam/add/yConst*
valueB
 *  ?*
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
training_1/Adam/PowPow"training_1/Adam/Pow/ReadVariableOptraining_1/Adam/add*
_output_shapes
: *
T0
Z
training_1/Adam/sub/xConst*
valueB
 *  ?*
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
 *  *
dtype0*
_output_shapes
: 

%training_1/Adam/clip_by_value/MinimumMinimumtraining_1/Adam/subtraining_1/Adam/Const_2*
T0*
_output_shapes
: 

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
training_1/Adam/sub_1/xConst*
valueB
 *  ?*
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
dtype0*
_output_shapes
:*
valueB"      
^
training_1/Adam/m_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_1/Adam/m_0Fill#training_1/Adam/m_0/shape_as_tensortraining_1/Adam/m_0/Const* 
_output_shapes
:
*
T0*

index_type0
Ć
training_1/Adam/m_0_1VarHandleOp*&
shared_nametraining_1/Adam/m_0_1*(
_class
loc:@training_1/Adam/m_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
{
6training_1/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_0_1*
_output_shapes
: 

training_1/Adam/m_0_1/AssignAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/m_0*(
_class
loc:@training_1/Adam/m_0_1*
dtype0
«
)training_1/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_0_1*(
_class
loc:@training_1/Adam/m_0_1*
dtype0* 
_output_shapes
:

b
training_1/Adam/m_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_1/Adam/m_1_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_1_1*(
_class
loc:@training_1/Adam/m_1_1
{
6training_1/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_1_1*
_output_shapes
: 

training_1/Adam/m_1_1/AssignAssignVariableOptraining_1/Adam/m_1_1training_1/Adam/m_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0
¦
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*(
_class
loc:@training_1/Adam/m_1_1*
dtype0*
_output_shapes	
:
t
#training_1/Adam/m_2/shape_as_tensorConst*
valueB"   @   *
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

training_1/Adam/m_2Fill#training_1/Adam/m_2/shape_as_tensortraining_1/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	@
Ā
training_1/Adam/m_2_1VarHandleOp*
	container *
shape:	@*
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

training_1/Adam/m_2_1/AssignAssignVariableOptraining_1/Adam/m_2_1training_1/Adam/m_2*(
_class
loc:@training_1/Adam/m_2_1*
dtype0
Ŗ
)training_1/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
dtype0*
_output_shapes
:	@
`
training_1/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
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

training_1/Adam/m_3_1/AssignAssignVariableOptraining_1/Adam/m_3_1training_1/Adam/m_3*(
_class
loc:@training_1/Adam/m_3_1*
dtype0
„
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

training_1/Adam/m_4Fill#training_1/Adam/m_4/shape_as_tensortraining_1/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
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

training_1/Adam/m_4_1/AssignAssignVariableOptraining_1/Adam/m_4_1training_1/Adam/m_4*(
_class
loc:@training_1/Adam/m_4_1*
dtype0
©
)training_1/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_4_1*(
_class
loc:@training_1/Adam/m_4_1*
dtype0*
_output_shapes

:@
`
training_1/Adam/m_5Const*
dtype0*
_output_shapes
:*
valueB*    
½
training_1/Adam/m_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_5_1*(
_class
loc:@training_1/Adam/m_5_1*
	container 
{
6training_1/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_5_1*
_output_shapes
: 

training_1/Adam/m_5_1/AssignAssignVariableOptraining_1/Adam/m_5_1training_1/Adam/m_5*(
_class
loc:@training_1/Adam/m_5_1*
dtype0
„
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

Į
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

training_1/Adam/m_6_1/AssignAssignVariableOptraining_1/Adam/m_6_1training_1/Adam/m_6*(
_class
loc:@training_1/Adam/m_6_1*
dtype0
©
)training_1/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*
_output_shapes

:
*(
_class
loc:@training_1/Adam/m_6_1*
dtype0
`
training_1/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

½
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

training_1/Adam/m_7_1/AssignAssignVariableOptraining_1/Adam/m_7_1training_1/Adam/m_7*(
_class
loc:@training_1/Adam/m_7_1*
dtype0
„
)training_1/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_7_1*(
_class
loc:@training_1/Adam/m_7_1*
dtype0*
_output_shapes
:

t
#training_1/Adam/v_0/shape_as_tensorConst*
_output_shapes
:*
valueB"      *
dtype0
^
training_1/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_1/Adam/v_0Fill#training_1/Adam/v_0/shape_as_tensortraining_1/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:

Ć
training_1/Adam/v_0_1VarHandleOp*&
shared_nametraining_1/Adam/v_0_1*(
_class
loc:@training_1/Adam/v_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
{
6training_1/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_0_1*
_output_shapes
: 

training_1/Adam/v_0_1/AssignAssignVariableOptraining_1/Adam/v_0_1training_1/Adam/v_0*(
_class
loc:@training_1/Adam/v_0_1*
dtype0
«
)training_1/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1*(
_class
loc:@training_1/Adam/v_0_1*
dtype0* 
_output_shapes
:

b
training_1/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_1/Adam/v_1_1VarHandleOp*&
shared_nametraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
{
6training_1/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_1_1*
_output_shapes
: 

training_1/Adam/v_1_1/AssignAssignVariableOptraining_1/Adam/v_1_1training_1/Adam/v_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0
¦
)training_1/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0*
_output_shapes	
:
t
#training_1/Adam/v_2/shape_as_tensorConst*
valueB"   @   *
dtype0*
_output_shapes
:
^
training_1/Adam/v_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_1/Adam/v_2Fill#training_1/Adam/v_2/shape_as_tensortraining_1/Adam/v_2/Const*

index_type0*
_output_shapes
:	@*
T0
Ā
training_1/Adam/v_2_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
	container *
shape:	@
{
6training_1/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_2_1*
_output_shapes
: 

training_1/Adam/v_2_1/AssignAssignVariableOptraining_1/Adam/v_2_1training_1/Adam/v_2*(
_class
loc:@training_1/Adam/v_2_1*
dtype0
Ŗ
)training_1/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*(
_class
loc:@training_1/Adam/v_2_1*
dtype0*
_output_shapes
:	@
`
training_1/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
training_1/Adam/v_3_1VarHandleOp*
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_3_1*(
_class
loc:@training_1/Adam/v_3_1*
	container 
{
6training_1/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/v_3_1*
_output_shapes
: 

training_1/Adam/v_3_1/AssignAssignVariableOptraining_1/Adam/v_3_1training_1/Adam/v_3*(
_class
loc:@training_1/Adam/v_3_1*
dtype0
„
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
training_1/Adam/v_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_1/Adam/v_4Fill#training_1/Adam/v_4/shape_as_tensortraining_1/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
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

training_1/Adam/v_4_1/AssignAssignVariableOptraining_1/Adam/v_4_1training_1/Adam/v_4*(
_class
loc:@training_1/Adam/v_4_1*
dtype0
©
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
½
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

training_1/Adam/v_5_1/AssignAssignVariableOptraining_1/Adam/v_5_1training_1/Adam/v_5*(
_class
loc:@training_1/Adam/v_5_1*
dtype0
„
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

Į
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

training_1/Adam/v_6_1/AssignAssignVariableOptraining_1/Adam/v_6_1training_1/Adam/v_6*(
_class
loc:@training_1/Adam/v_6_1*
dtype0
©
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

½
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

training_1/Adam/v_7_1/AssignAssignVariableOptraining_1/Adam/v_7_1training_1/Adam/v_7*(
_class
loc:@training_1/Adam/v_7_1*
dtype0
„
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

training_1/Adam/vhat_0Fill&training_1/Adam/vhat_0/shape_as_tensortraining_1/Adam/vhat_0/Const*

index_type0*
_output_shapes
:*
T0
Ę
training_1/Adam/vhat_0_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_0_1*
_output_shapes
: 

training_1/Adam/vhat_0_1/AssignAssignVariableOptraining_1/Adam/vhat_0_1training_1/Adam/vhat_0*+
_class!
loc:@training_1/Adam/vhat_0_1*
dtype0
®
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

training_1/Adam/vhat_1Fill&training_1/Adam/vhat_1/shape_as_tensortraining_1/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_1_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_1_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_1_1*
_output_shapes
: 

training_1/Adam/vhat_1_1/AssignAssignVariableOptraining_1/Adam/vhat_1_1training_1/Adam/vhat_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0
®
,training_1/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_1_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_1_1
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

training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_1/Adam/vhat_2_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 

training_1/Adam/vhat_2_1/AssignAssignVariableOptraining_1/Adam/vhat_2_1training_1/Adam/vhat_2*+
_class!
loc:@training_1/Adam/vhat_2_1*
dtype0
®
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

training_1/Adam/vhat_3Fill&training_1/Adam/vhat_3/shape_as_tensortraining_1/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_3_1VarHandleOp*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
	container *
shape:*
dtype0

9training_1/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 

training_1/Adam/vhat_3_1/AssignAssignVariableOptraining_1/Adam/vhat_3_1training_1/Adam/vhat_3*+
_class!
loc:@training_1/Adam/vhat_3_1*
dtype0
®
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

training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_4_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1*+
_class!
loc:@training_1/Adam/vhat_4_1*
	container *
shape:

9training_1/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_4_1*
_output_shapes
: 

training_1/Adam/vhat_4_1/AssignAssignVariableOptraining_1/Adam/vhat_4_1training_1/Adam/vhat_4*+
_class!
loc:@training_1/Adam/vhat_4_1*
dtype0
®
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
training_1/Adam/vhat_5/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_1/Adam/vhat_5Fill&training_1/Adam/vhat_5/shape_as_tensortraining_1/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_5_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
	container *
shape:

9training_1/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_5_1*
_output_shapes
: 

training_1/Adam/vhat_5_1/AssignAssignVariableOptraining_1/Adam/vhat_5_1training_1/Adam/vhat_5*+
_class!
loc:@training_1/Adam/vhat_5_1*
dtype0
®
,training_1/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_6/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training_1/Adam/vhat_6/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_1/Adam/vhat_6Fill&training_1/Adam/vhat_6/shape_as_tensortraining_1/Adam/vhat_6/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_1/Adam/vhat_6_1VarHandleOp*+
_class!
loc:@training_1/Adam/vhat_6_1*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_6_1

9training_1/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_6_1*
_output_shapes
: 

training_1/Adam/vhat_6_1/AssignAssignVariableOptraining_1/Adam/vhat_6_1training_1/Adam/vhat_6*+
_class!
loc:@training_1/Adam/vhat_6_1*
dtype0
®
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

training_1/Adam/vhat_7Fill&training_1/Adam/vhat_7/shape_as_tensortraining_1/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_7_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_7_1*
_output_shapes
: 

training_1/Adam/vhat_7_1/AssignAssignVariableOptraining_1/Adam/vhat_7_1training_1/Adam/vhat_7*+
_class!
loc:@training_1/Adam/vhat_7_1*
dtype0
®
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


training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:

f
 training_1/Adam/ReadVariableOp_3ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
_output_shapes
: *
T0

training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

u
training_1/Adam/add_1Addtraining_1/Adam/mul_1training_1/Adam/mul_2* 
_output_shapes
:
*
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


training_1/Adam/mul_3Mul training_1/Adam/ReadVariableOp_4$training_1/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:

f
 training_1/Adam/ReadVariableOp_5ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
\
training_1/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
training_1/Adam/sub_3Subtraining_1/Adam/sub_3/x training_1/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 

training_1/Adam/SquareSquare9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
v
training_1/Adam/mul_4Multraining_1/Adam/sub_3training_1/Adam/Square*
T0* 
_output_shapes
:

u
training_1/Adam/add_2Addtraining_1/Adam/mul_3training_1/Adam/mul_4*
T0* 
_output_shapes
:

s
training_1/Adam/mul_5Multraining_1/Adam/multraining_1/Adam/add_1*
T0* 
_output_shapes
:

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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_1/MinimumMinimumtraining_1/Adam/add_2training_1/Adam/Const_4* 
_output_shapes
:
*
T0

training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3* 
_output_shapes
:
*
T0
j
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1*
T0* 
_output_shapes
:

\
training_1/Adam/add_3/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
x
training_1/Adam/add_3Addtraining_1/Adam/Sqrt_1training_1/Adam/add_3/y*
T0* 
_output_shapes
:

}
training_1/Adam/truediv_1RealDivtraining_1/Adam/mul_5training_1/Adam/add_3*
T0* 
_output_shapes
:

t
 training_1/Adam/ReadVariableOp_6ReadVariableOpm2_hidden1/kernel* 
_output_shapes
:
*
dtype0

training_1/Adam/sub_4Sub training_1/Adam/ReadVariableOp_6training_1/Adam/truediv_1* 
_output_shapes
:
*
T0
o
 training_1/Adam/AssignVariableOpAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/add_1*
dtype0

 training_1/Adam/ReadVariableOp_7ReadVariableOptraining_1/Adam/m_0_1!^training_1/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:

q
"training_1/Adam/AssignVariableOp_1AssignVariableOptraining_1/Adam/v_0_1training_1/Adam/add_2*
dtype0

 training_1/Adam/ReadVariableOp_8ReadVariableOptraining_1/Adam/v_0_1#^training_1/Adam/AssignVariableOp_1*
dtype0* 
_output_shapes
:

m
"training_1/Adam/AssignVariableOp_2AssignVariableOpm2_hidden1/kerneltraining_1/Adam/sub_4*
dtype0

 training_1/Adam/ReadVariableOp_9ReadVariableOpm2_hidden1/kernel#^training_1/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

g
!training_1/Adam/ReadVariableOp_10ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_6/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
dtype0*
_output_shapes	
:

training_1/Adam/mul_6Mul!training_1/Adam/ReadVariableOp_10$training_1/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_11ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training_1/Adam/mul_7Multraining_1/Adam/sub_5=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
T0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_12ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
$training_1/Adam/mul_8/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*
dtype0*
_output_shapes	
:

training_1/Adam/mul_8Mul!training_1/Adam/ReadVariableOp_12$training_1/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_13ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_6Subtraining_1/Adam/sub_6/x!training_1/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 

training_1/Adam/Square_1Square=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
s
training_1/Adam/mul_9Multraining_1/Adam/sub_6training_1/Adam/Square_1*
_output_shapes	
:*
T0
p
training_1/Adam/add_5Addtraining_1/Adam/mul_8training_1/Adam/mul_9*
_output_shapes	
:*
T0
o
training_1/Adam/mul_10Multraining_1/Adam/multraining_1/Adam/add_4*
_output_shapes	
:*
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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_6*
_output_shapes	
:*
T0

training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
_output_shapes	
:*
T0
e
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
T0*
_output_shapes	
:
\
training_1/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
s
training_1/Adam/add_6Addtraining_1/Adam/Sqrt_2training_1/Adam/add_6/y*
T0*
_output_shapes	
:
y
training_1/Adam/truediv_2RealDivtraining_1/Adam/mul_10training_1/Adam/add_6*
T0*
_output_shapes	
:
n
!training_1/Adam/ReadVariableOp_14ReadVariableOpm2_hidden1/bias*
dtype0*
_output_shapes	
:

training_1/Adam/sub_7Sub!training_1/Adam/ReadVariableOp_14training_1/Adam/truediv_2*
T0*
_output_shapes	
:
q
"training_1/Adam/AssignVariableOp_3AssignVariableOptraining_1/Adam/m_1_1training_1/Adam/add_4*
dtype0

!training_1/Adam/ReadVariableOp_15ReadVariableOptraining_1/Adam/m_1_1#^training_1/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:
q
"training_1/Adam/AssignVariableOp_4AssignVariableOptraining_1/Adam/v_1_1training_1/Adam/add_5*
dtype0

!training_1/Adam/ReadVariableOp_16ReadVariableOptraining_1/Adam/v_1_1#^training_1/Adam/AssignVariableOp_4*
_output_shapes	
:*
dtype0
k
"training_1/Adam/AssignVariableOp_5AssignVariableOpm2_hidden1/biastraining_1/Adam/sub_7*
dtype0

!training_1/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1/bias#^training_1/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
g
!training_1/Adam/ReadVariableOp_18ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_11/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*
dtype0*
_output_shapes
:	@

training_1/Adam/mul_11Mul!training_1/Adam/ReadVariableOp_18%training_1/Adam/mul_11/ReadVariableOp*
T0*
_output_shapes
:	@
g
!training_1/Adam/ReadVariableOp_19ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
_output_shapes
: *
T0

training_1/Adam/mul_12Multraining_1/Adam/sub_89training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	@*
T0
v
training_1/Adam/add_7Addtraining_1/Adam/mul_11training_1/Adam/mul_12*
_output_shapes
:	@*
T0
g
!training_1/Adam/ReadVariableOp_20ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
|
%training_1/Adam/mul_13/ReadVariableOpReadVariableOptraining_1/Adam/v_2_1*
dtype0*
_output_shapes
:	@

training_1/Adam/mul_13Mul!training_1/Adam/ReadVariableOp_20%training_1/Adam/mul_13/ReadVariableOp*
_output_shapes
:	@*
T0
g
!training_1/Adam/ReadVariableOp_21ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_1/Adam/sub_9Subtraining_1/Adam/sub_9/x!training_1/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training_1/Adam/Square_2Square9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
x
training_1/Adam/mul_14Multraining_1/Adam/sub_9training_1/Adam/Square_2*
T0*
_output_shapes
:	@
v
training_1/Adam/add_8Addtraining_1/Adam/mul_13training_1/Adam/mul_14*
_output_shapes
:	@*
T0
s
training_1/Adam/mul_15Multraining_1/Adam/multraining_1/Adam/add_7*
_output_shapes
:	@*
T0
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
 *  

'training_1/Adam/clip_by_value_3/MinimumMinimumtraining_1/Adam/add_8training_1/Adam/Const_8*
T0*
_output_shapes
:	@

training_1/Adam/clip_by_value_3Maximum'training_1/Adam/clip_by_value_3/Minimumtraining_1/Adam/Const_7*
_output_shapes
:	@*
T0
i
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
T0*
_output_shapes
:	@
\
training_1/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
w
training_1/Adam/add_9Addtraining_1/Adam/Sqrt_3training_1/Adam/add_9/y*
_output_shapes
:	@*
T0
}
training_1/Adam/truediv_3RealDivtraining_1/Adam/mul_15training_1/Adam/add_9*
T0*
_output_shapes
:	@
t
!training_1/Adam/ReadVariableOp_22ReadVariableOpm2_hidden2/kernel*
dtype0*
_output_shapes
:	@

training_1/Adam/sub_10Sub!training_1/Adam/ReadVariableOp_22training_1/Adam/truediv_3*
T0*
_output_shapes
:	@
q
"training_1/Adam/AssignVariableOp_6AssignVariableOptraining_1/Adam/m_2_1training_1/Adam/add_7*
dtype0

!training_1/Adam/ReadVariableOp_23ReadVariableOptraining_1/Adam/m_2_1#^training_1/Adam/AssignVariableOp_6*
dtype0*
_output_shapes
:	@
q
"training_1/Adam/AssignVariableOp_7AssignVariableOptraining_1/Adam/v_2_1training_1/Adam/add_8*
dtype0

!training_1/Adam/ReadVariableOp_24ReadVariableOptraining_1/Adam/v_2_1#^training_1/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	@
n
"training_1/Adam/AssignVariableOp_8AssignVariableOpm2_hidden2/kerneltraining_1/Adam/sub_10*
dtype0

!training_1/Adam/ReadVariableOp_25ReadVariableOpm2_hidden2/kernel#^training_1/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	@
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

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_11Subtraining_1/Adam/sub_11/x!training_1/Adam/ReadVariableOp_27*
_output_shapes
: *
T0

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

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
training_1/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_12Subtraining_1/Adam/sub_12/x!training_1/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_10*
T0*
_output_shapes
:@

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
training_1/Adam/add_12/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
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

training_1/Adam/sub_13Sub!training_1/Adam/ReadVariableOp_30training_1/Adam/truediv_4*
T0*
_output_shapes
:@
r
"training_1/Adam/AssignVariableOp_9AssignVariableOptraining_1/Adam/m_3_1training_1/Adam/add_10*
dtype0

!training_1/Adam/ReadVariableOp_31ReadVariableOptraining_1/Adam/m_3_1#^training_1/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
s
#training_1/Adam/AssignVariableOp_10AssignVariableOptraining_1/Adam/v_3_1training_1/Adam/add_11*
dtype0

!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/v_3_1$^training_1/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
m
#training_1/Adam/AssignVariableOp_11AssignVariableOpm2_hidden2/biastraining_1/Adam/sub_13*
dtype0

!training_1/Adam/ReadVariableOp_33ReadVariableOpm2_hidden2/bias$^training_1/Adam/AssignVariableOp_11*
_output_shapes
:@*
dtype0
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

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
training_1/Adam/sub_14/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
{
training_1/Adam/sub_14Subtraining_1/Adam/sub_14/x!training_1/Adam/ReadVariableOp_35*
_output_shapes
: *
T0

training_1/Adam/mul_22Multraining_1/Adam/sub_149training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
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

training_1/Adam/mul_23Mul!training_1/Adam/ReadVariableOp_36%training_1/Adam/mul_23/ReadVariableOp*
_output_shapes

:@*
T0
g
!training_1/Adam/ReadVariableOp_37ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_15Subtraining_1/Adam/sub_15/x!training_1/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

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
training_1/Adam/add_14Addtraining_1/Adam/mul_23training_1/Adam/mul_24*
_output_shapes

:@*
T0
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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_5/MinimumMinimumtraining_1/Adam/add_14training_1/Adam/Const_12*
T0*
_output_shapes

:@

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
 *æÖ3*
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

training_1/Adam/sub_16Sub!training_1/Adam/ReadVariableOp_38training_1/Adam/truediv_5*
T0*
_output_shapes

:@
s
#training_1/Adam/AssignVariableOp_12AssignVariableOptraining_1/Adam/m_4_1training_1/Adam/add_13*
dtype0

!training_1/Adam/ReadVariableOp_39ReadVariableOptraining_1/Adam/m_4_1$^training_1/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
s
#training_1/Adam/AssignVariableOp_13AssignVariableOptraining_1/Adam/v_4_1training_1/Adam/add_14*
dtype0

!training_1/Adam/ReadVariableOp_40ReadVariableOptraining_1/Adam/v_4_1$^training_1/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
o
#training_1/Adam/AssignVariableOp_14AssignVariableOpm2_hidden3/kerneltraining_1/Adam/sub_16*
dtype0

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
%training_1/Adam/mul_26/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*
_output_shapes
:*
dtype0

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_17Subtraining_1/Adam/sub_17/x!training_1/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

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
!training_1/Adam/ReadVariableOp_44ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
w
%training_1/Adam/mul_28/ReadVariableOpReadVariableOptraining_1/Adam/v_5_1*
dtype0*
_output_shapes
:

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_18Subtraining_1/Adam/sub_18/x!training_1/Adam/ReadVariableOp_45*
_output_shapes
: *
T0

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
training_1/Adam/Const_14Const*
_output_shapes
: *
valueB
 *  *
dtype0

'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
T0*
_output_shapes
:

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
 *æÖ3*
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

training_1/Adam/sub_19Sub!training_1/Adam/ReadVariableOp_46training_1/Adam/truediv_6*
T0*
_output_shapes
:
s
#training_1/Adam/AssignVariableOp_15AssignVariableOptraining_1/Adam/m_5_1training_1/Adam/add_16*
dtype0

!training_1/Adam/ReadVariableOp_47ReadVariableOptraining_1/Adam/m_5_1$^training_1/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
s
#training_1/Adam/AssignVariableOp_16AssignVariableOptraining_1/Adam/v_5_1training_1/Adam/add_17*
dtype0

!training_1/Adam/ReadVariableOp_48ReadVariableOptraining_1/Adam/v_5_1$^training_1/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
m
#training_1/Adam/AssignVariableOp_17AssignVariableOpm2_hidden3/biastraining_1/Adam/sub_19*
dtype0

!training_1/Adam/ReadVariableOp_49ReadVariableOpm2_hidden3/bias$^training_1/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
g
!training_1/Adam/ReadVariableOp_50ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
{
%training_1/Adam/mul_31/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*
dtype0*
_output_shapes

:


training_1/Adam/mul_31Mul!training_1/Adam/ReadVariableOp_50%training_1/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes

:

g
!training_1/Adam/ReadVariableOp_51ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_20Subtraining_1/Adam/sub_20/x!training_1/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 

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
!training_1/Adam/ReadVariableOp_52ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_33/ReadVariableOpReadVariableOptraining_1/Adam/v_6_1*
_output_shapes

:
*
dtype0

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
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_21Subtraining_1/Adam/sub_21/x!training_1/Adam/ReadVariableOp_53*
_output_shapes
: *
T0

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
training_1/Adam/add_20Addtraining_1/Adam/mul_33training_1/Adam/mul_34*
T0*
_output_shapes

:

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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_7/MinimumMinimumtraining_1/Adam/add_20training_1/Adam/Const_16*
T0*
_output_shapes

:


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
training_1/Adam/add_21/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
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


training_1/Adam/sub_22Sub!training_1/Adam/ReadVariableOp_54training_1/Adam/truediv_7*
T0*
_output_shapes

:

s
#training_1/Adam/AssignVariableOp_18AssignVariableOptraining_1/Adam/m_6_1training_1/Adam/add_19*
dtype0

!training_1/Adam/ReadVariableOp_55ReadVariableOptraining_1/Adam/m_6_1$^training_1/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

s
#training_1/Adam/AssignVariableOp_19AssignVariableOptraining_1/Adam/v_6_1training_1/Adam/add_20*
dtype0

!training_1/Adam/ReadVariableOp_56ReadVariableOptraining_1/Adam/v_6_1$^training_1/Adam/AssignVariableOp_19*
_output_shapes

:
*
dtype0
n
#training_1/Adam/AssignVariableOp_20AssignVariableOpm2_output/kerneltraining_1/Adam/sub_22*
dtype0

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


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
training_1/Adam/sub_23/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

training_1/Adam/mul_37Multraining_1/Adam/sub_23<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
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


training_1/Adam/mul_38Mul!training_1/Adam/ReadVariableOp_60%training_1/Adam/mul_38/ReadVariableOp*
_output_shapes
:
*
T0
g
!training_1/Adam/ReadVariableOp_61ReadVariableOpAdam_1/beta_2*
_output_shapes
: *
dtype0
]
training_1/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_24Subtraining_1/Adam/sub_24/x!training_1/Adam/ReadVariableOp_61*
_output_shapes
: *
T0

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
training_1/Adam/Const_18Const*
dtype0*
_output_shapes
: *
valueB
 *  

'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
_output_shapes
:
*
T0

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
training_1/Adam/add_24/yConst*
valueB
 *æÖ3*
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


training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
T0*
_output_shapes
:

s
#training_1/Adam/AssignVariableOp_21AssignVariableOptraining_1/Adam/m_7_1training_1/Adam/add_22*
dtype0

!training_1/Adam/ReadVariableOp_63ReadVariableOptraining_1/Adam/m_7_1$^training_1/Adam/AssignVariableOp_21*
_output_shapes
:
*
dtype0
s
#training_1/Adam/AssignVariableOp_22AssignVariableOptraining_1/Adam/v_7_1training_1/Adam/add_23*
dtype0

!training_1/Adam/ReadVariableOp_64ReadVariableOptraining_1/Adam/v_7_1$^training_1/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

l
#training_1/Adam/AssignVariableOp_23AssignVariableOpm2_output/biastraining_1/Adam/sub_25*
dtype0

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
	
training_1/initNoOp^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^count_1/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^total_1/Assign^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign

training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9

group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1
N
Placeholder_2Placeholder*
dtype0*
_output_shapes
: *
shape: 
K
AssignVariableOp_2AssignVariableOptotal_1Placeholder_2*
dtype0
e
ReadVariableOp_2ReadVariableOptotal_1^AssignVariableOp_2*
dtype0*
_output_shapes
: 
N
Placeholder_3Placeholder*
shape: *
dtype0*
_output_shapes
: 
K
AssignVariableOp_3AssignVariableOpcount_1Placeholder_3*
dtype0
e
ReadVariableOp_3ReadVariableOpcount_1^AssignVariableOp_3*
_output_shapes
: *
dtype0
t
dropout_2_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

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
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 

dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_2/cond/dropout/Shape/SwitchSwitchdropout_2_inputdropout_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_2_input
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
}
dropout_2/cond/dropout/subSubdropout_2/cond/dropout/sub/xdropout_2/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
T0*
dtype0*
seed2**(
_output_shapes
:’’’’’’’’’*
seed
§
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_2/cond/dropout/truedivRealDiv%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/sub*(
_output_shapes
:’’’’’’’’’*
T0

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/truedivdropout_2/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
µ
dropout_2/cond/Switch_1Switchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden1_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
d
m2_hidden1_1/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
d
m2_hidden1_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *¬\1=*
dtype0
²
)m2_hidden1_1/random_uniform/RandomUniformRandomUniform!m2_hidden1_1/random_uniform/shape*
seed2ć®”* 
_output_shapes
:
*
seed*
T0*
dtype0

m2_hidden1_1/random_uniform/subSubm2_hidden1_1/random_uniform/maxm2_hidden1_1/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden1_1/random_uniform/mulMul)m2_hidden1_1/random_uniform/RandomUniformm2_hidden1_1/random_uniform/sub*
T0* 
_output_shapes
:


m2_hidden1_1/random_uniformAddm2_hidden1_1/random_uniform/mulm2_hidden1_1/random_uniform/min*
T0* 
_output_shapes
:

½
m2_hidden1_1/kernelVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *$
shared_namem2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel
w
4m2_hidden1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 

m2_hidden1_1/kernel/AssignAssignVariableOpm2_hidden1_1/kernelm2_hidden1_1/random_uniform*&
_class
loc:@m2_hidden1_1/kernel*
dtype0
„
'm2_hidden1_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
dtype0* 
_output_shapes
:

a
m2_hidden1_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
²
m2_hidden1_1/biasVarHandleOp*"
shared_namem2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
s
2m2_hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 

m2_hidden1_1/bias/AssignAssignVariableOpm2_hidden1_1/biasm2_hidden1_1/Const*$
_class
loc:@m2_hidden1_1/bias*
dtype0

%m2_hidden1_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_1/bias*$
_class
loc:@m2_hidden1_1/bias*
dtype0*
_output_shapes	
:
x
"m2_hidden1_1/MatMul/ReadVariableOpReadVariableOpm2_hidden1_1/kernel*
dtype0* 
_output_shapes
:

°
m2_hidden1_1/MatMulMatMuldropout_2/cond/Merge"m2_hidden1_1/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b( 
r
#m2_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_1/bias*
dtype0*
_output_shapes	
:
£
m2_hidden1_1/BiasAddBiasAddm2_hidden1_1/MatMul#m2_hidden1_1/BiasAdd/ReadVariableOp*(
_output_shapes
:’’’’’’’’’*
T0*
data_formatNHWC
b
m2_hidden1_1/ReluRelum2_hidden1_1/BiasAdd*(
_output_shapes
:’’’’’’’’’*
T0

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
dropout_3/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_3/cond/dropout/rateConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  >

dropout_3/cond/dropout/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Å
#dropout_3/cond/dropout/Shape/SwitchSwitchm2_hidden1_1/Reludropout_3/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
seed*
T0*
dtype0*
seed2**(
_output_shapes
:’’’’’’’’’
§
)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_3/cond/dropout/addAdddropout_3/cond/dropout/sub%dropout_3/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_3/cond/dropout/truedivRealDiv%dropout_3/cond/dropout/Shape/Switch:1dropout_3/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/truedivdropout_3/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
¹
dropout_3/cond/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden2_1/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
m2_hidden2_1/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
d
m2_hidden2_1/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m2_hidden2_1/random_uniform/RandomUniformRandomUniform!m2_hidden2_1/random_uniform/shape*
T0*
dtype0*
seed2Ę»Ä*
_output_shapes
:	@*
seed

m2_hidden2_1/random_uniform/subSubm2_hidden2_1/random_uniform/maxm2_hidden2_1/random_uniform/min*
_output_shapes
: *
T0

m2_hidden2_1/random_uniform/mulMul)m2_hidden2_1/random_uniform/RandomUniformm2_hidden2_1/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2_1/random_uniformAddm2_hidden2_1/random_uniform/mulm2_hidden2_1/random_uniform/min*
T0*
_output_shapes
:	@
¼
m2_hidden2_1/kernelVarHandleOp*
_output_shapes
: *$
shared_namem2_hidden2_1/kernel*&
_class
loc:@m2_hidden2_1/kernel*
	container *
shape:	@*
dtype0
w
4m2_hidden2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 

m2_hidden2_1/kernel/AssignAssignVariableOpm2_hidden2_1/kernelm2_hidden2_1/random_uniform*&
_class
loc:@m2_hidden2_1/kernel*
dtype0
¤
'm2_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*
dtype0*
_output_shapes
:	@*&
_class
loc:@m2_hidden2_1/kernel
_
m2_hidden2_1/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    
±
m2_hidden2_1/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias*
	container *
shape:@
s
2m2_hidden2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 

m2_hidden2_1/bias/AssignAssignVariableOpm2_hidden2_1/biasm2_hidden2_1/Const*$
_class
loc:@m2_hidden2_1/bias*
dtype0

%m2_hidden2_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias*
dtype0*
_output_shapes
:@
w
"m2_hidden2_1/MatMul/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*
_output_shapes
:	@*
dtype0
Æ
m2_hidden2_1/MatMulMatMuldropout_3/cond/Merge"m2_hidden2_1/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b( 
q
#m2_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@
¢
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’@*
T0*
data_formatNHWC
a
m2_hidden2_1/ReluRelum2_hidden2_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
r
!m2_hidden3_1/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m2_hidden3_1/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
d
m2_hidden3_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *7>*
dtype0
°
)m2_hidden3_1/random_uniform/RandomUniformRandomUniform!m2_hidden3_1/random_uniform/shape*
dtype0*
seed2ć“*
_output_shapes

:@*
seed*
T0

m2_hidden3_1/random_uniform/subSubm2_hidden3_1/random_uniform/maxm2_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden3_1/random_uniform/mulMul)m2_hidden3_1/random_uniform/RandomUniformm2_hidden3_1/random_uniform/sub*
T0*
_output_shapes

:@

m2_hidden3_1/random_uniformAddm2_hidden3_1/random_uniform/mulm2_hidden3_1/random_uniform/min*
T0*
_output_shapes

:@
»
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

m2_hidden3_1/kernel/AssignAssignVariableOpm2_hidden3_1/kernelm2_hidden3_1/random_uniform*&
_class
loc:@m2_hidden3_1/kernel*
dtype0
£
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
±
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

m2_hidden3_1/bias/AssignAssignVariableOpm2_hidden3_1/biasm2_hidden3_1/Const*$
_class
loc:@m2_hidden3_1/bias*
dtype0

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
¬
m2_hidden3_1/MatMulMatMulm2_hidden2_1/Relu"m2_hidden3_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
q
#m2_hidden3_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_1/bias*
dtype0*
_output_shapes
:
¢
m2_hidden3_1/BiasAddBiasAddm2_hidden3_1/MatMul#m2_hidden3_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
m2_hidden3_1/ReluRelum2_hidden3_1/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
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
 *ōōõ¾*
dtype0*
_output_shapes
: 
c
m2_output_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ōōõ>*
dtype0
®
(m2_output_1/random_uniform/RandomUniformRandomUniform m2_output_1/random_uniform/shape*
seed*
T0*
dtype0*
seed2”*
_output_shapes

:


m2_output_1/random_uniform/subSubm2_output_1/random_uniform/maxm2_output_1/random_uniform/min*
T0*
_output_shapes
: 

m2_output_1/random_uniform/mulMul(m2_output_1/random_uniform/RandomUniformm2_output_1/random_uniform/sub*
T0*
_output_shapes

:


m2_output_1/random_uniformAddm2_output_1/random_uniform/mulm2_output_1/random_uniform/min*
_output_shapes

:
*
T0
ø
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

m2_output_1/kernel/AssignAssignVariableOpm2_output_1/kernelm2_output_1/random_uniform*%
_class
loc:@m2_output_1/kernel*
dtype0
 
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

®
m2_output_1/biasVarHandleOp*
_output_shapes
: *!
shared_namem2_output_1/bias*#
_class
loc:@m2_output_1/bias*
	container *
shape:
*
dtype0
q
1m2_output_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/bias*
_output_shapes
: 

m2_output_1/bias/AssignAssignVariableOpm2_output_1/biasm2_output_1/Const*#
_class
loc:@m2_output_1/bias*
dtype0

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

Ŗ
m2_output_1/MatMulMatMulm2_hidden3_1/Relu!m2_output_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’

o
"m2_output_1/BiasAdd/ReadVariableOpReadVariableOpm2_output_1/bias*
dtype0*
_output_shapes
:


m2_output_1/BiasAddBiasAddm2_output_1/MatMul"m2_output_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

e
m2_output_1/SoftmaxSoftmaxm2_output_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


+Adam_2/iterations/Initializer/initial_valueConst*$
_class
loc:@Adam_2/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
­
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

Adam_2/iterations/AssignAssignVariableOpAdam_2/iterations+Adam_2/iterations/Initializer/initial_value*$
_class
loc:@Adam_2/iterations*
dtype0	

%Adam_2/iterations/Read/ReadVariableOpReadVariableOpAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 

.Adam_2/learning_rate/Initializer/initial_valueConst*'
_class
loc:@Adam_2/learning_rate*
valueB
 *o:*
dtype0*
_output_shapes
: 
¶
Adam_2/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
	container *
shape: 
y
5Adam_2/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
«
Adam_2/learning_rate/AssignAssignVariableOpAdam_2/learning_rate.Adam_2/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_2/learning_rate*
dtype0

(Adam_2/learning_rate/Read/ReadVariableOpReadVariableOpAdam_2/learning_rate*
_output_shapes
: *'
_class
loc:@Adam_2/learning_rate*
dtype0

'Adam_2/beta_1/Initializer/initial_valueConst* 
_class
loc:@Adam_2/beta_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
”
Adam_2/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_2/beta_1* 
_class
loc:@Adam_2/beta_1*
	container *
shape: 
k
.Adam_2/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 

Adam_2/beta_1/AssignAssignVariableOpAdam_2/beta_1'Adam_2/beta_1/Initializer/initial_value* 
_class
loc:@Adam_2/beta_1*
dtype0

!Adam_2/beta_1/Read/ReadVariableOpReadVariableOpAdam_2/beta_1*
_output_shapes
: * 
_class
loc:@Adam_2/beta_1*
dtype0

'Adam_2/beta_2/Initializer/initial_valueConst* 
_class
loc:@Adam_2/beta_2*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
”
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

Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value* 
_class
loc:@Adam_2/beta_2*
dtype0

!Adam_2/beta_2/Read/ReadVariableOpReadVariableOpAdam_2/beta_2* 
_class
loc:@Adam_2/beta_2*
dtype0*
_output_shapes
: 

&Adam_2/decay/Initializer/initial_valueConst*
_class
loc:@Adam_2/decay*
valueB
 *    *
dtype0*
_output_shapes
: 

Adam_2/decayVarHandleOp*
shared_nameAdam_2/decay*
_class
loc:@Adam_2/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
i
-Adam_2/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_2/decay*
_output_shapes
: 

Adam_2/decay/AssignAssignVariableOpAdam_2/decay&Adam_2/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam_2/decay

 Adam_2/decay/Read/ReadVariableOpReadVariableOpAdam_2/decay*
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 

m2_output_target_1Placeholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
u
m2_output_sample_weights_1Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
L
Const_6Const*
_output_shapes
: *
valueB
 *    *
dtype0

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

count_2VarHandleOp*
shared_name	count_2*
_class
loc:@count_2*
	container *
shape: *
dtype0*
_output_shapes
: 
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

metrics_2/accuracy/SqueezeSqueezem2_output_target_1*
squeeze_dims

’’’’’’’’’*
T0*#
_output_shapes
:’’’’’’’’’
n
#metrics_2/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
metrics_2/accuracy/ArgMaxArgMaxm2_output_1/Softmax#metrics_2/accuracy/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’

metrics_2/accuracy/CastCastmetrics_2/accuracy/ArgMax*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	*
Truncate( 

metrics_2/accuracy/EqualEqualmetrics_2/accuracy/Squeezemetrics_2/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_2/accuracy/Cast_1Castmetrics_2/accuracy/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’
b
metrics_2/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_2/accuracy/SumSummetrics_2/accuracy/Cast_1metrics_2/accuracy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
k
&metrics_2/accuracy/AssignAddVariableOpAssignAddVariableOptotal_2metrics_2/accuracy/Sum*
dtype0

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

#metrics_2/accuracy/ReadVariableOp_1ReadVariableOpcount_2)^metrics_2/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_2/accuracy/ReadVariableOp_2ReadVariableOptotal_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_2/accuracy/truediv/ReadVariableOpReadVariableOpcount_2"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_2/accuracy/truedivRealDiv#metrics_2/accuracy/ReadVariableOp_2)metrics_2/accuracy/truediv/ReadVariableOp*
_output_shapes
: *
T0
d
metrics_2/accuracy/IdentityIdentitymetrics_2/accuracy/truediv*
T0*
_output_shapes
: 

;loss_2/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ū
9loss_2/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_2/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
Ų
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:’’’’’’’’’

·
9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ż
=loss_2/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_1Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_2/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’

Eloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’
   

?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogEloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ł
_loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ń
}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’


Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_1}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’

Iloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
×
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 

Kloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_2/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


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
loss_2/mulConst_8*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
w
m1_hidden1_input_1Placeholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
r
!m1_hidden1_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
d
m1_hidden1_1/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
d
m1_hidden1_1/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
±
)m1_hidden1_1/random_uniform/RandomUniformRandomUniform!m1_hidden1_1/random_uniform/shape*
T0*
dtype0*
seed2½Ń* 
_output_shapes
:
*
seed

m1_hidden1_1/random_uniform/subSubm1_hidden1_1/random_uniform/maxm1_hidden1_1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden1_1/random_uniform/mulMul)m1_hidden1_1/random_uniform/RandomUniformm1_hidden1_1/random_uniform/sub* 
_output_shapes
:
*
T0

m1_hidden1_1/random_uniformAddm1_hidden1_1/random_uniform/mulm1_hidden1_1/random_uniform/min* 
_output_shapes
:
*
T0
½
m1_hidden1_1/kernelVarHandleOp*
shape:
*
dtype0*
_output_shapes
: *$
shared_namem1_hidden1_1/kernel*&
_class
loc:@m1_hidden1_1/kernel*
	container 
w
4m1_hidden1_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1_1/kernel*
_output_shapes
: 

m1_hidden1_1/kernel/AssignAssignVariableOpm1_hidden1_1/kernelm1_hidden1_1/random_uniform*&
_class
loc:@m1_hidden1_1/kernel*
dtype0
„
'm1_hidden1_1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden1_1/kernel*&
_class
loc:@m1_hidden1_1/kernel*
dtype0* 
_output_shapes
:

a
m1_hidden1_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
²
m1_hidden1_1/biasVarHandleOp*$
_class
loc:@m1_hidden1_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_namem1_hidden1_1/bias
s
2m1_hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden1_1/bias*
_output_shapes
: 

m1_hidden1_1/bias/AssignAssignVariableOpm1_hidden1_1/biasm1_hidden1_1/Const*$
_class
loc:@m1_hidden1_1/bias*
dtype0

%m1_hidden1_1/bias/Read/ReadVariableOpReadVariableOpm1_hidden1_1/bias*$
_class
loc:@m1_hidden1_1/bias*
dtype0*
_output_shapes	
:
x
"m1_hidden1_1/MatMul/ReadVariableOpReadVariableOpm1_hidden1_1/kernel*
dtype0* 
_output_shapes
:

®
m1_hidden1_1/MatMulMatMulm1_hidden1_input_1"m1_hidden1_1/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b( *
T0
r
#m1_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden1_1/bias*
dtype0*
_output_shapes	
:
£
m1_hidden1_1/BiasAddBiasAddm1_hidden1_1/MatMul#m1_hidden1_1/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’*
T0
b
m1_hidden1_1/ReluRelum1_hidden1_1/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’
r
!m1_hidden2_1/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
m1_hidden2_1/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
d
m1_hidden2_1/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m1_hidden2_1/random_uniform/RandomUniformRandomUniform!m1_hidden2_1/random_uniform/shape*
seed2æÅÄ*
_output_shapes
:	@*
seed*
T0*
dtype0

m1_hidden2_1/random_uniform/subSubm1_hidden2_1/random_uniform/maxm1_hidden2_1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden2_1/random_uniform/mulMul)m1_hidden2_1/random_uniform/RandomUniformm1_hidden2_1/random_uniform/sub*
_output_shapes
:	@*
T0

m1_hidden2_1/random_uniformAddm1_hidden2_1/random_uniform/mulm1_hidden2_1/random_uniform/min*
_output_shapes
:	@*
T0
¼
m1_hidden2_1/kernelVarHandleOp*
	container *
shape:	@*
dtype0*
_output_shapes
: *$
shared_namem1_hidden2_1/kernel*&
_class
loc:@m1_hidden2_1/kernel
w
4m1_hidden2_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2_1/kernel*
_output_shapes
: 

m1_hidden2_1/kernel/AssignAssignVariableOpm1_hidden2_1/kernelm1_hidden2_1/random_uniform*
dtype0*&
_class
loc:@m1_hidden2_1/kernel
¤
'm1_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2_1/kernel*
dtype0*
_output_shapes
:	@*&
_class
loc:@m1_hidden2_1/kernel
_
m1_hidden2_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
±
m1_hidden2_1/biasVarHandleOp*
_output_shapes
: *"
shared_namem1_hidden2_1/bias*$
_class
loc:@m1_hidden2_1/bias*
	container *
shape:@*
dtype0
s
2m1_hidden2_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden2_1/bias*
_output_shapes
: 

m1_hidden2_1/bias/AssignAssignVariableOpm1_hidden2_1/biasm1_hidden2_1/Const*$
_class
loc:@m1_hidden2_1/bias*
dtype0

%m1_hidden2_1/bias/Read/ReadVariableOpReadVariableOpm1_hidden2_1/bias*$
_class
loc:@m1_hidden2_1/bias*
dtype0*
_output_shapes
:@
w
"m1_hidden2_1/MatMul/ReadVariableOpReadVariableOpm1_hidden2_1/kernel*
dtype0*
_output_shapes
:	@
¬
m1_hidden2_1/MatMulMatMulm1_hidden1_1/Relu"m1_hidden2_1/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b( *
T0
q
#m1_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2_1/bias*
dtype0*
_output_shapes
:@
¢
m1_hidden2_1/BiasAddBiasAddm1_hidden2_1/MatMul#m1_hidden2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m1_hidden2_1/ReluRelum1_hidden2_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
r
!m1_hidden3_1/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m1_hidden3_1/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
d
m1_hidden3_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *7>*
dtype0
°
)m1_hidden3_1/random_uniform/RandomUniformRandomUniform!m1_hidden3_1/random_uniform/shape*
T0*
dtype0*
seed2ń„*
_output_shapes

:@*
seed

m1_hidden3_1/random_uniform/subSubm1_hidden3_1/random_uniform/maxm1_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden3_1/random_uniform/mulMul)m1_hidden3_1/random_uniform/RandomUniformm1_hidden3_1/random_uniform/sub*
_output_shapes

:@*
T0

m1_hidden3_1/random_uniformAddm1_hidden3_1/random_uniform/mulm1_hidden3_1/random_uniform/min*
T0*
_output_shapes

:@
»
m1_hidden3_1/kernelVarHandleOp*&
_class
loc:@m1_hidden3_1/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: *$
shared_namem1_hidden3_1/kernel
w
4m1_hidden3_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3_1/kernel*
_output_shapes
: 

m1_hidden3_1/kernel/AssignAssignVariableOpm1_hidden3_1/kernelm1_hidden3_1/random_uniform*&
_class
loc:@m1_hidden3_1/kernel*
dtype0
£
'm1_hidden3_1/kernel/Read/ReadVariableOpReadVariableOpm1_hidden3_1/kernel*&
_class
loc:@m1_hidden3_1/kernel*
dtype0*
_output_shapes

:@
_
m1_hidden3_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
±
m1_hidden3_1/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem1_hidden3_1/bias*$
_class
loc:@m1_hidden3_1/bias*
	container *
shape:
s
2m1_hidden3_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3_1/bias*
_output_shapes
: 

m1_hidden3_1/bias/AssignAssignVariableOpm1_hidden3_1/biasm1_hidden3_1/Const*
dtype0*$
_class
loc:@m1_hidden3_1/bias

%m1_hidden3_1/bias/Read/ReadVariableOpReadVariableOpm1_hidden3_1/bias*$
_class
loc:@m1_hidden3_1/bias*
dtype0*
_output_shapes
:
v
"m1_hidden3_1/MatMul/ReadVariableOpReadVariableOpm1_hidden3_1/kernel*
dtype0*
_output_shapes

:@
¬
m1_hidden3_1/MatMulMatMulm1_hidden2_1/Relu"m1_hidden3_1/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( 
q
#m1_hidden3_1/BiasAdd/ReadVariableOpReadVariableOpm1_hidden3_1/bias*
dtype0*
_output_shapes
:
¢
m1_hidden3_1/BiasAddBiasAddm1_hidden3_1/MatMul#m1_hidden3_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
m1_hidden3_1/ReluRelum1_hidden3_1/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
q
 m1_output_1/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
m1_output_1/random_uniform/minConst*
valueB
 *ōōõ¾*
dtype0*
_output_shapes
: 
c
m1_output_1/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
®
(m1_output_1/random_uniform/RandomUniformRandomUniform m1_output_1/random_uniform/shape*
T0*
dtype0*
seed2Õ*
_output_shapes

:
*
seed

m1_output_1/random_uniform/subSubm1_output_1/random_uniform/maxm1_output_1/random_uniform/min*
T0*
_output_shapes
: 

m1_output_1/random_uniform/mulMul(m1_output_1/random_uniform/RandomUniformm1_output_1/random_uniform/sub*
_output_shapes

:
*
T0

m1_output_1/random_uniformAddm1_output_1/random_uniform/mulm1_output_1/random_uniform/min*
T0*
_output_shapes

:

ø
m1_output_1/kernelVarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *#
shared_namem1_output_1/kernel*%
_class
loc:@m1_output_1/kernel
u
3m1_output_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output_1/kernel*
_output_shapes
: 

m1_output_1/kernel/AssignAssignVariableOpm1_output_1/kernelm1_output_1/random_uniform*
dtype0*%
_class
loc:@m1_output_1/kernel
 
&m1_output_1/kernel/Read/ReadVariableOpReadVariableOpm1_output_1/kernel*%
_class
loc:@m1_output_1/kernel*
dtype0*
_output_shapes

:

^
m1_output_1/ConstConst*
dtype0*
_output_shapes
:
*
valueB
*    
®
m1_output_1/biasVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *!
shared_namem1_output_1/bias*#
_class
loc:@m1_output_1/bias
q
1m1_output_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_output_1/bias*
_output_shapes
: 

m1_output_1/bias/AssignAssignVariableOpm1_output_1/biasm1_output_1/Const*#
_class
loc:@m1_output_1/bias*
dtype0

$m1_output_1/bias/Read/ReadVariableOpReadVariableOpm1_output_1/bias*
_output_shapes
:
*#
_class
loc:@m1_output_1/bias*
dtype0
t
!m1_output_1/MatMul/ReadVariableOpReadVariableOpm1_output_1/kernel*
dtype0*
_output_shapes

:

Ŗ
m1_output_1/MatMulMatMulm1_hidden3_1/Relu!m1_output_1/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( *
T0
o
"m1_output_1/BiasAdd/ReadVariableOpReadVariableOpm1_output_1/bias*
dtype0*
_output_shapes
:


m1_output_1/BiasAddBiasAddm1_output_1/MatMul"m1_output_1/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
*
T0
e
m1_output_1/SoftmaxSoftmaxm1_output_1/BiasAdd*'
_output_shapes
:’’’’’’’’’
*
T0

+Adam_3/iterations/Initializer/initial_valueConst*$
_class
loc:@Adam_3/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
­
Adam_3/iterationsVarHandleOp*
	container *
shape: *
dtype0	*
_output_shapes
: *"
shared_nameAdam_3/iterations*$
_class
loc:@Adam_3/iterations
s
2Adam_3/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/iterations*
_output_shapes
: 

Adam_3/iterations/AssignAssignVariableOpAdam_3/iterations+Adam_3/iterations/Initializer/initial_value*
dtype0	*$
_class
loc:@Adam_3/iterations

%Adam_3/iterations/Read/ReadVariableOpReadVariableOpAdam_3/iterations*$
_class
loc:@Adam_3/iterations*
dtype0	*
_output_shapes
: 

.Adam_3/learning_rate/Initializer/initial_valueConst*'
_class
loc:@Adam_3/learning_rate*
valueB
 *o:*
dtype0*
_output_shapes
: 
¶
Adam_3/learning_rateVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *%
shared_nameAdam_3/learning_rate*'
_class
loc:@Adam_3/learning_rate
y
5Adam_3/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/learning_rate*
_output_shapes
: 
«
Adam_3/learning_rate/AssignAssignVariableOpAdam_3/learning_rate.Adam_3/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_3/learning_rate*
dtype0

(Adam_3/learning_rate/Read/ReadVariableOpReadVariableOpAdam_3/learning_rate*
_output_shapes
: *'
_class
loc:@Adam_3/learning_rate*
dtype0

'Adam_3/beta_1/Initializer/initial_valueConst*
_output_shapes
: * 
_class
loc:@Adam_3/beta_1*
valueB
 *fff?*
dtype0
”
Adam_3/beta_1VarHandleOp* 
_class
loc:@Adam_3/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_3/beta_1
k
.Adam_3/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/beta_1*
_output_shapes
: 

Adam_3/beta_1/AssignAssignVariableOpAdam_3/beta_1'Adam_3/beta_1/Initializer/initial_value* 
_class
loc:@Adam_3/beta_1*
dtype0

!Adam_3/beta_1/Read/ReadVariableOpReadVariableOpAdam_3/beta_1*
_output_shapes
: * 
_class
loc:@Adam_3/beta_1*
dtype0

'Adam_3/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_3/beta_2*
valueB
 *w¾?
”
Adam_3/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_3/beta_2* 
_class
loc:@Adam_3/beta_2*
	container *
shape: 
k
.Adam_3/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/beta_2*
_output_shapes
: 

Adam_3/beta_2/AssignAssignVariableOpAdam_3/beta_2'Adam_3/beta_2/Initializer/initial_value* 
_class
loc:@Adam_3/beta_2*
dtype0

!Adam_3/beta_2/Read/ReadVariableOpReadVariableOpAdam_3/beta_2* 
_class
loc:@Adam_3/beta_2*
dtype0*
_output_shapes
: 

&Adam_3/decay/Initializer/initial_valueConst*
_class
loc:@Adam_3/decay*
valueB
 *    *
dtype0*
_output_shapes
: 

Adam_3/decayVarHandleOp*
shared_nameAdam_3/decay*
_class
loc:@Adam_3/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
i
-Adam_3/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_3/decay*
_output_shapes
: 

Adam_3/decay/AssignAssignVariableOpAdam_3/decay&Adam_3/decay/Initializer/initial_value*
_class
loc:@Adam_3/decay*
dtype0

 Adam_3/decay/Read/ReadVariableOpReadVariableOpAdam_3/decay*
_class
loc:@Adam_3/decay*
dtype0*
_output_shapes
: 

m1_output_target_1Placeholder*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0
u
m1_output_sample_weights_1Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
L
Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 

total_3VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	total_3*
_class
loc:@total_3
_
(total_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_3*
_output_shapes
: 
]
total_3/AssignAssignVariableOptotal_3Const_9*
_class
loc:@total_3*
dtype0
w
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_class
loc:@total_3*
dtype0*
_output_shapes
: 
M
Const_10Const*
valueB
 *    *
dtype0*
_output_shapes
: 

count_3VarHandleOp*
shared_name	count_3*
_class
loc:@count_3*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(count_3/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_3*
_output_shapes
: 
^
count_3/AssignAssignVariableOpcount_3Const_10*
_class
loc:@count_3*
dtype0
w
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
_class
loc:@count_3*
dtype0

metrics_3/accuracy/SqueezeSqueezem1_output_target_1*
squeeze_dims

’’’’’’’’’*
T0*#
_output_shapes
:’’’’’’’’’
n
#metrics_3/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
metrics_3/accuracy/ArgMaxArgMaxm1_output_1/Softmax#metrics_3/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0

metrics_3/accuracy/CastCastmetrics_3/accuracy/ArgMax*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’

metrics_3/accuracy/EqualEqualmetrics_3/accuracy/Squeezemetrics_3/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_3/accuracy/Cast_1Castmetrics_3/accuracy/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’
b
metrics_3/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_3/accuracy/SumSummetrics_3/accuracy/Cast_1metrics_3/accuracy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
k
&metrics_3/accuracy/AssignAddVariableOpAssignAddVariableOptotal_3metrics_3/accuracy/Sum*
dtype0

!metrics_3/accuracy/ReadVariableOpReadVariableOptotal_3'^metrics_3/accuracy/AssignAddVariableOp*
_output_shapes
: *
dtype0
k
metrics_3/accuracy/SizeSizemetrics_3/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_3/accuracy/Cast_2Castmetrics_3/accuracy/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
p
(metrics_3/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_3metrics_3/accuracy/Cast_2*
dtype0

#metrics_3/accuracy/ReadVariableOp_1ReadVariableOpcount_3)^metrics_3/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_3/accuracy/ReadVariableOp_2ReadVariableOptotal_3"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_3/accuracy/truediv/ReadVariableOpReadVariableOpcount_3"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_3/accuracy/truedivRealDiv#metrics_3/accuracy/ReadVariableOp_2)metrics_3/accuracy/truediv/ReadVariableOp*
_output_shapes
: *
T0
d
metrics_3/accuracy/IdentityIdentitymetrics_3/accuracy/truediv*
T0*
_output_shapes
: 

;loss_3/m1_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_3/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ū
9loss_3/m1_output_loss/sparse_categorical_crossentropy/subSub;loss_3/m1_output_loss/sparse_categorical_crossentropy/sub/x;loss_3/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ų
Kloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output_1/Softmax9loss_3/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_3/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
·
9loss_3/m1_output_loss/sparse_categorical_crossentropy/LogLogCloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_3/m1_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ż
=loss_3/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_target_1Closs_3/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_3/m1_output_loss/sparse_categorical_crossentropy/CastCast=loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’

Eloss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
_output_shapes
:*
valueB"’’’’
   *
dtype0

?loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_3/m1_output_loss/sparse_categorical_crossentropy/LogEloss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0
Ł
_loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_3/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
ń
}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_3/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’


Gloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights_1}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’

Iloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
×
Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 

Kloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
Q
loss_3/mul/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0


loss_3/mulMulloss_3/mul/xKloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
K
Const_11Const*
_output_shapes
: *
valueB *
dtype0
b
Mean_3Mean
loss_3/mulConst_11*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
t
dropout_4_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

dropout_4/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
_output_shapes
: : *
T0

]
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
T0
*
_output_shapes
: 
c
dropout_4/cond/pred_idIdentitydropout_1/keras_learning_phase*
_output_shapes
: *
T0

z
dropout_4/cond/dropout/rateConst^dropout_4/cond/switch_t*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 

dropout_4/cond/dropout/ShapeShape%dropout_4/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_4/cond/dropout/Shape/SwitchSwitchdropout_4_inputdropout_4/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_4_input
{
dropout_4/cond/dropout/sub/xConst^dropout_4/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_4/cond/dropout/subSubdropout_4/cond/dropout/sub/xdropout_4/cond/dropout/rate*
_output_shapes
: *
T0

)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
¼
3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
seed*
T0*
dtype0*
seed2**(
_output_shapes
:’’’’’’’’’
§
)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/dropout/addAdddropout_4/cond/dropout/sub%dropout_4/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0

dropout_4/cond/dropout/truedivRealDiv%dropout_4/cond/dropout/Shape/Switch:1dropout_4/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/truedivdropout_4/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
µ
dropout_4/cond/Switch_1Switchdropout_4_inputdropout_4/cond/pred_id*
T0*"
_class
loc:@dropout_4_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden1_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
d
m2_hidden1_2/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *¬\1½
d
m2_hidden1_2/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
²
)m2_hidden1_2/random_uniform/RandomUniformRandomUniform!m2_hidden1_2/random_uniform/shape*
dtype0*
seed2öų* 
_output_shapes
:
*
seed*
T0

m2_hidden1_2/random_uniform/subSubm2_hidden1_2/random_uniform/maxm2_hidden1_2/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden1_2/random_uniform/mulMul)m2_hidden1_2/random_uniform/RandomUniformm2_hidden1_2/random_uniform/sub* 
_output_shapes
:
*
T0

m2_hidden1_2/random_uniformAddm2_hidden1_2/random_uniform/mulm2_hidden1_2/random_uniform/min*
T0* 
_output_shapes
:

½
m2_hidden1_2/kernelVarHandleOp*$
shared_namem2_hidden1_2/kernel*&
_class
loc:@m2_hidden1_2/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
w
4m2_hidden1_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_2/kernel*
_output_shapes
: 

m2_hidden1_2/kernel/AssignAssignVariableOpm2_hidden1_2/kernelm2_hidden1_2/random_uniform*&
_class
loc:@m2_hidden1_2/kernel*
dtype0
„
'm2_hidden1_2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_2/kernel*&
_class
loc:@m2_hidden1_2/kernel*
dtype0* 
_output_shapes
:

a
m2_hidden1_2/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
²
m2_hidden1_2/biasVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_2/bias*$
_class
loc:@m2_hidden1_2/bias*
	container *
shape:
s
2m2_hidden1_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_2/bias*
_output_shapes
: 

m2_hidden1_2/bias/AssignAssignVariableOpm2_hidden1_2/biasm2_hidden1_2/Const*$
_class
loc:@m2_hidden1_2/bias*
dtype0

%m2_hidden1_2/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_2/bias*$
_class
loc:@m2_hidden1_2/bias*
dtype0*
_output_shapes	
:
x
"m2_hidden1_2/MatMul/ReadVariableOpReadVariableOpm2_hidden1_2/kernel*
dtype0* 
_output_shapes
:

°
m2_hidden1_2/MatMulMatMuldropout_4/cond/Merge"m2_hidden1_2/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b( 
r
#m2_hidden1_2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_2/bias*
dtype0*
_output_shapes	
:
£
m2_hidden1_2/BiasAddBiasAddm2_hidden1_2/MatMul#m2_hidden1_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
b
m2_hidden1_2/ReluRelum2_hidden1_2/BiasAdd*(
_output_shapes
:’’’’’’’’’*
T0
r
!m2_hidden2_2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
d
m2_hidden2_2/random_uniform/minConst*
valueB
 *ó5¾*
dtype0*
_output_shapes
: 
d
m2_hidden2_2/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m2_hidden2_2/random_uniform/RandomUniformRandomUniform!m2_hidden2_2/random_uniform/shape*
T0*
dtype0*
seed2ėØ·*
_output_shapes
:	@*
seed

m2_hidden2_2/random_uniform/subSubm2_hidden2_2/random_uniform/maxm2_hidden2_2/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden2_2/random_uniform/mulMul)m2_hidden2_2/random_uniform/RandomUniformm2_hidden2_2/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2_2/random_uniformAddm2_hidden2_2/random_uniform/mulm2_hidden2_2/random_uniform/min*
T0*
_output_shapes
:	@
¼
m2_hidden2_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden2_2/kernel*&
_class
loc:@m2_hidden2_2/kernel*
	container *
shape:	@
w
4m2_hidden2_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_2/kernel*
_output_shapes
: 

m2_hidden2_2/kernel/AssignAssignVariableOpm2_hidden2_2/kernelm2_hidden2_2/random_uniform*&
_class
loc:@m2_hidden2_2/kernel*
dtype0
¤
'm2_hidden2_2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_2/kernel*&
_class
loc:@m2_hidden2_2/kernel*
dtype0*
_output_shapes
:	@
_
m2_hidden2_2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
±
m2_hidden2_2/biasVarHandleOp*$
_class
loc:@m2_hidden2_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_2/bias
s
2m2_hidden2_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_2/bias*
_output_shapes
: 

m2_hidden2_2/bias/AssignAssignVariableOpm2_hidden2_2/biasm2_hidden2_2/Const*$
_class
loc:@m2_hidden2_2/bias*
dtype0

%m2_hidden2_2/bias/Read/ReadVariableOpReadVariableOpm2_hidden2_2/bias*$
_class
loc:@m2_hidden2_2/bias*
dtype0*
_output_shapes
:@
w
"m2_hidden2_2/MatMul/ReadVariableOpReadVariableOpm2_hidden2_2/kernel*
dtype0*
_output_shapes
:	@
¬
m2_hidden2_2/MatMulMatMulm2_hidden1_2/Relu"m2_hidden2_2/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b( 
q
#m2_hidden2_2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_2/bias*
dtype0*
_output_shapes
:@
¢
m2_hidden2_2/BiasAddBiasAddm2_hidden2_2/MatMul#m2_hidden2_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m2_hidden2_2/ReluRelum2_hidden2_2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
r
!m2_hidden3_2/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m2_hidden3_2/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
d
m2_hidden3_2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *7>
°
)m2_hidden3_2/random_uniform/RandomUniformRandomUniform!m2_hidden3_2/random_uniform/shape*
T0*
dtype0*
seed2ļÓß*
_output_shapes

:@*
seed

m2_hidden3_2/random_uniform/subSubm2_hidden3_2/random_uniform/maxm2_hidden3_2/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden3_2/random_uniform/mulMul)m2_hidden3_2/random_uniform/RandomUniformm2_hidden3_2/random_uniform/sub*
T0*
_output_shapes

:@

m2_hidden3_2/random_uniformAddm2_hidden3_2/random_uniform/mulm2_hidden3_2/random_uniform/min*
_output_shapes

:@*
T0
»
m2_hidden3_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden3_2/kernel*&
_class
loc:@m2_hidden3_2/kernel*
	container *
shape
:@
w
4m2_hidden3_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_2/kernel*
_output_shapes
: 

m2_hidden3_2/kernel/AssignAssignVariableOpm2_hidden3_2/kernelm2_hidden3_2/random_uniform*&
_class
loc:@m2_hidden3_2/kernel*
dtype0
£
'm2_hidden3_2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3_2/kernel*&
_class
loc:@m2_hidden3_2/kernel*
dtype0*
_output_shapes

:@
_
m2_hidden3_2/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
±
m2_hidden3_2/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3_2/bias*$
_class
loc:@m2_hidden3_2/bias*
	container 
s
2m2_hidden3_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_2/bias*
_output_shapes
: 

m2_hidden3_2/bias/AssignAssignVariableOpm2_hidden3_2/biasm2_hidden3_2/Const*$
_class
loc:@m2_hidden3_2/bias*
dtype0

%m2_hidden3_2/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_2/bias*$
_class
loc:@m2_hidden3_2/bias*
dtype0*
_output_shapes
:
v
"m2_hidden3_2/MatMul/ReadVariableOpReadVariableOpm2_hidden3_2/kernel*
dtype0*
_output_shapes

:@
¬
m2_hidden3_2/MatMulMatMulm2_hidden2_2/Relu"m2_hidden3_2/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( *
T0
q
#m2_hidden3_2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_2/bias*
dtype0*
_output_shapes
:
¢
m2_hidden3_2/BiasAddBiasAddm2_hidden3_2/MatMul#m2_hidden3_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
m2_hidden3_2/ReluRelum2_hidden3_2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
q
 m2_output_2/random_uniform/shapeConst*
_output_shapes
:*
valueB"   
   *
dtype0
c
m2_output_2/random_uniform/minConst*
valueB
 *ōōõ¾*
dtype0*
_output_shapes
: 
c
m2_output_2/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
®
(m2_output_2/random_uniform/RandomUniformRandomUniform m2_output_2/random_uniform/shape*
T0*
dtype0*
seed2Ķ”*
_output_shapes

:
*
seed

m2_output_2/random_uniform/subSubm2_output_2/random_uniform/maxm2_output_2/random_uniform/min*
T0*
_output_shapes
: 

m2_output_2/random_uniform/mulMul(m2_output_2/random_uniform/RandomUniformm2_output_2/random_uniform/sub*
_output_shapes

:
*
T0

m2_output_2/random_uniformAddm2_output_2/random_uniform/mulm2_output_2/random_uniform/min*
T0*
_output_shapes

:

ø
m2_output_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namem2_output_2/kernel*%
_class
loc:@m2_output_2/kernel*
	container *
shape
:

u
3m2_output_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_2/kernel*
_output_shapes
: 

m2_output_2/kernel/AssignAssignVariableOpm2_output_2/kernelm2_output_2/random_uniform*%
_class
loc:@m2_output_2/kernel*
dtype0
 
&m2_output_2/kernel/Read/ReadVariableOpReadVariableOpm2_output_2/kernel*
_output_shapes

:
*%
_class
loc:@m2_output_2/kernel*
dtype0
^
m2_output_2/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

®
m2_output_2/biasVarHandleOp*#
_class
loc:@m2_output_2/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *!
shared_namem2_output_2/bias
q
1m2_output_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_2/bias*
_output_shapes
: 

m2_output_2/bias/AssignAssignVariableOpm2_output_2/biasm2_output_2/Const*#
_class
loc:@m2_output_2/bias*
dtype0

$m2_output_2/bias/Read/ReadVariableOpReadVariableOpm2_output_2/bias*
dtype0*
_output_shapes
:
*#
_class
loc:@m2_output_2/bias
t
!m2_output_2/MatMul/ReadVariableOpReadVariableOpm2_output_2/kernel*
_output_shapes

:
*
dtype0
Ŗ
m2_output_2/MatMulMatMulm2_hidden3_2/Relu!m2_output_2/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( 
o
"m2_output_2/BiasAdd/ReadVariableOpReadVariableOpm2_output_2/bias*
_output_shapes
:
*
dtype0

m2_output_2/BiasAddBiasAddm2_output_2/MatMul"m2_output_2/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
T0*
data_formatNHWC
e
m2_output_2/SoftmaxSoftmaxm2_output_2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


+Adam_4/iterations/Initializer/initial_valueConst*$
_class
loc:@Adam_4/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
­
Adam_4/iterationsVarHandleOp*
dtype0	*
_output_shapes
: *"
shared_nameAdam_4/iterations*$
_class
loc:@Adam_4/iterations*
	container *
shape: 
s
2Adam_4/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/iterations*
_output_shapes
: 

Adam_4/iterations/AssignAssignVariableOpAdam_4/iterations+Adam_4/iterations/Initializer/initial_value*$
_class
loc:@Adam_4/iterations*
dtype0	

%Adam_4/iterations/Read/ReadVariableOpReadVariableOpAdam_4/iterations*$
_class
loc:@Adam_4/iterations*
dtype0	*
_output_shapes
: 

.Adam_4/learning_rate/Initializer/initial_valueConst*'
_class
loc:@Adam_4/learning_rate*
valueB
 *o:*
dtype0*
_output_shapes
: 
¶
Adam_4/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *%
shared_nameAdam_4/learning_rate*'
_class
loc:@Adam_4/learning_rate*
	container *
shape: 
y
5Adam_4/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/learning_rate*
_output_shapes
: 
«
Adam_4/learning_rate/AssignAssignVariableOpAdam_4/learning_rate.Adam_4/learning_rate/Initializer/initial_value*
dtype0*'
_class
loc:@Adam_4/learning_rate

(Adam_4/learning_rate/Read/ReadVariableOpReadVariableOpAdam_4/learning_rate*'
_class
loc:@Adam_4/learning_rate*
dtype0*
_output_shapes
: 

'Adam_4/beta_1/Initializer/initial_valueConst*
_output_shapes
: * 
_class
loc:@Adam_4/beta_1*
valueB
 *fff?*
dtype0
”
Adam_4/beta_1VarHandleOp* 
_class
loc:@Adam_4/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_4/beta_1
k
.Adam_4/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/beta_1*
_output_shapes
: 

Adam_4/beta_1/AssignAssignVariableOpAdam_4/beta_1'Adam_4/beta_1/Initializer/initial_value* 
_class
loc:@Adam_4/beta_1*
dtype0

!Adam_4/beta_1/Read/ReadVariableOpReadVariableOpAdam_4/beta_1* 
_class
loc:@Adam_4/beta_1*
dtype0*
_output_shapes
: 

'Adam_4/beta_2/Initializer/initial_valueConst*
_output_shapes
: * 
_class
loc:@Adam_4/beta_2*
valueB
 *w¾?*
dtype0
”
Adam_4/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_4/beta_2* 
_class
loc:@Adam_4/beta_2*
	container *
shape: 
k
.Adam_4/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/beta_2*
_output_shapes
: 

Adam_4/beta_2/AssignAssignVariableOpAdam_4/beta_2'Adam_4/beta_2/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_4/beta_2

!Adam_4/beta_2/Read/ReadVariableOpReadVariableOpAdam_4/beta_2* 
_class
loc:@Adam_4/beta_2*
dtype0*
_output_shapes
: 

&Adam_4/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
_class
loc:@Adam_4/decay*
valueB
 *    

Adam_4/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_4/decay*
_class
loc:@Adam_4/decay*
	container *
shape: 
i
-Adam_4/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_4/decay*
_output_shapes
: 

Adam_4/decay/AssignAssignVariableOpAdam_4/decay&Adam_4/decay/Initializer/initial_value*
_class
loc:@Adam_4/decay*
dtype0

 Adam_4/decay/Read/ReadVariableOpReadVariableOpAdam_4/decay*
_class
loc:@Adam_4/decay*
dtype0*
_output_shapes
: 

m2_output_target_2Placeholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
u
m2_output_sample_weights_2Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
M
Const_12Const*
valueB
 *    *
dtype0*
_output_shapes
: 

total_4VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	total_4*
_class
loc:@total_4*
	container 
_
(total_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_4*
_output_shapes
: 
^
total_4/AssignAssignVariableOptotal_4Const_12*
_class
loc:@total_4*
dtype0
w
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_class
loc:@total_4*
dtype0*
_output_shapes
: 
M
Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 

count_4VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_name	count_4*
_class
loc:@count_4*
	container 
_
(count_4/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_4*
_output_shapes
: 
^
count_4/AssignAssignVariableOpcount_4Const_13*
_class
loc:@count_4*
dtype0
w
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_class
loc:@count_4*
dtype0*
_output_shapes
: 

metrics_4/accuracy/SqueezeSqueezem2_output_target_2*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’
n
#metrics_4/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
metrics_4/accuracy/ArgMaxArgMaxm2_output_2/Softmax#metrics_4/accuracy/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0

metrics_4/accuracy/CastCastmetrics_4/accuracy/ArgMax*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	*
Truncate( 

metrics_4/accuracy/EqualEqualmetrics_4/accuracy/Squeezemetrics_4/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_4/accuracy/Cast_1Castmetrics_4/accuracy/Equal*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0

b
metrics_4/accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0

metrics_4/accuracy/SumSummetrics_4/accuracy/Cast_1metrics_4/accuracy/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
k
&metrics_4/accuracy/AssignAddVariableOpAssignAddVariableOptotal_4metrics_4/accuracy/Sum*
dtype0

!metrics_4/accuracy/ReadVariableOpReadVariableOptotal_4'^metrics_4/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_4/accuracy/SizeSizemetrics_4/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_4/accuracy/Cast_2Castmetrics_4/accuracy/Size*

DstT0*
_output_shapes
: *

SrcT0*
Truncate( 
p
(metrics_4/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_4metrics_4/accuracy/Cast_2*
dtype0

#metrics_4/accuracy/ReadVariableOp_1ReadVariableOpcount_4)^metrics_4/accuracy/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 
­
#metrics_4/accuracy/ReadVariableOp_2ReadVariableOptotal_4"^metrics_4/accuracy/ReadVariableOp$^metrics_4/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_4/accuracy/truediv/ReadVariableOpReadVariableOpcount_4"^metrics_4/accuracy/ReadVariableOp$^metrics_4/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_4/accuracy/truedivRealDiv#metrics_4/accuracy/ReadVariableOp_2)metrics_4/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_4/accuracy/IdentityIdentitymetrics_4/accuracy/truediv*
T0*
_output_shapes
: 

;loss_4/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_4/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ū
9loss_4/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_4/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_4/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ų
Kloss_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_2/Softmax9loss_4/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_4/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
·
9loss_4/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_4/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_4/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ż
=loss_4/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_2Closs_4/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_4/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’*

SrcT0

Eloss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_4/m2_output_loss/sparse_categorical_crossentropy/LogEloss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ł
_loss_4/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_4/m2_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ń
}loss_4/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_4/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_4/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’


Gloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_2}loss_4/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’

Iloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
×
Uloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0

Kloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*
_output_shapes
: 
Q
loss_4/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


loss_4/mulMulloss_4/mul/xKloss_4/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
K
Const_14Const*
valueB *
dtype0*
_output_shapes
: 
b
Mean_4Mean
loss_4/mulConst_14*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
t
dropout_5_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

dropout_5/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_5/cond/switch_tIdentitydropout_5/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_5/cond/switch_fIdentitydropout_5/cond/Switch*
_output_shapes
: *
T0

c
dropout_5/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_5/cond/dropout/rateConst^dropout_5/cond/switch_t*
valueB
 *ĶĢL>*
dtype0*
_output_shapes
: 

dropout_5/cond/dropout/ShapeShape%dropout_5/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_5/cond/dropout/Shape/SwitchSwitchdropout_5_inputdropout_5/cond/pred_id*
T0*"
_class
loc:@dropout_5_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_5/cond/dropout/sub/xConst^dropout_5/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_5/cond/dropout/subSubdropout_5/cond/dropout/sub/xdropout_5/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_5/cond/dropout/random_uniform/minConst^dropout_5/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 

)dropout_5/cond/dropout/random_uniform/maxConst^dropout_5/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
¼
3dropout_5/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_5/cond/dropout/Shape*
seed*
T0*
dtype0*
seed2**(
_output_shapes
:’’’’’’’’’
§
)dropout_5/cond/dropout/random_uniform/subSub)dropout_5/cond/dropout/random_uniform/max)dropout_5/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_5/cond/dropout/random_uniform/mulMul3dropout_5/cond/dropout/random_uniform/RandomUniform)dropout_5/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_5/cond/dropout/random_uniformAdd)dropout_5/cond/dropout/random_uniform/mul)dropout_5/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/addAdddropout_5/cond/dropout/sub%dropout_5/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_5/cond/dropout/FloorFloordropout_5/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/truedivRealDiv%dropout_5/cond/dropout/Shape/Switch:1dropout_5/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_5/cond/dropout/mulMuldropout_5/cond/dropout/truedivdropout_5/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
µ
dropout_5/cond/Switch_1Switchdropout_5_inputdropout_5/cond/pred_id*"
_class
loc:@dropout_5_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0

dropout_5/cond/MergeMergedropout_5/cond/Switch_1dropout_5/cond/dropout/mul*
T0*
N**
_output_shapes
:’’’’’’’’’: 
r
!m2_hidden1_3/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
d
m2_hidden1_3/random_uniform/minConst*
valueB
 *¬\1½*
dtype0*
_output_shapes
: 
d
m2_hidden1_3/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
²
)m2_hidden1_3/random_uniform/RandomUniformRandomUniform!m2_hidden1_3/random_uniform/shape*
T0*
dtype0*
seed2“ĢŻ* 
_output_shapes
:
*
seed

m2_hidden1_3/random_uniform/subSubm2_hidden1_3/random_uniform/maxm2_hidden1_3/random_uniform/min*
_output_shapes
: *
T0

m2_hidden1_3/random_uniform/mulMul)m2_hidden1_3/random_uniform/RandomUniformm2_hidden1_3/random_uniform/sub*
T0* 
_output_shapes
:


m2_hidden1_3/random_uniformAddm2_hidden1_3/random_uniform/mulm2_hidden1_3/random_uniform/min*
T0* 
_output_shapes
:

½
m2_hidden1_3/kernelVarHandleOp*$
shared_namem2_hidden1_3/kernel*&
_class
loc:@m2_hidden1_3/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
w
4m2_hidden1_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_3/kernel*
_output_shapes
: 

m2_hidden1_3/kernel/AssignAssignVariableOpm2_hidden1_3/kernelm2_hidden1_3/random_uniform*&
_class
loc:@m2_hidden1_3/kernel*
dtype0
„
'm2_hidden1_3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1_3/kernel*&
_class
loc:@m2_hidden1_3/kernel*
dtype0* 
_output_shapes
:

a
m2_hidden1_3/ConstConst*
dtype0*
_output_shapes	
:*
valueB*    
²
m2_hidden1_3/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_3/bias*$
_class
loc:@m2_hidden1_3/bias*
	container 
s
2m2_hidden1_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_3/bias*
_output_shapes
: 

m2_hidden1_3/bias/AssignAssignVariableOpm2_hidden1_3/biasm2_hidden1_3/Const*
dtype0*$
_class
loc:@m2_hidden1_3/bias

%m2_hidden1_3/bias/Read/ReadVariableOpReadVariableOpm2_hidden1_3/bias*
_output_shapes	
:*$
_class
loc:@m2_hidden1_3/bias*
dtype0
x
"m2_hidden1_3/MatMul/ReadVariableOpReadVariableOpm2_hidden1_3/kernel*
dtype0* 
_output_shapes
:

°
m2_hidden1_3/MatMulMatMuldropout_5/cond/Merge"m2_hidden1_3/MatMul/ReadVariableOp*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b( 
r
#m2_hidden1_3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_3/bias*
dtype0*
_output_shapes	
:
£
m2_hidden1_3/BiasAddBiasAddm2_hidden1_3/MatMul#m2_hidden1_3/BiasAdd/ReadVariableOp*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’*
T0
b
m2_hidden1_3/ReluRelum2_hidden1_3/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/SwitchSwitchdropout_1/keras_learning_phasedropout_1/keras_learning_phase*
T0
*
_output_shapes
: : 
]
dropout_6/cond/switch_tIdentitydropout_6/cond/Switch:1*
_output_shapes
: *
T0

[
dropout_6/cond/switch_fIdentitydropout_6/cond/Switch*
_output_shapes
: *
T0

c
dropout_6/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_6/cond/dropout/rateConst^dropout_6/cond/switch_t*
valueB
 *  >*
dtype0*
_output_shapes
: 

dropout_6/cond/dropout/ShapeShape%dropout_6/cond/dropout/Shape/Switch:1*
out_type0*
_output_shapes
:*
T0
Å
#dropout_6/cond/dropout/Shape/SwitchSwitchm2_hidden1_3/Reludropout_6/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_3/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_6/cond/dropout/sub/xConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
}
dropout_6/cond/dropout/subSubdropout_6/cond/dropout/sub/xdropout_6/cond/dropout/rate*
T0*
_output_shapes
: 

)dropout_6/cond/dropout/random_uniform/minConst^dropout_6/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    

)dropout_6/cond/dropout/random_uniform/maxConst^dropout_6/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_6/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_6/cond/dropout/Shape*
dtype0*
seed2**(
_output_shapes
:’’’’’’’’’*
seed*
T0
§
)dropout_6/cond/dropout/random_uniform/subSub)dropout_6/cond/dropout/random_uniform/max)dropout_6/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_6/cond/dropout/random_uniform/mulMul3dropout_6/cond/dropout/random_uniform/RandomUniform)dropout_6/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_6/cond/dropout/random_uniformAdd)dropout_6/cond/dropout/random_uniform/mul)dropout_6/cond/dropout/random_uniform/min*(
_output_shapes
:’’’’’’’’’*
T0

dropout_6/cond/dropout/addAdddropout_6/cond/dropout/sub%dropout_6/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
t
dropout_6/cond/dropout/FloorFloordropout_6/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/dropout/truedivRealDiv%dropout_6/cond/dropout/Shape/Switch:1dropout_6/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_6/cond/dropout/mulMuldropout_6/cond/dropout/truedivdropout_6/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
¹
dropout_6/cond/Switch_1Switchm2_hidden1_3/Reludropout_6/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_3/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’

dropout_6/cond/MergeMergedropout_6/cond/Switch_1dropout_6/cond/dropout/mul*
N**
_output_shapes
:’’’’’’’’’: *
T0
r
!m2_hidden2_3/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
d
m2_hidden2_3/random_uniform/minConst*
_output_shapes
: *
valueB
 *ó5¾*
dtype0
d
m2_hidden2_3/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
±
)m2_hidden2_3/random_uniform/RandomUniformRandomUniform!m2_hidden2_3/random_uniform/shape*
seed*
T0*
dtype0*
seed2ćē *
_output_shapes
:	@

m2_hidden2_3/random_uniform/subSubm2_hidden2_3/random_uniform/maxm2_hidden2_3/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden2_3/random_uniform/mulMul)m2_hidden2_3/random_uniform/RandomUniformm2_hidden2_3/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2_3/random_uniformAddm2_hidden2_3/random_uniform/mulm2_hidden2_3/random_uniform/min*
T0*
_output_shapes
:	@
¼
m2_hidden2_3/kernelVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namem2_hidden2_3/kernel*&
_class
loc:@m2_hidden2_3/kernel*
	container *
shape:	@
w
4m2_hidden2_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_3/kernel*
_output_shapes
: 

m2_hidden2_3/kernel/AssignAssignVariableOpm2_hidden2_3/kernelm2_hidden2_3/random_uniform*&
_class
loc:@m2_hidden2_3/kernel*
dtype0
¤
'm2_hidden2_3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_3/kernel*&
_class
loc:@m2_hidden2_3/kernel*
dtype0*
_output_shapes
:	@
_
m2_hidden2_3/ConstConst*
dtype0*
_output_shapes
:@*
valueB@*    
±
m2_hidden2_3/biasVarHandleOp*$
_class
loc:@m2_hidden2_3/bias*
	container *
shape:@*
dtype0*
_output_shapes
: *"
shared_namem2_hidden2_3/bias
s
2m2_hidden2_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2_3/bias*
_output_shapes
: 

m2_hidden2_3/bias/AssignAssignVariableOpm2_hidden2_3/biasm2_hidden2_3/Const*$
_class
loc:@m2_hidden2_3/bias*
dtype0

%m2_hidden2_3/bias/Read/ReadVariableOpReadVariableOpm2_hidden2_3/bias*$
_class
loc:@m2_hidden2_3/bias*
dtype0*
_output_shapes
:@
w
"m2_hidden2_3/MatMul/ReadVariableOpReadVariableOpm2_hidden2_3/kernel*
dtype0*
_output_shapes
:	@
Æ
m2_hidden2_3/MatMulMatMuldropout_6/cond/Merge"m2_hidden2_3/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b( *
T0
q
#m2_hidden2_3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_3/bias*
dtype0*
_output_shapes
:@
¢
m2_hidden2_3/BiasAddBiasAddm2_hidden2_3/MatMul#m2_hidden2_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m2_hidden2_3/ReluRelum2_hidden2_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
r
!m2_hidden3_3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
d
m2_hidden3_3/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
d
m2_hidden3_3/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
°
)m2_hidden3_3/random_uniform/RandomUniformRandomUniform!m2_hidden3_3/random_uniform/shape*
seed*
T0*
dtype0*
seed2’¾Ō*
_output_shapes

:@

m2_hidden3_3/random_uniform/subSubm2_hidden3_3/random_uniform/maxm2_hidden3_3/random_uniform/min*
_output_shapes
: *
T0

m2_hidden3_3/random_uniform/mulMul)m2_hidden3_3/random_uniform/RandomUniformm2_hidden3_3/random_uniform/sub*
T0*
_output_shapes

:@

m2_hidden3_3/random_uniformAddm2_hidden3_3/random_uniform/mulm2_hidden3_3/random_uniform/min*
_output_shapes

:@*
T0
»
m2_hidden3_3/kernelVarHandleOp*$
shared_namem2_hidden3_3/kernel*&
_class
loc:@m2_hidden3_3/kernel*
	container *
shape
:@*
dtype0*
_output_shapes
: 
w
4m2_hidden3_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_3/kernel*
_output_shapes
: 

m2_hidden3_3/kernel/AssignAssignVariableOpm2_hidden3_3/kernelm2_hidden3_3/random_uniform*&
_class
loc:@m2_hidden3_3/kernel*
dtype0
£
'm2_hidden3_3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3_3/kernel*
dtype0*
_output_shapes

:@*&
_class
loc:@m2_hidden3_3/kernel
_
m2_hidden3_3/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
±
m2_hidden3_3/biasVarHandleOp*$
_class
loc:@m2_hidden3_3/bias*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden3_3/bias
s
2m2_hidden3_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden3_3/bias*
_output_shapes
: 

m2_hidden3_3/bias/AssignAssignVariableOpm2_hidden3_3/biasm2_hidden3_3/Const*$
_class
loc:@m2_hidden3_3/bias*
dtype0

%m2_hidden3_3/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_3/bias*
_output_shapes
:*$
_class
loc:@m2_hidden3_3/bias*
dtype0
v
"m2_hidden3_3/MatMul/ReadVariableOpReadVariableOpm2_hidden3_3/kernel*
dtype0*
_output_shapes

:@
¬
m2_hidden3_3/MatMulMatMulm2_hidden2_3/Relu"m2_hidden3_3/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( *
T0
q
#m2_hidden3_3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3_3/bias*
dtype0*
_output_shapes
:
¢
m2_hidden3_3/BiasAddBiasAddm2_hidden3_3/MatMul#m2_hidden3_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
m2_hidden3_3/ReluRelum2_hidden3_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
q
 m2_output_3/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
c
m2_output_3/random_uniform/minConst*
valueB
 *ōōõ¾*
dtype0*
_output_shapes
: 
c
m2_output_3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ōōõ>
®
(m2_output_3/random_uniform/RandomUniformRandomUniform m2_output_3/random_uniform/shape*
T0*
dtype0*
seed2Ā*
_output_shapes

:
*
seed

m2_output_3/random_uniform/subSubm2_output_3/random_uniform/maxm2_output_3/random_uniform/min*
T0*
_output_shapes
: 

m2_output_3/random_uniform/mulMul(m2_output_3/random_uniform/RandomUniformm2_output_3/random_uniform/sub*
T0*
_output_shapes

:


m2_output_3/random_uniformAddm2_output_3/random_uniform/mulm2_output_3/random_uniform/min*
_output_shapes

:
*
T0
ø
m2_output_3/kernelVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namem2_output_3/kernel*%
_class
loc:@m2_output_3/kernel*
	container *
shape
:

u
3m2_output_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_3/kernel*
_output_shapes
: 

m2_output_3/kernel/AssignAssignVariableOpm2_output_3/kernelm2_output_3/random_uniform*%
_class
loc:@m2_output_3/kernel*
dtype0
 
&m2_output_3/kernel/Read/ReadVariableOpReadVariableOpm2_output_3/kernel*%
_class
loc:@m2_output_3/kernel*
dtype0*
_output_shapes

:

^
m2_output_3/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

®
m2_output_3/biasVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *!
shared_namem2_output_3/bias*#
_class
loc:@m2_output_3/bias
q
1m2_output_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_3/bias*
_output_shapes
: 

m2_output_3/bias/AssignAssignVariableOpm2_output_3/biasm2_output_3/Const*#
_class
loc:@m2_output_3/bias*
dtype0

$m2_output_3/bias/Read/ReadVariableOpReadVariableOpm2_output_3/bias*#
_class
loc:@m2_output_3/bias*
dtype0*
_output_shapes
:

t
!m2_output_3/MatMul/ReadVariableOpReadVariableOpm2_output_3/kernel*
_output_shapes

:
*
dtype0
Ŗ
m2_output_3/MatMulMatMulm2_hidden3_3/Relu!m2_output_3/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( 
o
"m2_output_3/BiasAdd/ReadVariableOpReadVariableOpm2_output_3/bias*
dtype0*
_output_shapes
:


m2_output_3/BiasAddBiasAddm2_output_3/MatMul"m2_output_3/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
*
T0
e
m2_output_3/SoftmaxSoftmaxm2_output_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


+Adam_5/iterations/Initializer/initial_valueConst*$
_class
loc:@Adam_5/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
­
Adam_5/iterationsVarHandleOp*
shape: *
dtype0	*
_output_shapes
: *"
shared_nameAdam_5/iterations*$
_class
loc:@Adam_5/iterations*
	container 
s
2Adam_5/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/iterations*
_output_shapes
: 

Adam_5/iterations/AssignAssignVariableOpAdam_5/iterations+Adam_5/iterations/Initializer/initial_value*$
_class
loc:@Adam_5/iterations*
dtype0	

%Adam_5/iterations/Read/ReadVariableOpReadVariableOpAdam_5/iterations*
dtype0	*
_output_shapes
: *$
_class
loc:@Adam_5/iterations

.Adam_5/learning_rate/Initializer/initial_valueConst*'
_class
loc:@Adam_5/learning_rate*
valueB
 *o:*
dtype0*
_output_shapes
: 
¶
Adam_5/learning_rateVarHandleOp*
_output_shapes
: *%
shared_nameAdam_5/learning_rate*'
_class
loc:@Adam_5/learning_rate*
	container *
shape: *
dtype0
y
5Adam_5/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/learning_rate*
_output_shapes
: 
«
Adam_5/learning_rate/AssignAssignVariableOpAdam_5/learning_rate.Adam_5/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_5/learning_rate*
dtype0

(Adam_5/learning_rate/Read/ReadVariableOpReadVariableOpAdam_5/learning_rate*'
_class
loc:@Adam_5/learning_rate*
dtype0*
_output_shapes
: 

'Adam_5/beta_1/Initializer/initial_valueConst*
_output_shapes
: * 
_class
loc:@Adam_5/beta_1*
valueB
 *fff?*
dtype0
”
Adam_5/beta_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_5/beta_1* 
_class
loc:@Adam_5/beta_1*
	container *
shape: 
k
.Adam_5/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/beta_1*
_output_shapes
: 

Adam_5/beta_1/AssignAssignVariableOpAdam_5/beta_1'Adam_5/beta_1/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_5/beta_1

!Adam_5/beta_1/Read/ReadVariableOpReadVariableOpAdam_5/beta_1* 
_class
loc:@Adam_5/beta_1*
dtype0*
_output_shapes
: 

'Adam_5/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_5/beta_2*
valueB
 *w¾?
”
Adam_5/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam_5/beta_2* 
_class
loc:@Adam_5/beta_2*
	container *
shape: 
k
.Adam_5/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/beta_2*
_output_shapes
: 

Adam_5/beta_2/AssignAssignVariableOpAdam_5/beta_2'Adam_5/beta_2/Initializer/initial_value* 
_class
loc:@Adam_5/beta_2*
dtype0

!Adam_5/beta_2/Read/ReadVariableOpReadVariableOpAdam_5/beta_2* 
_class
loc:@Adam_5/beta_2*
dtype0*
_output_shapes
: 

&Adam_5/decay/Initializer/initial_valueConst*
_output_shapes
: *
_class
loc:@Adam_5/decay*
valueB
 *    *
dtype0

Adam_5/decayVarHandleOp*
_output_shapes
: *
shared_nameAdam_5/decay*
_class
loc:@Adam_5/decay*
	container *
shape: *
dtype0
i
-Adam_5/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_5/decay*
_output_shapes
: 

Adam_5/decay/AssignAssignVariableOpAdam_5/decay&Adam_5/decay/Initializer/initial_value*
_class
loc:@Adam_5/decay*
dtype0

 Adam_5/decay/Read/ReadVariableOpReadVariableOpAdam_5/decay*
_class
loc:@Adam_5/decay*
dtype0*
_output_shapes
: 

m2_output_target_3Placeholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
u
m2_output_sample_weights_3Placeholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
M
Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 

total_5VarHandleOp*
shared_name	total_5*
_class
loc:@total_5*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(total_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_5*
_output_shapes
: 
^
total_5/AssignAssignVariableOptotal_5Const_15*
_class
loc:@total_5*
dtype0
w
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_class
loc:@total_5*
dtype0*
_output_shapes
: 
M
Const_16Const*
valueB
 *    *
dtype0*
_output_shapes
: 

count_5VarHandleOp*
shared_name	count_5*
_class
loc:@count_5*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(count_5/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_5*
_output_shapes
: 
^
count_5/AssignAssignVariableOpcount_5Const_16*
_class
loc:@count_5*
dtype0
w
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_class
loc:@count_5*
dtype0*
_output_shapes
: 

metrics_5/accuracy/SqueezeSqueezem2_output_target_3*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’*
T0
n
#metrics_5/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
metrics_5/accuracy/ArgMaxArgMaxm2_output_3/Softmax#metrics_5/accuracy/ArgMax/dimension*#
_output_shapes
:’’’’’’’’’*

Tidx0*
T0*
output_type0	

metrics_5/accuracy/CastCastmetrics_5/accuracy/ArgMax*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	*
Truncate( 

metrics_5/accuracy/EqualEqualmetrics_5/accuracy/Squeezemetrics_5/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_5/accuracy/Cast_1Castmetrics_5/accuracy/Equal*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0
*
Truncate( 
b
metrics_5/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_5/accuracy/SumSummetrics_5/accuracy/Cast_1metrics_5/accuracy/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
k
&metrics_5/accuracy/AssignAddVariableOpAssignAddVariableOptotal_5metrics_5/accuracy/Sum*
dtype0

!metrics_5/accuracy/ReadVariableOpReadVariableOptotal_5'^metrics_5/accuracy/AssignAddVariableOp*
dtype0*
_output_shapes
: 
k
metrics_5/accuracy/SizeSizemetrics_5/accuracy/Cast_1*
T0*
out_type0*
_output_shapes
: 
z
metrics_5/accuracy/Cast_2Castmetrics_5/accuracy/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
p
(metrics_5/accuracy/AssignAddVariableOp_1AssignAddVariableOpcount_5metrics_5/accuracy/Cast_2*
dtype0

#metrics_5/accuracy/ReadVariableOp_1ReadVariableOpcount_5)^metrics_5/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
­
#metrics_5/accuracy/ReadVariableOp_2ReadVariableOptotal_5"^metrics_5/accuracy/ReadVariableOp$^metrics_5/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 
³
)metrics_5/accuracy/truediv/ReadVariableOpReadVariableOpcount_5"^metrics_5/accuracy/ReadVariableOp$^metrics_5/accuracy/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_5/accuracy/truedivRealDiv#metrics_5/accuracy/ReadVariableOp_2)metrics_5/accuracy/truediv/ReadVariableOp*
T0*
_output_shapes
: 
d
metrics_5/accuracy/IdentityIdentitymetrics_5/accuracy/truediv*
T0*
_output_shapes
: 

;loss_5/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 

;loss_5/m2_output_loss/sparse_categorical_crossentropy/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ū
9loss_5/m2_output_loss/sparse_categorical_crossentropy/subSub;loss_5/m2_output_loss/sparse_categorical_crossentropy/sub/x;loss_5/m2_output_loss/sparse_categorical_crossentropy/Const*
_output_shapes
: *
T0
Ų
Kloss_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_3/Softmax9loss_5/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_5/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:’’’’’’’’’

·
9loss_5/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_5/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’


Closs_5/m2_output_loss/sparse_categorical_crossentropy/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ż
=loss_5/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_3Closs_5/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ī
:loss_5/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’

Eloss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_5/m2_output_loss/sparse_categorical_crossentropy/LogEloss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ł
_loss_5/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_5/m2_output_loss/sparse_categorical_crossentropy/Cast*
out_type0*
_output_shapes
:*
T0	
ń
}loss_5/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_5/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_5/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’


Gloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights_3}loss_5/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’

Iloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
×
Uloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
ō
Uloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

DstT0*
_output_shapes
: *

SrcT0*
Truncate( 

Kloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
Q
loss_5/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 


loss_5/mulMulloss_5/mul/xKloss_5/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
K
Const_17Const*
dtype0*
_output_shapes
: *
valueB 
b
Mean_5Mean
loss_5/mulConst_17*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
}
training_2/Adam/gradients/ShapeConst*
_class
loc:@Mean_3*
valueB *
dtype0*
_output_shapes
: 

#training_2/Adam/gradients/grad_ys_0Const*
_class
loc:@Mean_3*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
training_2/Adam/gradients/FillFilltraining_2/Adam/gradients/Shape#training_2/Adam/gradients/grad_ys_0*
T0*
_class
loc:@Mean_3*

index_type0*
_output_shapes
: 

3training_2/Adam/gradients/Mean_3_grad/Reshape/shapeConst*
_class
loc:@Mean_3*
valueB *
dtype0*
_output_shapes
: 
×
-training_2/Adam/gradients/Mean_3_grad/ReshapeReshapetraining_2/Adam/gradients/Fill3training_2/Adam/gradients/Mean_3_grad/Reshape/shape*
T0*
_class
loc:@Mean_3*
Tshape0*
_output_shapes
: 

+training_2/Adam/gradients/Mean_3_grad/ConstConst*
_class
loc:@Mean_3*
valueB *
dtype0*
_output_shapes
: 
Ü
*training_2/Adam/gradients/Mean_3_grad/TileTile-training_2/Adam/gradients/Mean_3_grad/Reshape+training_2/Adam/gradients/Mean_3_grad/Const*
_output_shapes
: *

Tmultiples0*
T0*
_class
loc:@Mean_3

-training_2/Adam/gradients/Mean_3_grad/Const_1Const*
dtype0*
_output_shapes
: *
_class
loc:@Mean_3*
valueB
 *  ?
Ļ
-training_2/Adam/gradients/Mean_3_grad/truedivRealDiv*training_2/Adam/gradients/Mean_3_grad/Tile-training_2/Adam/gradients/Mean_3_grad/Const_1*
_output_shapes
: *
T0*
_class
loc:@Mean_3
š
-training_2/Adam/gradients/loss_3/mul_grad/MulMul-training_2/Adam/gradients/Mean_3_grad/truedivKloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_3/mul*
_output_shapes
: 
³
/training_2/Adam/gradients/loss_3/mul_grad/Mul_1Mul-training_2/Adam/gradients/Mean_3_grad/truedivloss_3/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss_3/mul

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 

rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 

training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_2/Adam/gradients/loss_3/mul_grad/Mul_1Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
ī
rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
æ
ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Ē
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Ķ
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_2/Adam/gradients/loss_3/mul_grad/Mul_1ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
ō
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 

ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0
ņ
ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0*
_output_shapes
:
Ļ
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0*
_output_shapes
:
ķ
ktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’*

Tmultiples0
¢
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights_1*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:*
T0

|training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ē
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
÷
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
ė
ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’

ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm1_output_sample_weights_1ktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ż
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
ń
ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*Z
_classP
NLloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’
ś
$training_2/Adam/gradients/zeros_like	ZerosLikeloss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*
T0
Ą
¬training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()

«training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
’’’’’’’’’
Ŗ
§training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1«training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
É
 training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul§training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims¬training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
±
dtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_3/m1_output_loss/sparse_categorical_crossentropy/Log*
T0*R
_classH
FDloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0*
_output_shapes
:

ftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*R
_classH
FDloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0*'
_output_shapes
:’’’’’’’’’


ctraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

°
\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*L
_classB
@>loc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ė
htraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:

jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
Ž
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
č
htraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:’’’’’’’’’


otraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_3/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ü
xtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
¶
itraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
ø
ktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
ź
ftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
ß
jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*'
_output_shapes
:’’’’’’’’’
*
T0
š
htraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
Ō
ltraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*V
_classL
JHloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0
£
ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem1_output_1/Softmax*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:

rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 
ü
rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:

vtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0*'
_output_shapes
:’’’’’’’’’
*
T0
ć
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output_1/Softmax9loss_3/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
į
qtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ć
straining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

ntraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Selecttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
’
rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0

ptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1training_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
ō
ttraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0
 
6training_2/Adam/gradients/m1_output_1/Softmax_grad/mulMulrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output_1/Softmax*
T0*&
_class
loc:@m1_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

»
Htraining_2/Adam/gradients/m1_output_1/Softmax_grad/Sum/reduction_indicesConst*&
_class
loc:@m1_output_1/Softmax*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
¶
6training_2/Adam/gradients/m1_output_1/Softmax_grad/SumSum6training_2/Adam/gradients/m1_output_1/Softmax_grad/mulHtraining_2/Adam/gradients/m1_output_1/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*&
_class
loc:@m1_output_1/Softmax*'
_output_shapes
:’’’’’’’’’
Ć
6training_2/Adam/gradients/m1_output_1/Softmax_grad/subSubrtraining_2/Adam/gradients/loss_3/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape6training_2/Adam/gradients/m1_output_1/Softmax_grad/Sum*
T0*&
_class
loc:@m1_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

ę
8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1Mul6training_2/Adam/gradients/m1_output_1/Softmax_grad/subm1_output_1/Softmax*
T0*&
_class
loc:@m1_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

ė
>training_2/Adam/gradients/m1_output_1/BiasAdd_grad/BiasAddGradBiasAddGrad8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1*
T0*&
_class
loc:@m1_output_1/BiasAdd*
data_formatNHWC*
_output_shapes
:


8training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMulMatMul8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1!m1_output_1/MatMul/ReadVariableOp*
T0*%
_class
loc:@m1_output_1/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b(

:training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMul_1MatMulm1_hidden3_1/Relu8training_2/Adam/gradients/m1_output_1/Softmax_grad/mul_1*
transpose_b( *
T0*%
_class
loc:@m1_output_1/MatMul*
transpose_a(*
_output_shapes

:

ź
9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGradReluGrad8training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMulm1_hidden3_1/Relu*
T0*$
_class
loc:@m1_hidden3_1/Relu*'
_output_shapes
:’’’’’’’’’
ī
?training_2/Adam/gradients/m1_hidden3_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGrad*
_output_shapes
:*
T0*'
_class
loc:@m1_hidden3_1/BiasAdd*
data_formatNHWC
¢
9training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGrad"m1_hidden3_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m1_hidden3_1/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b(

;training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMul_1MatMulm1_hidden2_1/Relu9training_2/Adam/gradients/m1_hidden3_1/Relu_grad/ReluGrad*
T0*&
_class
loc:@m1_hidden3_1/MatMul*
transpose_a(*
_output_shapes

:@*
transpose_b( 
ė
9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGradReluGrad9training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMulm1_hidden2_1/Relu*
T0*$
_class
loc:@m1_hidden2_1/Relu*'
_output_shapes
:’’’’’’’’’@
ī
?training_2/Adam/gradients/m1_hidden2_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@m1_hidden2_1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
£
9training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGrad"m1_hidden2_1/MatMul/ReadVariableOp*
transpose_b(*
T0*&
_class
loc:@m1_hidden2_1/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’

;training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMul_1MatMulm1_hidden1_1/Relu9training_2/Adam/gradients/m1_hidden2_1/Relu_grad/ReluGrad*&
_class
loc:@m1_hidden2_1/MatMul*
transpose_a(*
_output_shapes
:	@*
transpose_b( *
T0
ģ
9training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGradReluGrad9training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMulm1_hidden1_1/Relu*
T0*$
_class
loc:@m1_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
ļ
?training_2/Adam/gradients/m1_hidden1_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@m1_hidden1_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
£
9training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGrad"m1_hidden1_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m1_hidden1_1/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(

;training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMul_1MatMulm1_hidden1_input_19training_2/Adam/gradients/m1_hidden1_1/Relu_grad/ReluGrad*
transpose_a(* 
_output_shapes
:
*
transpose_b( *
T0*&
_class
loc:@m1_hidden1_1/MatMul
W
training_2/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
q
#training_2/Adam/AssignAddVariableOpAssignAddVariableOpAdam_3/iterationstraining_2/Adam/Const*
dtype0	

training_2/Adam/ReadVariableOpReadVariableOpAdam_3/iterations$^training_2/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_2/Adam/Cast/ReadVariableOpReadVariableOpAdam_3/iterations*
dtype0	*
_output_shapes
: 

training_2/Adam/CastCast#training_2/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
Z
training_2/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
h
training_2/Adam/addAddtraining_2/Adam/Casttraining_2/Adam/add/y*
T0*
_output_shapes
: 
h
"training_2/Adam/Pow/ReadVariableOpReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
t
training_2/Adam/PowPow"training_2/Adam/Pow/ReadVariableOptraining_2/Adam/add*
T0*
_output_shapes
: 
Z
training_2/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training_2/Adam/subSubtraining_2/Adam/sub/xtraining_2/Adam/Pow*
T0*
_output_shapes
: 
\
training_2/Adam/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
\
training_2/Adam/Const_2Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training_2/Adam/clip_by_value/MinimumMinimumtraining_2/Adam/subtraining_2/Adam/Const_2*
T0*
_output_shapes
: 

training_2/Adam/clip_by_valueMaximum%training_2/Adam/clip_by_value/Minimumtraining_2/Adam/Const_1*
T0*
_output_shapes
: 
\
training_2/Adam/SqrtSqrttraining_2/Adam/clip_by_value*
_output_shapes
: *
T0
j
$training_2/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
x
training_2/Adam/Pow_1Pow$training_2/Adam/Pow_1/ReadVariableOptraining_2/Adam/add*
_output_shapes
: *
T0
\
training_2/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
m
training_2/Adam/sub_1Subtraining_2/Adam/sub_1/xtraining_2/Adam/Pow_1*
T0*
_output_shapes
: 
p
training_2/Adam/truedivRealDivtraining_2/Adam/Sqrttraining_2/Adam/sub_1*
_output_shapes
: *
T0
m
 training_2/Adam/ReadVariableOp_1ReadVariableOpAdam_3/learning_rate*
dtype0*
_output_shapes
: 
v
training_2/Adam/mulMul training_2/Adam/ReadVariableOp_1training_2/Adam/truediv*
T0*
_output_shapes
: 
t
#training_2/Adam/m_0/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
^
training_2/Adam/m_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_2/Adam/m_0Fill#training_2/Adam/m_0/shape_as_tensortraining_2/Adam/m_0/Const*
T0*

index_type0* 
_output_shapes
:

Ć
training_2/Adam/m_0_1VarHandleOp*(
_class
loc:@training_2/Adam/m_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_0_1
{
6training_2/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_0_1*
_output_shapes
: 

training_2/Adam/m_0_1/AssignAssignVariableOptraining_2/Adam/m_0_1training_2/Adam/m_0*(
_class
loc:@training_2/Adam/m_0_1*
dtype0
«
)training_2/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_0_1*(
_class
loc:@training_2/Adam/m_0_1*
dtype0* 
_output_shapes
:

b
training_2/Adam/m_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_2/Adam/m_1_1VarHandleOp*&
shared_nametraining_2/Adam/m_1_1*(
_class
loc:@training_2/Adam/m_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
{
6training_2/Adam/m_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_1_1*
_output_shapes
: 

training_2/Adam/m_1_1/AssignAssignVariableOptraining_2/Adam/m_1_1training_2/Adam/m_1*
dtype0*(
_class
loc:@training_2/Adam/m_1_1
¦
)training_2/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_1_1*(
_class
loc:@training_2/Adam/m_1_1*
dtype0*
_output_shapes	
:
t
#training_2/Adam/m_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   
^
training_2/Adam/m_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/m_2Fill#training_2/Adam/m_2/shape_as_tensortraining_2/Adam/m_2/Const*
_output_shapes
:	@*
T0*

index_type0
Ā
training_2/Adam/m_2_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_2_1*(
_class
loc:@training_2/Adam/m_2_1*
	container *
shape:	@
{
6training_2/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_2_1*
_output_shapes
: 

training_2/Adam/m_2_1/AssignAssignVariableOptraining_2/Adam/m_2_1training_2/Adam/m_2*(
_class
loc:@training_2/Adam/m_2_1*
dtype0
Ŗ
)training_2/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_2_1*(
_class
loc:@training_2/Adam/m_2_1*
dtype0*
_output_shapes
:	@
`
training_2/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
training_2/Adam/m_3_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_3_1*(
_class
loc:@training_2/Adam/m_3_1*
	container *
shape:@
{
6training_2/Adam/m_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_3_1*
_output_shapes
: 

training_2/Adam/m_3_1/AssignAssignVariableOptraining_2/Adam/m_3_1training_2/Adam/m_3*(
_class
loc:@training_2/Adam/m_3_1*
dtype0
„
)training_2/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_3_1*(
_class
loc:@training_2/Adam/m_3_1*
dtype0*
_output_shapes
:@
t
#training_2/Adam/m_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_2/Adam/m_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/m_4Fill#training_2/Adam/m_4/shape_as_tensortraining_2/Adam/m_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
training_2/Adam/m_4_1VarHandleOp*(
_class
loc:@training_2/Adam/m_4_1*
	container *
shape
:@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_4_1
{
6training_2/Adam/m_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_4_1*
_output_shapes
: 

training_2/Adam/m_4_1/AssignAssignVariableOptraining_2/Adam/m_4_1training_2/Adam/m_4*
dtype0*(
_class
loc:@training_2/Adam/m_4_1
©
)training_2/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_4_1*(
_class
loc:@training_2/Adam/m_4_1*
dtype0*
_output_shapes

:@
`
training_2/Adam/m_5Const*
_output_shapes
:*
valueB*    *
dtype0
½
training_2/Adam/m_5_1VarHandleOp*(
_class
loc:@training_2/Adam/m_5_1*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_5_1
{
6training_2/Adam/m_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_5_1*
_output_shapes
: 

training_2/Adam/m_5_1/AssignAssignVariableOptraining_2/Adam/m_5_1training_2/Adam/m_5*(
_class
loc:@training_2/Adam/m_5_1*
dtype0
„
)training_2/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_5_1*
dtype0*
_output_shapes
:*(
_class
loc:@training_2/Adam/m_5_1
h
training_2/Adam/m_6Const*
_output_shapes

:
*
valueB
*    *
dtype0
Į
training_2/Adam/m_6_1VarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_6_1*(
_class
loc:@training_2/Adam/m_6_1*
	container 
{
6training_2/Adam/m_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_6_1*
_output_shapes
: 

training_2/Adam/m_6_1/AssignAssignVariableOptraining_2/Adam/m_6_1training_2/Adam/m_6*(
_class
loc:@training_2/Adam/m_6_1*
dtype0
©
)training_2/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_6_1*(
_class
loc:@training_2/Adam/m_6_1*
dtype0*
_output_shapes

:

`
training_2/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

½
training_2/Adam/m_7_1VarHandleOp*(
_class
loc:@training_2/Adam/m_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_7_1
{
6training_2/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_7_1*
_output_shapes
: 

training_2/Adam/m_7_1/AssignAssignVariableOptraining_2/Adam/m_7_1training_2/Adam/m_7*(
_class
loc:@training_2/Adam/m_7_1*
dtype0
„
)training_2/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_7_1*(
_class
loc:@training_2/Adam/m_7_1*
dtype0*
_output_shapes
:

t
#training_2/Adam/v_0/shape_as_tensorConst*
valueB"      *
dtype0*
_output_shapes
:
^
training_2/Adam/v_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/v_0Fill#training_2/Adam/v_0/shape_as_tensortraining_2/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:

Ć
training_2/Adam/v_0_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_0_1*(
_class
loc:@training_2/Adam/v_0_1*
	container *
shape:

{
6training_2/Adam/v_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_0_1*
_output_shapes
: 

training_2/Adam/v_0_1/AssignAssignVariableOptraining_2/Adam/v_0_1training_2/Adam/v_0*(
_class
loc:@training_2/Adam/v_0_1*
dtype0
«
)training_2/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_0_1*(
_class
loc:@training_2/Adam/v_0_1*
dtype0* 
_output_shapes
:

b
training_2/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_2/Adam/v_1_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_1_1*(
_class
loc:@training_2/Adam/v_1_1*
	container *
shape:
{
6training_2/Adam/v_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_1_1*
_output_shapes
: 

training_2/Adam/v_1_1/AssignAssignVariableOptraining_2/Adam/v_1_1training_2/Adam/v_1*(
_class
loc:@training_2/Adam/v_1_1*
dtype0
¦
)training_2/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_1_1*
_output_shapes	
:*(
_class
loc:@training_2/Adam/v_1_1*
dtype0
t
#training_2/Adam/v_2/shape_as_tensorConst*
valueB"   @   *
dtype0*
_output_shapes
:
^
training_2/Adam/v_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/v_2Fill#training_2/Adam/v_2/shape_as_tensortraining_2/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	@
Ā
training_2/Adam/v_2_1VarHandleOp*&
shared_nametraining_2/Adam/v_2_1*(
_class
loc:@training_2/Adam/v_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: 
{
6training_2/Adam/v_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_2_1*
_output_shapes
: 

training_2/Adam/v_2_1/AssignAssignVariableOptraining_2/Adam/v_2_1training_2/Adam/v_2*(
_class
loc:@training_2/Adam/v_2_1*
dtype0
Ŗ
)training_2/Adam/v_2_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_2_1*(
_class
loc:@training_2/Adam/v_2_1*
dtype0*
_output_shapes
:	@
`
training_2/Adam/v_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
training_2/Adam/v_3_1VarHandleOp*&
shared_nametraining_2/Adam/v_3_1*(
_class
loc:@training_2/Adam/v_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: 
{
6training_2/Adam/v_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_3_1*
_output_shapes
: 

training_2/Adam/v_3_1/AssignAssignVariableOptraining_2/Adam/v_3_1training_2/Adam/v_3*(
_class
loc:@training_2/Adam/v_3_1*
dtype0
„
)training_2/Adam/v_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_3_1*(
_class
loc:@training_2/Adam/v_3_1*
dtype0*
_output_shapes
:@
t
#training_2/Adam/v_4/shape_as_tensorConst*
valueB"@      *
dtype0*
_output_shapes
:
^
training_2/Adam/v_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/v_4Fill#training_2/Adam/v_4/shape_as_tensortraining_2/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
training_2/Adam/v_4_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_4_1*(
_class
loc:@training_2/Adam/v_4_1*
	container *
shape
:@
{
6training_2/Adam/v_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_4_1*
_output_shapes
: 

training_2/Adam/v_4_1/AssignAssignVariableOptraining_2/Adam/v_4_1training_2/Adam/v_4*
dtype0*(
_class
loc:@training_2/Adam/v_4_1
©
)training_2/Adam/v_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_4_1*(
_class
loc:@training_2/Adam/v_4_1*
dtype0*
_output_shapes

:@
`
training_2/Adam/v_5Const*
_output_shapes
:*
valueB*    *
dtype0
½
training_2/Adam/v_5_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_5_1*(
_class
loc:@training_2/Adam/v_5_1*
	container *
shape:
{
6training_2/Adam/v_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_5_1*
_output_shapes
: 

training_2/Adam/v_5_1/AssignAssignVariableOptraining_2/Adam/v_5_1training_2/Adam/v_5*(
_class
loc:@training_2/Adam/v_5_1*
dtype0
„
)training_2/Adam/v_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_5_1*(
_class
loc:@training_2/Adam/v_5_1*
dtype0*
_output_shapes
:
h
training_2/Adam/v_6Const*
dtype0*
_output_shapes

:
*
valueB
*    
Į
training_2/Adam/v_6_1VarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_6_1*(
_class
loc:@training_2/Adam/v_6_1
{
6training_2/Adam/v_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_6_1*
_output_shapes
: 

training_2/Adam/v_6_1/AssignAssignVariableOptraining_2/Adam/v_6_1training_2/Adam/v_6*(
_class
loc:@training_2/Adam/v_6_1*
dtype0
©
)training_2/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_6_1*(
_class
loc:@training_2/Adam/v_6_1*
dtype0*
_output_shapes

:

`
training_2/Adam/v_7Const*
valueB
*    *
dtype0*
_output_shapes
:

½
training_2/Adam/v_7_1VarHandleOp*(
_class
loc:@training_2/Adam/v_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_7_1
{
6training_2/Adam/v_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/v_7_1*
_output_shapes
: 

training_2/Adam/v_7_1/AssignAssignVariableOptraining_2/Adam/v_7_1training_2/Adam/v_7*(
_class
loc:@training_2/Adam/v_7_1*
dtype0
„
)training_2/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_7_1*(
_class
loc:@training_2/Adam/v_7_1*
dtype0*
_output_shapes
:

p
&training_2/Adam/vhat_0/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_0Fill&training_2/Adam/vhat_0/shape_as_tensortraining_2/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_0_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_0_1*+
_class!
loc:@training_2/Adam/vhat_0_1*
	container *
shape:

9training_2/Adam/vhat_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_0_1*
_output_shapes
: 

training_2/Adam/vhat_0_1/AssignAssignVariableOptraining_2/Adam/vhat_0_1training_2/Adam/vhat_0*+
_class!
loc:@training_2/Adam/vhat_0_1*
dtype0
®
,training_2/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_0_1*+
_class!
loc:@training_2/Adam/vhat_0_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_1/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training_2/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_1Fill&training_2/Adam/vhat_1/shape_as_tensortraining_2/Adam/vhat_1/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_2/Adam/vhat_1_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_1_1*+
_class!
loc:@training_2/Adam/vhat_1_1*
	container 

9training_2/Adam/vhat_1_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_1_1*
_output_shapes
: 

training_2/Adam/vhat_1_1/AssignAssignVariableOptraining_2/Adam/vhat_1_1training_2/Adam/vhat_1*+
_class!
loc:@training_2/Adam/vhat_1_1*
dtype0
®
,training_2/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_1_1*+
_class!
loc:@training_2/Adam/vhat_1_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_2/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training_2/Adam/vhat_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_2Fill&training_2/Adam/vhat_2/shape_as_tensortraining_2/Adam/vhat_2/Const*

index_type0*
_output_shapes
:*
T0
Ę
training_2/Adam/vhat_2_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_2_1*+
_class!
loc:@training_2/Adam/vhat_2_1*
	container *
shape:

9training_2/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_2_1*
_output_shapes
: 

training_2/Adam/vhat_2_1/AssignAssignVariableOptraining_2/Adam/vhat_2_1training_2/Adam/vhat_2*+
_class!
loc:@training_2/Adam/vhat_2_1*
dtype0
®
,training_2/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_2_1*+
_class!
loc:@training_2/Adam/vhat_2_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_3/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_3Fill&training_2/Adam/vhat_3/shape_as_tensortraining_2/Adam/vhat_3/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_2/Adam/vhat_3_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_3_1*+
_class!
loc:@training_2/Adam/vhat_3_1*
	container *
shape:

9training_2/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_3_1*
_output_shapes
: 

training_2/Adam/vhat_3_1/AssignAssignVariableOptraining_2/Adam/vhat_3_1training_2/Adam/vhat_3*+
_class!
loc:@training_2/Adam/vhat_3_1*
dtype0
®
,training_2/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_3_1*+
_class!
loc:@training_2/Adam/vhat_3_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_4Fill&training_2/Adam/vhat_4/shape_as_tensortraining_2/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_4_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_4_1*+
_class!
loc:@training_2/Adam/vhat_4_1*
	container *
shape:

9training_2/Adam/vhat_4_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_4_1*
_output_shapes
: 

training_2/Adam/vhat_4_1/AssignAssignVariableOptraining_2/Adam/vhat_4_1training_2/Adam/vhat_4*+
_class!
loc:@training_2/Adam/vhat_4_1*
dtype0
®
,training_2/Adam/vhat_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_4_1*+
_class!
loc:@training_2/Adam/vhat_4_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_5/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_5Fill&training_2/Adam/vhat_5/shape_as_tensortraining_2/Adam/vhat_5/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_2/Adam/vhat_5_1VarHandleOp*)
shared_nametraining_2/Adam/vhat_5_1*+
_class!
loc:@training_2/Adam/vhat_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_2/Adam/vhat_5_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_5_1*
_output_shapes
: 

training_2/Adam/vhat_5_1/AssignAssignVariableOptraining_2/Adam/vhat_5_1training_2/Adam/vhat_5*+
_class!
loc:@training_2/Adam/vhat_5_1*
dtype0
®
,training_2/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_5_1*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_5_1*
dtype0
p
&training_2/Adam/vhat_6/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_6/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_6Fill&training_2/Adam/vhat_6/shape_as_tensortraining_2/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_6_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_6_1*+
_class!
loc:@training_2/Adam/vhat_6_1

9training_2/Adam/vhat_6_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_6_1*
_output_shapes
: 

training_2/Adam/vhat_6_1/AssignAssignVariableOptraining_2/Adam/vhat_6_1training_2/Adam/vhat_6*+
_class!
loc:@training_2/Adam/vhat_6_1*
dtype0
®
,training_2/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_6_1*+
_class!
loc:@training_2/Adam/vhat_6_1*
dtype0*
_output_shapes
:
p
&training_2/Adam/vhat_7/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_7Fill&training_2/Adam/vhat_7/shape_as_tensortraining_2/Adam/vhat_7/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_7_1VarHandleOp*+
_class!
loc:@training_2/Adam/vhat_7_1*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_7_1

9training_2/Adam/vhat_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_7_1*
_output_shapes
: 

training_2/Adam/vhat_7_1/AssignAssignVariableOptraining_2/Adam/vhat_7_1training_2/Adam/vhat_7*+
_class!
loc:@training_2/Adam/vhat_7_1*
dtype0
®
,training_2/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_7_1*+
_class!
loc:@training_2/Adam/vhat_7_1*
dtype0*
_output_shapes
:
f
 training_2/Adam/ReadVariableOp_2ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
|
$training_2/Adam/mul_1/ReadVariableOpReadVariableOptraining_2/Adam/m_0_1*
dtype0* 
_output_shapes
:


training_2/Adam/mul_1Mul training_2/Adam/ReadVariableOp_2$training_2/Adam/mul_1/ReadVariableOp*
T0* 
_output_shapes
:

f
 training_2/Adam/ReadVariableOp_3ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
x
training_2/Adam/sub_2Subtraining_2/Adam/sub_2/x training_2/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training_2/Adam/mul_2Multraining_2/Adam/sub_2;training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
u
training_2/Adam/add_1Addtraining_2/Adam/mul_1training_2/Adam/mul_2*
T0* 
_output_shapes
:

f
 training_2/Adam/ReadVariableOp_4ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
|
$training_2/Adam/mul_3/ReadVariableOpReadVariableOptraining_2/Adam/v_0_1*
dtype0* 
_output_shapes
:


training_2/Adam/mul_3Mul training_2/Adam/ReadVariableOp_4$training_2/Adam/mul_3/ReadVariableOp*
T0* 
_output_shapes
:

f
 training_2/Adam/ReadVariableOp_5ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
x
training_2/Adam/sub_3Subtraining_2/Adam/sub_3/x training_2/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 

training_2/Adam/SquareSquare;training_2/Adam/gradients/m1_hidden1_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
v
training_2/Adam/mul_4Multraining_2/Adam/sub_3training_2/Adam/Square* 
_output_shapes
:
*
T0
u
training_2/Adam/add_2Addtraining_2/Adam/mul_3training_2/Adam/mul_4*
T0* 
_output_shapes
:

s
training_2/Adam/mul_5Multraining_2/Adam/multraining_2/Adam/add_1*
T0* 
_output_shapes
:

\
training_2/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_1/MinimumMinimumtraining_2/Adam/add_2training_2/Adam/Const_4*
T0* 
_output_shapes
:


training_2/Adam/clip_by_value_1Maximum'training_2/Adam/clip_by_value_1/Minimumtraining_2/Adam/Const_3* 
_output_shapes
:
*
T0
j
training_2/Adam/Sqrt_1Sqrttraining_2/Adam/clip_by_value_1*
T0* 
_output_shapes
:

\
training_2/Adam/add_3/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
x
training_2/Adam/add_3Addtraining_2/Adam/Sqrt_1training_2/Adam/add_3/y*
T0* 
_output_shapes
:

}
training_2/Adam/truediv_1RealDivtraining_2/Adam/mul_5training_2/Adam/add_3*
T0* 
_output_shapes
:

v
 training_2/Adam/ReadVariableOp_6ReadVariableOpm1_hidden1_1/kernel*
dtype0* 
_output_shapes
:


training_2/Adam/sub_4Sub training_2/Adam/ReadVariableOp_6training_2/Adam/truediv_1* 
_output_shapes
:
*
T0
o
 training_2/Adam/AssignVariableOpAssignVariableOptraining_2/Adam/m_0_1training_2/Adam/add_1*
dtype0

 training_2/Adam/ReadVariableOp_7ReadVariableOptraining_2/Adam/m_0_1!^training_2/Adam/AssignVariableOp*
dtype0* 
_output_shapes
:

q
"training_2/Adam/AssignVariableOp_1AssignVariableOptraining_2/Adam/v_0_1training_2/Adam/add_2*
dtype0

 training_2/Adam/ReadVariableOp_8ReadVariableOptraining_2/Adam/v_0_1#^training_2/Adam/AssignVariableOp_1* 
_output_shapes
:
*
dtype0
o
"training_2/Adam/AssignVariableOp_2AssignVariableOpm1_hidden1_1/kerneltraining_2/Adam/sub_4*
dtype0

 training_2/Adam/ReadVariableOp_9ReadVariableOpm1_hidden1_1/kernel#^training_2/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_10ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
w
$training_2/Adam/mul_6/ReadVariableOpReadVariableOptraining_2/Adam/m_1_1*
dtype0*
_output_shapes	
:

training_2/Adam/mul_6Mul!training_2/Adam/ReadVariableOp_10$training_2/Adam/mul_6/ReadVariableOp*
_output_shapes	
:*
T0
g
!training_2/Adam/ReadVariableOp_11ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_5Subtraining_2/Adam/sub_5/x!training_2/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training_2/Adam/mul_7Multraining_2/Adam/sub_5?training_2/Adam/gradients/m1_hidden1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training_2/Adam/add_4Addtraining_2/Adam/mul_6training_2/Adam/mul_7*
_output_shapes	
:*
T0
g
!training_2/Adam/ReadVariableOp_12ReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
w
$training_2/Adam/mul_8/ReadVariableOpReadVariableOptraining_2/Adam/v_1_1*
dtype0*
_output_shapes	
:

training_2/Adam/mul_8Mul!training_2/Adam/ReadVariableOp_12$training_2/Adam/mul_8/ReadVariableOp*
_output_shapes	
:*
T0
g
!training_2/Adam/ReadVariableOp_13ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_6Subtraining_2/Adam/sub_6/x!training_2/Adam/ReadVariableOp_13*
T0*
_output_shapes
: 

training_2/Adam/Square_1Square?training_2/Adam/gradients/m1_hidden1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
s
training_2/Adam/mul_9Multraining_2/Adam/sub_6training_2/Adam/Square_1*
_output_shapes	
:*
T0
p
training_2/Adam/add_5Addtraining_2/Adam/mul_8training_2/Adam/mul_9*
_output_shapes	
:*
T0
o
training_2/Adam/mul_10Multraining_2/Adam/multraining_2/Adam/add_4*
T0*
_output_shapes	
:
\
training_2/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
\
training_2/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_2/MinimumMinimumtraining_2/Adam/add_5training_2/Adam/Const_6*
T0*
_output_shapes	
:

training_2/Adam/clip_by_value_2Maximum'training_2/Adam/clip_by_value_2/Minimumtraining_2/Adam/Const_5*
_output_shapes	
:*
T0
e
training_2/Adam/Sqrt_2Sqrttraining_2/Adam/clip_by_value_2*
T0*
_output_shapes	
:
\
training_2/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
s
training_2/Adam/add_6Addtraining_2/Adam/Sqrt_2training_2/Adam/add_6/y*
_output_shapes	
:*
T0
y
training_2/Adam/truediv_2RealDivtraining_2/Adam/mul_10training_2/Adam/add_6*
T0*
_output_shapes	
:
p
!training_2/Adam/ReadVariableOp_14ReadVariableOpm1_hidden1_1/bias*
dtype0*
_output_shapes	
:

training_2/Adam/sub_7Sub!training_2/Adam/ReadVariableOp_14training_2/Adam/truediv_2*
T0*
_output_shapes	
:
q
"training_2/Adam/AssignVariableOp_3AssignVariableOptraining_2/Adam/m_1_1training_2/Adam/add_4*
dtype0

!training_2/Adam/ReadVariableOp_15ReadVariableOptraining_2/Adam/m_1_1#^training_2/Adam/AssignVariableOp_3*
dtype0*
_output_shapes	
:
q
"training_2/Adam/AssignVariableOp_4AssignVariableOptraining_2/Adam/v_1_1training_2/Adam/add_5*
dtype0

!training_2/Adam/ReadVariableOp_16ReadVariableOptraining_2/Adam/v_1_1#^training_2/Adam/AssignVariableOp_4*
_output_shapes	
:*
dtype0
m
"training_2/Adam/AssignVariableOp_5AssignVariableOpm1_hidden1_1/biastraining_2/Adam/sub_7*
dtype0

!training_2/Adam/ReadVariableOp_17ReadVariableOpm1_hidden1_1/bias#^training_2/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_18ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
|
%training_2/Adam/mul_11/ReadVariableOpReadVariableOptraining_2/Adam/m_2_1*
_output_shapes
:	@*
dtype0

training_2/Adam/mul_11Mul!training_2/Adam/ReadVariableOp_18%training_2/Adam/mul_11/ReadVariableOp*
_output_shapes
:	@*
T0
g
!training_2/Adam/ReadVariableOp_19ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
y
training_2/Adam/sub_8Subtraining_2/Adam/sub_8/x!training_2/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training_2/Adam/mul_12Multraining_2/Adam/sub_8;training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
v
training_2/Adam/add_7Addtraining_2/Adam/mul_11training_2/Adam/mul_12*
T0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_20ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
|
%training_2/Adam/mul_13/ReadVariableOpReadVariableOptraining_2/Adam/v_2_1*
dtype0*
_output_shapes
:	@

training_2/Adam/mul_13Mul!training_2/Adam/ReadVariableOp_20%training_2/Adam/mul_13/ReadVariableOp*
_output_shapes
:	@*
T0
g
!training_2/Adam/ReadVariableOp_21ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
y
training_2/Adam/sub_9Subtraining_2/Adam/sub_9/x!training_2/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training_2/Adam/Square_2Square;training_2/Adam/gradients/m1_hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
x
training_2/Adam/mul_14Multraining_2/Adam/sub_9training_2/Adam/Square_2*
_output_shapes
:	@*
T0
v
training_2/Adam/add_8Addtraining_2/Adam/mul_13training_2/Adam/mul_14*
T0*
_output_shapes
:	@
s
training_2/Adam/mul_15Multraining_2/Adam/multraining_2/Adam/add_7*
T0*
_output_shapes
:	@
\
training_2/Adam/Const_7Const*
_output_shapes
: *
valueB
 *    *
dtype0
\
training_2/Adam/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *  

'training_2/Adam/clip_by_value_3/MinimumMinimumtraining_2/Adam/add_8training_2/Adam/Const_8*
T0*
_output_shapes
:	@

training_2/Adam/clip_by_value_3Maximum'training_2/Adam/clip_by_value_3/Minimumtraining_2/Adam/Const_7*
T0*
_output_shapes
:	@
i
training_2/Adam/Sqrt_3Sqrttraining_2/Adam/clip_by_value_3*
T0*
_output_shapes
:	@
\
training_2/Adam/add_9/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
w
training_2/Adam/add_9Addtraining_2/Adam/Sqrt_3training_2/Adam/add_9/y*
T0*
_output_shapes
:	@
}
training_2/Adam/truediv_3RealDivtraining_2/Adam/mul_15training_2/Adam/add_9*
_output_shapes
:	@*
T0
v
!training_2/Adam/ReadVariableOp_22ReadVariableOpm1_hidden2_1/kernel*
_output_shapes
:	@*
dtype0

training_2/Adam/sub_10Sub!training_2/Adam/ReadVariableOp_22training_2/Adam/truediv_3*
T0*
_output_shapes
:	@
q
"training_2/Adam/AssignVariableOp_6AssignVariableOptraining_2/Adam/m_2_1training_2/Adam/add_7*
dtype0

!training_2/Adam/ReadVariableOp_23ReadVariableOptraining_2/Adam/m_2_1#^training_2/Adam/AssignVariableOp_6*
_output_shapes
:	@*
dtype0
q
"training_2/Adam/AssignVariableOp_7AssignVariableOptraining_2/Adam/v_2_1training_2/Adam/add_8*
dtype0

!training_2/Adam/ReadVariableOp_24ReadVariableOptraining_2/Adam/v_2_1#^training_2/Adam/AssignVariableOp_7*
dtype0*
_output_shapes
:	@
p
"training_2/Adam/AssignVariableOp_8AssignVariableOpm1_hidden2_1/kerneltraining_2/Adam/sub_10*
dtype0

!training_2/Adam/ReadVariableOp_25ReadVariableOpm1_hidden2_1/kernel#^training_2/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_26ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_16/ReadVariableOpReadVariableOptraining_2/Adam/m_3_1*
_output_shapes
:@*
dtype0

training_2/Adam/mul_16Mul!training_2/Adam/ReadVariableOp_26%training_2/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_27ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_11Subtraining_2/Adam/sub_11/x!training_2/Adam/ReadVariableOp_27*
_output_shapes
: *
T0

training_2/Adam/mul_17Multraining_2/Adam/sub_11?training_2/Adam/gradients/m1_hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
r
training_2/Adam/add_10Addtraining_2/Adam/mul_16training_2/Adam/mul_17*
_output_shapes
:@*
T0
g
!training_2/Adam/ReadVariableOp_28ReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
w
%training_2/Adam/mul_18/ReadVariableOpReadVariableOptraining_2/Adam/v_3_1*
dtype0*
_output_shapes
:@

training_2/Adam/mul_18Mul!training_2/Adam/ReadVariableOp_28%training_2/Adam/mul_18/ReadVariableOp*
_output_shapes
:@*
T0
g
!training_2/Adam/ReadVariableOp_29ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_12Subtraining_2/Adam/sub_12/x!training_2/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training_2/Adam/Square_3Square?training_2/Adam/gradients/m1_hidden2_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
t
training_2/Adam/mul_19Multraining_2/Adam/sub_12training_2/Adam/Square_3*
T0*
_output_shapes
:@
r
training_2/Adam/add_11Addtraining_2/Adam/mul_18training_2/Adam/mul_19*
_output_shapes
:@*
T0
o
training_2/Adam/mul_20Multraining_2/Adam/multraining_2/Adam/add_10*
_output_shapes
:@*
T0
\
training_2/Adam/Const_9Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training_2/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_4/MinimumMinimumtraining_2/Adam/add_11training_2/Adam/Const_10*
T0*
_output_shapes
:@

training_2/Adam/clip_by_value_4Maximum'training_2/Adam/clip_by_value_4/Minimumtraining_2/Adam/Const_9*
T0*
_output_shapes
:@
d
training_2/Adam/Sqrt_4Sqrttraining_2/Adam/clip_by_value_4*
T0*
_output_shapes
:@
]
training_2/Adam/add_12/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
t
training_2/Adam/add_12Addtraining_2/Adam/Sqrt_4training_2/Adam/add_12/y*
T0*
_output_shapes
:@
y
training_2/Adam/truediv_4RealDivtraining_2/Adam/mul_20training_2/Adam/add_12*
T0*
_output_shapes
:@
o
!training_2/Adam/ReadVariableOp_30ReadVariableOpm1_hidden2_1/bias*
dtype0*
_output_shapes
:@

training_2/Adam/sub_13Sub!training_2/Adam/ReadVariableOp_30training_2/Adam/truediv_4*
T0*
_output_shapes
:@
r
"training_2/Adam/AssignVariableOp_9AssignVariableOptraining_2/Adam/m_3_1training_2/Adam/add_10*
dtype0

!training_2/Adam/ReadVariableOp_31ReadVariableOptraining_2/Adam/m_3_1#^training_2/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:@
s
#training_2/Adam/AssignVariableOp_10AssignVariableOptraining_2/Adam/v_3_1training_2/Adam/add_11*
dtype0

!training_2/Adam/ReadVariableOp_32ReadVariableOptraining_2/Adam/v_3_1$^training_2/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:@
o
#training_2/Adam/AssignVariableOp_11AssignVariableOpm1_hidden2_1/biastraining_2/Adam/sub_13*
dtype0

!training_2/Adam/ReadVariableOp_33ReadVariableOpm1_hidden2_1/bias$^training_2/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_34ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_21/ReadVariableOpReadVariableOptraining_2/Adam/m_4_1*
dtype0*
_output_shapes

:@

training_2/Adam/mul_21Mul!training_2/Adam/ReadVariableOp_34%training_2/Adam/mul_21/ReadVariableOp*
_output_shapes

:@*
T0
g
!training_2/Adam/ReadVariableOp_35ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_14Subtraining_2/Adam/sub_14/x!training_2/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 

training_2/Adam/mul_22Multraining_2/Adam/sub_14;training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
v
training_2/Adam/add_13Addtraining_2/Adam/mul_21training_2/Adam/mul_22*
_output_shapes

:@*
T0
g
!training_2/Adam/ReadVariableOp_36ReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
{
%training_2/Adam/mul_23/ReadVariableOpReadVariableOptraining_2/Adam/v_4_1*
dtype0*
_output_shapes

:@

training_2/Adam/mul_23Mul!training_2/Adam/ReadVariableOp_36%training_2/Adam/mul_23/ReadVariableOp*
T0*
_output_shapes

:@
g
!training_2/Adam/ReadVariableOp_37ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_15Subtraining_2/Adam/sub_15/x!training_2/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

training_2/Adam/Square_4Square;training_2/Adam/gradients/m1_hidden3_1/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
x
training_2/Adam/mul_24Multraining_2/Adam/sub_15training_2/Adam/Square_4*
T0*
_output_shapes

:@
v
training_2/Adam/add_14Addtraining_2/Adam/mul_23training_2/Adam/mul_24*
T0*
_output_shapes

:@
s
training_2/Adam/mul_25Multraining_2/Adam/multraining_2/Adam/add_13*
T0*
_output_shapes

:@
]
training_2/Adam/Const_11Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training_2/Adam/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_5/MinimumMinimumtraining_2/Adam/add_14training_2/Adam/Const_12*
_output_shapes

:@*
T0

training_2/Adam/clip_by_value_5Maximum'training_2/Adam/clip_by_value_5/Minimumtraining_2/Adam/Const_11*
T0*
_output_shapes

:@
h
training_2/Adam/Sqrt_5Sqrttraining_2/Adam/clip_by_value_5*
_output_shapes

:@*
T0
]
training_2/Adam/add_15/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
x
training_2/Adam/add_15Addtraining_2/Adam/Sqrt_5training_2/Adam/add_15/y*
_output_shapes

:@*
T0
}
training_2/Adam/truediv_5RealDivtraining_2/Adam/mul_25training_2/Adam/add_15*
T0*
_output_shapes

:@
u
!training_2/Adam/ReadVariableOp_38ReadVariableOpm1_hidden3_1/kernel*
dtype0*
_output_shapes

:@

training_2/Adam/sub_16Sub!training_2/Adam/ReadVariableOp_38training_2/Adam/truediv_5*
T0*
_output_shapes

:@
s
#training_2/Adam/AssignVariableOp_12AssignVariableOptraining_2/Adam/m_4_1training_2/Adam/add_13*
dtype0

!training_2/Adam/ReadVariableOp_39ReadVariableOptraining_2/Adam/m_4_1$^training_2/Adam/AssignVariableOp_12*
dtype0*
_output_shapes

:@
s
#training_2/Adam/AssignVariableOp_13AssignVariableOptraining_2/Adam/v_4_1training_2/Adam/add_14*
dtype0

!training_2/Adam/ReadVariableOp_40ReadVariableOptraining_2/Adam/v_4_1$^training_2/Adam/AssignVariableOp_13*
dtype0*
_output_shapes

:@
q
#training_2/Adam/AssignVariableOp_14AssignVariableOpm1_hidden3_1/kerneltraining_2/Adam/sub_16*
dtype0

!training_2/Adam/ReadVariableOp_41ReadVariableOpm1_hidden3_1/kernel$^training_2/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
g
!training_2/Adam/ReadVariableOp_42ReadVariableOpAdam_3/beta_1*
_output_shapes
: *
dtype0
w
%training_2/Adam/mul_26/ReadVariableOpReadVariableOptraining_2/Adam/m_5_1*
dtype0*
_output_shapes
:

training_2/Adam/mul_26Mul!training_2/Adam/ReadVariableOp_42%training_2/Adam/mul_26/ReadVariableOp*
_output_shapes
:*
T0
g
!training_2/Adam/ReadVariableOp_43ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_17Subtraining_2/Adam/sub_17/x!training_2/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training_2/Adam/mul_27Multraining_2/Adam/sub_17?training_2/Adam/gradients/m1_hidden3_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
r
training_2/Adam/add_16Addtraining_2/Adam/mul_26training_2/Adam/mul_27*
T0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_44ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_28/ReadVariableOpReadVariableOptraining_2/Adam/v_5_1*
dtype0*
_output_shapes
:

training_2/Adam/mul_28Mul!training_2/Adam/ReadVariableOp_44%training_2/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_45ReadVariableOpAdam_3/beta_2*
_output_shapes
: *
dtype0
]
training_2/Adam/sub_18/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_18Subtraining_2/Adam/sub_18/x!training_2/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

training_2/Adam/Square_5Square?training_2/Adam/gradients/m1_hidden3_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
t
training_2/Adam/mul_29Multraining_2/Adam/sub_18training_2/Adam/Square_5*
T0*
_output_shapes
:
r
training_2/Adam/add_17Addtraining_2/Adam/mul_28training_2/Adam/mul_29*
_output_shapes
:*
T0
o
training_2/Adam/mul_30Multraining_2/Adam/multraining_2/Adam/add_16*
T0*
_output_shapes
:
]
training_2/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_2/Adam/Const_14Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_6/MinimumMinimumtraining_2/Adam/add_17training_2/Adam/Const_14*
_output_shapes
:*
T0

training_2/Adam/clip_by_value_6Maximum'training_2/Adam/clip_by_value_6/Minimumtraining_2/Adam/Const_13*
_output_shapes
:*
T0
d
training_2/Adam/Sqrt_6Sqrttraining_2/Adam/clip_by_value_6*
_output_shapes
:*
T0
]
training_2/Adam/add_18/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
t
training_2/Adam/add_18Addtraining_2/Adam/Sqrt_6training_2/Adam/add_18/y*
T0*
_output_shapes
:
y
training_2/Adam/truediv_6RealDivtraining_2/Adam/mul_30training_2/Adam/add_18*
T0*
_output_shapes
:
o
!training_2/Adam/ReadVariableOp_46ReadVariableOpm1_hidden3_1/bias*
dtype0*
_output_shapes
:

training_2/Adam/sub_19Sub!training_2/Adam/ReadVariableOp_46training_2/Adam/truediv_6*
_output_shapes
:*
T0
s
#training_2/Adam/AssignVariableOp_15AssignVariableOptraining_2/Adam/m_5_1training_2/Adam/add_16*
dtype0

!training_2/Adam/ReadVariableOp_47ReadVariableOptraining_2/Adam/m_5_1$^training_2/Adam/AssignVariableOp_15*
dtype0*
_output_shapes
:
s
#training_2/Adam/AssignVariableOp_16AssignVariableOptraining_2/Adam/v_5_1training_2/Adam/add_17*
dtype0

!training_2/Adam/ReadVariableOp_48ReadVariableOptraining_2/Adam/v_5_1$^training_2/Adam/AssignVariableOp_16*
dtype0*
_output_shapes
:
o
#training_2/Adam/AssignVariableOp_17AssignVariableOpm1_hidden3_1/biastraining_2/Adam/sub_19*
dtype0

!training_2/Adam/ReadVariableOp_49ReadVariableOpm1_hidden3_1/bias$^training_2/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_50ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_31/ReadVariableOpReadVariableOptraining_2/Adam/m_6_1*
dtype0*
_output_shapes

:


training_2/Adam/mul_31Mul!training_2/Adam/ReadVariableOp_50%training_2/Adam/mul_31/ReadVariableOp*
_output_shapes

:
*
T0
g
!training_2/Adam/ReadVariableOp_51ReadVariableOpAdam_3/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_20Subtraining_2/Adam/sub_20/x!training_2/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 

training_2/Adam/mul_32Multraining_2/Adam/sub_20:training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
v
training_2/Adam/add_19Addtraining_2/Adam/mul_31training_2/Adam/mul_32*
_output_shapes

:
*
T0
g
!training_2/Adam/ReadVariableOp_52ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_33/ReadVariableOpReadVariableOptraining_2/Adam/v_6_1*
dtype0*
_output_shapes

:


training_2/Adam/mul_33Mul!training_2/Adam/ReadVariableOp_52%training_2/Adam/mul_33/ReadVariableOp*
_output_shapes

:
*
T0
g
!training_2/Adam/ReadVariableOp_53ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_21/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
{
training_2/Adam/sub_21Subtraining_2/Adam/sub_21/x!training_2/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training_2/Adam/Square_6Square:training_2/Adam/gradients/m1_output_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

x
training_2/Adam/mul_34Multraining_2/Adam/sub_21training_2/Adam/Square_6*
T0*
_output_shapes

:

v
training_2/Adam/add_20Addtraining_2/Adam/mul_33training_2/Adam/mul_34*
_output_shapes

:
*
T0
s
training_2/Adam/mul_35Multraining_2/Adam/multraining_2/Adam/add_19*
T0*
_output_shapes

:

]
training_2/Adam/Const_15Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_2/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_7/MinimumMinimumtraining_2/Adam/add_20training_2/Adam/Const_16*
T0*
_output_shapes

:


training_2/Adam/clip_by_value_7Maximum'training_2/Adam/clip_by_value_7/Minimumtraining_2/Adam/Const_15*
_output_shapes

:
*
T0
h
training_2/Adam/Sqrt_7Sqrttraining_2/Adam/clip_by_value_7*
T0*
_output_shapes

:

]
training_2/Adam/add_21/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
x
training_2/Adam/add_21Addtraining_2/Adam/Sqrt_7training_2/Adam/add_21/y*
T0*
_output_shapes

:

}
training_2/Adam/truediv_7RealDivtraining_2/Adam/mul_35training_2/Adam/add_21*
T0*
_output_shapes

:

t
!training_2/Adam/ReadVariableOp_54ReadVariableOpm1_output_1/kernel*
dtype0*
_output_shapes

:


training_2/Adam/sub_22Sub!training_2/Adam/ReadVariableOp_54training_2/Adam/truediv_7*
T0*
_output_shapes

:

s
#training_2/Adam/AssignVariableOp_18AssignVariableOptraining_2/Adam/m_6_1training_2/Adam/add_19*
dtype0

!training_2/Adam/ReadVariableOp_55ReadVariableOptraining_2/Adam/m_6_1$^training_2/Adam/AssignVariableOp_18*
dtype0*
_output_shapes

:

s
#training_2/Adam/AssignVariableOp_19AssignVariableOptraining_2/Adam/v_6_1training_2/Adam/add_20*
dtype0

!training_2/Adam/ReadVariableOp_56ReadVariableOptraining_2/Adam/v_6_1$^training_2/Adam/AssignVariableOp_19*
_output_shapes

:
*
dtype0
p
#training_2/Adam/AssignVariableOp_20AssignVariableOpm1_output_1/kerneltraining_2/Adam/sub_22*
dtype0

!training_2/Adam/ReadVariableOp_57ReadVariableOpm1_output_1/kernel$^training_2/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_58ReadVariableOpAdam_3/beta_1*
_output_shapes
: *
dtype0
w
%training_2/Adam/mul_36/ReadVariableOpReadVariableOptraining_2/Adam/m_7_1*
dtype0*
_output_shapes
:


training_2/Adam/mul_36Mul!training_2/Adam/ReadVariableOp_58%training_2/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_59ReadVariableOpAdam_3/beta_1*
_output_shapes
: *
dtype0
]
training_2/Adam/sub_23/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_23Subtraining_2/Adam/sub_23/x!training_2/Adam/ReadVariableOp_59*
_output_shapes
: *
T0

training_2/Adam/mul_37Multraining_2/Adam/sub_23>training_2/Adam/gradients/m1_output_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
r
training_2/Adam/add_22Addtraining_2/Adam/mul_36training_2/Adam/mul_37*
T0*
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_60ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_38/ReadVariableOpReadVariableOptraining_2/Adam/v_7_1*
dtype0*
_output_shapes
:


training_2/Adam/mul_38Mul!training_2/Adam/ReadVariableOp_60%training_2/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_61ReadVariableOpAdam_3/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_24Subtraining_2/Adam/sub_24/x!training_2/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training_2/Adam/Square_7Square>training_2/Adam/gradients/m1_output_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

t
training_2/Adam/mul_39Multraining_2/Adam/sub_24training_2/Adam/Square_7*
_output_shapes
:
*
T0
r
training_2/Adam/add_23Addtraining_2/Adam/mul_38training_2/Adam/mul_39*
_output_shapes
:
*
T0
o
training_2/Adam/mul_40Multraining_2/Adam/multraining_2/Adam/add_22*
_output_shapes
:
*
T0
]
training_2/Adam/Const_17Const*
valueB
 *    *
dtype0*
_output_shapes
: 
]
training_2/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_2/Adam/clip_by_value_8/MinimumMinimumtraining_2/Adam/add_23training_2/Adam/Const_18*
_output_shapes
:
*
T0

training_2/Adam/clip_by_value_8Maximum'training_2/Adam/clip_by_value_8/Minimumtraining_2/Adam/Const_17*
T0*
_output_shapes
:

d
training_2/Adam/Sqrt_8Sqrttraining_2/Adam/clip_by_value_8*
T0*
_output_shapes
:

]
training_2/Adam/add_24/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
t
training_2/Adam/add_24Addtraining_2/Adam/Sqrt_8training_2/Adam/add_24/y*
T0*
_output_shapes
:

y
training_2/Adam/truediv_8RealDivtraining_2/Adam/mul_40training_2/Adam/add_24*
_output_shapes
:
*
T0
n
!training_2/Adam/ReadVariableOp_62ReadVariableOpm1_output_1/bias*
dtype0*
_output_shapes
:


training_2/Adam/sub_25Sub!training_2/Adam/ReadVariableOp_62training_2/Adam/truediv_8*
T0*
_output_shapes
:

s
#training_2/Adam/AssignVariableOp_21AssignVariableOptraining_2/Adam/m_7_1training_2/Adam/add_22*
dtype0

!training_2/Adam/ReadVariableOp_63ReadVariableOptraining_2/Adam/m_7_1$^training_2/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:

s
#training_2/Adam/AssignVariableOp_22AssignVariableOptraining_2/Adam/v_7_1training_2/Adam/add_23*
dtype0

!training_2/Adam/ReadVariableOp_64ReadVariableOptraining_2/Adam/v_7_1$^training_2/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:

n
#training_2/Adam/AssignVariableOp_23AssignVariableOpm1_output_1/biastraining_2/Adam/sub_25*
dtype0

!training_2/Adam/ReadVariableOp_65ReadVariableOpm1_output_1/bias$^training_2/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

_
training_2/VarIsInitializedOpVarIsInitializedOpm1_output_1/kernel*
_output_shapes
: 
_
training_2/VarIsInitializedOp_1VarIsInitializedOpm2_output_1/bias*
_output_shapes
: 
V
training_2/VarIsInitializedOp_2VarIsInitializedOpcount_2*
_output_shapes
: 
\
training_2/VarIsInitializedOp_3VarIsInitializedOpAdam_4/beta_2*
_output_shapes
: 
_
training_2/VarIsInitializedOp_4VarIsInitializedOpm2_output_2/bias*
_output_shapes
: 
\
training_2/VarIsInitializedOp_5VarIsInitializedOpAdam_5/beta_2*
_output_shapes
: 
V
training_2/VarIsInitializedOp_6VarIsInitializedOptotal_2*
_output_shapes
: 
`
training_2/VarIsInitializedOp_7VarIsInitializedOpm2_hidden1_2/bias*
_output_shapes
: 
b
training_2/VarIsInitializedOp_8VarIsInitializedOpm2_hidden3_1/kernel*
_output_shapes
: 
\
training_2/VarIsInitializedOp_9VarIsInitializedOpAdam_5/beta_1*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_10VarIsInitializedOpAdam_5/decay*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_11VarIsInitializedOptraining_2/Adam/v_0_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_12VarIsInitializedOptraining_2/Adam/m_1_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_13VarIsInitializedOpm1_hidden3_1/bias*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_14VarIsInitializedOpcount_4*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_15VarIsInitializedOpm2_hidden3_2/bias*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_16VarIsInitializedOpm1_hidden3_1/kernel*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_17VarIsInitializedOpm1_hidden1_1/kernel*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_18VarIsInitializedOpAdam_5/iterations*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_19VarIsInitializedOpm2_hidden1_2/kernel*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_20VarIsInitializedOptraining_2/Adam/m_0_1*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_21VarIsInitializedOpAdam_2/beta_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_22VarIsInitializedOptraining_2/Adam/v_6_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_23VarIsInitializedOpAdam_2/iterations*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_24VarIsInitializedOpAdam_2/beta_2*
_output_shapes
: 
b
 training_2/VarIsInitializedOp_25VarIsInitializedOpm2_output_3/kernel*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_26VarIsInitializedOpm1_hidden2_1/kernel*
_output_shapes
: 
`
 training_2/VarIsInitializedOp_27VarIsInitializedOpm2_output_3/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_28VarIsInitializedOptraining_2/Adam/v_4_1*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_29VarIsInitializedOpcount_5*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_30VarIsInitializedOpAdam_4/iterations*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_31VarIsInitializedOpm1_hidden2_1/bias*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_32VarIsInitializedOpm2_hidden3_1/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_33VarIsInitializedOptraining_2/Adam/v_1_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_34VarIsInitializedOpm2_hidden2_3/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_35VarIsInitializedOptraining_2/Adam/v_2_1*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_36VarIsInitializedOpAdam_2/decay*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_37VarIsInitializedOpm2_hidden3_2/kernel*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_38VarIsInitializedOpAdam_4/beta_1*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_39VarIsInitializedOptotal_5*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_40VarIsInitializedOptraining_2/Adam/v_7_1*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_41VarIsInitializedOpAdam_4/learning_rate*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_42VarIsInitializedOptraining_2/Adam/vhat_0_1*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_43VarIsInitializedOpAdam_4/decay*
_output_shapes
: 
b
 training_2/VarIsInitializedOp_44VarIsInitializedOpm2_output_2/kernel*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_45VarIsInitializedOptraining_2/Adam/m_2_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_46VarIsInitializedOptraining_2/Adam/v_5_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_47VarIsInitializedOptraining_2/Adam/m_3_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_48VarIsInitializedOptraining_2/Adam/m_6_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_49VarIsInitializedOptraining_2/Adam/vhat_3_1*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_50VarIsInitializedOpAdam_2/learning_rate*
_output_shapes
: 
`
 training_2/VarIsInitializedOp_51VarIsInitializedOpm1_output_1/bias*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_52VarIsInitializedOpAdam_3/beta_2*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_53VarIsInitializedOptraining_2/Adam/m_4_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_54VarIsInitializedOptraining_2/Adam/v_3_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_55VarIsInitializedOptraining_2/Adam/m_5_1*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_56VarIsInitializedOpAdam_5/learning_rate*
_output_shapes
: 
]
 training_2/VarIsInitializedOp_57VarIsInitializedOpAdam_3/beta_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_58VarIsInitializedOpm2_hidden2_2/bias*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_59VarIsInitializedOptotal_4*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_60VarIsInitializedOpAdam_3/iterations*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_61VarIsInitializedOptotal_3*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_62VarIsInitializedOpm1_hidden1_1/bias*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_63VarIsInitializedOpm2_hidden1_1/kernel*
_output_shapes
: 
d
 training_2/VarIsInitializedOp_64VarIsInitializedOpAdam_3/learning_rate*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_65VarIsInitializedOpm2_hidden2_2/kernel*
_output_shapes
: 
b
 training_2/VarIsInitializedOp_66VarIsInitializedOpm2_output_1/kernel*
_output_shapes
: 
W
 training_2/VarIsInitializedOp_67VarIsInitializedOpcount_3*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_68VarIsInitializedOpm2_hidden1_3/kernel*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_69VarIsInitializedOptraining_2/Adam/vhat_4_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_70VarIsInitializedOpm2_hidden3_3/bias*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_71VarIsInitializedOptraining_2/Adam/m_7_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_72VarIsInitializedOptraining_2/Adam/vhat_2_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_73VarIsInitializedOptraining_2/Adam/vhat_5_1*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_74VarIsInitializedOpm2_hidden3_3/kernel*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_75VarIsInitializedOptraining_2/Adam/vhat_1_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_76VarIsInitializedOptraining_2/Adam/vhat_6_1*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_77VarIsInitializedOpm2_hidden2_1/kernel*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_78VarIsInitializedOpm2_hidden1_3/bias*
_output_shapes
: 
c
 training_2/VarIsInitializedOp_79VarIsInitializedOpm2_hidden2_3/kernel*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_80VarIsInitializedOpm2_hidden2_1/bias*
_output_shapes
: 
\
 training_2/VarIsInitializedOp_81VarIsInitializedOpAdam_3/decay*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_82VarIsInitializedOptraining_2/Adam/vhat_7_1*
_output_shapes
: 
a
 training_2/VarIsInitializedOp_83VarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 

training_2/initNoOp^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/learning_rate/Assign^Adam_3/beta_1/Assign^Adam_3/beta_2/Assign^Adam_3/decay/Assign^Adam_3/iterations/Assign^Adam_3/learning_rate/Assign^Adam_4/beta_1/Assign^Adam_4/beta_2/Assign^Adam_4/decay/Assign^Adam_4/iterations/Assign^Adam_4/learning_rate/Assign^Adam_5/beta_1/Assign^Adam_5/beta_2/Assign^Adam_5/decay/Assign^Adam_5/iterations/Assign^Adam_5/learning_rate/Assign^count_2/Assign^count_3/Assign^count_4/Assign^count_5/Assign^m1_hidden1_1/bias/Assign^m1_hidden1_1/kernel/Assign^m1_hidden2_1/bias/Assign^m1_hidden2_1/kernel/Assign^m1_hidden3_1/bias/Assign^m1_hidden3_1/kernel/Assign^m1_output_1/bias/Assign^m1_output_1/kernel/Assign^m2_hidden1_1/bias/Assign^m2_hidden1_1/kernel/Assign^m2_hidden1_2/bias/Assign^m2_hidden1_2/kernel/Assign^m2_hidden1_3/bias/Assign^m2_hidden1_3/kernel/Assign^m2_hidden2_1/bias/Assign^m2_hidden2_1/kernel/Assign^m2_hidden2_2/bias/Assign^m2_hidden2_2/kernel/Assign^m2_hidden2_3/bias/Assign^m2_hidden2_3/kernel/Assign^m2_hidden3_1/bias/Assign^m2_hidden3_1/kernel/Assign^m2_hidden3_2/bias/Assign^m2_hidden3_2/kernel/Assign^m2_hidden3_3/bias/Assign^m2_hidden3_3/kernel/Assign^m2_output_1/bias/Assign^m2_output_1/kernel/Assign^m2_output_2/bias/Assign^m2_output_2/kernel/Assign^m2_output_3/bias/Assign^m2_output_3/kernel/Assign^total_2/Assign^total_3/Assign^total_4/Assign^total_5/Assign^training_2/Adam/m_0_1/Assign^training_2/Adam/m_1_1/Assign^training_2/Adam/m_2_1/Assign^training_2/Adam/m_3_1/Assign^training_2/Adam/m_4_1/Assign^training_2/Adam/m_5_1/Assign^training_2/Adam/m_6_1/Assign^training_2/Adam/m_7_1/Assign^training_2/Adam/v_0_1/Assign^training_2/Adam/v_1_1/Assign^training_2/Adam/v_2_1/Assign^training_2/Adam/v_3_1/Assign^training_2/Adam/v_4_1/Assign^training_2/Adam/v_5_1/Assign^training_2/Adam/v_6_1/Assign^training_2/Adam/v_7_1/Assign ^training_2/Adam/vhat_0_1/Assign ^training_2/Adam/vhat_1_1/Assign ^training_2/Adam/vhat_2_1/Assign ^training_2/Adam/vhat_3_1/Assign ^training_2/Adam/vhat_4_1/Assign ^training_2/Adam/vhat_5_1/Assign ^training_2/Adam/vhat_6_1/Assign ^training_2/Adam/vhat_7_1/Assign

training_2/group_depsNoOp^Mean_3^metrics_3/accuracy/Identity"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1^training_2/Adam/ReadVariableOp"^training_2/Adam/ReadVariableOp_15"^training_2/Adam/ReadVariableOp_16"^training_2/Adam/ReadVariableOp_17"^training_2/Adam/ReadVariableOp_23"^training_2/Adam/ReadVariableOp_24"^training_2/Adam/ReadVariableOp_25"^training_2/Adam/ReadVariableOp_31"^training_2/Adam/ReadVariableOp_32"^training_2/Adam/ReadVariableOp_33"^training_2/Adam/ReadVariableOp_39"^training_2/Adam/ReadVariableOp_40"^training_2/Adam/ReadVariableOp_41"^training_2/Adam/ReadVariableOp_47"^training_2/Adam/ReadVariableOp_48"^training_2/Adam/ReadVariableOp_49"^training_2/Adam/ReadVariableOp_55"^training_2/Adam/ReadVariableOp_56"^training_2/Adam/ReadVariableOp_57"^training_2/Adam/ReadVariableOp_63"^training_2/Adam/ReadVariableOp_64"^training_2/Adam/ReadVariableOp_65!^training_2/Adam/ReadVariableOp_7!^training_2/Adam/ReadVariableOp_8!^training_2/Adam/ReadVariableOp_9

group_deps_2NoOp^Mean_3^metrics_3/accuracy/Identity"^metrics_3/accuracy/ReadVariableOp$^metrics_3/accuracy/ReadVariableOp_1""°6
cond_context66
Ä
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *š
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
ø
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ä
dropout_1/cond/Switch_1:0
dropout_1/cond/Switch_1:1
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:0
dropout_1_input:0.
dropout_1_input:0dropout_1/cond/Switch_1:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0
Ä
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *š
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
ø
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*ä
dropout_2/cond/Switch_1:0
dropout_2/cond/Switch_1:1
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:0
dropout_2_input:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0.
dropout_2_input:0dropout_2/cond/Switch_1:0
Č
dropout_3/cond/cond_textdropout_3/cond/pred_id:0dropout_3/cond/switch_t:0 *ō
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
¼
dropout_3/cond/cond_text_1dropout_3/cond/pred_id:0dropout_3/cond/switch_f:0*č
dropout_3/cond/Switch_1:0
dropout_3/cond/Switch_1:1
dropout_3/cond/pred_id:0
dropout_3/cond/switch_f:0
m2_hidden1_1/Relu:00
m2_hidden1_1/Relu:0dropout_3/cond/Switch_1:04
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0
Ä
dropout_4/cond/cond_textdropout_4/cond/pred_id:0dropout_4/cond/switch_t:0 *š
dropout_4/cond/dropout/Floor:0
%dropout_4/cond/dropout/Shape/Switch:1
dropout_4/cond/dropout/Shape:0
dropout_4/cond/dropout/add:0
dropout_4/cond/dropout/mul:0
5dropout_4/cond/dropout/random_uniform/RandomUniform:0
+dropout_4/cond/dropout/random_uniform/max:0
+dropout_4/cond/dropout/random_uniform/min:0
+dropout_4/cond/dropout/random_uniform/mul:0
+dropout_4/cond/dropout/random_uniform/sub:0
'dropout_4/cond/dropout/random_uniform:0
dropout_4/cond/dropout/rate:0
dropout_4/cond/dropout/sub/x:0
dropout_4/cond/dropout/sub:0
 dropout_4/cond/dropout/truediv:0
dropout_4/cond/pred_id:0
dropout_4/cond/switch_t:0
dropout_4_input:04
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:0:
dropout_4_input:0%dropout_4/cond/dropout/Shape/Switch:1
ø
dropout_4/cond/cond_text_1dropout_4/cond/pred_id:0dropout_4/cond/switch_f:0*ä
dropout_4/cond/Switch_1:0
dropout_4/cond/Switch_1:1
dropout_4/cond/pred_id:0
dropout_4/cond/switch_f:0
dropout_4_input:0.
dropout_4_input:0dropout_4/cond/Switch_1:04
dropout_4/cond/pred_id:0dropout_4/cond/pred_id:0
Ä
dropout_5/cond/cond_textdropout_5/cond/pred_id:0dropout_5/cond/switch_t:0 *š
dropout_5/cond/dropout/Floor:0
%dropout_5/cond/dropout/Shape/Switch:1
dropout_5/cond/dropout/Shape:0
dropout_5/cond/dropout/add:0
dropout_5/cond/dropout/mul:0
5dropout_5/cond/dropout/random_uniform/RandomUniform:0
+dropout_5/cond/dropout/random_uniform/max:0
+dropout_5/cond/dropout/random_uniform/min:0
+dropout_5/cond/dropout/random_uniform/mul:0
+dropout_5/cond/dropout/random_uniform/sub:0
'dropout_5/cond/dropout/random_uniform:0
dropout_5/cond/dropout/rate:0
dropout_5/cond/dropout/sub/x:0
dropout_5/cond/dropout/sub:0
 dropout_5/cond/dropout/truediv:0
dropout_5/cond/pred_id:0
dropout_5/cond/switch_t:0
dropout_5_input:0:
dropout_5_input:0%dropout_5/cond/dropout/Shape/Switch:14
dropout_5/cond/pred_id:0dropout_5/cond/pred_id:0
ø
dropout_5/cond/cond_text_1dropout_5/cond/pred_id:0dropout_5/cond/switch_f:0*ä
dropout_5/cond/Switch_1:0
dropout_5/cond/Switch_1:1
dropout_5/cond/pred_id:0
dropout_5/cond/switch_f:0
dropout_5_input:0.
dropout_5_input:0dropout_5/cond/Switch_1:04
dropout_5/cond/pred_id:0dropout_5/cond/pred_id:0
Č
dropout_6/cond/cond_textdropout_6/cond/pred_id:0dropout_6/cond/switch_t:0 *ō
dropout_6/cond/dropout/Floor:0
%dropout_6/cond/dropout/Shape/Switch:1
dropout_6/cond/dropout/Shape:0
dropout_6/cond/dropout/add:0
dropout_6/cond/dropout/mul:0
5dropout_6/cond/dropout/random_uniform/RandomUniform:0
+dropout_6/cond/dropout/random_uniform/max:0
+dropout_6/cond/dropout/random_uniform/min:0
+dropout_6/cond/dropout/random_uniform/mul:0
+dropout_6/cond/dropout/random_uniform/sub:0
'dropout_6/cond/dropout/random_uniform:0
dropout_6/cond/dropout/rate:0
dropout_6/cond/dropout/sub/x:0
dropout_6/cond/dropout/sub:0
 dropout_6/cond/dropout/truediv:0
dropout_6/cond/pred_id:0
dropout_6/cond/switch_t:0
m2_hidden1_3/Relu:04
dropout_6/cond/pred_id:0dropout_6/cond/pred_id:0<
m2_hidden1_3/Relu:0%dropout_6/cond/dropout/Shape/Switch:1
¼
dropout_6/cond/cond_text_1dropout_6/cond/pred_id:0dropout_6/cond/switch_f:0*č
dropout_6/cond/Switch_1:0
dropout_6/cond/Switch_1:1
dropout_6/cond/pred_id:0
dropout_6/cond/switch_f:0
m2_hidden1_3/Relu:04
dropout_6/cond/pred_id:0dropout_6/cond/pred_id:00
m2_hidden1_3/Relu:0dropout_6/cond/Switch_1:0"Ģ
	variables½¹
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

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08

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

training/Adam/vhat_0_1:0training/Adam/vhat_0_1/Assign,training/Adam/vhat_0_1/Read/ReadVariableOp:0(2training/Adam/vhat_0:08

training/Adam/vhat_1_1:0training/Adam/vhat_1_1/Assign,training/Adam/vhat_1_1/Read/ReadVariableOp:0(2training/Adam/vhat_1:08

training/Adam/vhat_2_1:0training/Adam/vhat_2_1/Assign,training/Adam/vhat_2_1/Read/ReadVariableOp:0(2training/Adam/vhat_2:08

training/Adam/vhat_3_1:0training/Adam/vhat_3_1/Assign,training/Adam/vhat_3_1/Read/ReadVariableOp:0(2training/Adam/vhat_3:08

training/Adam/vhat_4_1:0training/Adam/vhat_4_1/Assign,training/Adam/vhat_4_1/Read/ReadVariableOp:0(2training/Adam/vhat_4:08

training/Adam/vhat_5_1:0training/Adam/vhat_5_1/Assign,training/Adam/vhat_5_1/Read/ReadVariableOp:0(2training/Adam/vhat_5:08

training/Adam/vhat_6_1:0training/Adam/vhat_6_1/Assign,training/Adam/vhat_6_1/Read/ReadVariableOp:0(2training/Adam/vhat_6:08

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

Adam_1/iterations:0Adam_1/iterations/Assign'Adam_1/iterations/Read/ReadVariableOp:0(2-Adam_1/iterations/Initializer/initial_value:08

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

training_1/Adam/vhat_0_1:0training_1/Adam/vhat_0_1/Assign.training_1/Adam/vhat_0_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_0:08

training_1/Adam/vhat_1_1:0training_1/Adam/vhat_1_1/Assign.training_1/Adam/vhat_1_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_1:08

training_1/Adam/vhat_2_1:0training_1/Adam/vhat_2_1/Assign.training_1/Adam/vhat_2_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_2:08

training_1/Adam/vhat_3_1:0training_1/Adam/vhat_3_1/Assign.training_1/Adam/vhat_3_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_3:08

training_1/Adam/vhat_4_1:0training_1/Adam/vhat_4_1/Assign.training_1/Adam/vhat_4_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_4:08

training_1/Adam/vhat_5_1:0training_1/Adam/vhat_5_1/Assign.training_1/Adam/vhat_5_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_5:08

training_1/Adam/vhat_6_1:0training_1/Adam/vhat_6_1/Assign.training_1/Adam/vhat_6_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_6:08

training_1/Adam/vhat_7_1:0training_1/Adam/vhat_7_1/Assign.training_1/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_7:08

m2_hidden1_1/kernel:0m2_hidden1_1/kernel/Assign)m2_hidden1_1/kernel/Read/ReadVariableOp:0(2m2_hidden1_1/random_uniform:08
r
m2_hidden1_1/bias:0m2_hidden1_1/bias/Assign'm2_hidden1_1/bias/Read/ReadVariableOp:0(2m2_hidden1_1/Const:08

m2_hidden2_1/kernel:0m2_hidden2_1/kernel/Assign)m2_hidden2_1/kernel/Read/ReadVariableOp:0(2m2_hidden2_1/random_uniform:08
r
m2_hidden2_1/bias:0m2_hidden2_1/bias/Assign'm2_hidden2_1/bias/Read/ReadVariableOp:0(2m2_hidden2_1/Const:08

m2_hidden3_1/kernel:0m2_hidden3_1/kernel/Assign)m2_hidden3_1/kernel/Read/ReadVariableOp:0(2m2_hidden3_1/random_uniform:08
r
m2_hidden3_1/bias:0m2_hidden3_1/bias/Assign'm2_hidden3_1/bias/Read/ReadVariableOp:0(2m2_hidden3_1/Const:08
}
m2_output_1/kernel:0m2_output_1/kernel/Assign(m2_output_1/kernel/Read/ReadVariableOp:0(2m2_output_1/random_uniform:08
n
m2_output_1/bias:0m2_output_1/bias/Assign&m2_output_1/bias/Read/ReadVariableOp:0(2m2_output_1/Const:08

Adam_2/iterations:0Adam_2/iterations/Assign'Adam_2/iterations/Read/ReadVariableOp:0(2-Adam_2/iterations/Initializer/initial_value:08

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

m1_hidden1_1/kernel:0m1_hidden1_1/kernel/Assign)m1_hidden1_1/kernel/Read/ReadVariableOp:0(2m1_hidden1_1/random_uniform:08
r
m1_hidden1_1/bias:0m1_hidden1_1/bias/Assign'm1_hidden1_1/bias/Read/ReadVariableOp:0(2m1_hidden1_1/Const:08

m1_hidden2_1/kernel:0m1_hidden2_1/kernel/Assign)m1_hidden2_1/kernel/Read/ReadVariableOp:0(2m1_hidden2_1/random_uniform:08
r
m1_hidden2_1/bias:0m1_hidden2_1/bias/Assign'm1_hidden2_1/bias/Read/ReadVariableOp:0(2m1_hidden2_1/Const:08

m1_hidden3_1/kernel:0m1_hidden3_1/kernel/Assign)m1_hidden3_1/kernel/Read/ReadVariableOp:0(2m1_hidden3_1/random_uniform:08
r
m1_hidden3_1/bias:0m1_hidden3_1/bias/Assign'm1_hidden3_1/bias/Read/ReadVariableOp:0(2m1_hidden3_1/Const:08
}
m1_output_1/kernel:0m1_output_1/kernel/Assign(m1_output_1/kernel/Read/ReadVariableOp:0(2m1_output_1/random_uniform:08
n
m1_output_1/bias:0m1_output_1/bias/Assign&m1_output_1/bias/Read/ReadVariableOp:0(2m1_output_1/Const:08

Adam_3/iterations:0Adam_3/iterations/Assign'Adam_3/iterations/Read/ReadVariableOp:0(2-Adam_3/iterations/Initializer/initial_value:08

Adam_3/learning_rate:0Adam_3/learning_rate/Assign*Adam_3/learning_rate/Read/ReadVariableOp:0(20Adam_3/learning_rate/Initializer/initial_value:08
{
Adam_3/beta_1:0Adam_3/beta_1/Assign#Adam_3/beta_1/Read/ReadVariableOp:0(2)Adam_3/beta_1/Initializer/initial_value:08
{
Adam_3/beta_2:0Adam_3/beta_2/Assign#Adam_3/beta_2/Read/ReadVariableOp:0(2)Adam_3/beta_2/Initializer/initial_value:08
w
Adam_3/decay:0Adam_3/decay/Assign"Adam_3/decay/Read/ReadVariableOp:0(2(Adam_3/decay/Initializer/initial_value:08
I
	total_3:0total_3/Assigntotal_3/Read/ReadVariableOp:0(2	Const_9:08
J
	count_3:0count_3/Assigncount_3/Read/ReadVariableOp:0(2
Const_10:08

m2_hidden1_2/kernel:0m2_hidden1_2/kernel/Assign)m2_hidden1_2/kernel/Read/ReadVariableOp:0(2m2_hidden1_2/random_uniform:08
r
m2_hidden1_2/bias:0m2_hidden1_2/bias/Assign'm2_hidden1_2/bias/Read/ReadVariableOp:0(2m2_hidden1_2/Const:08

m2_hidden2_2/kernel:0m2_hidden2_2/kernel/Assign)m2_hidden2_2/kernel/Read/ReadVariableOp:0(2m2_hidden2_2/random_uniform:08
r
m2_hidden2_2/bias:0m2_hidden2_2/bias/Assign'm2_hidden2_2/bias/Read/ReadVariableOp:0(2m2_hidden2_2/Const:08

m2_hidden3_2/kernel:0m2_hidden3_2/kernel/Assign)m2_hidden3_2/kernel/Read/ReadVariableOp:0(2m2_hidden3_2/random_uniform:08
r
m2_hidden3_2/bias:0m2_hidden3_2/bias/Assign'm2_hidden3_2/bias/Read/ReadVariableOp:0(2m2_hidden3_2/Const:08
}
m2_output_2/kernel:0m2_output_2/kernel/Assign(m2_output_2/kernel/Read/ReadVariableOp:0(2m2_output_2/random_uniform:08
n
m2_output_2/bias:0m2_output_2/bias/Assign&m2_output_2/bias/Read/ReadVariableOp:0(2m2_output_2/Const:08

Adam_4/iterations:0Adam_4/iterations/Assign'Adam_4/iterations/Read/ReadVariableOp:0(2-Adam_4/iterations/Initializer/initial_value:08

Adam_4/learning_rate:0Adam_4/learning_rate/Assign*Adam_4/learning_rate/Read/ReadVariableOp:0(20Adam_4/learning_rate/Initializer/initial_value:08
{
Adam_4/beta_1:0Adam_4/beta_1/Assign#Adam_4/beta_1/Read/ReadVariableOp:0(2)Adam_4/beta_1/Initializer/initial_value:08
{
Adam_4/beta_2:0Adam_4/beta_2/Assign#Adam_4/beta_2/Read/ReadVariableOp:0(2)Adam_4/beta_2/Initializer/initial_value:08
w
Adam_4/decay:0Adam_4/decay/Assign"Adam_4/decay/Read/ReadVariableOp:0(2(Adam_4/decay/Initializer/initial_value:08
J
	total_4:0total_4/Assigntotal_4/Read/ReadVariableOp:0(2
Const_12:08
J
	count_4:0count_4/Assigncount_4/Read/ReadVariableOp:0(2
Const_13:08

m2_hidden1_3/kernel:0m2_hidden1_3/kernel/Assign)m2_hidden1_3/kernel/Read/ReadVariableOp:0(2m2_hidden1_3/random_uniform:08
r
m2_hidden1_3/bias:0m2_hidden1_3/bias/Assign'm2_hidden1_3/bias/Read/ReadVariableOp:0(2m2_hidden1_3/Const:08

m2_hidden2_3/kernel:0m2_hidden2_3/kernel/Assign)m2_hidden2_3/kernel/Read/ReadVariableOp:0(2m2_hidden2_3/random_uniform:08
r
m2_hidden2_3/bias:0m2_hidden2_3/bias/Assign'm2_hidden2_3/bias/Read/ReadVariableOp:0(2m2_hidden2_3/Const:08

m2_hidden3_3/kernel:0m2_hidden3_3/kernel/Assign)m2_hidden3_3/kernel/Read/ReadVariableOp:0(2m2_hidden3_3/random_uniform:08
r
m2_hidden3_3/bias:0m2_hidden3_3/bias/Assign'm2_hidden3_3/bias/Read/ReadVariableOp:0(2m2_hidden3_3/Const:08
}
m2_output_3/kernel:0m2_output_3/kernel/Assign(m2_output_3/kernel/Read/ReadVariableOp:0(2m2_output_3/random_uniform:08
n
m2_output_3/bias:0m2_output_3/bias/Assign&m2_output_3/bias/Read/ReadVariableOp:0(2m2_output_3/Const:08

Adam_5/iterations:0Adam_5/iterations/Assign'Adam_5/iterations/Read/ReadVariableOp:0(2-Adam_5/iterations/Initializer/initial_value:08

Adam_5/learning_rate:0Adam_5/learning_rate/Assign*Adam_5/learning_rate/Read/ReadVariableOp:0(20Adam_5/learning_rate/Initializer/initial_value:08
{
Adam_5/beta_1:0Adam_5/beta_1/Assign#Adam_5/beta_1/Read/ReadVariableOp:0(2)Adam_5/beta_1/Initializer/initial_value:08
{
Adam_5/beta_2:0Adam_5/beta_2/Assign#Adam_5/beta_2/Read/ReadVariableOp:0(2)Adam_5/beta_2/Initializer/initial_value:08
w
Adam_5/decay:0Adam_5/decay/Assign"Adam_5/decay/Read/ReadVariableOp:0(2(Adam_5/decay/Initializer/initial_value:08
J
	total_5:0total_5/Assigntotal_5/Read/ReadVariableOp:0(2
Const_15:08
J
	count_5:0count_5/Assigncount_5/Read/ReadVariableOp:0(2
Const_16:08

training_2/Adam/m_0_1:0training_2/Adam/m_0_1/Assign+training_2/Adam/m_0_1/Read/ReadVariableOp:0(2training_2/Adam/m_0:08

training_2/Adam/m_1_1:0training_2/Adam/m_1_1/Assign+training_2/Adam/m_1_1/Read/ReadVariableOp:0(2training_2/Adam/m_1:08

training_2/Adam/m_2_1:0training_2/Adam/m_2_1/Assign+training_2/Adam/m_2_1/Read/ReadVariableOp:0(2training_2/Adam/m_2:08

training_2/Adam/m_3_1:0training_2/Adam/m_3_1/Assign+training_2/Adam/m_3_1/Read/ReadVariableOp:0(2training_2/Adam/m_3:08

training_2/Adam/m_4_1:0training_2/Adam/m_4_1/Assign+training_2/Adam/m_4_1/Read/ReadVariableOp:0(2training_2/Adam/m_4:08

training_2/Adam/m_5_1:0training_2/Adam/m_5_1/Assign+training_2/Adam/m_5_1/Read/ReadVariableOp:0(2training_2/Adam/m_5:08

training_2/Adam/m_6_1:0training_2/Adam/m_6_1/Assign+training_2/Adam/m_6_1/Read/ReadVariableOp:0(2training_2/Adam/m_6:08

training_2/Adam/m_7_1:0training_2/Adam/m_7_1/Assign+training_2/Adam/m_7_1/Read/ReadVariableOp:0(2training_2/Adam/m_7:08

training_2/Adam/v_0_1:0training_2/Adam/v_0_1/Assign+training_2/Adam/v_0_1/Read/ReadVariableOp:0(2training_2/Adam/v_0:08

training_2/Adam/v_1_1:0training_2/Adam/v_1_1/Assign+training_2/Adam/v_1_1/Read/ReadVariableOp:0(2training_2/Adam/v_1:08

training_2/Adam/v_2_1:0training_2/Adam/v_2_1/Assign+training_2/Adam/v_2_1/Read/ReadVariableOp:0(2training_2/Adam/v_2:08

training_2/Adam/v_3_1:0training_2/Adam/v_3_1/Assign+training_2/Adam/v_3_1/Read/ReadVariableOp:0(2training_2/Adam/v_3:08

training_2/Adam/v_4_1:0training_2/Adam/v_4_1/Assign+training_2/Adam/v_4_1/Read/ReadVariableOp:0(2training_2/Adam/v_4:08

training_2/Adam/v_5_1:0training_2/Adam/v_5_1/Assign+training_2/Adam/v_5_1/Read/ReadVariableOp:0(2training_2/Adam/v_5:08

training_2/Adam/v_6_1:0training_2/Adam/v_6_1/Assign+training_2/Adam/v_6_1/Read/ReadVariableOp:0(2training_2/Adam/v_6:08

training_2/Adam/v_7_1:0training_2/Adam/v_7_1/Assign+training_2/Adam/v_7_1/Read/ReadVariableOp:0(2training_2/Adam/v_7:08

training_2/Adam/vhat_0_1:0training_2/Adam/vhat_0_1/Assign.training_2/Adam/vhat_0_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_0:08

training_2/Adam/vhat_1_1:0training_2/Adam/vhat_1_1/Assign.training_2/Adam/vhat_1_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_1:08

training_2/Adam/vhat_2_1:0training_2/Adam/vhat_2_1/Assign.training_2/Adam/vhat_2_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_2:08

training_2/Adam/vhat_3_1:0training_2/Adam/vhat_3_1/Assign.training_2/Adam/vhat_3_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_3:08

training_2/Adam/vhat_4_1:0training_2/Adam/vhat_4_1/Assign.training_2/Adam/vhat_4_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_4:08

training_2/Adam/vhat_5_1:0training_2/Adam/vhat_5_1/Assign.training_2/Adam/vhat_5_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_5:08

training_2/Adam/vhat_6_1:0training_2/Adam/vhat_6_1/Assign.training_2/Adam/vhat_6_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_6:08

training_2/Adam/vhat_7_1:0training_2/Adam/vhat_7_1/Assign.training_2/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_7:08"Ö
trainable_variables½¹
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

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08

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

training/Adam/vhat_0_1:0training/Adam/vhat_0_1/Assign,training/Adam/vhat_0_1/Read/ReadVariableOp:0(2training/Adam/vhat_0:08

training/Adam/vhat_1_1:0training/Adam/vhat_1_1/Assign,training/Adam/vhat_1_1/Read/ReadVariableOp:0(2training/Adam/vhat_1:08

training/Adam/vhat_2_1:0training/Adam/vhat_2_1/Assign,training/Adam/vhat_2_1/Read/ReadVariableOp:0(2training/Adam/vhat_2:08

training/Adam/vhat_3_1:0training/Adam/vhat_3_1/Assign,training/Adam/vhat_3_1/Read/ReadVariableOp:0(2training/Adam/vhat_3:08

training/Adam/vhat_4_1:0training/Adam/vhat_4_1/Assign,training/Adam/vhat_4_1/Read/ReadVariableOp:0(2training/Adam/vhat_4:08

training/Adam/vhat_5_1:0training/Adam/vhat_5_1/Assign,training/Adam/vhat_5_1/Read/ReadVariableOp:0(2training/Adam/vhat_5:08

training/Adam/vhat_6_1:0training/Adam/vhat_6_1/Assign,training/Adam/vhat_6_1/Read/ReadVariableOp:0(2training/Adam/vhat_6:08

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

Adam_1/iterations:0Adam_1/iterations/Assign'Adam_1/iterations/Read/ReadVariableOp:0(2-Adam_1/iterations/Initializer/initial_value:08

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

training_1/Adam/vhat_0_1:0training_1/Adam/vhat_0_1/Assign.training_1/Adam/vhat_0_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_0:08

training_1/Adam/vhat_1_1:0training_1/Adam/vhat_1_1/Assign.training_1/Adam/vhat_1_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_1:08

training_1/Adam/vhat_2_1:0training_1/Adam/vhat_2_1/Assign.training_1/Adam/vhat_2_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_2:08

training_1/Adam/vhat_3_1:0training_1/Adam/vhat_3_1/Assign.training_1/Adam/vhat_3_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_3:08

training_1/Adam/vhat_4_1:0training_1/Adam/vhat_4_1/Assign.training_1/Adam/vhat_4_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_4:08

training_1/Adam/vhat_5_1:0training_1/Adam/vhat_5_1/Assign.training_1/Adam/vhat_5_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_5:08

training_1/Adam/vhat_6_1:0training_1/Adam/vhat_6_1/Assign.training_1/Adam/vhat_6_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_6:08

training_1/Adam/vhat_7_1:0training_1/Adam/vhat_7_1/Assign.training_1/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_1/Adam/vhat_7:08

m2_hidden1_1/kernel:0m2_hidden1_1/kernel/Assign)m2_hidden1_1/kernel/Read/ReadVariableOp:0(2m2_hidden1_1/random_uniform:08
r
m2_hidden1_1/bias:0m2_hidden1_1/bias/Assign'm2_hidden1_1/bias/Read/ReadVariableOp:0(2m2_hidden1_1/Const:08

m2_hidden2_1/kernel:0m2_hidden2_1/kernel/Assign)m2_hidden2_1/kernel/Read/ReadVariableOp:0(2m2_hidden2_1/random_uniform:08
r
m2_hidden2_1/bias:0m2_hidden2_1/bias/Assign'm2_hidden2_1/bias/Read/ReadVariableOp:0(2m2_hidden2_1/Const:08

m2_hidden3_1/kernel:0m2_hidden3_1/kernel/Assign)m2_hidden3_1/kernel/Read/ReadVariableOp:0(2m2_hidden3_1/random_uniform:08
r
m2_hidden3_1/bias:0m2_hidden3_1/bias/Assign'm2_hidden3_1/bias/Read/ReadVariableOp:0(2m2_hidden3_1/Const:08
}
m2_output_1/kernel:0m2_output_1/kernel/Assign(m2_output_1/kernel/Read/ReadVariableOp:0(2m2_output_1/random_uniform:08
n
m2_output_1/bias:0m2_output_1/bias/Assign&m2_output_1/bias/Read/ReadVariableOp:0(2m2_output_1/Const:08

Adam_2/iterations:0Adam_2/iterations/Assign'Adam_2/iterations/Read/ReadVariableOp:0(2-Adam_2/iterations/Initializer/initial_value:08

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

m1_hidden1_1/kernel:0m1_hidden1_1/kernel/Assign)m1_hidden1_1/kernel/Read/ReadVariableOp:0(2m1_hidden1_1/random_uniform:08
r
m1_hidden1_1/bias:0m1_hidden1_1/bias/Assign'm1_hidden1_1/bias/Read/ReadVariableOp:0(2m1_hidden1_1/Const:08

m1_hidden2_1/kernel:0m1_hidden2_1/kernel/Assign)m1_hidden2_1/kernel/Read/ReadVariableOp:0(2m1_hidden2_1/random_uniform:08
r
m1_hidden2_1/bias:0m1_hidden2_1/bias/Assign'm1_hidden2_1/bias/Read/ReadVariableOp:0(2m1_hidden2_1/Const:08

m1_hidden3_1/kernel:0m1_hidden3_1/kernel/Assign)m1_hidden3_1/kernel/Read/ReadVariableOp:0(2m1_hidden3_1/random_uniform:08
r
m1_hidden3_1/bias:0m1_hidden3_1/bias/Assign'm1_hidden3_1/bias/Read/ReadVariableOp:0(2m1_hidden3_1/Const:08
}
m1_output_1/kernel:0m1_output_1/kernel/Assign(m1_output_1/kernel/Read/ReadVariableOp:0(2m1_output_1/random_uniform:08
n
m1_output_1/bias:0m1_output_1/bias/Assign&m1_output_1/bias/Read/ReadVariableOp:0(2m1_output_1/Const:08

Adam_3/iterations:0Adam_3/iterations/Assign'Adam_3/iterations/Read/ReadVariableOp:0(2-Adam_3/iterations/Initializer/initial_value:08

Adam_3/learning_rate:0Adam_3/learning_rate/Assign*Adam_3/learning_rate/Read/ReadVariableOp:0(20Adam_3/learning_rate/Initializer/initial_value:08
{
Adam_3/beta_1:0Adam_3/beta_1/Assign#Adam_3/beta_1/Read/ReadVariableOp:0(2)Adam_3/beta_1/Initializer/initial_value:08
{
Adam_3/beta_2:0Adam_3/beta_2/Assign#Adam_3/beta_2/Read/ReadVariableOp:0(2)Adam_3/beta_2/Initializer/initial_value:08
w
Adam_3/decay:0Adam_3/decay/Assign"Adam_3/decay/Read/ReadVariableOp:0(2(Adam_3/decay/Initializer/initial_value:08
I
	total_3:0total_3/Assigntotal_3/Read/ReadVariableOp:0(2	Const_9:08
J
	count_3:0count_3/Assigncount_3/Read/ReadVariableOp:0(2
Const_10:08

m2_hidden1_2/kernel:0m2_hidden1_2/kernel/Assign)m2_hidden1_2/kernel/Read/ReadVariableOp:0(2m2_hidden1_2/random_uniform:08
r
m2_hidden1_2/bias:0m2_hidden1_2/bias/Assign'm2_hidden1_2/bias/Read/ReadVariableOp:0(2m2_hidden1_2/Const:08

m2_hidden2_2/kernel:0m2_hidden2_2/kernel/Assign)m2_hidden2_2/kernel/Read/ReadVariableOp:0(2m2_hidden2_2/random_uniform:08
r
m2_hidden2_2/bias:0m2_hidden2_2/bias/Assign'm2_hidden2_2/bias/Read/ReadVariableOp:0(2m2_hidden2_2/Const:08

m2_hidden3_2/kernel:0m2_hidden3_2/kernel/Assign)m2_hidden3_2/kernel/Read/ReadVariableOp:0(2m2_hidden3_2/random_uniform:08
r
m2_hidden3_2/bias:0m2_hidden3_2/bias/Assign'm2_hidden3_2/bias/Read/ReadVariableOp:0(2m2_hidden3_2/Const:08
}
m2_output_2/kernel:0m2_output_2/kernel/Assign(m2_output_2/kernel/Read/ReadVariableOp:0(2m2_output_2/random_uniform:08
n
m2_output_2/bias:0m2_output_2/bias/Assign&m2_output_2/bias/Read/ReadVariableOp:0(2m2_output_2/Const:08

Adam_4/iterations:0Adam_4/iterations/Assign'Adam_4/iterations/Read/ReadVariableOp:0(2-Adam_4/iterations/Initializer/initial_value:08

Adam_4/learning_rate:0Adam_4/learning_rate/Assign*Adam_4/learning_rate/Read/ReadVariableOp:0(20Adam_4/learning_rate/Initializer/initial_value:08
{
Adam_4/beta_1:0Adam_4/beta_1/Assign#Adam_4/beta_1/Read/ReadVariableOp:0(2)Adam_4/beta_1/Initializer/initial_value:08
{
Adam_4/beta_2:0Adam_4/beta_2/Assign#Adam_4/beta_2/Read/ReadVariableOp:0(2)Adam_4/beta_2/Initializer/initial_value:08
w
Adam_4/decay:0Adam_4/decay/Assign"Adam_4/decay/Read/ReadVariableOp:0(2(Adam_4/decay/Initializer/initial_value:08
J
	total_4:0total_4/Assigntotal_4/Read/ReadVariableOp:0(2
Const_12:08
J
	count_4:0count_4/Assigncount_4/Read/ReadVariableOp:0(2
Const_13:08

m2_hidden1_3/kernel:0m2_hidden1_3/kernel/Assign)m2_hidden1_3/kernel/Read/ReadVariableOp:0(2m2_hidden1_3/random_uniform:08
r
m2_hidden1_3/bias:0m2_hidden1_3/bias/Assign'm2_hidden1_3/bias/Read/ReadVariableOp:0(2m2_hidden1_3/Const:08

m2_hidden2_3/kernel:0m2_hidden2_3/kernel/Assign)m2_hidden2_3/kernel/Read/ReadVariableOp:0(2m2_hidden2_3/random_uniform:08
r
m2_hidden2_3/bias:0m2_hidden2_3/bias/Assign'm2_hidden2_3/bias/Read/ReadVariableOp:0(2m2_hidden2_3/Const:08

m2_hidden3_3/kernel:0m2_hidden3_3/kernel/Assign)m2_hidden3_3/kernel/Read/ReadVariableOp:0(2m2_hidden3_3/random_uniform:08
r
m2_hidden3_3/bias:0m2_hidden3_3/bias/Assign'm2_hidden3_3/bias/Read/ReadVariableOp:0(2m2_hidden3_3/Const:08
}
m2_output_3/kernel:0m2_output_3/kernel/Assign(m2_output_3/kernel/Read/ReadVariableOp:0(2m2_output_3/random_uniform:08
n
m2_output_3/bias:0m2_output_3/bias/Assign&m2_output_3/bias/Read/ReadVariableOp:0(2m2_output_3/Const:08

Adam_5/iterations:0Adam_5/iterations/Assign'Adam_5/iterations/Read/ReadVariableOp:0(2-Adam_5/iterations/Initializer/initial_value:08

Adam_5/learning_rate:0Adam_5/learning_rate/Assign*Adam_5/learning_rate/Read/ReadVariableOp:0(20Adam_5/learning_rate/Initializer/initial_value:08
{
Adam_5/beta_1:0Adam_5/beta_1/Assign#Adam_5/beta_1/Read/ReadVariableOp:0(2)Adam_5/beta_1/Initializer/initial_value:08
{
Adam_5/beta_2:0Adam_5/beta_2/Assign#Adam_5/beta_2/Read/ReadVariableOp:0(2)Adam_5/beta_2/Initializer/initial_value:08
w
Adam_5/decay:0Adam_5/decay/Assign"Adam_5/decay/Read/ReadVariableOp:0(2(Adam_5/decay/Initializer/initial_value:08
J
	total_5:0total_5/Assigntotal_5/Read/ReadVariableOp:0(2
Const_15:08
J
	count_5:0count_5/Assigncount_5/Read/ReadVariableOp:0(2
Const_16:08

training_2/Adam/m_0_1:0training_2/Adam/m_0_1/Assign+training_2/Adam/m_0_1/Read/ReadVariableOp:0(2training_2/Adam/m_0:08

training_2/Adam/m_1_1:0training_2/Adam/m_1_1/Assign+training_2/Adam/m_1_1/Read/ReadVariableOp:0(2training_2/Adam/m_1:08

training_2/Adam/m_2_1:0training_2/Adam/m_2_1/Assign+training_2/Adam/m_2_1/Read/ReadVariableOp:0(2training_2/Adam/m_2:08

training_2/Adam/m_3_1:0training_2/Adam/m_3_1/Assign+training_2/Adam/m_3_1/Read/ReadVariableOp:0(2training_2/Adam/m_3:08

training_2/Adam/m_4_1:0training_2/Adam/m_4_1/Assign+training_2/Adam/m_4_1/Read/ReadVariableOp:0(2training_2/Adam/m_4:08

training_2/Adam/m_5_1:0training_2/Adam/m_5_1/Assign+training_2/Adam/m_5_1/Read/ReadVariableOp:0(2training_2/Adam/m_5:08

training_2/Adam/m_6_1:0training_2/Adam/m_6_1/Assign+training_2/Adam/m_6_1/Read/ReadVariableOp:0(2training_2/Adam/m_6:08

training_2/Adam/m_7_1:0training_2/Adam/m_7_1/Assign+training_2/Adam/m_7_1/Read/ReadVariableOp:0(2training_2/Adam/m_7:08

training_2/Adam/v_0_1:0training_2/Adam/v_0_1/Assign+training_2/Adam/v_0_1/Read/ReadVariableOp:0(2training_2/Adam/v_0:08

training_2/Adam/v_1_1:0training_2/Adam/v_1_1/Assign+training_2/Adam/v_1_1/Read/ReadVariableOp:0(2training_2/Adam/v_1:08

training_2/Adam/v_2_1:0training_2/Adam/v_2_1/Assign+training_2/Adam/v_2_1/Read/ReadVariableOp:0(2training_2/Adam/v_2:08

training_2/Adam/v_3_1:0training_2/Adam/v_3_1/Assign+training_2/Adam/v_3_1/Read/ReadVariableOp:0(2training_2/Adam/v_3:08

training_2/Adam/v_4_1:0training_2/Adam/v_4_1/Assign+training_2/Adam/v_4_1/Read/ReadVariableOp:0(2training_2/Adam/v_4:08

training_2/Adam/v_5_1:0training_2/Adam/v_5_1/Assign+training_2/Adam/v_5_1/Read/ReadVariableOp:0(2training_2/Adam/v_5:08

training_2/Adam/v_6_1:0training_2/Adam/v_6_1/Assign+training_2/Adam/v_6_1/Read/ReadVariableOp:0(2training_2/Adam/v_6:08

training_2/Adam/v_7_1:0training_2/Adam/v_7_1/Assign+training_2/Adam/v_7_1/Read/ReadVariableOp:0(2training_2/Adam/v_7:08

training_2/Adam/vhat_0_1:0training_2/Adam/vhat_0_1/Assign.training_2/Adam/vhat_0_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_0:08

training_2/Adam/vhat_1_1:0training_2/Adam/vhat_1_1/Assign.training_2/Adam/vhat_1_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_1:08

training_2/Adam/vhat_2_1:0training_2/Adam/vhat_2_1/Assign.training_2/Adam/vhat_2_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_2:08

training_2/Adam/vhat_3_1:0training_2/Adam/vhat_3_1/Assign.training_2/Adam/vhat_3_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_3:08

training_2/Adam/vhat_4_1:0training_2/Adam/vhat_4_1/Assign.training_2/Adam/vhat_4_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_4:08

training_2/Adam/vhat_5_1:0training_2/Adam/vhat_5_1/Assign.training_2/Adam/vhat_5_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_5:08

training_2/Adam/vhat_6_1:0training_2/Adam/vhat_6_1/Assign.training_2/Adam/vhat_6_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_6:08

training_2/Adam/vhat_7_1:0training_2/Adam/vhat_7_1/Assign.training_2/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_7:08ä,W       ČĮ	RÓpF"“×A*

val_loss“@żż        )ķ©P	&ŌpF"“×A*

val_accuracy°g>°“G,       £K"	ŌpF"“×A*

loss;õ@[rT       ČĮ	ŲŌpF"“×A*

accuracy?5.>fgŅ       ŁÜ2	äńF"“×A*

val_loss@³’?ćqŌ"       x=ż	°ńF"“×A*

val_accuracyz„>{zē       Ų-		ńF"“×A*

lossZ@÷c”       ŁÜ2	ZńF"“×A*

accuracyģQx>ž„Ė¾       ŁÜ2	qŲG"“×A*

val_lossj©ł?MńŚh"       x=ż	ŪG"“×A*

val_accuracyāé>¼”§       Ų-	„ŪG"“×A*

lossĀēż?¦_fr       ŁÜ2	'ÜG"“×A*

accuracyÆ%>ÄĪ?       ŁÜ2	ŗĄH"“×A*

val_lossžń?®Ņv¶"       x=ż	ĮH"“×A*

val_accuracy„>       Ų-	ćĮH"“×A*

lossy;ö?ĘC`r       ŁÜ2	7ĀH"“×A*

accuracy³{>Ł¢fJ       ŁÜ2	×ńØH"“×A*

val_lossźģ?9“9"       x=ż	õņØH"“×A*

val_accuracyj­>W-ŗ       Ų-	oóØH"“×A*

loss£š?}¶|       ŁÜ2	×óØH"“×A*

accuracy@”>$ąVŠ       ŁÜ2	«I"“×A*

val_lossŌč?r9"       x=ż	P®I"“×A*

val_accuracy”ų±> ?       Ų-	SÆI"“×A*

loss@ģ?Ēę’ė       ŁÜ2	°I"“×A*

accuracyŁ=©>³ś4       ŁÜ2	M{J"“×A*

val_loss¾(ę?-Ė8["       x=ż	®{J"“×A*

val_accuracy³ź³>3µŲ,       Ų-	ø{J"“×A*

loss!Pē? i       ŁÜ2	š{J"“×A*

accuracyö(“>ÆŃz       ŁÜ2	ĀJK"“×A*

val_loss×ß?ü#Y¶"       x=ż	JJK"“×A*

val_accuracy ¾>Ys°       Ų-	ÜJK"“×A*

lossćĖā?1
/       ŁÜ2	YJK"“×A*

accuracyu¹> hGĮ       ŁÜ2	kóK"“×A*

val_lossG`Ż?¼¹"       x=ż	ėóK"“×A*

val_accuracyČ½>;Ń]ę       Ų-	g óK"“×A*

loss’UŽ?Ł 5       ŁÜ2	Ń óK"“×A*

accuracy"lĄ>|       ŁÜ2	D|L"“×A	*

val_lossŚŁ?*ā6Ų"       x=ż	b~L"“×A	*

val_accuracyĀĒ>Łš2Ö       Ų-	3L"“×A	*

lossFYŚ?[       ŁÜ2	©L"“×A	*

accuracyūĖĘ>eEI~       ŁÜ2	(?M"“×A
*

val_lossĄÖ?üÖŽ·"       x=ż	~)?M"“×A
*

val_accuracyĶŹ>RĄĆč       Ų-	ō)?M"“×A
*

lossJVŲ?·źõÕ       ŁÜ2	R*?M"“×A
*

accuracy@É>¬Iõ       ŁÜ2	0QāM"“×A*

val_lossÄÓ?ŁHcČ"       x=ż	RāM"“×A*

val_accuracyńcĢ>J%ćŪ       Ų-	YSāM"“×A*

loss ĢŌ?÷b       ŁÜ2	TāM"“×A*

accuracyéHĪ>@sdą       ŁÜ2	ųHN"“×A*

val_lossćŃ?Rä"       x=ż	qJN"“×A*

val_accuracy|Š>ęż       Ų-	QKN"“×A*

lossų³Ņ?ßG       ŁÜ2	!LN"“×A*

accuracyŠ³Ń>^kł       ŁÜ2	66O"“×A*

val_lossčÖŃ?Äśu"       x=ż	26O"“×A*

val_accuracyĪŃ>(ś       Ų-	©6O"“×A*

loss?Š?!Įę       ŁÜ2	6O"“×A*

accuracy_Ö>J1īc       ŁÜ2	9ąO"“×A*

val_lossngŠ?OÜÉŁ"       x=ż	|:ąO"“×A*

val_accuracyėŃ><Ż½+       Ų-	ń:ąO"“×A*

lossG^Ļ?¶       ŁÜ2	;ąO"“×A*

accuracyņA×>F«R       ŁÜ2	cļP"“×A*

val_loss$Ī?äę "       x=ż	„šP"“×A*

val_accuracyėāÖ>7"!Å       Ų-	"ńP"“×A*

loss×¦Ģ?Ų?ėČ       ŁÜ2	ńP"“×A*

accuracyńcÜ>,ż       ŁÜ2	 ;Q"“×A*

val_lossšRĪ?R~Ž"       x=ż	!;Q"“×A*

val_accuracy“YÕ>}«fm       Ų-	";Q"“×A*

loss¶BĖ?¼4M       ŁÜ2	l";Q"“×A*

accuracyß>Š6)0       ŁÜ2	GR"“×A*

val_lossņėĖ?ņŅī"       x=ż	²HR"“×A*

val_accuracyé×>*óG       Ų-	)IR"“×A*

lossŠ³Ź?ļ0       ŁÜ2	IR"“×A*

accuracyŅ Ž>Rqē       ŁÜ2	h«R"“×A*

val_loss6Ģ?¼ŠJņ"       x=ż	2j«R"“×A*

val_accuracyžŌŲ>õēAõ       Ų-	’k«R"“×A*

loss:oČ?ķdAm       ŁÜ2	Ėl«R"“×A*

accuracy<½ā>­·Ė       ŁÜ2	 Ą^S"“×A*

val_loss¬UŹ?|EZ±"       x=ż	”Į^S"“×A*

val_accuracyUß>µrFT       Ų-	Ā^S"“×A*

lossńČ?1ņūÄ       ŁÜ2	ŗĀ^S"“×A*

accuracyCć>,4”0       ŁÜ2	»T"“×A*

val_lossōčĒ?śļ"       x=ż	ÕT"“×A*

val_accuracyņį>K£7       Ų-	bT"“×A*

loss/óÅ?wCÖq       ŁÜ2	ÖT"“×A*

accuracyē>UVč¶       ŁÜ2	$ŗT"“×A*

val_lossŻ<Č?[+"       x=ż	ŗT"“×A*

val_accuracyeā>;ń       Ų-	ŗT"“×A*

lossP7Å?f.’µ       ŁÜ2	šŗT"“×A*

accuracy"żę>HId       ŁÜ2	-3^U"“×A*

val_lossėyĘ?Sž_Į"       x=ż	$4^U"“×A*

val_accuracyxzå>ÕöŌ„       Ų-	4^U"“×A*

lossąęĆ?”3.       ŁÜ2	’4^U"“×A*

accuracyYč>Å¤;i       ŁÜ2	²ųU"“×A*

val_loss3$Ē?Ņ¢<"       x=ż	ųU"“×A*

val_accuracyżå>½#       Ų-	ąųU"“×A*

loss¼§Ā?¾_       ŁÜ2	ųU"“×A*

accuracyCė>ĒFZ       ŁÜ2	ŌÉV"“×A*

val_lossæQÄ?MG"       x=ż	ŌŹV"“×A*

val_accuracy§yē>ćéG       Ų-	IĖV"“×A*

lossäŚĮ?:PE       ŁÜ2	«ĖV"“×A*

accuracywģ>l6v       ŁÜ2	yS+W"“×A*

val_loss¢Ē?<|ķ"       x=ż	~T+W"“×A*

val_accuracy3ā>]%       Ų-	łT+W"“×A*

lossŅIĄ?„       ŁÜ2	[U+W"“×A*

accuracy².ī>±½ņ       ŁÜ2	ū¾W"“×A*

val_loss.·Ę?h';"       x=ż	ü¾W"“×A*

val_accuracyļÉć>Q#|       Ų-	ü¾W"“×A*

lossĄ“Į?05Õ       ŁÜ2	ż¾W"“×A*

accuracy[Óģ>“)Ė       ŁÜ2	śQX"“×A*

val_lossGÄ?ėßo"       x=ż	ļQX"“×A*

val_accuracyBĻę>¦       Ų-	kQX"“×A*

lossæ?8)ė       ŁÜ2	ĪQX"“×A*

accuracyėāī>óKC       ŁÜ2	¹	åX"“×A*

val_lossŹĮ?¢9Ø"       x=ż	 åX"“×A*

val_accuracyz„ģ>C       Ų-	÷åX"“×A*

lossęæ?Öt%       ŁÜ2	ÆåX"“×A*

accuracy@¤ļ>#       ŁÜ2	F§zY"“×A*

val_lossÄ?V"       x=ż	JØzY"“×A*

val_accuracyŌé>¹r82       Ų-	ĀØzY"“×A*

loss{Z½?ļæø       ŁÜ2	$©zY"“×A*

accuracyQkņ>¹2ŖŌ       ŁÜ2	bAZ"“×A*

val_lossń|Ć?ß#ō"       x=ż	_BZ"“×A*

val_accuracy²ģ>gVŅ       Ų-	ĻBZ"“×A*

lossz½?©²ra       ŁÜ2	0CZ"“×A*

accuracyŲó>ÓĶs       ŁÜ2	ż”Z"“×A*

val_lossRzĮ?²<g"       x=ż	ž”Z"“×A*

val_accuracyqģ>1<·       Ų-	ž”Z"“×A*

loss4Ŗ½?>šĒB       ŁÜ2	šž”Z"“×A*

accuracyNŃń>kŌå       ŁÜ2	ļ];["“×A *

val_lossÄ?ī~)"       x=ż	_;["“×A *

val_accuracyFå>×cņ8       Ų-	U`;["“×A *

lossDÆ»?ŽĶ       ŁÜ2	a;["“×A *

accuracy_ö>&J¬       ŁÜ2	½ÆĪ["“×A!*

val_lossøįĄ?)[A"       x=ż	Ć°Ī["“×A!*

val_accuracy;pī>,÷C/       Ų-	=±Ī["“×A!*

lossŃŗ?Ń"d       ŁÜ2	 ±Ī["“×A!*

accuracy`åų>_	       ŁÜ2	žŹe\"“×A"*

val_loss6ēæ?č~”b"       x=ż	ęĖe\"“×A"*

val_accuracyVī>'ÕÜ       Ų-	^Ģe\"“×A"*

losso¹?Ó       ŁÜ2	Ķe\"“×A"*

accuracyÅžś>ya       ŁÜ2	č]"“×A#*

val_lossx±æ?Jś"       x=ż	é]"“×A#*

val_accuracyVķ>0»īM       Ų-	nź]"“×A#*

loss`¹?»g       ŁÜ2	>ė]"“×A#*

accuracy@ł>`×f       ŁÜ2	Ź]"“×A$*

val_loss¶AĄ?+čŅv"       x=ż	ķ]"“×A$*

val_accuracyßOķ>¢f»M       Ų-	`]"“×A$*

lossAø?Öy       ŁÜ2	Ć]"“×A$*

accuracy®¶ś>8ųŲ       ŁÜ2	öø.^"“×A%*

val_lossŻQÄ?W¦ņC"       x=ż	ņ¹.^"“×A%*

val_accuracyĆõč>Ż4       Ų-	bŗ.^"“×A%*

loss¦\ø?ÕŪ       ŁÜ2	Āŗ.^"“×A%*

accuracyÕēś>$ez       ŁÜ2	äŗĘ^"“×A&*

val_loss&ŅĮ?~ļk"       x=ż	×»Ę^"“×A&*

val_accuracy_ģ>²¬       Ų-	L¼Ę^"“×A&*

lossj#ø?@pŹŖ       ŁÜ2	¬¼Ę^"“×A&*

accuracyŽqś>Óą·       ŁÜ2	Rd_"“×A'*

val_lossėŅ½?ov²"       x=ż	Hd_"“×A'*

val_accuracy}Šó>­C       Ų-	»d_"“×A'*

lossöh¶?Ā¤b'       ŁÜ2	d_"“×A'*

accuracyĮØü>ÆńV       ŁÜ2	ļc÷_"“×A(*

val_loss*w¾?Öģ_³"       x=ż	e÷_"“×A(*

val_accuracy¼š>ąTŗ       Ų-	}e÷_"“×A(*

lossņv¶? Ś/5       ŁÜ2	Že÷_"“×A(*

accuracy¶ü>?½Ä       ŁÜ2	'`"“×A)*

val_loss8½?YCU_"       x=ż	`"“×A)*

val_accuracyÅń>xJ       Ų-	`"“×A)*

loss1·?aZ       ŁÜ2	ō`"“×A)*

accuracyF¶ū>Jx       ŁÜ2	Ķ^a"“×A**

val_lossV½?·4>&"       x=ż	-`a"“×A**

val_accuracy}Šó>S{       Ų-	ų`a"“×A**

loss»²µ?ģ4_>       ŁÜ2	²aa"“×A**

accuracyB`ż>I)Ż       ŁÜ2	ńķµa"“×A+*

val_loss_Ģ½?=ś"       x=ż	šīµa"“×A+*

val_accuracyNŃń>kß       Ų-	`ļµa"“×A+*

lossŚ¶?ōP       ŁÜ2	ŗļµa"“×A+*

accuracyž>tš       ŁÜ2	éIb"“×A,*

val_lossØĘ¼?{ õ"       x=ż	UIb"“×A,*

val_accuracy”gó>×ŗp       Ų-	!Ib"“×A,*

lossµ?s0+       ŁÜ2	ÖIb"“×A,*

accuracy)\’>Y®ī«       ŁÜ2	FŻb"“×A-*

val_lossm¾?ŹPS"       x=ż	.GŻb"“×A-*

val_accuracy4ń>(üo       Ų-	”GŻb"“×A-*

losss]“?jš¬       ŁÜ2	’GŻb"“×A-*

accuracyŽ’>ēÆ
       ŁÜ2	ÆZxc"“×A.*

val_loss.½?XŁ"       x=ż	k\xc"“×A.*

val_accuracyźō>qå¬ś       Ų-	Ż\xc"“×A.*

lossŹ³?±ō       ŁÜ2	<]xc"“×A.*

accuracyb ?R%ŌR       ŁÜ2	¢d"“×A/*

val_loss>7¼?9XR"       x=ż	£d"“×A/*

val_accuracyżöõ>¾ĀH       Ų-	ō£d"“×A/*

losslķ³?£zN       ŁÜ2	Q¤d"“×A/*

accuracy9“ ?-Ę3       ŁÜ2	5£d"“×A0*

val_lossk½?¦R"       x=ż	Y£d"“×A0*

val_accuracyėń>
®ż       Ų-	Ó£d"“×A0*

lossl²?KJĮE       ŁÜ2	3£d"“×A0*

accuracy:?HĪßņ       ŁÜ2	¾Ą6e"“×A1*

val_lossę6Ā?h#Y"       x=ż	³Į6e"“×A1*

val_accuracyMģ>żĀŚø       Ų-	&Ā6e"“×A1*

loss“²?WŹ¾ę       ŁÜ2	³Ā6e"“×A1*

accuracy7?Ś,a       ŁÜ2	Źe"“×A2*

val_lossTc¼?>w±"       x=ż	ś Źe"“×A2*

val_accuracy£ņ>Š;\       Ų-	Ģ”Źe"“×A2*

loss
Ā²?0Čk       ŁÜ2	¢Źe"“×A2*

accuracy~?pÓ{3       ŁÜ2	_af"“×A3*

val_lossj?»?§
õ "       x=ż	:aaf"“×A3*

val_accuracyōżō>_µgD       Ų-	4baf"“×A3*

loss:@±?)õ=       ŁÜ2	übaf"“×A3*

accuracy©¤?ē8h       ŁÜ2	ofõf"“×A4*

val_loss¼ü»?$ią"       x=ż	bgõf"“×A4*

val_accuracyŖ`ō>q       Ų-	Ōgõf"“×A4*

loss&’°?*SŲ       ŁÜ2	5hõf"“×A4*

accuracyÄ±?ÆX+m       ŁÜ2	/g"“×A5*

val_lossnņ»?«%"       x=ż	<1g"“×A5*

val_accuracy1÷>z7Ū       Ų-	#2g"“×A5*

loss[°?>%Ä       ŁÜ2	į2g"“×A5*

accuracyä?Wē­ń       ŁÜ2	Į$h"“×A6*

val_lossż¼?ÜėH"       x=ż	Ā$h"“×A6*

val_accuracyó>ęĆį¢       Ų-	öĀ$h"“×A6*

lossaķ°?£       ŁÜ2	YĆ$h"“×A6*

accuracyĒ)?ļB       ŁÜ2	¢øh"“×A7*

val_loss@Łæ?žmņń"       x=ż	¤øh"“×A7*

val_accuracy3Äń>ŅGR       Ų-	Ū¤øh"“×A7*

loss·£±?„:       ŁÜ2	„øh"“×A7*

accuracy3?H%O       ŁÜ2	ZYOi"“×A8*

val_loss1*»?fĀ¹„"       x=ż	WZOi"“×A8*

val_accuracyŁĪ÷>@³       Ų-	ĻZOi"“×A8*

loss7¶Æ?Ž®É]       ŁÜ2	*[Oi"“×A8*

accuracyĪŖ?Ēs÷       ŁÜ2	7©ći"“×A9*

val_loss¼?_uĶ"       x=ż	Ŗći"“×A9*

val_accuracy+õ>ÆČY       Ų-	Ŗći"“×A9*

lossä®?CŻG       ŁÜ2	ģŖći"“×A9*

accuracyĒŗ?m^w4       ŁÜ2	äwj"“×A:*

val_loss+æ?01é"       x=ż	ä	wj"“×A:*

val_accuracyZó>	ņ       Ų-	U
wj"“×A:*

lossÆ?{_ŗ       ŁÜ2	±
wj"“×A:*

accuracyQŚ?·Įlį       ŁÜ2	ak"“×A;*

val_lossżŅŗ?ÆvĻÆ"       x=ż	bk"“×A;*

val_accuracyżöõ>ū”cQ       Ų-	łbk"“×A;*

lossnĖÆ?yóĄ       ŁÜ2	Zck"“×A;*

accuracyāX?Ł=Pó       ŁÜ2	°„k"“×A<*

val_loss!¼?a®Ų"       x=ż	v±„k"“×A<*

val_accuracy*©ó>Q×g
       Ų-	²„k"“×A<*

lossóä®?S¤R       ŁÜ2	w²„k"“×A<*

accuracyĻ÷?sĒ       ŁÜ2	 É8l"“×A=*

val_loss¼?ü ņ"       x=ż	uŹ8l"“×A=*

val_accuracy“Yõ>}LĪ       Ų-	OĖ8l"“×A=*

lossĪ®?ź       ŁÜ2	Ģ8l"“×A=*

accuracyx?ė éÆ       ŁÜ2	o^Īl"“×A>*

val_lossmfŗ?JZs"       x=ż	Ē_Īl"“×A>*

val_accuracyšö>­ńÅ       Ų-	Į`Īl"“×A>*

loss?­?fa.v       ŁÜ2	vaĪl"“×A>*

accuracyn£?zbh       ŁÜ2	 Śam"“×A?*

val_lossņ»?]pM@"       x=ż	Ūam"“×A?*

val_accuracy½Rö>Æ(        Ų-	tŪam"“×A?*

loss¬?RČ“”       ŁÜ2	ĪŪam"“×A?*

accuracy÷ä?;+d)       ŁÜ2	ųkõm"“×A@*

val_lossķw»?	āå"       x=ż	ļlõm"“×A@*

val_accuracyŠÕö>.ĖŅ       Ų-	amõm"“×A@*

lossV­?Ž-       ŁÜ2	ŗmõm"“×A@*

accuracy?JÖ\t       ŁÜ2	:æn"“×AA*

val_loss?¼?³2"       x=ż	&Ąn"“×AA*

val_accuracy”Öō>ēe       Ų-	Ąn"“×AA*

loss¹Ņ¬?ČJ        ŁÜ2	öĄn"“×AA*

accuracy^?Tńj       ŁÜ2	YA#o"“×AB*

val_lossFØ»?¶6©"       x=ż	^B#o"“×AB*

val_accuracyj¼ō>	ņći       Ų-	ŻB#o"“×AB*

lossÆ¹®?Ö@īč       ŁÜ2	?C#o"“×AB*

accuracyWģ?NŲ       ŁÜ2	qä·o"“×AC*

val_lossē\»?KąN"       x=ż	Ķå·o"“×AC*

val_accuracy+ö>¬Yx       Ų-	ę·o"“×AC*

lossńp«?ßq       ŁÜ2	Qē·o"“×AC*

accuracyÉv?ś³(-       ŁÜ2	ĄKp"“×AD*

val_lossŌā¾?iøźų"       x=ż	²Kp"“×AD*

val_accuracyŖń>ĆÄų       Ų-	%Kp"“×AD*

lossńl«?AÄü       ŁÜ2	~Kp"“×AD*

accuracyś~?%é©       ŁÜ2	_ćp"“×AE*

val_loss¬¼?1ś9Ł"       x=ż	öćp"“×AE*

val_accuracyLõ>Äęåš       Ų-	Ķ ćp"“×AE*

lossGW¬?Ė“>ø       ŁÜ2	”ćp"“×AE*

accuracyĪ?Ā	į       ŁÜ2	üųwq"“×AF*

val_loss”ŗ?Ė­@;"       x=ż	śwq"“×AF*

val_accuracyāų>šźļ       Ų-	ūwq"“×AF*

lossĆĒ«?šc       ŁÜ2	Küwq"“×AF*

accuracyV}?8Æ9p       ŁÜ2	Õ%r"“×AG*

val_loss„Qŗ?H1?\"       x=ż	'r"“×AG*

val_accuracył>×Ė;?       Ų-	Ģ'r"“×AG*

lossµæŖ?Ų       ŁÜ2	q(r"“×AG*

accuracy#J?	é&       ŁÜ2	Rb”r"“×AH*

val_lossā¹?ö& "       x=ż	ec”r"“×AH*

val_accuracy ų>9ņX       Ų-	Óc”r"“×AH*

lossņŗ«?ĻPø       ŁÜ2	5d”r"“×AH*

accuracy0L?Ń^bø       ŁÜ2	Ö>s"“×AI*

val_loss÷¶¼?Ēä"       x=ż	# >s"“×AI*

val_accuracyāéõ>Yŗ       Ų-	”>s"“×AI*

loss] «?X       ŁÜ2	ö”>s"“×AI*

accuracy\?J\\       ŁÜ2	Ōs"“×AJ*

val_lossś½?}"z"       x=ż	yŌs"“×AJ*

val_accuracy½ćō>z}å       Ų-	ėŌs"“×AJ*

lossÆ«?r!w       ŁÜ2	LŌs"“×AJ*

accuracyF?c-[]       ŁÜ2	lit"“×AK*

val_loss“»?·éA"       x=ż	*it"“×AK*

val_accuracyµ7ų>Ń·ė       Ų-	¢it"“×AK*

loss4Ŗ?kåE       ŁÜ2	it"“×AK*

accuracyčj?Ļ6„       ŁÜ2	ń? u"“×AL*

val_lossĖæ?¤Æ"       x=ż	ó@ u"“×AL*

val_accuracyŖńņ>!J       Ų-	lA u"“×AL*

lossAŖ?ż 	
       ŁÜ2	ĪA u"“×AL*

accuracyz6?Ć       ŁÜ2	u"“×AM*

val_loss¾P»?9Ņ,"       x=ż	 u"“×AM*

val_accuracy«Ļõ>w ł_       Ų-	ž u"“×AM*

losspo©?5`/n       ŁÜ2	d”u"“×AM*

accuracygÕ?!3a       ŁÜ2	īA,v"“×AN*

val_loss?šŗ?Śgįj"       x=ż	ßB,v"“×AN*

val_accuracyŚ¬ś>Å¾é       Ų-	YC,v"“×AN*

losså@Ø?eŻ       ŁÜ2	D,v"“×AN*

accuracy&S	?\%5ŗ       ŁÜ2	LĄv"“×AO*

val_lossüØ»?mō%\"       x=ż	WĄv"“×AO*

val_accuracyé÷>Hų       Ų-	ŅĄv"“×AO*

lossÉ%©?IJw       ŁÜ2	5Ąv"“×AO*

accuracyą-?Å       ŁÜ2	×ö_w"“×AP*

val_loss7;»?Éų¦"       x=ż	Ö÷_w"“×AP*

val_accuracy”Öō>āAō       Ų-	Hų_w"“×AP*

loss}/©?L©       ŁÜ2	§ų_w"“×AP*

accuracyļÉ?Ö­       ŁÜ2	JÆōw"“×AQ*

val_lossś»?{1F«"       x=ż	A°ōw"“×AQ*

val_accuracyś>±ź       Ų-	“°ōw"“×AQ*

lossjØ?čķX|       ŁÜ2	±ōw"“×AQ*

accuracyX	?5       ŁÜ2	ØĀx"“×AR*

val_lossĪ&ŗ?øš"       x=ż	¤Ćx"“×AR*

val_accuracyQkś>F©       Ų-	Äx"“×AR*

lossŠs§? YK       ŁÜ2	vÄx"“×AR*

accuracy¾0	?ŗt5       ŁÜ2	 y"“×AS*

val_lossBē¾?GČK~"       x=ż	 y"“×AS*

val_accuracyźņ>ąī½       Ų-	L y"“×AS*

lossh§?Ń;:       ŁÜ2	 y"“×AS*

accuracy	?I       ŁÜ2	ČĖ“y"“×AT*

val_lossĀ¹?"õ-,"       x=ż	¼Ģ“y"“×AT*

val_accuracy#Ūł>äśaf       Ų-	.Ķ“y"“×AT*

loss-(§?EĻ >       ŁÜ2	Ķ“y"“×AT*

accuracyö	?c!ę       ŁÜ2	äŌHz"“×AU*

val_lossv“ŗ?śKT"       x=ż	ĻÕHz"“×AU*

val_accuracyµ¦ł>eņ#Õ       Ų-	<ÖHz"“×AU*

loss®§?R”ÅŪ       ŁÜ2	ÖHz"“×AU*

accuracyĘÜ	?PGqd       ŁÜ2	³yŻz"“×AV*

val_lossĪŲ¹?=>»h"       x=ż	¤zŻz"“×AV*

val_accuracyū>vöyO       Ų-	={Żz"“×AV*

lossuj¦?ÕA7^       ŁÜ2	{Żz"“×AV*

accuracyx
?uOĀ       ŁÜ2	~z{"“×AW*

val_losscŗŗ?)Ō"       x=ż	{z{"“×AW*

val_accuracyže÷>Šń       Ų-	ņz{"“×AW*

loss§@§?wÅ       ŁÜ2	Rz{"“×AW*

accuracy|ņ?Łż       ŁÜ2	2|"“×AX*

val_lossf2¹?°Ü"       x=ż	(|"“×AX*

val_accuracyģĄł>Ś2Ī       Ų-	|"“×AX*

lossOŅ¦?0r       ŁÜ2	ų|"“×AX*

accuracyHæ	?ysde       ŁÜ2	R”|"“×AY*

val_lossFC»?d®R"       x=ż	F”|"“×AY*

val_accuracy¢“÷>O3ä       Ų-	ø”|"“×AY*

lossŅ.¦?½h·¶       ŁÜ2	”|"“×AY*

accuracy|a
?į¹Õ       ŁÜ2	P5}"“×AZ*

val_lossĢI»?`2#"       x=ż	¤5}"“×AZ*

val_accuracy>čł>@¾       Ų-	+5}"“×AZ*

lossKŌ„?ls       ŁÜ2	5}"“×AZ*

accuracy[B
?fqJa       ŁÜ2	ŻÉ}"“×A[*

val_lossCØŗ?Kß«"       x=ż	żŽÉ}"“×A[*

val_accuracyŠDų>ńFŚį       Ų-	vßÉ}"“×A[*

loss<1„?;cē       ŁÜ2	ŪßÉ}"“×A[*

accuracy"ż
?hŹÆf       ŁÜ2	&ī\~"“×A\*

val_lossMO¹? Sl"       x=ż	ļ\~"“×A\*

val_accuracyHįś>ŅŁd~       Ų-	ļ\~"“×A\*

lossŲ„?Ė{į       ŁÜ2	ńļ\~"“×A\*

accuracyš
?{ćW       ŁÜ2	OĮń~"“×A]*

val_loss”½?čĖ¤"       x=ż	JĀń~"“×A]*

val_accuracyO@ó>sÓÉ       Ų-	»Āń~"“×A]*

loss2¦?M»       ŁÜ2	Ćń~"“×A]*

accuracyA
?£j{T       ŁÜ2	"“×A^*

val_lossh½?Æ;h"       x=ż	°"“×A^*

val_accuracy«Ļõ>±1¹       Ų-	/ "“×A^*

lossĶė„?Y’öt       ŁÜ2	 "“×A^*

accuracylx
?vŹ\       ŁÜ2	9é "“×A_*

val_lossŠō»?÷3ų"       x=ż	0ź "“×A_*

val_accuracy+ö÷>÷«Ó       Ų-	 ź "“×A_*

lossŃh„?u/       ŁÜ2	üź "“×A_*

accuracyŽ
?Śdõé       ŁÜ2	S·"“×A`*

val_loss»?ßzć¦"       x=ż	K·"“×A`*

val_accuracy+ö÷>/eü       Ų-	æ·"“×A`*

loss U¤?        ŁÜ2	·"“×A`*

accuracy²?O?·       ŁÜ2	K"“×Aa*

val_loss`»?<Ś½@"       x=ż	ūK"“×Aa*

val_accuracyõŪ÷>SĮ       Ų-	nK"“×Aa*

lossy¤?£/Č       ŁÜ2	ĖK"“×Aa*

accuracy	?/± h       ŁÜ2	óß"“×Ab*

val_lossŹŗ?Ef:"       x=ż	ōß"“×Ab*

val_accuracyµ¦ł> 23®       Ų-	õß"“×Ab*

lossÕŹ£?!¼wĖ       ŁÜ2	nõß"“×Ab*

accuracyn4?Ä{d       ŁÜ2	ės"“×Ac*

val_lossĀ ½?gõ"       x=ż	rģs"“×Ac*

val_accuracyõ>¬Ø       Ų-	Hķs"“×Ac*

lossŃ¤?ĀK       ŁÜ2	īs"“×Ac*

accuracyÉv
?ŖY²