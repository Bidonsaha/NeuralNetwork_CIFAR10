       £K"	   “×Abrain.Event:2¾8ŲżĻ     śė9c	[.“×A"š
u
m1_hidden1_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
p
m1_hidden1/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
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
seed*
T0*
dtype0* 
_output_shapes
:
*
seed2žÓ0

m1_hidden1/random_uniform/subSubm1_hidden1/random_uniform/maxm1_hidden1/random_uniform/min*
_output_shapes
: *
T0

m1_hidden1/random_uniform/mulMul'm1_hidden1/random_uniform/RandomUniformm1_hidden1/random_uniform/sub* 
_output_shapes
:
*
T0

m1_hidden1/random_uniformAddm1_hidden1/random_uniform/mulm1_hidden1/random_uniform/min*
T0* 
_output_shapes
:

·
m1_hidden1/kernelVarHandleOp*"
shared_namem1_hidden1/kernel*$
_class
loc:@m1_hidden1/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
m1_hidden1/biasVarHandleOp*
shape:*
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
m1_hidden1/ReluRelum1_hidden1/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’
p
m1_hidden2/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
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
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’@*
transpose_a( 
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
m1_hidden2/ReluRelum1_hidden2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
p
m1_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m1_hidden3/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
b
m1_hidden3/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
¬
'm1_hidden3/random_uniform/RandomUniformRandomUniformm1_hidden3/random_uniform/shape*
T0*
dtype0*
_output_shapes

:@*
seed2®Æ*
seed

m1_hidden3/random_uniform/subSubm1_hidden3/random_uniform/maxm1_hidden3/random_uniform/min*
_output_shapes
: *
T0

m1_hidden3/random_uniform/mulMul'm1_hidden3/random_uniform/RandomUniformm1_hidden3/random_uniform/sub*
T0*
_output_shapes

:@

m1_hidden3/random_uniformAddm1_hidden3/random_uniform/mulm1_hidden3/random_uniform/min*
_output_shapes

:@*
T0
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
m1_hidden3/bias/AssignAssignVariableOpm1_hidden3/biasm1_hidden3/Const*
dtype0*"
_class
loc:@m1_hidden3/bias

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
m1_hidden3/BiasAddBiasAddm1_hidden3/MatMul!m1_hidden3/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’*
T0
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
m1_output/random_uniform/minConst*
_output_shapes
: *
valueB
 *ōōõ¾*
dtype0
a
m1_output/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
Ŗ
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
T0*
dtype0*
_output_shapes

:
*
seed2ó*
seed

m1_output/random_uniform/subSubm1_output/random_uniform/maxm1_output/random_uniform/min*
T0*
_output_shapes
: 
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
m1_output/kernelVarHandleOp*
	container *
shape
:
*
dtype0*
_output_shapes
: *!
shared_namem1_output/kernel*#
_class
loc:@m1_output/kernel
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
m1_output/ConstConst*
dtype0*
_output_shapes
:
*
valueB
*    
Ø
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

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

¤
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
transpose_a( *
transpose_b( *
T0
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
,Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o:*%
_class
loc:@Adam/learning_rate*
dtype0*
_output_shapes
: 
°
Adam/learning_rateVarHandleOp*
dtype0*
_output_shapes
: *#
shared_nameAdam/learning_rate*%
_class
loc:@Adam/learning_rate*
	container *
shape: 
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
m1_output_targetPlaceholder*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0
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

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

metrics/accuracy/SqueezeSqueezem1_output_target*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’*
T0
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
metrics/accuracy/Cast_1Castmetrics/accuracy/Equal*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

`
metrics/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics/accuracy/SumSummetrics/accuracy/Cast_1metrics/accuracy/Const*
	keep_dims( *

Tidx0*
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
metrics/accuracy/Cast_2Castmetrics/accuracy/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
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
 *æÖ3
~
9loss/m1_output_loss/sparse_categorical_crossentropy/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
Õ
7loss/m1_output_loss/sparse_categorical_crossentropy/subSub9loss/m1_output_loss/sparse_categorical_crossentropy/sub/x9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*
_output_shapes
: 
Ņ
Iloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Aloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*
T0*'
_output_shapes
:’’’’’’’’’

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
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ź
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0	
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
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
out_type0*
_output_shapes
:*
T0	
ė
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
T0*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
Tlabels0	

Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’
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

loss/mul/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

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
MeanMeanloss/mulConst_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
dropout_1/keras_learning_phasePlaceholderWithDefault$dropout_1/keras_learning_phase/input*
_output_shapes
: *
shape: *
dtype0


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
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL>

dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_1/cond/dropout/Shape/SwitchSwitchdropout_1_inputdropout_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_1_input
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
}
dropout_1/cond/dropout/subSubdropout_1/cond/dropout/sub/xdropout_1/cond/dropout/rate*
_output_shapes
: *
T0

)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0

)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2*
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ć
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*(
_output_shapes
:’’’’’’’’’
µ
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_1/cond/dropout/addAdddropout_1/cond/dropout/sub%dropout_1/cond/dropout/random_uniform*(
_output_shapes
:’’’’’’’’’*
T0
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
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_1_input
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
®
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
T0*
dtype0* 
_output_shapes
:
*
seed2ŻķÉ*
seed
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
m2_hidden1/biasVarHandleOp*"
_class
loc:@m2_hidden1/bias*
	container *
shape:*
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
m2_hidden1/MatMulMatMuldropout_1/cond/Merge m2_hidden1/MatMul/ReadVariableOp*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
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
dtype0*
_output_shapes
:*
valueB"   @   
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
seed2¦ā

m2_hidden2/random_uniform/subSubm2_hidden2/random_uniform/maxm2_hidden2/random_uniform/min*
_output_shapes
: *
T0

m2_hidden2/random_uniform/mulMul'm2_hidden2/random_uniform/RandomUniformm2_hidden2/random_uniform/sub*
T0*
_output_shapes
:	@

m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
_output_shapes
:	@*
T0
¶
m2_hidden2/kernelVarHandleOp*"
shared_namem2_hidden2/kernel*$
_class
loc:@m2_hidden2/kernel*
	container *
shape:	@*
dtype0*
_output_shapes
: 
s
2m2_hidden2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden2/kernel*
_output_shapes
: 

m2_hidden2/kernel/AssignAssignVariableOpm2_hidden2/kernelm2_hidden2/random_uniform*
dtype0*$
_class
loc:@m2_hidden2/kernel

%m2_hidden2/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2/kernel*
dtype0*
_output_shapes
:	@*$
_class
loc:@m2_hidden2/kernel
]
m2_hidden2/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
«
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

#m2_hidden2/bias/Read/ReadVariableOpReadVariableOpm2_hidden2/bias*"
_class
loc:@m2_hidden2/bias*
dtype0*
_output_shapes
:@
s
 m2_hidden2/MatMul/ReadVariableOpReadVariableOpm2_hidden2/kernel*
_output_shapes
:	@*
dtype0
¦
m2_hidden2/MatMulMatMulm2_hidden1/Relu m2_hidden2/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b( *
T0
m
!m2_hidden2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@

m2_hidden2/BiasAddBiasAddm2_hidden2/MatMul!m2_hidden2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@*
T0
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
¬
'm2_hidden3/random_uniform/RandomUniformRandomUniformm2_hidden3/random_uniform/shape*
dtype0*
_output_shapes

:@*
seed2ą÷*
seed*
T0

m2_hidden3/random_uniform/subSubm2_hidden3/random_uniform/maxm2_hidden3/random_uniform/min*
_output_shapes
: *
T0

m2_hidden3/random_uniform/mulMul'm2_hidden3/random_uniform/RandomUniformm2_hidden3/random_uniform/sub*
_output_shapes

:@*
T0

m2_hidden3/random_uniformAddm2_hidden3/random_uniform/mulm2_hidden3/random_uniform/min*
T0*
_output_shapes

:@
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
%m2_hidden3/kernel/Read/ReadVariableOpReadVariableOpm2_hidden3/kernel*
dtype0*
_output_shapes

:@*$
_class
loc:@m2_hidden3/kernel
]
m2_hidden3/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
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
m2_hidden3/MatMulMatMulm2_hidden2/Relu m2_hidden3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
m
!m2_hidden3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:
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
m2_output/random_uniform/maxConst*
valueB
 *ōōõ>*
dtype0*
_output_shapes
: 
©
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
T0*
dtype0*
_output_shapes

:
*
seed2łä$*
seed
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
m2_output/biasVarHandleOp*
shape:
*
dtype0*
_output_shapes
: *
shared_namem2_output/bias*!
_class
loc:@m2_output/bias*
	container 
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
m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

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
«
Adam_1/learning_rate/AssignAssignVariableOpAdam_1/learning_rate.Adam_1/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_1/learning_rate*
dtype0

(Adam_1/learning_rate/Read/ReadVariableOpReadVariableOpAdam_1/learning_rate*
dtype0*
_output_shapes
: *'
_class
loc:@Adam_1/learning_rate
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
!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1*
_output_shapes
: * 
_class
loc:@Adam_1/beta_1*
dtype0

'Adam_1/beta_2/Initializer/initial_valueConst*
valueB
 *w¾?* 
_class
loc:@Adam_1/beta_2*
dtype0*
_output_shapes
: 
”
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
m2_output_targetPlaceholder*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
s
m2_output_sample_weightsPlaceholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
L
Const_3Const*
_output_shapes
: *
valueB
 *    *
dtype0

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
Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 

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
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 

metrics_1/accuracy/SqueezeSqueezem2_output_target*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’*
T0
n
#metrics_1/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0
Ø
metrics_1/accuracy/ArgMaxArgMaxm2_output/Softmax#metrics_1/accuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0*
T0

metrics_1/accuracy/CastCastmetrics_1/accuracy/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0

metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
b
metrics_1/accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
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
metrics_1/accuracy/SizeSizemetrics_1/accuracy/Cast_1*
out_type0*
_output_shapes
: *
T0
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
#metrics_1/accuracy/ReadVariableOp_1ReadVariableOpcount_1)^metrics_1/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
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
metrics_1/accuracy/IdentityIdentitymetrics_1/accuracy/truediv*
_output_shapes
: *
T0

;loss_1/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
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
Kloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*'
_output_shapes
:’’’’’’’’’


Closs_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
·
9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogLogCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0
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
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm2_output_sample_weights}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*#
_output_shapes
:’’’’’’’’’

Iloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
 
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
×
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
: *
T0*
out_type0
ō
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

Kloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truedivRealDivGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0
Q
loss_1/mul/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0


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
: *
	keep_dims( *

Tidx0
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
dropout_2/cond/dropout/rateConst^dropout_2/cond/switch_t*
_output_shapes
: *
valueB
 *ĶĢL>*
dtype0

dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_2/cond/dropout/Shape/SwitchSwitchdropout_2_inputdropout_2/cond/pred_id*
T0*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
{
dropout_2/cond/dropout/sub/xConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
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
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2**
seed
§
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ć
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*(
_output_shapes
:’’’’’’’’’*
T0
µ
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0*(
_output_shapes
:’’’’’’’’’

dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*(
_output_shapes
:’’’’’’’’’*
T0
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
m2_hidden1_1/random_uniform/maxConst*
valueB
 *¬\1=*
dtype0*
_output_shapes
: 
²
)m2_hidden1_1/random_uniform/RandomUniformRandomUniform!m2_hidden1_1/random_uniform/shape*
dtype0* 
_output_shapes
:
*
seed2*
seed*
T0
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
m2_hidden1_1/kernelVarHandleOp*$
shared_namem2_hidden1_1/kernel*&
_class
loc:@m2_hidden1_1/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
m2_hidden1_1/biasVarHandleOp*$
_class
loc:@m2_hidden1_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_1/bias
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
_output_shapes
:
*
dtype0
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
m2_hidden1_1/ReluRelum2_hidden1_1/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’

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
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
}
dropout_3/cond/dropout/subSubdropout_3/cond/dropout/sub/xdropout_3/cond/dropout/rate*
_output_shapes
: *
T0

)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0

)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
T0*
dtype0*(
_output_shapes
:’’’’’’’’’*
seed2**
seed
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
dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/truedivdropout_3/cond/dropout/Floor*
T0*(
_output_shapes
:’’’’’’’’’
¹
dropout_3/cond/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*$
_class
loc:@m2_hidden1_1/Relu

dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
N**
_output_shapes
:’’’’’’’’’: *
T0
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
)m2_hidden2_1/random_uniform/RandomUniformRandomUniform!m2_hidden2_1/random_uniform/shape*
dtype0*
_output_shapes
:	@*
seed2Š·Ą*
seed*
T0
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
m2_hidden2_1/random_uniformAddm2_hidden2_1/random_uniform/mulm2_hidden2_1/random_uniform/min*
_output_shapes
:	@*
T0
¼
m2_hidden2_1/kernelVarHandleOp*
shape:	@*
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

m2_hidden2_1/kernel/AssignAssignVariableOpm2_hidden2_1/kernelm2_hidden2_1/random_uniform*&
_class
loc:@m2_hidden2_1/kernel*
dtype0
¤
'm2_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*
_output_shapes
:	@*&
_class
loc:@m2_hidden2_1/kernel*
dtype0
_
m2_hidden2_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
±
m2_hidden2_1/biasVarHandleOp*"
shared_namem2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
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
dtype0*
_output_shapes
:	@
Æ
m2_hidden2_1/MatMulMatMuldropout_3/cond/Merge"m2_hidden2_1/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’@*
transpose_a( 
q
#m2_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@
¢
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m2_hidden2_1/ReluRelum2_hidden2_1/BiasAdd*'
_output_shapes
:’’’’’’’’’@*
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
seed*
T0*
dtype0*
_output_shapes

:@*
seed2Ō

m2_hidden3_1/random_uniform/subSubm2_hidden3_1/random_uniform/maxm2_hidden3_1/random_uniform/min*
T0*
_output_shapes
: 

m2_hidden3_1/random_uniform/mulMul)m2_hidden3_1/random_uniform/RandomUniformm2_hidden3_1/random_uniform/sub*
_output_shapes

:@*
T0

m2_hidden3_1/random_uniformAddm2_hidden3_1/random_uniform/mulm2_hidden3_1/random_uniform/min*
T0*
_output_shapes

:@
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
m2_hidden3_1/ConstConst*
_output_shapes
:*
valueB*    *
dtype0
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
m2_hidden3_1/BiasAddBiasAddm2_hidden3_1/MatMul#m2_hidden3_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
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
m2_output_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ōōõ¾
c
m2_output_1/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ōōõ>
®
(m2_output_1/random_uniform/RandomUniformRandomUniform m2_output_1/random_uniform/shape*
T0*
dtype0*
_output_shapes

:
*
seed2±Ó*
seed
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
m2_output_1/biasVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *!
shared_namem2_output_1/bias*#
_class
loc:@m2_output_1/bias
q
1m2_output_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_output_1/bias*
_output_shapes
: 

m2_output_1/bias/AssignAssignVariableOpm2_output_1/biasm2_output_1/Const*
dtype0*#
_class
loc:@m2_output_1/bias
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
T0*'
_output_shapes
:’’’’’’’’’
*
transpose_a( 
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
+Adam_2/iterations/Initializer/initial_valueConst*
value	B	 R *$
_class
loc:@Adam_2/iterations*
dtype0	*
_output_shapes
: 
­
Adam_2/iterationsVarHandleOp*
shape: *
dtype0	*
_output_shapes
: *"
shared_nameAdam_2/iterations*$
_class
loc:@Adam_2/iterations*
	container 
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
.Adam_2/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *o:*'
_class
loc:@Adam_2/learning_rate*
dtype0
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
Adam_2/learning_rate/AssignAssignVariableOpAdam_2/learning_rate.Adam_2/learning_rate/Initializer/initial_value*
dtype0*'
_class
loc:@Adam_2/learning_rate

(Adam_2/learning_rate/Read/ReadVariableOpReadVariableOpAdam_2/learning_rate*'
_class
loc:@Adam_2/learning_rate*
dtype0*
_output_shapes
: 

'Adam_2/beta_1/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *fff?* 
_class
loc:@Adam_2/beta_1*
dtype0
”
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
'Adam_2/beta_2/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *w¾?* 
_class
loc:@Adam_2/beta_2*
dtype0
”
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

Adam_2/beta_2/AssignAssignVariableOpAdam_2/beta_2'Adam_2/beta_2/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_2/beta_2

!Adam_2/beta_2/Read/ReadVariableOpReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_2/beta_2

&Adam_2/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam_2/decay*
dtype0
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
Const_6Const*
valueB
 *    *
dtype0*
_output_shapes
: 

total_2VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name	total_2*
_class
loc:@total_2
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
total_2/Read/ReadVariableOpReadVariableOptotal_2*
dtype0*
_output_shapes
: *
_class
loc:@total_2
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
metrics_2/accuracy/Cast_1Castmetrics_2/accuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:’’’’’’’’’*

DstT0
b
metrics_2/accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_2/accuracy/SumSummetrics_2/accuracy/Cast_1metrics_2/accuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
Truncate( *
_output_shapes
: *

DstT0
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
:loss_2/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape*#
_output_shapes
:’’’’’’’’’*

DstT0	*

SrcT0*
Truncate( 

Eloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogEloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
Tshape0*'
_output_shapes
:’’’’’’’’’
*
T0
Ł
_loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
T0	*
out_type0*
_output_shapes
:
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
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
: *
T0
ō
Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

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
 *  ?
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
/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
valueB *
_class
	loc:@Mean*
dtype0*
_output_shapes
: 
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
)training/Adam/gradients/Mean_grad/truedivRealDiv&training/Adam/gradients/Mean_grad/Tile)training/Adam/gradients/Mean_grad/Const_1*
T0*
_class
	loc:@Mean*
_output_shapes
: 
ä
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
§
+training/Adam/gradients/loss/mul_grad/Mul_1Mul)training/Adam/gradients/Mean_grad/truediv
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
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
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
valueB:*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
dtype0*
_output_shapes
:
ä
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
Ē
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:*
T0
ß
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*#
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum

htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*
_output_shapes
:*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
’
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
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
"training/Adam/gradients/zeros_like	ZerosLike}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

ø
Øtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’


§training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: 
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
training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul£training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsØtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

©
`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape7loss/m1_output_loss/sparse_categorical_crossentropy/Log*
T0*
out_type0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*
_output_shapes
:

btraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshapetraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul`training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*
Tshape0*P
_classF
DBloc:@loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:’’’’’’’’’

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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ShapeXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*
out_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:

jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
Ś
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFillftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

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
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapebtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ā
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ę
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapedtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
_output_shapes
:*
T0*
out_type0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
Ļ
mtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

Ń
otraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ü
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ń
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
ę
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
Tshape0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
: *
T0

2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0*$
_class
loc:@m1_output/Softmax
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
2training/Adam/gradients/m1_output/Softmax_grad/SumSum2training/Adam/gradients/m1_output/Softmax_grad/mulDtraining/Adam/gradients/m1_output/Softmax_grad/Sum/reduction_indices*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’*

Tidx0*
	keep_dims(*
T0
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
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC*
_output_shapes
:
*
T0
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
6training/Adam/gradients/m1_output/MatMul_grad/MatMul_1MatMulm1_hidden3/Relu4training/Adam/gradients/m1_output/Softmax_grad/mul_1*#
_class
loc:@m1_output/MatMul*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0
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
5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad m1_hidden3/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden3/MatMul*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b(
ž
7training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1MatMulm1_hidden2/Relu5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0*$
_class
loc:@m1_hidden3/MatMul
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
5training/Adam/gradients/m1_hidden2/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad m1_hidden2/MatMul/ReadVariableOp*
T0*$
_class
loc:@m1_hidden2/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(
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
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC

5training/Adam/gradients/m1_hidden1/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad m1_hidden1/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m1_hidden1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( 
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
training/Adam/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R
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
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*
_output_shapes
: *

DstT0*

SrcT0	*
Truncate( 
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
training/Adam/sub/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
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
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
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
training/Adam/m_1Const*
valueB*    *
dtype0*
_output_shapes	
:
ø
training/Adam/m_1_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
	container *
shape:
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
training/Adam/m_2_1VarHandleOp*
	container *
shape:	@*
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
'training/Adam/m_3_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_3_1*
dtype0*
_output_shapes
:@*&
_class
loc:@training/Adam/m_3_1
r
!training/Adam/m_4/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@      
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

training/Adam/m_4_1/AssignAssignVariableOptraining/Adam/m_4_1training/Adam/m_4*&
_class
loc:@training/Adam/m_4_1*
dtype0
£
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
·
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

training/Adam/m_5_1/AssignAssignVariableOptraining/Adam/m_5_1training/Adam/m_5*&
_class
loc:@training/Adam/m_5_1*
dtype0

'training/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_5_1*
_output_shapes
:*&
_class
loc:@training/Adam/m_5_1*
dtype0
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
training/Adam/m_7Const*
_output_shapes
:
*
valueB
*    *
dtype0
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
training/Adam/m_7_1/AssignAssignVariableOptraining/Adam/m_7_1training/Adam/m_7*
dtype0*&
_class
loc:@training/Adam/m_7_1

'training/Adam/m_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_7_1*
dtype0*
_output_shapes
:
*&
_class
loc:@training/Adam/m_7_1
r
!training/Adam/v_0/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"      
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
training/Adam/v_0_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:

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
training/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
ø
training/Adam/v_1_1VarHandleOp*
shape:*
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

training/Adam/v_1_1/AssignAssignVariableOptraining/Adam/v_1_1training/Adam/v_1*&
_class
loc:@training/Adam/v_1_1*
dtype0
 
'training/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_1_1*
dtype0*
_output_shapes	
:*&
_class
loc:@training/Adam/v_1_1
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
training/Adam/v_2_1VarHandleOp*$
shared_nametraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: 
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
training/Adam/v_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/v_4Fill!training/Adam/v_4/shape_as_tensortraining/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
»
training/Adam/v_4_1VarHandleOp*
_output_shapes
: *$
shared_nametraining/Adam/v_4_1*&
_class
loc:@training/Adam/v_4_1*
	container *
shape
:@*
dtype0
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
dtype0*
_output_shapes

:
*
valueB
*    
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

training/Adam/v_7_1/AssignAssignVariableOptraining/Adam/v_7_1training/Adam/v_7*&
_class
loc:@training/Adam/v_7_1*
dtype0

'training/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_7_1*
_output_shapes
:
*&
_class
loc:@training/Adam/v_7_1*
dtype0
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

training/Adam/vhat_0_1/AssignAssignVariableOptraining/Adam/vhat_0_1training/Adam/vhat_0*)
_class
loc:@training/Adam/vhat_0_1*
dtype0
Ø
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
training/Adam/vhat_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*

index_type0*
_output_shapes
:*
T0
Ą
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
$training/Adam/vhat_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*
dtype0*)
_class
loc:@training/Adam/vhat_2_1
Ø
*training/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_2_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_2_1
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
training/Adam/vhat_3Fill$training/Adam/vhat_3/shape_as_tensortraining/Adam/vhat_3/Const*
_output_shapes
:*
T0*

index_type0
Ą
training/Adam/vhat_3_1VarHandleOp*)
_class
loc:@training/Adam/vhat_3_1*
	container *
shape:*
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/vhat_3_1
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
$training/Adam/vhat_4/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_4_1/AssignAssignVariableOptraining/Adam/vhat_4_1training/Adam/vhat_4*
dtype0*)
_class
loc:@training/Adam/vhat_4_1
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
training/Adam/vhat_5/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/vhat_5Fill$training/Adam/vhat_5/shape_as_tensortraining/Adam/vhat_5/Const*
_output_shapes
:*
T0*

index_type0
Ą
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

training/Adam/vhat_5_1/AssignAssignVariableOptraining/Adam/vhat_5_1training/Adam/vhat_5*)
_class
loc:@training/Adam/vhat_5_1*
dtype0
Ø
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

training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_6_1/AssignAssignVariableOptraining/Adam/vhat_6_1training/Adam/vhat_6*)
_class
loc:@training/Adam/vhat_6_1*
dtype0
Ø
*training/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_6_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_6_1
n
$training/Adam/vhat_7/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_7/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/vhat_7Fill$training/Adam/vhat_7/shape_as_tensortraining/Adam/vhat_7/Const*
_output_shapes
:*
T0*

index_type0
Ą
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

training/Adam/vhat_7_1/AssignAssignVariableOptraining/Adam/vhat_7_1training/Adam/vhat_7*)
_class
loc:@training/Adam/vhat_7_1*
dtype0
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
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0* 
_output_shapes
:

o
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4* 
_output_shapes
:
*
T0
m
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1* 
_output_shapes
:
*
T0
Z
training/Adam/Const_3Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0* 
_output_shapes
:

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
training/Adam/add_3/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
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
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1* 
_output_shapes
:
*
T0
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
training/Adam/sub_5/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
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
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes	
:*
T0
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
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes	
:*
T0
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
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes	
:
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
training/Adam/mul_12Multraining/Adam/sub_87training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
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
training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
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
training/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
q
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes
:	@
w
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes
:	@
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
_output_shapes
:	@*
dtype0
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
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/v_3_1*
_output_shapes
:@*
dtype0
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
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 
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
training/Adam/Const_9Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 
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
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

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
training/Adam/Const_12Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12*
_output_shapes

:@*
T0
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
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
_output_shapes
: *
T0
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
 *  

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:

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
 *æÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
_output_shapes
:*
T0
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
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
T0*
_output_shapes
: 

training/Adam/mul_32Multraining/Adam/sub_206training/Adam/gradients/m1_output/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
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
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*
_output_shapes

:

[
training/Adam/add_21/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
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
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
_output_shapes
: *
T0

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
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/v_7_1*
_output_shapes
:
*
dtype0
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
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
_output_shapes
: *
T0
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
training/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*
_output_shapes
:

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
®
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/learning_rate/Assign^count/Assign^count_1/Assign^count_2/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden1_1/bias/Assign^m2_hidden1_1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden2_1/bias/Assign^m2_hidden2_1/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_hidden3_1/bias/Assign^m2_hidden3_1/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^m2_output_1/bias/Assign^m2_output_1/kernel/Assign^total/Assign^total_1/Assign^total_2/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
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
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
_output_shapes
: *
shape: *
dtype0
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
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@Mean_1*
_output_shapes
: 

3training_1/Adam/gradients/Mean_1_grad/Reshape/shapeConst*
valueB *
_class
loc:@Mean_1*
dtype0*
_output_shapes
: 
×
-training_1/Adam/gradients/Mean_1_grad/ReshapeReshapetraining_1/Adam/gradients/Fill3training_1/Adam/gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_1*
_output_shapes
: 

+training_1/Adam/gradients/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB *
_class
loc:@Mean_1
Ü
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*

Tmultiples0*
T0*
_class
loc:@Mean_1*
_output_shapes
: 
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
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss_1/mul
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
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
ī
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
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
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_1/Adam/gradients/loss_1/mul_grad/Mul_1ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
ō
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0

ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
ņ
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:*
T0
Ļ
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum
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
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
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
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ė
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
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
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ń
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
Tshape0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’*
T0
ś
$training_1/Adam/gradients/zeros_like	ZerosLikeloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ą
¬training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
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
dtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*
out_type0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
_output_shapes
:*
T0

ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
Tshape0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:’’’’’’’’’
*
T0

ctraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’
*
T0
°
\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ė
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*
out_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:

jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
valueB *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0
Ž
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
out_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
T0

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
č
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’


otraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
ü
xtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¶
itraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
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
:*

Tidx0*
	keep_dims( 
ß
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

š
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ō
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
Tshape0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: *
T0
”
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output/Softmax*
_output_shapes
:*
T0*
out_type0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0
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
training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
į
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
:*

Tidx0*
	keep_dims( 
’
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
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
4training_1/Adam/gradients/m2_output/Softmax_grad/SumSum4training_1/Adam/gradients/m2_output/Softmax_grad/mulFtraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indices*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’*

Tidx0*
	keep_dims(
½
4training_1/Adam/gradients/m2_output/Softmax_grad/subSubrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape4training_1/Adam/gradients/m2_output/Softmax_grad/Sum*'
_output_shapes
:’’’’’’’’’
*
T0*$
_class
loc:@m2_output/Softmax
Ž
6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1Mul4training_1/Adam/gradients/m2_output/Softmax_grad/subm2_output/Softmax*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’

å
<training_1/Adam/gradients/m2_output/BiasAdd_grad/BiasAddGradBiasAddGrad6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
T0*$
_class
loc:@m2_output/BiasAdd*
data_formatNHWC*
_output_shapes
:


6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0*#
_class
loc:@m2_output/MatMul
’
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
T0*#
_class
loc:@m2_output/MatMul*
_output_shapes

:
*
transpose_a(*
transpose_b( 
ā
7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGradReluGrad6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulm2_hidden3/Relu*
T0*"
_class
loc:@m2_hidden3/Relu*'
_output_shapes
:’’’’’’’’’
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
loc:@m2_hidden1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(

9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*$
_class
loc:@m2_hidden1/MatMul* 
_output_shapes
:
*
transpose_a(*
transpose_b( *
T0
W
training_1/Adam/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R
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
training_1/Adam/CastCast#training_1/Adam/Cast/ReadVariableOp*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
Z
training_1/Adam/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
training_1/Adam/subSubtraining_1/Adam/sub/xtraining_1/Adam/Pow*
_output_shapes
: *
T0
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
$training_1/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
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
training_1/Adam/mulMul training_1/Adam/ReadVariableOp_1training_1/Adam/truediv*
T0*
_output_shapes
: 
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
training_1/Adam/m_0Fill#training_1/Adam/m_0/shape_as_tensortraining_1/Adam/m_0/Const*

index_type0* 
_output_shapes
:
*
T0
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
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
_output_shapes	
:*(
_class
loc:@training_1/Adam/m_1_1*
dtype0
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
training_1/Adam/m_2Fill#training_1/Adam/m_2/shape_as_tensortraining_1/Adam/m_2/Const*

index_type0*
_output_shapes
:	@*
T0
Ā
training_1/Adam/m_2_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
	container *
shape:	@
{
6training_1/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/m_2_1*
_output_shapes
: 

training_1/Adam/m_2_1/AssignAssignVariableOptraining_1/Adam/m_2_1training_1/Adam/m_2*
dtype0*(
_class
loc:@training_1/Adam/m_2_1
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
#training_1/Adam/m_4/shape_as_tensorConst*
_output_shapes
:*
valueB"@      *
dtype0
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

training_1/Adam/m_4_1/AssignAssignVariableOptraining_1/Adam/m_4_1training_1/Adam/m_4*(
_class
loc:@training_1/Adam/m_4_1*
dtype0
©
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
½
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
training_1/Adam/m_6_1VarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_6_1*(
_class
loc:@training_1/Adam/m_6_1*
	container 
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
)training_1/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1* 
_output_shapes
:
*(
_class
loc:@training_1/Adam/v_0_1*
dtype0
b
training_1/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_1/Adam/v_1_1VarHandleOp*
shape:*
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
training_1/Adam/v_2Fill#training_1/Adam/v_2/shape_as_tensortraining_1/Adam/v_2/Const*
_output_shapes
:	@*
T0*

index_type0
Ā
training_1/Adam/v_2_1VarHandleOp*
shape:	@*
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
training_1/Adam/v_3Const*
dtype0*
_output_shapes
:@*
valueB@*    
½
training_1/Adam/v_3_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_3_1*(
_class
loc:@training_1/Adam/v_3_1*
	container *
shape:@
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

training_1/Adam/v_7_1/AssignAssignVariableOptraining_1/Adam/v_7_1training_1/Adam/v_7*(
_class
loc:@training_1/Adam/v_7_1*
dtype0
„
)training_1/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_7_1*
dtype0*
_output_shapes
:
*(
_class
loc:@training_1/Adam/v_7_1
p
&training_1/Adam/vhat_0/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training_1/Adam/vhat_0_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_0_1*+
_class!
loc:@training_1/Adam/vhat_0_1*
	container *
shape:
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
training_1/Adam/vhat_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
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

training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*

index_type0*
_output_shapes
:*
T0
Ę
training_1/Adam/vhat_2_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1
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
training_1/Adam/vhat_3_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1
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

training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_4_1VarHandleOp*+
_class!
loc:@training_1/Adam/vhat_4_1*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1
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
training_1/Adam/vhat_5/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_1/Adam/vhat_5Fill&training_1/Adam/vhat_5/shape_as_tensortraining_1/Adam/vhat_5/Const*

index_type0*
_output_shapes
:*
T0
Ę
training_1/Adam/vhat_5_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_5_1*+
_class!
loc:@training_1/Adam/vhat_5_1
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
training_1/Adam/vhat_6_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_6_1*+
_class!
loc:@training_1/Adam/vhat_6_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
&training_1/Adam/vhat_7/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training_1/Adam/vhat_7_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1*
	container 
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
training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp* 
_output_shapes
:
*
T0
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
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
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
'training_1/Adam/clip_by_value_1/MinimumMinimumtraining_1/Adam/add_2training_1/Adam/Const_4*
T0* 
_output_shapes
:


training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3*
T0* 
_output_shapes
:

j
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1* 
_output_shapes
:
*
T0
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
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
_output_shapes
: *
T0

training_1/Adam/mul_7Multraining_1/Adam/sub_5=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training_1/Adam/add_4Addtraining_1/Adam/mul_6training_1/Adam/mul_7*
_output_shapes	
:*
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
:

training_1/Adam/mul_8Mul!training_1/Adam/ReadVariableOp_12$training_1/Adam/mul_8/ReadVariableOp*
_output_shapes	
:*
T0
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
training_1/Adam/Square_1Square=training_1/Adam/gradients/m2_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
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
'training_1/Adam/clip_by_value_2/MinimumMinimumtraining_1/Adam/add_5training_1/Adam/Const_6*
T0*
_output_shapes	
:

training_1/Adam/clip_by_value_2Maximum'training_1/Adam/clip_by_value_2/Minimumtraining_1/Adam/Const_5*
T0*
_output_shapes	
:
e
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
_output_shapes	
:*
T0
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
!training_1/Adam/ReadVariableOp_16ReadVariableOptraining_1/Adam/v_1_1#^training_1/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:
k
"training_1/Adam/AssignVariableOp_5AssignVariableOpm2_hidden1/biastraining_1/Adam/sub_7*
dtype0

!training_1/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1/bias#^training_1/Adam/AssignVariableOp_5*
_output_shapes	
:*
dtype0
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
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
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
training_1/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
y
training_1/Adam/sub_9Subtraining_1/Adam/sub_9/x!training_1/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training_1/Adam/Square_2Square9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1*
_output_shapes
:	@*
T0
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
training_1/Adam/sub_10Sub!training_1/Adam/ReadVariableOp_22training_1/Adam/truediv_3*
_output_shapes
:	@*
T0
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

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
training_1/Adam/Const_9Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training_1/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_4/MinimumMinimumtraining_1/Adam/add_11training_1/Adam/Const_10*
_output_shapes
:@*
T0

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
training_1/Adam/add_12/yConst*
valueB
 *æÖ3*
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
training_1/Adam/mul_21Mul!training_1/Adam/ReadVariableOp_34%training_1/Adam/mul_21/ReadVariableOp*
_output_shapes

:@*
T0
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
!training_1/Adam/ReadVariableOp_37ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
]
training_1/Adam/sub_15/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
training_1/Adam/Sqrt_5Sqrttraining_1/Adam/clip_by_value_5*
T0*
_output_shapes

:@
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
training_1/Adam/truediv_5RealDivtraining_1/Adam/mul_25training_1/Adam/add_15*
T0*
_output_shapes

:@
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
%training_1/Adam/mul_26/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*
dtype0*
_output_shapes
:

training_1/Adam/mul_26Mul!training_1/Adam/ReadVariableOp_42%training_1/Adam/mul_26/ReadVariableOp*
_output_shapes
:*
T0
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
training_1/Adam/sub_17Subtraining_1/Adam/sub_17/x!training_1/Adam/ReadVariableOp_43*
_output_shapes
: *
T0

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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
_output_shapes
:*
T0
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
training_1/Adam/add_18Addtraining_1/Adam/Sqrt_6training_1/Adam/add_18/y*
_output_shapes
:*
T0
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
!training_1/Adam/ReadVariableOp_49ReadVariableOpm2_hidden3/bias$^training_1/Adam/AssignVariableOp_17*
_output_shapes
:*
dtype0
g
!training_1/Adam/ReadVariableOp_50ReadVariableOpAdam_1/beta_1*
dtype0*
_output_shapes
: 
{
%training_1/Adam/mul_31/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*
_output_shapes

:
*
dtype0
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
dtype0*
_output_shapes

:

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
training_1/Adam/mul_34Multraining_1/Adam/sub_21training_1/Adam/Square_6*
_output_shapes

:
*
T0
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
training_1/Adam/add_21/yConst*
valueB
 *æÖ3*
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
training_1/Adam/sub_23/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_1/Adam/sub_23Subtraining_1/Adam/sub_23/x!training_1/Adam/ReadVariableOp_59*
_output_shapes
: *
T0

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
training_1/Adam/sub_24/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_1/Adam/sub_24Subtraining_1/Adam/sub_24/x!training_1/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

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
training_1/Adam/add_23Addtraining_1/Adam/mul_38training_1/Adam/mul_39*
_output_shapes
:
*
T0
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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
T0*
_output_shapes
:

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
training_1/Adam/add_24/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
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
!training_1/Adam/ReadVariableOp_62ReadVariableOpm2_output/bias*
_output_shapes
:
*
dtype0
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

training_1/initNoOp^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign

training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9

group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1
N
Placeholder_2Placeholder*
_output_shapes
: *
shape: *
dtype0
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
dtype0*
_output_shapes
: *
shape: 
K
AssignVariableOp_3AssignVariableOpcount_1Placeholder_3*
dtype0
e
ReadVariableOp_3ReadVariableOpcount_1^AssignVariableOp_3*
dtype0*
_output_shapes
: 
}
training_2/Adam/gradients/ShapeConst*
valueB *
_class
loc:@Mean_2*
dtype0*
_output_shapes
: 

#training_2/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@Mean_2*
dtype0*
_output_shapes
: 
ŗ
training_2/Adam/gradients/FillFilltraining_2/Adam/gradients/Shape#training_2/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@Mean_2*
_output_shapes
: 

3training_2/Adam/gradients/Mean_2_grad/Reshape/shapeConst*
valueB *
_class
loc:@Mean_2*
dtype0*
_output_shapes
: 
×
-training_2/Adam/gradients/Mean_2_grad/ReshapeReshapetraining_2/Adam/gradients/Fill3training_2/Adam/gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_class
loc:@Mean_2*
_output_shapes
: 

+training_2/Adam/gradients/Mean_2_grad/ConstConst*
valueB *
_class
loc:@Mean_2*
dtype0*
_output_shapes
: 
Ü
*training_2/Adam/gradients/Mean_2_grad/TileTile-training_2/Adam/gradients/Mean_2_grad/Reshape+training_2/Adam/gradients/Mean_2_grad/Const*

Tmultiples0*
T0*
_class
loc:@Mean_2*
_output_shapes
: 

-training_2/Adam/gradients/Mean_2_grad/Const_1Const*
valueB
 *  ?*
_class
loc:@Mean_2*
dtype0*
_output_shapes
: 
Ļ
-training_2/Adam/gradients/Mean_2_grad/truedivRealDiv*training_2/Adam/gradients/Mean_2_grad/Tile-training_2/Adam/gradients/Mean_2_grad/Const_1*
T0*
_class
loc:@Mean_2*
_output_shapes
: 
š
-training_2/Adam/gradients/loss_2/mul_grad/MulMul-training_2/Adam/gradients/Mean_2_grad/truedivKloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss_2/mul*
_output_shapes
: 
³
/training_2/Adam/gradients/loss_2/mul_grad/Mul_1Mul-training_2/Adam/gradients/Mean_2_grad/truedivloss_2/mul/x*
T0*
_class
loc:@loss_2/mul*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
valueB *^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0*
_output_shapes
: 

rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
_output_shapes
: *
valueB *^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
dtype0

training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_2/Adam/gradients/loss_2/mul_grad/Mul_1Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *

Tidx0*
	keep_dims( 
ī
rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*
Tshape0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
æ
ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
Ē
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Ķ
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_2/Adam/gradients/loss_2/mul_grad/Mul_1ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
ō
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
valueB:*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
dtype0*
_output_shapes
:
ņ
ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
Ļ
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
:
ķ
ktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’*

Tmultiples0
¢
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem2_output_sample_weights_1*
T0*
out_type0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
T0

|training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ē
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
÷
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ė
ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*
Tshape0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’

ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weights_1ktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ż
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
ń
ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*
Tshape0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ś
$training_2/Adam/gradients/zeros_like	ZerosLikeloss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

Ą
¬training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()

«training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: 
Ŗ
§training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1«training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’*

Tdim0*
T0
É
 training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul§training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims¬training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
±
dtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_2/m2_output_loss/sparse_categorical_crossentropy/Log*
out_type0*R
_classH
FDloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
_output_shapes
:*
T0

ftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*
Tshape0*R
_classH
FDloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*'
_output_shapes
:’’’’’’’’’


ctraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

°
\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*L
_classB
@>loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ė
htraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
T0*
out_type0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value

jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
valueB *V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
Ž
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*
out_type0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
dtype0*
_output_shapes
: 
č
htraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*

index_type0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’


otraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ü
xtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
¶
itraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ø
ktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ź
ftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
ß
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*'
_output_shapes
:’’’’’’’’’
*
T0*
Tshape0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
š
htraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
Ō
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
Tshape0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
: *
T0
£
ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output_1/Softmax*
T0*
out_type0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:

rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
valueB *^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ü
rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
_output_shapes
:*
T0*
out_type0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

vtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
dtype0*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ć
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
į
qtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ć
straining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Selecttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
’
rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
ō
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
: 
 
6training_2/Adam/gradients/m2_output_1/Softmax_grad/mulMulrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem2_output_1/Softmax*
T0*&
_class
loc:@m2_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

»
Htraining_2/Adam/gradients/m2_output_1/Softmax_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*&
_class
loc:@m2_output_1/Softmax*
dtype0*
_output_shapes
: 
¶
6training_2/Adam/gradients/m2_output_1/Softmax_grad/SumSum6training_2/Adam/gradients/m2_output_1/Softmax_grad/mulHtraining_2/Adam/gradients/m2_output_1/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*&
_class
loc:@m2_output_1/Softmax*'
_output_shapes
:’’’’’’’’’
Ć
6training_2/Adam/gradients/m2_output_1/Softmax_grad/subSubrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape6training_2/Adam/gradients/m2_output_1/Softmax_grad/Sum*
T0*&
_class
loc:@m2_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

ę
8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1Mul6training_2/Adam/gradients/m2_output_1/Softmax_grad/subm2_output_1/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0*&
_class
loc:@m2_output_1/Softmax
ė
>training_2/Adam/gradients/m2_output_1/BiasAdd_grad/BiasAddGradBiasAddGrad8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1*
_output_shapes
:
*
T0*&
_class
loc:@m2_output_1/BiasAdd*
data_formatNHWC

8training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMulMatMul8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1!m2_output_1/MatMul/ReadVariableOp*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0*%
_class
loc:@m2_output_1/MatMul

:training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMul_1MatMulm2_hidden3_1/Relu8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1*
_output_shapes

:
*
transpose_a(*
transpose_b( *
T0*%
_class
loc:@m2_output_1/MatMul
ź
9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGradReluGrad8training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMulm2_hidden3_1/Relu*
T0*$
_class
loc:@m2_hidden3_1/Relu*'
_output_shapes
:’’’’’’’’’
ī
?training_2/Adam/gradients/m2_hidden3_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGrad*'
_class
loc:@m2_hidden3_1/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0
¢
9training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGrad"m2_hidden3_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m2_hidden3_1/MatMul*'
_output_shapes
:’’’’’’’’’@*
transpose_a( *
transpose_b(

;training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMul_1MatMulm2_hidden2_1/Relu9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGrad*
T0*&
_class
loc:@m2_hidden3_1/MatMul*
_output_shapes

:@*
transpose_a(*
transpose_b( 
ė
9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGradReluGrad9training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMulm2_hidden2_1/Relu*'
_output_shapes
:’’’’’’’’’@*
T0*$
_class
loc:@m2_hidden2_1/Relu
ī
?training_2/Adam/gradients/m2_hidden2_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@m2_hidden2_1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
£
9training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGrad"m2_hidden2_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m2_hidden2_1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(

;training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMul_1MatMuldropout_3/cond/Merge9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGrad*
_output_shapes
:	@*
transpose_a(*
transpose_b( *
T0*&
_class
loc:@m2_hidden2_1/MatMul

=training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradSwitch9training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMuldropout_3/cond/pred_id*
T0*&
_class
loc:@m2_hidden2_1/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
Ā
 training_2/Adam/gradients/SwitchSwitchm2_hidden1_1/Reludropout_3/cond/pred_id*
T0*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
«
"training_2/Adam/gradients/IdentityIdentity"training_2/Adam/gradients/Switch:1*
T0*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
©
!training_2/Adam/gradients/Shape_1Shape"training_2/Adam/gradients/Switch:1*
T0*
out_type0*$
_class
loc:@m2_hidden1_1/Relu*
_output_shapes
:
µ
%training_2/Adam/gradients/zeros/ConstConst#^training_2/Adam/gradients/Identity*
valueB
 *    *$
_class
loc:@m2_hidden1_1/Relu*
dtype0*
_output_shapes
: 
Ü
training_2/Adam/gradients/zerosFill!training_2/Adam/gradients/Shape_1%training_2/Adam/gradients/zeros/Const*
T0*

index_type0*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’

@training_2/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_gradMerge=training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradtraining_2/Adam/gradients/zeros*
T0*$
_class
loc:@m2_hidden1_1/Relu*
N**
_output_shapes
:’’’’’’’’’: 
Ģ
?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ShapeShapedropout_3/cond/dropout/truediv*
out_type0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
:*
T0
Ģ
Atraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1Shapedropout_3/cond/dropout/Floor*
T0*
out_type0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
:
Ų
Otraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ShapeAtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulMul?training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1dropout_3/cond/dropout/Floor*-
_class#
!loc:@dropout_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
Ć
=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/SumSum=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulOtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
¼
Atraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ReshapeReshape=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@dropout_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’

?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Muldropout_3/cond/dropout/truediv?training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1*-
_class#
!loc:@dropout_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’*
T0
É
?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Sum?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Qtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
Ā
Ctraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshape_1Reshape?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Atraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@dropout_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
Ū
Ctraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
T0*
out_type0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
_output_shapes
:
»
Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape_1Const*
valueB *1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
dtype0*
_output_shapes
: 
č
Straining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/ShapeEtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape_1*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDivRealDivAtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshapedropout_3/cond/dropout/sub*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*(
_output_shapes
:’’’’’’’’’
×
Atraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/SumSumEtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDivStraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
_output_shapes
:
Ģ
Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/ReshapeReshapeAtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/SumCtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape*
T0*
Tshape0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*(
_output_shapes
:’’’’’’’’’
Õ
Atraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/NegNeg%dropout_3/cond/dropout/Shape/Switch:1*(
_output_shapes
:’’’’’’’’’*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv

Gtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_1RealDivAtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Negdropout_3/cond/dropout/sub*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*(
_output_shapes
:’’’’’’’’’

Gtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_2RealDivGtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_1dropout_3/cond/dropout/sub*(
_output_shapes
:’’’’’’’’’*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv
ŗ
Atraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/mulMulAtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ReshapeGtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_2*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*(
_output_shapes
:’’’’’’’’’
×
Ctraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Sum_1SumAtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/mulUtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
_output_shapes
:
Ą
Gtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Reshape_1ReshapeCtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Sum_1Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape_1*
Tshape0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
_output_shapes
: *
T0
Ä
"training_2/Adam/gradients/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*$
_class
loc:@m2_hidden1_1/Relu
­
$training_2/Adam/gradients/Identity_1Identity"training_2/Adam/gradients/Switch_1*
T0*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
©
!training_2/Adam/gradients/Shape_2Shape"training_2/Adam/gradients/Switch_1*
T0*
out_type0*$
_class
loc:@m2_hidden1_1/Relu*
_output_shapes
:
¹
'training_2/Adam/gradients/zeros_1/ConstConst%^training_2/Adam/gradients/Identity_1*
dtype0*
_output_shapes
: *
valueB
 *    *$
_class
loc:@m2_hidden1_1/Relu
ą
!training_2/Adam/gradients/zeros_1Fill!training_2/Adam/gradients/Shape_2'training_2/Adam/gradients/zeros_1/Const*
T0*

index_type0*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
£
Ltraining_2/Adam/gradients/dropout_3/cond/dropout/Shape/Switch_grad/cond_gradMerge!training_2/Adam/gradients/zeros_1Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Reshape*
T0*$
_class
loc:@m2_hidden1_1/Relu*
N**
_output_shapes
:’’’’’’’’’: 

training_2/Adam/gradients/AddNAddN@training_2/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_gradLtraining_2/Adam/gradients/dropout_3/cond/dropout/Shape/Switch_grad/cond_grad*$
_class
loc:@m2_hidden1_1/Relu*
N*(
_output_shapes
:’’’’’’’’’*
T0
Ń
9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGradReluGradtraining_2/Adam/gradients/AddNm2_hidden1_1/Relu*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’*
T0
ļ
?training_2/Adam/gradients/m2_hidden1_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@m2_hidden1_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
£
9training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGrad"m2_hidden1_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m2_hidden1_1/MatMul*(
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(

;training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMul_1MatMuldropout_2/cond/Merge9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGrad*
transpose_b( *
T0*&
_class
loc:@m2_hidden1_1/MatMul* 
_output_shapes
:
*
transpose_a(
W
training_2/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
q
#training_2/Adam/AssignAddVariableOpAssignAddVariableOpAdam_2/iterationstraining_2/Adam/Const*
dtype0	

training_2/Adam/ReadVariableOpReadVariableOpAdam_2/iterations$^training_2/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_2/Adam/Cast/ReadVariableOpReadVariableOpAdam_2/iterations*
dtype0	*
_output_shapes
: 

training_2/Adam/CastCast#training_2/Adam/Cast/ReadVariableOp*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0	
Z
training_2/Adam/add/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
h
training_2/Adam/addAddtraining_2/Adam/Casttraining_2/Adam/add/y*
T0*
_output_shapes
: 
h
"training_2/Adam/Pow/ReadVariableOpReadVariableOpAdam_2/beta_2*
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
training_2/Adam/subSubtraining_2/Adam/sub/xtraining_2/Adam/Pow*
_output_shapes
: *
T0
\
training_2/Adam/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training_2/Adam/clip_by_valueMaximum%training_2/Adam/clip_by_value/Minimumtraining_2/Adam/Const_1*
_output_shapes
: *
T0
\
training_2/Adam/SqrtSqrttraining_2/Adam/clip_by_value*
_output_shapes
: *
T0
j
$training_2/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_1*
_output_shapes
: *
dtype0
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
training_2/Adam/truedivRealDivtraining_2/Adam/Sqrttraining_2/Adam/sub_1*
T0*
_output_shapes
: 
m
 training_2/Adam/ReadVariableOp_1ReadVariableOpAdam_2/learning_rate*
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
training_2/Adam/m_0Fill#training_2/Adam/m_0/shape_as_tensortraining_2/Adam/m_0/Const* 
_output_shapes
:
*
T0*

index_type0
Ć
training_2/Adam/m_0_1VarHandleOp*&
shared_nametraining_2/Adam/m_0_1*(
_class
loc:@training_2/Adam/m_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
)training_2/Adam/m_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_0_1*
dtype0* 
_output_shapes
:
*(
_class
loc:@training_2/Adam/m_0_1
b
training_2/Adam/m_1Const*
_output_shapes	
:*
valueB*    *
dtype0
¾
training_2/Adam/m_1_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_1_1*(
_class
loc:@training_2/Adam/m_1_1*
	container *
shape:
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
)training_2/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_1_1*(
_class
loc:@training_2/Adam/m_1_1*
dtype0*
_output_shapes	
:
t
#training_2/Adam/m_2/shape_as_tensorConst*
valueB"   @   *
dtype0*
_output_shapes
:
^
training_2/Adam/m_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/m_2Fill#training_2/Adam/m_2/shape_as_tensortraining_2/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	@
Ā
training_2/Adam/m_2_1VarHandleOp*&
shared_nametraining_2/Adam/m_2_1*(
_class
loc:@training_2/Adam/m_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: 
{
6training_2/Adam/m_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_2_1*
_output_shapes
: 

training_2/Adam/m_2_1/AssignAssignVariableOptraining_2/Adam/m_2_1training_2/Adam/m_2*
dtype0*(
_class
loc:@training_2/Adam/m_2_1
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
training_2/Adam/m_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
)training_2/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_4_1*(
_class
loc:@training_2/Adam/m_4_1*
dtype0*
_output_shapes

:@
`
training_2/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
½
training_2/Adam/m_5_1VarHandleOp*&
shared_nametraining_2/Adam/m_5_1*(
_class
loc:@training_2/Adam/m_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
)training_2/Adam/m_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_5_1*
_output_shapes
:*(
_class
loc:@training_2/Adam/m_5_1*
dtype0
h
training_2/Adam/m_6Const*
valueB
*    *
dtype0*
_output_shapes

:

Į
training_2/Adam/m_6_1VarHandleOp*&
shared_nametraining_2/Adam/m_6_1*(
_class
loc:@training_2/Adam/m_6_1*
	container *
shape
:
*
dtype0*
_output_shapes
: 
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
_output_shapes

:
*(
_class
loc:@training_2/Adam/m_6_1*
dtype0
`
training_2/Adam/m_7Const*
valueB
*    *
dtype0*
_output_shapes
:

½
training_2/Adam/m_7_1VarHandleOp*
shape:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_7_1*(
_class
loc:@training_2/Adam/m_7_1*
	container 
{
6training_2/Adam/m_7_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_7_1*
_output_shapes
: 

training_2/Adam/m_7_1/AssignAssignVariableOptraining_2/Adam/m_7_1training_2/Adam/m_7*
dtype0*(
_class
loc:@training_2/Adam/m_7_1
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
training_2/Adam/v_0Fill#training_2/Adam/v_0/shape_as_tensortraining_2/Adam/v_0/Const* 
_output_shapes
:
*
T0*

index_type0
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
)training_2/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_0_1*
dtype0* 
_output_shapes
:
*(
_class
loc:@training_2/Adam/v_0_1
b
training_2/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_2/Adam/v_1_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_1_1*(
_class
loc:@training_2/Adam/v_1_1
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
training_2/Adam/v_2_1VarHandleOp*
shape:	@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_2_1*(
_class
loc:@training_2/Adam/v_2_1*
	container 
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
training_2/Adam/v_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_2/Adam/v_4Fill#training_2/Adam/v_4/shape_as_tensortraining_2/Adam/v_4/Const*
T0*

index_type0*
_output_shapes

:@
Į
training_2/Adam/v_4_1VarHandleOp*
	container *
shape
:@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_4_1*(
_class
loc:@training_2/Adam/v_4_1
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
_output_shapes

:
*
valueB
*    *
dtype0
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
&training_2/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/vhat_1Fill&training_2/Adam/vhat_1/shape_as_tensortraining_2/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_1_1VarHandleOp*)
shared_nametraining_2/Adam/vhat_1_1*+
_class!
loc:@training_2/Adam/vhat_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
&training_2/Adam/vhat_2/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_2/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/vhat_2Fill&training_2/Adam/vhat_2/shape_as_tensortraining_2/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_2/Adam/vhat_2_1VarHandleOp*)
shared_nametraining_2/Adam/vhat_2_1*+
_class!
loc:@training_2/Adam/vhat_2_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_2/Adam/vhat_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_2/Adam/vhat_3Fill&training_2/Adam/vhat_3/shape_as_tensortraining_2/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
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
,training_2/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_3_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_3_1
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
training_2/Adam/vhat_5/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/vhat_5Fill&training_2/Adam/vhat_5/shape_as_tensortraining_2/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
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
,training_2/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_5_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_5_1
p
&training_2/Adam/vhat_6/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_6/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_2/Adam/vhat_6Fill&training_2/Adam/vhat_6/shape_as_tensortraining_2/Adam/vhat_6/Const*
_output_shapes
:*
T0*

index_type0
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
,training_2/Adam/vhat_6_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_6_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_6_1
p
&training_2/Adam/vhat_7/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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
training_2/Adam/vhat_7_1VarHandleOp*)
shared_nametraining_2/Adam/vhat_7_1*+
_class!
loc:@training_2/Adam/vhat_7_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
,training_2/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_7_1*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_7_1*
dtype0
f
 training_2/Adam/ReadVariableOp_2ReadVariableOpAdam_2/beta_1*
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
 training_2/Adam/ReadVariableOp_3ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/sub_2Subtraining_2/Adam/sub_2/x training_2/Adam/ReadVariableOp_3*
_output_shapes
: *
T0

training_2/Adam/mul_2Multraining_2/Adam/sub_2;training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
u
training_2/Adam/add_1Addtraining_2/Adam/mul_1training_2/Adam/mul_2* 
_output_shapes
:
*
T0
f
 training_2/Adam/ReadVariableOp_4ReadVariableOpAdam_2/beta_2*
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
 training_2/Adam/ReadVariableOp_5ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
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
training_2/Adam/SquareSquare;training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMul_1* 
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
training_2/Adam/add_3/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
x
training_2/Adam/add_3Addtraining_2/Adam/Sqrt_1training_2/Adam/add_3/y* 
_output_shapes
:
*
T0
}
training_2/Adam/truediv_1RealDivtraining_2/Adam/mul_5training_2/Adam/add_3*
T0* 
_output_shapes
:

v
 training_2/Adam/ReadVariableOp_6ReadVariableOpm2_hidden1_1/kernel* 
_output_shapes
:
*
dtype0
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
dtype0* 
_output_shapes
:

o
"training_2/Adam/AssignVariableOp_2AssignVariableOpm2_hidden1_1/kerneltraining_2/Adam/sub_4*
dtype0

 training_2/Adam/ReadVariableOp_9ReadVariableOpm2_hidden1_1/kernel#^training_2/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_10ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
w
$training_2/Adam/mul_6/ReadVariableOpReadVariableOptraining_2/Adam/m_1_1*
dtype0*
_output_shapes	
:

training_2/Adam/mul_6Mul!training_2/Adam/ReadVariableOp_10$training_2/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_11ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/mul_7Multraining_2/Adam/sub_5?training_2/Adam/gradients/m2_hidden1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training_2/Adam/add_4Addtraining_2/Adam/mul_6training_2/Adam/mul_7*
_output_shapes	
:*
T0
g
!training_2/Adam/ReadVariableOp_12ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
w
$training_2/Adam/mul_8/ReadVariableOpReadVariableOptraining_2/Adam/v_1_1*
dtype0*
_output_shapes	
:

training_2/Adam/mul_8Mul!training_2/Adam/ReadVariableOp_12$training_2/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_13ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/Square_1Square?training_2/Adam/gradients/m2_hidden1_1/BiasAdd_grad/BiasAddGrad*
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
training_2/Adam/mul_10Multraining_2/Adam/multraining_2/Adam/add_4*
T0*
_output_shapes	
:
\
training_2/Adam/Const_5Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training_2/Adam/Sqrt_2Sqrttraining_2/Adam/clip_by_value_2*
_output_shapes	
:*
T0
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
training_2/Adam/truediv_2RealDivtraining_2/Adam/mul_10training_2/Adam/add_6*
_output_shapes	
:*
T0
p
!training_2/Adam/ReadVariableOp_14ReadVariableOpm2_hidden1_1/bias*
dtype0*
_output_shapes	
:

training_2/Adam/sub_7Sub!training_2/Adam/ReadVariableOp_14training_2/Adam/truediv_2*
_output_shapes	
:*
T0
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
"training_2/Adam/AssignVariableOp_5AssignVariableOpm2_hidden1_1/biastraining_2/Adam/sub_7*
dtype0

!training_2/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1_1/bias#^training_2/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_18ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
|
%training_2/Adam/mul_11/ReadVariableOpReadVariableOptraining_2/Adam/m_2_1*
dtype0*
_output_shapes
:	@

training_2/Adam/mul_11Mul!training_2/Adam/ReadVariableOp_18%training_2/Adam/mul_11/ReadVariableOp*
_output_shapes
:	@*
T0
g
!training_2/Adam/ReadVariableOp_19ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
\
training_2/Adam/sub_8/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
y
training_2/Adam/sub_8Subtraining_2/Adam/sub_8/x!training_2/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training_2/Adam/mul_12Multraining_2/Adam/sub_8;training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
v
training_2/Adam/add_7Addtraining_2/Adam/mul_11training_2/Adam/mul_12*
T0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_20ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
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
!training_2/Adam/ReadVariableOp_21ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/Square_2Square;training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMul_1*
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
training_2/Adam/clip_by_value_3Maximum'training_2/Adam/clip_by_value_3/Minimumtraining_2/Adam/Const_7*
_output_shapes
:	@*
T0
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
training_2/Adam/add_9Addtraining_2/Adam/Sqrt_3training_2/Adam/add_9/y*
_output_shapes
:	@*
T0
}
training_2/Adam/truediv_3RealDivtraining_2/Adam/mul_15training_2/Adam/add_9*
T0*
_output_shapes
:	@
v
!training_2/Adam/ReadVariableOp_22ReadVariableOpm2_hidden2_1/kernel*
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
"training_2/Adam/AssignVariableOp_8AssignVariableOpm2_hidden2_1/kerneltraining_2/Adam/sub_10*
dtype0

!training_2/Adam/ReadVariableOp_25ReadVariableOpm2_hidden2_1/kernel#^training_2/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_26ReadVariableOpAdam_2/beta_1*
_output_shapes
: *
dtype0
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
!training_2/Adam/ReadVariableOp_27ReadVariableOpAdam_2/beta_1*
_output_shapes
: *
dtype0
]
training_2/Adam/sub_11/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
{
training_2/Adam/sub_11Subtraining_2/Adam/sub_11/x!training_2/Adam/ReadVariableOp_27*
_output_shapes
: *
T0

training_2/Adam/mul_17Multraining_2/Adam/sub_11?training_2/Adam/gradients/m2_hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
r
training_2/Adam/add_10Addtraining_2/Adam/mul_16training_2/Adam/mul_17*
_output_shapes
:@*
T0
g
!training_2/Adam/ReadVariableOp_28ReadVariableOpAdam_2/beta_2*
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
!training_2/Adam/ReadVariableOp_29ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_2/Adam/sub_12Subtraining_2/Adam/sub_12/x!training_2/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training_2/Adam/Square_3Square?training_2/Adam/gradients/m2_hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
t
training_2/Adam/mul_19Multraining_2/Adam/sub_12training_2/Adam/Square_3*
_output_shapes
:@*
T0
r
training_2/Adam/add_11Addtraining_2/Adam/mul_18training_2/Adam/mul_19*
_output_shapes
:@*
T0
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
training_2/Adam/Const_10Const*
_output_shapes
: *
valueB
 *  *
dtype0

'training_2/Adam/clip_by_value_4/MinimumMinimumtraining_2/Adam/add_11training_2/Adam/Const_10*
T0*
_output_shapes
:@

training_2/Adam/clip_by_value_4Maximum'training_2/Adam/clip_by_value_4/Minimumtraining_2/Adam/Const_9*
_output_shapes
:@*
T0
d
training_2/Adam/Sqrt_4Sqrttraining_2/Adam/clip_by_value_4*
_output_shapes
:@*
T0
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
!training_2/Adam/ReadVariableOp_30ReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@

training_2/Adam/sub_13Sub!training_2/Adam/ReadVariableOp_30training_2/Adam/truediv_4*
_output_shapes
:@*
T0
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
#training_2/Adam/AssignVariableOp_11AssignVariableOpm2_hidden2_1/biastraining_2/Adam/sub_13*
dtype0

!training_2/Adam/ReadVariableOp_33ReadVariableOpm2_hidden2_1/bias$^training_2/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_34ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_21/ReadVariableOpReadVariableOptraining_2/Adam/m_4_1*
dtype0*
_output_shapes

:@

training_2/Adam/mul_21Mul!training_2/Adam/ReadVariableOp_34%training_2/Adam/mul_21/ReadVariableOp*
T0*
_output_shapes

:@
g
!training_2/Adam/ReadVariableOp_35ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/mul_22Multraining_2/Adam/sub_14;training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
v
training_2/Adam/add_13Addtraining_2/Adam/mul_21training_2/Adam/mul_22*
T0*
_output_shapes

:@
g
!training_2/Adam/ReadVariableOp_36ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
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
!training_2/Adam/ReadVariableOp_37ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_15/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_2/Adam/sub_15Subtraining_2/Adam/sub_15/x!training_2/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

training_2/Adam/Square_4Square;training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMul_1*
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
training_2/Adam/mul_25Multraining_2/Adam/multraining_2/Adam/add_13*
_output_shapes

:@*
T0
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
'training_2/Adam/clip_by_value_5/MinimumMinimumtraining_2/Adam/add_14training_2/Adam/Const_12*
T0*
_output_shapes

:@

training_2/Adam/clip_by_value_5Maximum'training_2/Adam/clip_by_value_5/Minimumtraining_2/Adam/Const_11*
T0*
_output_shapes

:@
h
training_2/Adam/Sqrt_5Sqrttraining_2/Adam/clip_by_value_5*
T0*
_output_shapes

:@
]
training_2/Adam/add_15/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
x
training_2/Adam/add_15Addtraining_2/Adam/Sqrt_5training_2/Adam/add_15/y*
T0*
_output_shapes

:@
}
training_2/Adam/truediv_5RealDivtraining_2/Adam/mul_25training_2/Adam/add_15*
T0*
_output_shapes

:@
u
!training_2/Adam/ReadVariableOp_38ReadVariableOpm2_hidden3_1/kernel*
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
#training_2/Adam/AssignVariableOp_14AssignVariableOpm2_hidden3_1/kerneltraining_2/Adam/sub_16*
dtype0

!training_2/Adam/ReadVariableOp_41ReadVariableOpm2_hidden3_1/kernel$^training_2/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
g
!training_2/Adam/ReadVariableOp_42ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_26/ReadVariableOpReadVariableOptraining_2/Adam/m_5_1*
dtype0*
_output_shapes
:

training_2/Adam/mul_26Mul!training_2/Adam/ReadVariableOp_42%training_2/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_43ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/sub_17Subtraining_2/Adam/sub_17/x!training_2/Adam/ReadVariableOp_43*
_output_shapes
: *
T0

training_2/Adam/mul_27Multraining_2/Adam/sub_17?training_2/Adam/gradients/m2_hidden3_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
r
training_2/Adam/add_16Addtraining_2/Adam/mul_26training_2/Adam/mul_27*
T0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_44ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_28/ReadVariableOpReadVariableOptraining_2/Adam/v_5_1*
_output_shapes
:*
dtype0

training_2/Adam/mul_28Mul!training_2/Adam/ReadVariableOp_44%training_2/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_45ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
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
training_2/Adam/Square_5Square?training_2/Adam/gradients/m2_hidden3_1/BiasAdd_grad/BiasAddGrad*
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
training_2/Adam/Sqrt_6Sqrttraining_2/Adam/clip_by_value_6*
T0*
_output_shapes
:
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
training_2/Adam/truediv_6RealDivtraining_2/Adam/mul_30training_2/Adam/add_18*
_output_shapes
:*
T0
o
!training_2/Adam/ReadVariableOp_46ReadVariableOpm2_hidden3_1/bias*
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
#training_2/Adam/AssignVariableOp_17AssignVariableOpm2_hidden3_1/biastraining_2/Adam/sub_19*
dtype0

!training_2/Adam/ReadVariableOp_49ReadVariableOpm2_hidden3_1/bias$^training_2/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_50ReadVariableOpAdam_2/beta_1*
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
!training_2/Adam/ReadVariableOp_51ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_20/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
{
training_2/Adam/sub_20Subtraining_2/Adam/sub_20/x!training_2/Adam/ReadVariableOp_51*
_output_shapes
: *
T0

training_2/Adam/mul_32Multraining_2/Adam/sub_20:training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:

v
training_2/Adam/add_19Addtraining_2/Adam/mul_31training_2/Adam/mul_32*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_52ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
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
!training_2/Adam/ReadVariableOp_53ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/Square_6Square:training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMul_1*
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
'training_2/Adam/clip_by_value_7/MinimumMinimumtraining_2/Adam/add_20training_2/Adam/Const_16*
_output_shapes

:
*
T0

training_2/Adam/clip_by_value_7Maximum'training_2/Adam/clip_by_value_7/Minimumtraining_2/Adam/Const_15*
T0*
_output_shapes

:

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
!training_2/Adam/ReadVariableOp_54ReadVariableOpm2_output_1/kernel*
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
#training_2/Adam/AssignVariableOp_20AssignVariableOpm2_output_1/kerneltraining_2/Adam/sub_22*
dtype0

!training_2/Adam/ReadVariableOp_57ReadVariableOpm2_output_1/kernel$^training_2/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_58ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
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
!training_2/Adam/ReadVariableOp_59ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_23/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
{
training_2/Adam/sub_23Subtraining_2/Adam/sub_23/x!training_2/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

training_2/Adam/mul_37Multraining_2/Adam/sub_23>training_2/Adam/gradients/m2_output_1/BiasAdd_grad/BiasAddGrad*
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
!training_2/Adam/ReadVariableOp_60ReadVariableOpAdam_2/beta_2*
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
!training_2/Adam/ReadVariableOp_61ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/sub_24Subtraining_2/Adam/sub_24/x!training_2/Adam/ReadVariableOp_61*
_output_shapes
: *
T0

training_2/Adam/Square_7Square>training_2/Adam/gradients/m2_output_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
T0
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
training_2/Adam/Const_18Const*
_output_shapes
: *
valueB
 *  *
dtype0
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
training_2/Adam/Sqrt_8Sqrttraining_2/Adam/clip_by_value_8*
_output_shapes
:
*
T0
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
!training_2/Adam/ReadVariableOp_62ReadVariableOpm2_output_1/bias*
dtype0*
_output_shapes
:


training_2/Adam/sub_25Sub!training_2/Adam/ReadVariableOp_62training_2/Adam/truediv_8*
_output_shapes
:
*
T0
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
#training_2/Adam/AssignVariableOp_23AssignVariableOpm2_output_1/biastraining_2/Adam/sub_25*
dtype0

!training_2/Adam/ReadVariableOp_65ReadVariableOpm2_output_1/bias$^training_2/Adam/AssignVariableOp_23*
_output_shapes
:
*
dtype0
e
training_2/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_6_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_1VarIsInitializedOptraining_2/Adam/m_1_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_2VarIsInitializedOptraining_2/Adam/v_6_1*
_output_shapes
: 
g
training_2/VarIsInitializedOp_3VarIsInitializedOptraining_2/Adam/vhat_5_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_4VarIsInitializedOptraining_2/Adam/m_0_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_5VarIsInitializedOptraining_2/Adam/m_3_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_6VarIsInitializedOptraining_2/Adam/m_5_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_7VarIsInitializedOptraining_2/Adam/m_4_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_8VarIsInitializedOptraining_2/Adam/v_7_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_9VarIsInitializedOptraining_2/Adam/m_2_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_10VarIsInitializedOptraining_2/Adam/m_6_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_11VarIsInitializedOptraining_2/Adam/vhat_0_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_12VarIsInitializedOptraining_2/Adam/vhat_1_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_13VarIsInitializedOptraining_2/Adam/v_0_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_14VarIsInitializedOptraining_2/Adam/vhat_7_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_15VarIsInitializedOptraining_2/Adam/v_3_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_16VarIsInitializedOptraining_2/Adam/m_7_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_17VarIsInitializedOptraining_2/Adam/v_5_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_18VarIsInitializedOptraining_2/Adam/v_1_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_19VarIsInitializedOptraining_2/Adam/v_2_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_20VarIsInitializedOptraining_2/Adam/v_4_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_21VarIsInitializedOptraining_2/Adam/vhat_2_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_22VarIsInitializedOptraining_2/Adam/vhat_4_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_23VarIsInitializedOptraining_2/Adam/vhat_3_1*
_output_shapes
: 

training_2/initNoOp^training_2/Adam/m_0_1/Assign^training_2/Adam/m_1_1/Assign^training_2/Adam/m_2_1/Assign^training_2/Adam/m_3_1/Assign^training_2/Adam/m_4_1/Assign^training_2/Adam/m_5_1/Assign^training_2/Adam/m_6_1/Assign^training_2/Adam/m_7_1/Assign^training_2/Adam/v_0_1/Assign^training_2/Adam/v_1_1/Assign^training_2/Adam/v_2_1/Assign^training_2/Adam/v_3_1/Assign^training_2/Adam/v_4_1/Assign^training_2/Adam/v_5_1/Assign^training_2/Adam/v_6_1/Assign^training_2/Adam/v_7_1/Assign ^training_2/Adam/vhat_0_1/Assign ^training_2/Adam/vhat_1_1/Assign ^training_2/Adam/vhat_2_1/Assign ^training_2/Adam/vhat_3_1/Assign ^training_2/Adam/vhat_4_1/Assign ^training_2/Adam/vhat_5_1/Assign ^training_2/Adam/vhat_6_1/Assign ^training_2/Adam/vhat_7_1/Assign

training_2/group_depsNoOp^Mean_2^metrics_2/accuracy/Identity"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1^training_2/Adam/ReadVariableOp"^training_2/Adam/ReadVariableOp_15"^training_2/Adam/ReadVariableOp_16"^training_2/Adam/ReadVariableOp_17"^training_2/Adam/ReadVariableOp_23"^training_2/Adam/ReadVariableOp_24"^training_2/Adam/ReadVariableOp_25"^training_2/Adam/ReadVariableOp_31"^training_2/Adam/ReadVariableOp_32"^training_2/Adam/ReadVariableOp_33"^training_2/Adam/ReadVariableOp_39"^training_2/Adam/ReadVariableOp_40"^training_2/Adam/ReadVariableOp_41"^training_2/Adam/ReadVariableOp_47"^training_2/Adam/ReadVariableOp_48"^training_2/Adam/ReadVariableOp_49"^training_2/Adam/ReadVariableOp_55"^training_2/Adam/ReadVariableOp_56"^training_2/Adam/ReadVariableOp_57"^training_2/Adam/ReadVariableOp_63"^training_2/Adam/ReadVariableOp_64"^training_2/Adam/ReadVariableOp_65!^training_2/Adam/ReadVariableOp_7!^training_2/Adam/ReadVariableOp_8!^training_2/Adam/ReadVariableOp_9

group_deps_2NoOp^Mean_2^metrics_2/accuracy/Identity"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1"ūfĮ.`     Øµ	E'3“×AJ”Ą
  
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
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
b'unknown'š
u
m1_hidden1_inputPlaceholder*
shape:’’’’’’’’’*
dtype0*(
_output_shapes
:’’’’’’’’’
p
m1_hidden1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
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
dtype0*
seed2žÓ0* 
_output_shapes
:
*
seed*
T0

m1_hidden1/random_uniform/subSubm1_hidden1/random_uniform/maxm1_hidden1/random_uniform/min*
T0*
_output_shapes
: 

m1_hidden1/random_uniform/mulMul'm1_hidden1/random_uniform/RandomUniformm1_hidden1/random_uniform/sub*
T0* 
_output_shapes
:

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
m1_hidden1/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namem1_hidden1/bias*"
_class
loc:@m1_hidden1/bias*
	container *
shape:
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
m1_hidden1/ReluRelum1_hidden1/BiasAdd*
T0*(
_output_shapes
:’’’’’’’’’
p
m1_hidden2/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
b
m1_hidden2/random_uniform/minConst*
_output_shapes
: *
valueB
 *ó5¾*
dtype0
b
m1_hidden2/random_uniform/maxConst*
valueB
 *ó5>*
dtype0*
_output_shapes
: 
­
'm1_hidden2/random_uniform/RandomUniformRandomUniformm1_hidden2/random_uniform/shape*
dtype0*
seed2ķó*
_output_shapes
:	@*
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
%m1_hidden2/kernel/Read/ReadVariableOpReadVariableOpm1_hidden2/kernel*$
_class
loc:@m1_hidden2/kernel*
dtype0*
_output_shapes
:	@
]
m1_hidden2/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
«
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
m1_hidden2/bias/AssignAssignVariableOpm1_hidden2/biasm1_hidden2/Const*
dtype0*"
_class
loc:@m1_hidden2/bias
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
m1_hidden2/MatMulMatMulm1_hidden1/Relu m1_hidden2/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’@*
transpose_b( 
m
!m1_hidden2/BiasAdd/ReadVariableOpReadVariableOpm1_hidden2/bias*
dtype0*
_output_shapes
:@

m1_hidden2/BiasAddBiasAddm1_hidden2/MatMul!m1_hidden2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
]
m1_hidden2/ReluRelum1_hidden2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’@
p
m1_hidden3/random_uniform/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
b
m1_hidden3/random_uniform/minConst*
valueB
 *7¾*
dtype0*
_output_shapes
: 
b
m1_hidden3/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
¬
'm1_hidden3/random_uniform/RandomUniformRandomUniformm1_hidden3/random_uniform/shape*
T0*
dtype0*
seed2®Æ*
_output_shapes

:@*
seed
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
m1_hidden3/random_uniformAddm1_hidden3/random_uniform/mulm1_hidden3/random_uniform/min*
_output_shapes

:@*
T0
µ
m1_hidden3/kernelVarHandleOp*
_output_shapes
: *"
shared_namem1_hidden3/kernel*$
_class
loc:@m1_hidden3/kernel*
	container *
shape
:@*
dtype0
s
2m1_hidden3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpm1_hidden3/kernel*
_output_shapes
: 

m1_hidden3/kernel/AssignAssignVariableOpm1_hidden3/kernelm1_hidden3/random_uniform*
dtype0*$
_class
loc:@m1_hidden3/kernel

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
«
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

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
¦
m1_hidden3/MatMulMatMulm1_hidden2/Relu m1_hidden3/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( 
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
m1_output/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ōōõ>*
dtype0
Ŗ
&m1_output/random_uniform/RandomUniformRandomUniformm1_output/random_uniform/shape*
T0*
dtype0*
seed2ó*
_output_shapes

:
*
seed

m1_output/random_uniform/subSubm1_output/random_uniform/maxm1_output/random_uniform/min*
T0*
_output_shapes
: 

m1_output/random_uniform/mulMul&m1_output/random_uniform/RandomUniformm1_output/random_uniform/sub*
_output_shapes

:
*
T0
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
m1_output/kernel/AssignAssignVariableOpm1_output/kernelm1_output/random_uniform*
dtype0*#
_class
loc:@m1_output/kernel
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
m1_output/MatMulMatMulm1_hidden3/Relum1_output/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( *
T0
k
 m1_output/BiasAdd/ReadVariableOpReadVariableOpm1_output/bias*
_output_shapes
:
*
dtype0

m1_output/BiasAddBiasAddm1_output/MatMul m1_output/BiasAdd/ReadVariableOp*'
_output_shapes
:’’’’’’’’’
*
T0*
data_formatNHWC
a
m1_output/SoftmaxSoftmaxm1_output/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’

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
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_1*
valueB
 *fff?
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
%Adam/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2*
valueB
 *w¾?
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
$Adam/decay/Initializer/initial_valueConst*
_class
loc:@Adam/decay*
valueB
 *    *
dtype0*
_output_shapes
: 


Adam/decayVarHandleOp*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: *
dtype0
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
Adam/decay*
_output_shapes
: *
_class
loc:@Adam/decay*
dtype0

m1_output_targetPlaceholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
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
totalVarHandleOp*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nametotal
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

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
count/Read/ReadVariableOpReadVariableOpcount*
dtype0*
_output_shapes
: *
_class

loc:@count

metrics/accuracy/SqueezeSqueezem1_output_target*
T0*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’
l
!metrics/accuracy/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
¤
metrics/accuracy/ArgMaxArgMaxm1_output/Softmax!metrics/accuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0*
T0

metrics/accuracy/CastCastmetrics/accuracy/ArgMax*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	*
Truncate( 
~
metrics/accuracy/EqualEqualmetrics/accuracy/Squeezemetrics/accuracy/Cast*#
_output_shapes
:’’’’’’’’’*
T0

metrics/accuracy/Cast_1Castmetrics/accuracy/Equal*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0

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
;loss/m1_output_loss/sparse_categorical_crossentropy/ReshapeReshapem1_output_targetAloss/m1_output_loss/sparse_categorical_crossentropy/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Ź
8loss/m1_output_loss/sparse_categorical_crossentropy/CastCast;loss/m1_output_loss/sparse_categorical_crossentropy/Reshape*

DstT0	*#
_output_shapes
:’’’’’’’’’*

SrcT0*
Truncate( 

Closs/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape7loss/m1_output_loss/sparse_categorical_crossentropy/LogCloss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
Tshape0*'
_output_shapes
:’’’’’’’’’
*
T0
Õ
]loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape8loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
_output_shapes
:*
T0	*
out_type0
ė
{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits=loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_18loss/m1_output_loss/sparse_categorical_crossentropy/Cast*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
T0

Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulMulm1_output_sample_weights{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0

Gloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

Eloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mulGloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Ó
Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*
out_type0*
_output_shapes
: 
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
MeanMeanloss/mulConst_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
t
dropout_1_inputPlaceholder*
dtype0*(
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
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
dropout_1/cond/pred_idIdentitydropout_1/keras_learning_phase*
T0
*
_output_shapes
: 
z
dropout_1/cond/dropout/rateConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *ĶĢL>

dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
Į
#dropout_1/cond/dropout/Shape/SwitchSwitchdropout_1_inputdropout_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_1_input
{
dropout_1/cond/dropout/sub/xConst^dropout_1/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¼
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed*
T0*
dtype0*
seed2**(
_output_shapes
:’’’’’’’’’
§
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/truedivdropout_1/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
µ
dropout_1/cond/Switch_1Switchdropout_1_inputdropout_1/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_1_input

dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul**
_output_shapes
:’’’’’’’’’: *
T0*
N
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
®
'm2_hidden1/random_uniform/RandomUniformRandomUniformm2_hidden1/random_uniform/shape*
T0*
dtype0*
seed2ŻķÉ* 
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
m2_hidden1/random_uniform/mulMul'm2_hidden1/random_uniform/RandomUniformm2_hidden1/random_uniform/sub* 
_output_shapes
:
*
T0

m2_hidden1/random_uniformAddm2_hidden1/random_uniform/mulm2_hidden1/random_uniform/min*
T0* 
_output_shapes
:

·
m2_hidden1/kernelVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1/kernel*$
_class
loc:@m2_hidden1/kernel
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
%m2_hidden1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden1/kernel*
dtype0* 
_output_shapes
:
*$
_class
loc:@m2_hidden1/kernel
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
m2_hidden2/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
b
m2_hidden2/random_uniform/minConst*
_output_shapes
: *
valueB
 *ó5¾*
dtype0
b
m2_hidden2/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ó5>
­
'm2_hidden2/random_uniform/RandomUniformRandomUniformm2_hidden2/random_uniform/shape*
T0*
dtype0*
seed2¦ā*
_output_shapes
:	@*
seed
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
m2_hidden2/random_uniformAddm2_hidden2/random_uniform/mulm2_hidden2/random_uniform/min*
_output_shapes
:	@*
T0
¶
m2_hidden2/kernelVarHandleOp*
shape:	@*
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
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’@
m
!m2_hidden2/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2/bias*
dtype0*
_output_shapes
:@

m2_hidden2/BiasAddBiasAddm2_hidden2/MatMul!m2_hidden2/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@*
T0
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
m2_hidden3/random_uniform/maxConst*
_output_shapes
: *
valueB
 *7>*
dtype0
¬
'm2_hidden3/random_uniform/RandomUniformRandomUniformm2_hidden3/random_uniform/shape*
dtype0*
seed2ą÷*
_output_shapes

:@*
seed*
T0
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

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
¦
m2_hidden3/MatMulMatMulm2_hidden2/Relu m2_hidden3/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( 
m
!m2_hidden3/BiasAdd/ReadVariableOpReadVariableOpm2_hidden3/bias*
dtype0*
_output_shapes
:

m2_hidden3/BiasAddBiasAddm2_hidden3/MatMul!m2_hidden3/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’*
T0
]
m2_hidden3/ReluRelum2_hidden3/BiasAdd*'
_output_shapes
:’’’’’’’’’*
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
©
&m2_output/random_uniform/RandomUniformRandomUniformm2_output/random_uniform/shape*
dtype0*
seed2łä$*
_output_shapes

:
*
seed*
T0

m2_output/random_uniform/subSubm2_output/random_uniform/maxm2_output/random_uniform/min*
T0*
_output_shapes
: 
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
m2_output/ConstConst*
_output_shapes
:
*
valueB
*    *
dtype0
Ø
m2_output/biasVarHandleOp*
shape:
*
dtype0*
_output_shapes
: *
shared_namem2_output/bias*!
_class
loc:@m2_output/bias*
	container 
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
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( 
k
 m2_output/BiasAdd/ReadVariableOpReadVariableOpm2_output/bias*
dtype0*
_output_shapes
:


m2_output/BiasAddBiasAddm2_output/MatMul m2_output/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’

a
m2_output/SoftmaxSoftmaxm2_output/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’


+Adam_1/iterations/Initializer/initial_valueConst*
_output_shapes
: *$
_class
loc:@Adam_1/iterations*
value	B	 R *
dtype0	
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
«
Adam_1/learning_rate/AssignAssignVariableOpAdam_1/learning_rate.Adam_1/learning_rate/Initializer/initial_value*'
_class
loc:@Adam_1/learning_rate*
dtype0

(Adam_1/learning_rate/Read/ReadVariableOpReadVariableOpAdam_1/learning_rate*
_output_shapes
: *'
_class
loc:@Adam_1/learning_rate*
dtype0
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

Adam_1/beta_1/AssignAssignVariableOpAdam_1/beta_1'Adam_1/beta_1/Initializer/initial_value* 
_class
loc:@Adam_1/beta_1*
dtype0

!Adam_1/beta_1/Read/ReadVariableOpReadVariableOpAdam_1/beta_1*
_output_shapes
: * 
_class
loc:@Adam_1/beta_1*
dtype0
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
_class
loc:@Adam_1/beta_2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameAdam_1/beta_2
k
.Adam_1/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam_1/beta_2*
_output_shapes
: 

Adam_1/beta_2/AssignAssignVariableOpAdam_1/beta_2'Adam_1/beta_2/Initializer/initial_value*
dtype0* 
_class
loc:@Adam_1/beta_2
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
m2_output_targetPlaceholder*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0
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

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

metrics_1/accuracy/SqueezeSqueezem2_output_target*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’*
T0
n
#metrics_1/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0
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
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’

metrics_1/accuracy/EqualEqualmetrics_1/accuracy/Squeezemetrics_1/accuracy/Cast*
T0*#
_output_shapes
:’’’’’’’’’

metrics_1/accuracy/Cast_1Castmetrics_1/accuracy/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’
b
metrics_1/accuracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

metrics_1/accuracy/SumSummetrics_1/accuracy/Cast_1metrics_1/accuracy/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
k
&metrics_1/accuracy/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/accuracy/Sum*
dtype0

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
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ū
=loss_1/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_targetCloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*
Tshape0*#
_output_shapes
:’’’’’’’’’*
T0
Ī
:loss_1/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’

Eloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
_output_shapes
:*
valueB"’’’’
   *
dtype0

?loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_1/m2_output_loss/sparse_categorical_crossentropy/LogEloss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

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
Gloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/SumSumGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mulIloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
×
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/SizeSizeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
: *
T0*
out_type0
ō
Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/CastCastUloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Size*
Truncate( *

DstT0*
_output_shapes
: *

SrcT0
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
Const_5Const*
_output_shapes
: *
valueB *
dtype0
a
Mean_1Mean
loss_1/mulConst_5*

Tidx0*
	keep_dims( *
T0*
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
#dropout_2/cond/dropout/Shape/SwitchSwitchdropout_2_inputdropout_2/cond/pred_id*"
_class
loc:@dropout_2_input*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
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
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
dropout_2/cond/dropout/addAdddropout_2/cond/dropout/sub%dropout_2/cond/dropout/random_uniform*
T0*(
_output_shapes
:’’’’’’’’’
t
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0*(
_output_shapes
:’’’’’’’’’

dropout_2/cond/dropout/truedivRealDiv%dropout_2/cond/dropout/Shape/Switch:1dropout_2/cond/dropout/sub*
T0*(
_output_shapes
:’’’’’’’’’

dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/truedivdropout_2/cond/dropout/Floor*(
_output_shapes
:’’’’’’’’’*
T0
µ
dropout_2/cond/Switch_1Switchdropout_2_inputdropout_2/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*"
_class
loc:@dropout_2_input
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
m2_hidden1_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *¬\1½
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
dtype0*
seed2* 
_output_shapes
:
*
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
m2_hidden1_1/biasVarHandleOp*$
_class
loc:@m2_hidden1_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_namem2_hidden1_1/bias
s
2m2_hidden1_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpm2_hidden1_1/bias*
_output_shapes
: 

m2_hidden1_1/bias/AssignAssignVariableOpm2_hidden1_1/biasm2_hidden1_1/Const*
dtype0*$
_class
loc:@m2_hidden1_1/bias
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
m2_hidden1_1/MatMulMatMuldropout_2/cond/Merge"m2_hidden1_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’
r
#m2_hidden1_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden1_1/bias*
_output_shapes	
:*
dtype0
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
dropout_3/cond/dropout/sub/xConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
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
3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
T0*
dtype0*
seed2**(
_output_shapes
:’’’’’’’’’*
seed
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
)m2_hidden2_1/random_uniform/RandomUniformRandomUniform!m2_hidden2_1/random_uniform/shape*
seed*
T0*
dtype0*
seed2Š·Ą*
_output_shapes
:	@
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
m2_hidden2_1/random_uniformAddm2_hidden2_1/random_uniform/mulm2_hidden2_1/random_uniform/min*
_output_shapes
:	@*
T0
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
'm2_hidden2_1/kernel/Read/ReadVariableOpReadVariableOpm2_hidden2_1/kernel*
dtype0*
_output_shapes
:	@*&
_class
loc:@m2_hidden2_1/kernel
_
m2_hidden2_1/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
±
m2_hidden2_1/biasVarHandleOp*"
shared_namem2_hidden2_1/bias*$
_class
loc:@m2_hidden2_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
: 
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
dtype0*
_output_shapes
:	@
Æ
m2_hidden2_1/MatMulMatMuldropout_3/cond/Merge"m2_hidden2_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’@
q
#m2_hidden2_1/BiasAdd/ReadVariableOpReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@
¢
m2_hidden2_1/BiasAddBiasAddm2_hidden2_1/MatMul#m2_hidden2_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’@
a
m2_hidden2_1/ReluRelum2_hidden2_1/BiasAdd*'
_output_shapes
:’’’’’’’’’@*
T0
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
 *7¾*
dtype0
d
m2_hidden3_1/random_uniform/maxConst*
valueB
 *7>*
dtype0*
_output_shapes
: 
°
)m2_hidden3_1/random_uniform/RandomUniformRandomUniform!m2_hidden3_1/random_uniform/shape*
seed*
T0*
dtype0*
seed2Ō*
_output_shapes

:@
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

m2_hidden3_1/bias/AssignAssignVariableOpm2_hidden3_1/biasm2_hidden3_1/Const*
dtype0*$
_class
loc:@m2_hidden3_1/bias

%m2_hidden3_1/bias/Read/ReadVariableOpReadVariableOpm2_hidden3_1/bias*
dtype0*
_output_shapes
:*$
_class
loc:@m2_hidden3_1/bias
v
"m2_hidden3_1/MatMul/ReadVariableOpReadVariableOpm2_hidden3_1/kernel*
dtype0*
_output_shapes

:@
¬
m2_hidden3_1/MatMulMatMulm2_hidden2_1/Relu"m2_hidden3_1/MatMul/ReadVariableOp*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( *
T0
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
seed*
T0*
dtype0*
seed2±Ó*
_output_shapes

:


m2_output_1/random_uniform/subSubm2_output_1/random_uniform/maxm2_output_1/random_uniform/min*
T0*
_output_shapes
: 

m2_output_1/random_uniform/mulMul(m2_output_1/random_uniform/RandomUniformm2_output_1/random_uniform/sub*
_output_shapes

:
*
T0

m2_output_1/random_uniformAddm2_output_1/random_uniform/mulm2_output_1/random_uniform/min*
T0*
_output_shapes

:

ø
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

m2_output_1/kernel/AssignAssignVariableOpm2_output_1/kernelm2_output_1/random_uniform*%
_class
loc:@m2_output_1/kernel*
dtype0
 
&m2_output_1/kernel/Read/ReadVariableOpReadVariableOpm2_output_1/kernel*
_output_shapes

:
*%
_class
loc:@m2_output_1/kernel*
dtype0
^
m2_output_1/ConstConst*
valueB
*    *
dtype0*
_output_shapes
:

®
m2_output_1/biasVarHandleOp*
	container *
shape:
*
dtype0*
_output_shapes
: *!
shared_namem2_output_1/bias*#
_class
loc:@m2_output_1/bias
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
_output_shapes

:
*
dtype0
Ŗ
m2_output_1/MatMulMatMulm2_hidden3_1/Relu!m2_output_1/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
*
transpose_b( 
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
.Adam_2/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *'
_class
loc:@Adam_2/learning_rate*
valueB
 *o:*
dtype0
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
(Adam_2/learning_rate/Read/ReadVariableOpReadVariableOpAdam_2/learning_rate*
dtype0*
_output_shapes
: *'
_class
loc:@Adam_2/learning_rate
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
!Adam_2/beta_1/Read/ReadVariableOpReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: * 
_class
loc:@Adam_2/beta_1
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
dtype0*
_output_shapes
: *
shared_nameAdam_2/decay*
_class
loc:@Adam_2/decay*
	container *
shape: 
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
 Adam_2/decay/Read/ReadVariableOpReadVariableOpAdam_2/decay*
_class
loc:@Adam_2/decay*
dtype0*
_output_shapes
: 

m2_output_target_1Placeholder*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’*
dtype0
u
m2_output_sample_weights_1Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
L
Const_6Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
total_2/AssignAssignVariableOptotal_2Const_6*
dtype0*
_class
loc:@total_2
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

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
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
_class
loc:@count_2*
dtype0

metrics_2/accuracy/SqueezeSqueezem2_output_target_1*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

’’’’’’’’’*
T0
n
#metrics_2/accuracy/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
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
Truncate( *

DstT0*#
_output_shapes
:’’’’’’’’’
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

#metrics_2/accuracy/ReadVariableOp_1ReadVariableOpcount_2)^metrics_2/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
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
;loss_2/m2_output_loss/sparse_categorical_crossentropy/ConstConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
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
Kloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/MinimumMinimumm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0

Closs_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueMaximumKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0
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
=loss_2/m2_output_loss/sparse_categorical_crossentropy/ReshapeReshapem2_output_target_1Closs_2/m2_output_loss/sparse_categorical_crossentropy/Reshape/shape*#
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
Ī
:loss_2/m2_output_loss/sparse_categorical_crossentropy/CastCast=loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:’’’’’’’’’

Eloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shapeConst*
valueB"’’’’
   *
dtype0*
_output_shapes
:

?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1Reshape9loss_2/m2_output_loss/sparse_categorical_crossentropy/LogEloss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ł
_loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/ShapeShape:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
out_type0*
_output_shapes
:*
T0	
ń
}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits?loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1:loss_2/m2_output_loss/sparse_categorical_crossentropy/Cast*
Tlabels0	*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
*
T0
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
training/Adam/gradients/ShapeConst*
_output_shapes
: *
_class
	loc:@Mean*
valueB *
dtype0
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
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_class
	loc:@Mean*

index_type0*
_output_shapes
: 

/training/Adam/gradients/Mean_grad/Reshape/shapeConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 
Ė
)training/Adam/gradients/Mean_grad/ReshapeReshapetraining/Adam/gradients/Fill/training/Adam/gradients/Mean_grad/Reshape/shape*
_class
	loc:@Mean*
Tshape0*
_output_shapes
: *
T0

'training/Adam/gradients/Mean_grad/ConstConst*
_class
	loc:@Mean*
valueB *
dtype0*
_output_shapes
: 
Ī
&training/Adam/gradients/Mean_grad/TileTile)training/Adam/gradients/Mean_grad/Reshape'training/Adam/gradients/Mean_grad/Const*
_class
	loc:@Mean*
_output_shapes
: *

Tmultiples0*
T0
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
)training/Adam/gradients/loss/mul_grad/MulMul)training/Adam/gradients/Mean_grad/truedivIloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
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
|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
ś
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv+training/Adam/gradients/loss/mul_grad/Mul_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0
ū
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ą
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: *
T0
·
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
»
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegSloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Į
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Sloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0

jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul+training/Adam/gradients/loss/mul_grad/Mul_1ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
ū
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumjtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mul~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
ę
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0

ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:
ä
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapeptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0*
_output_shapes
:
Ē
htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeEloss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0*
_output_shapes
:
ß
gtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilejtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapehtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0

htraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem1_output_sample_weights*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:*
T0
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
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile{loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
é
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mulxtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ż
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumhtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*X
_classN
LJloc:@loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
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
"training/Adam/gradients/zeros_like	ZerosLike}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
ø
Øtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient}loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits

§training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
’’’’’’’’’

£training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1§training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’*

Tdim0
»
training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul£training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsØtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_class
loc:@loss/m1_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*
T0
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
Xtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulbtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape_training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*J
_class@
><loc:@loss/m1_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ć
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
’
ftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
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
ktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualIloss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum9loss/m1_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
ī
ttraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsdtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value
¤
etraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectktraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualXtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/Log_grad/muldtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’
*
T0
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
dtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumgtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1vtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
T0*T
_classJ
HFloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
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
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB *
dtype0
ņ
ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapeftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:

rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 
ś
ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2rtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0*'
_output_shapes
:’’’’’’’’’

Ł
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm1_output/Softmax7loss/m1_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapentraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
Ļ
mtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

Ń
otraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosftraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’

ü
jtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSummtraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select|training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
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
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0

ltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumotraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1~training/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
ę
ptraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeltraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1ntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*\
_classR
PNloc:@loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 

2training/Adam/gradients/m1_output/Softmax_grad/mulMulntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem1_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0*$
_class
loc:@m1_output/Softmax
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
2training/Adam/gradients/m1_output/Softmax_grad/subSubntraining/Adam/gradients/loss/m1_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape2training/Adam/gradients/m1_output/Softmax_grad/Sum*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
Ś
4training/Adam/gradients/m1_output/Softmax_grad/mul_1Mul2training/Adam/gradients/m1_output/Softmax_grad/subm1_output/Softmax*$
_class
loc:@m1_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
į
:training/Adam/gradients/m1_output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/m1_output/Softmax_grad/mul_1*
T0*$
_class
loc:@m1_output/BiasAdd*
data_formatNHWC*
_output_shapes
:


4training/Adam/gradients/m1_output/MatMul_grad/MatMulMatMul4training/Adam/gradients/m1_output/Softmax_grad/mul_1m1_output/MatMul/ReadVariableOp*
transpose_b(*
T0*#
_class
loc:@m1_output/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’
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
;training/Adam/gradients/m1_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden3/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0*%
_class
loc:@m1_hidden3/BiasAdd
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
5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGradReluGrad5training/Adam/gradients/m1_hidden3/MatMul_grad/MatMulm1_hidden2/Relu*'
_output_shapes
:’’’’’’’’’@*
T0*"
_class
loc:@m1_hidden2/Relu
ä
;training/Adam/gradients/m1_hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden2/Relu_grad/ReluGrad*%
_class
loc:@m1_hidden2/BiasAdd*
data_formatNHWC*
_output_shapes
:@*
T0
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
;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*%
_class
loc:@m1_hidden1/BiasAdd*
data_formatNHWC

5training/Adam/gradients/m1_hidden1/MatMul_grad/MatMulMatMul5training/Adam/gradients/m1_hidden1/Relu_grad/ReluGrad m1_hidden1/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m1_hidden1/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’
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
training/Adam/add/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
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
 *  ?*
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
training/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  
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
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
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
training/Adam/m_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/m_0Fill!training/Adam/m_0/shape_as_tensortraining/Adam/m_0/Const* 
_output_shapes
:
*
T0*

index_type0
½
training/Adam/m_0_1VarHandleOp*$
shared_nametraining/Adam/m_0_1*&
_class
loc:@training/Adam/m_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
training/Adam/m_1Const*
_output_shapes	
:*
valueB*    *
dtype0
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
'training/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/m_1_1*&
_class
loc:@training/Adam/m_1_1*
dtype0*
_output_shapes	
:
r
!training/Adam/m_2/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"   @   
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
training/Adam/m_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training/Adam/m_4Fill!training/Adam/m_4/shape_as_tensortraining/Adam/m_4/Const*
_output_shapes

:@*
T0*

index_type0
»
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

»
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
training/Adam/m_7Const*
_output_shapes
:
*
valueB
*    *
dtype0
·
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
!training/Adam/v_0/shape_as_tensorConst*
valueB"      *
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

training/Adam/v_0Fill!training/Adam/v_0/shape_as_tensortraining/Adam/v_0/Const*
T0*

index_type0* 
_output_shapes
:

½
training/Adam/v_0_1VarHandleOp*$
shared_nametraining/Adam/v_0_1*&
_class
loc:@training/Adam/v_0_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
training/Adam/v_1Const*
_output_shapes	
:*
valueB*    *
dtype0
ø
training/Adam/v_1_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_1_1*&
_class
loc:@training/Adam/v_1_1*
	container *
shape:
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
training/Adam/v_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/v_2Fill!training/Adam/v_2/shape_as_tensortraining/Adam/v_2/Const*

index_type0*
_output_shapes
:	@*
T0
¼
training/Adam/v_2_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_2_1*&
_class
loc:@training/Adam/v_2_1*
	container *
shape:	@
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
training/Adam/v_3_1VarHandleOp*&
_class
loc:@training/Adam/v_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: *$
shared_nametraining/Adam/v_3_1
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

training/Adam/v_4_1/AssignAssignVariableOptraining/Adam/v_4_1training/Adam/v_4*&
_class
loc:@training/Adam/v_4_1*
dtype0
£
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
·
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
_output_shapes

:
*
valueB
*    *
dtype0
»
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

training/Adam/v_6_1/AssignAssignVariableOptraining/Adam/v_6_1training/Adam/v_6*&
_class
loc:@training/Adam/v_6_1*
dtype0
£
'training/Adam/v_6_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_6_1*
dtype0*
_output_shapes

:
*&
_class
loc:@training/Adam/v_6_1
^
training/Adam/v_7Const*
valueB
*    *
dtype0*
_output_shapes
:

·
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

training/Adam/v_7_1/AssignAssignVariableOptraining/Adam/v_7_1training/Adam/v_7*&
_class
loc:@training/Adam/v_7_1*
dtype0

'training/Adam/v_7_1/Read/ReadVariableOpReadVariableOptraining/Adam/v_7_1*
dtype0*
_output_shapes
:
*&
_class
loc:@training/Adam/v_7_1
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

training/Adam/vhat_0Fill$training/Adam/vhat_0/shape_as_tensortraining/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_0_1/AssignAssignVariableOptraining/Adam/vhat_0_1training/Adam/vhat_0*
dtype0*)
_class
loc:@training/Adam/vhat_0_1
Ø
*training/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_0_1*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_0_1*
dtype0
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
training/Adam/vhat_1Fill$training/Adam/vhat_1/shape_as_tensortraining/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_1_1/AssignAssignVariableOptraining/Adam/vhat_1_1training/Adam/vhat_1*)
_class
loc:@training/Adam/vhat_1_1*
dtype0
Ø
*training/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_1_1*
dtype0*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_1_1
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

training/Adam/vhat_2_1/AssignAssignVariableOptraining/Adam/vhat_2_1training/Adam/vhat_2*
dtype0*)
_class
loc:@training/Adam/vhat_2_1
Ø
*training/Adam/vhat_2_1/Read/ReadVariableOpReadVariableOptraining/Adam/vhat_2_1*
_output_shapes
:*)
_class
loc:@training/Adam/vhat_2_1*
dtype0
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

training/Adam/vhat_3Fill$training/Adam/vhat_3/shape_as_tensortraining/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ą
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
$training/Adam/vhat_4/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
_
training/Adam/vhat_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/vhat_4Fill$training/Adam/vhat_4/shape_as_tensortraining/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ą
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
$training/Adam/vhat_5/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
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

training/Adam/vhat_6Fill$training/Adam/vhat_6/shape_as_tensortraining/Adam/vhat_6/Const*
T0*

index_type0*
_output_shapes
:
Ą
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

training/Adam/vhat_6_1/AssignAssignVariableOptraining/Adam/vhat_6_1training/Adam/vhat_6*)
_class
loc:@training/Adam/vhat_6_1*
dtype0
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

training/Adam/vhat_7_1/AssignAssignVariableOptraining/Adam/vhat_7_1training/Adam/vhat_7*)
_class
loc:@training/Adam/vhat_7_1*
dtype0
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
dtype0* 
_output_shapes
:

~
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1* 
_output_shapes
:
*
T0
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
training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
_output_shapes	
:*
T0
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
Z
training/Adam/sub_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_5;training/Adam/gradients/m1_hidden1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
j
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
s
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/v_1_1*
_output_shapes	
:*
dtype0
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
training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes	
:
a
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
_output_shapes	
:*
T0
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
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes	
:
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
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
_output_shapes
: *
T0
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
training/Adam/Square_2Square7training/Adam/gradients/m1_hidden2/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
r
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes
:	@
p
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes
:	@
m
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes
:	@
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
 *  

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
_output_shapes
:	@*
T0

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes
:	@*
T0
e
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes
:	@
Z
training/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
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
_output_shapes
:	@*
dtype0

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
_output_shapes
:	@*
T0
k
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/m_2_1training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/m_2_1!^training/Adam/AssignVariableOp_6*
_output_shapes
:	@*
dtype0
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
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
_output_shapes
: *
T0

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
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 
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
_output_shapes

:@*
dtype0
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
training/Adam/sub_14/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 

training/Adam/mul_22Multraining/Adam/sub_147training/Adam/gradients/m1_hidden3/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
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
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

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
training/Adam/add_15/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
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
training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
_output_shapes

:@*
T0
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
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
_output_shapes
: *
T0
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
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
_output_shapes
: *
T0

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
training/Adam/Const_14Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes
:

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
training/Adam/Const_15Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
T0*
_output_shapes

:


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


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
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 
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
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
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
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
:

[
training/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*
_output_shapes
:

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
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
T0*
_output_shapes
:

s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
_output_shapes
:
*
T0
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
®
training/initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/learning_rate/Assign^Adam_1/beta_1/Assign^Adam_1/beta_2/Assign^Adam_1/decay/Assign^Adam_1/iterations/Assign^Adam_1/learning_rate/Assign^Adam_2/beta_1/Assign^Adam_2/beta_2/Assign^Adam_2/decay/Assign^Adam_2/iterations/Assign^Adam_2/learning_rate/Assign^count/Assign^count_1/Assign^count_2/Assign^m1_hidden1/bias/Assign^m1_hidden1/kernel/Assign^m1_hidden2/bias/Assign^m1_hidden2/kernel/Assign^m1_hidden3/bias/Assign^m1_hidden3/kernel/Assign^m1_output/bias/Assign^m1_output/kernel/Assign^m2_hidden1/bias/Assign^m2_hidden1/kernel/Assign^m2_hidden1_1/bias/Assign^m2_hidden1_1/kernel/Assign^m2_hidden2/bias/Assign^m2_hidden2/kernel/Assign^m2_hidden2_1/bias/Assign^m2_hidden2_1/kernel/Assign^m2_hidden3/bias/Assign^m2_hidden3/kernel/Assign^m2_hidden3_1/bias/Assign^m2_hidden3_1/kernel/Assign^m2_output/bias/Assign^m2_output/kernel/Assign^m2_output_1/bias/Assign^m2_output_1/kernel/Assign^total/Assign^total_1/Assign^total_2/Assign^training/Adam/m_0_1/Assign^training/Adam/m_1_1/Assign^training/Adam/m_2_1/Assign^training/Adam/m_3_1/Assign^training/Adam/m_4_1/Assign^training/Adam/m_5_1/Assign^training/Adam/m_6_1/Assign^training/Adam/m_7_1/Assign^training/Adam/v_0_1/Assign^training/Adam/v_1_1/Assign^training/Adam/v_2_1/Assign^training/Adam/v_3_1/Assign^training/Adam/v_4_1/Assign^training/Adam/v_5_1/Assign^training/Adam/v_6_1/Assign^training/Adam/v_7_1/Assign^training/Adam/vhat_0_1/Assign^training/Adam/vhat_1_1/Assign^training/Adam/vhat_2_1/Assign^training/Adam/vhat_3_1/Assign^training/Adam/vhat_4_1/Assign^training/Adam/vhat_5_1/Assign^training/Adam/vhat_6_1/Assign^training/Adam/vhat_7_1/Assign
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
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
_output_shapes
: *
dtype0
}
training_1/Adam/gradients/ShapeConst*
_class
loc:@Mean_1*
valueB *
dtype0*
_output_shapes
: 

#training_1/Adam/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
_class
loc:@Mean_1*
valueB
 *  ?
ŗ
training_1/Adam/gradients/FillFilltraining_1/Adam/gradients/Shape#training_1/Adam/gradients/grad_ys_0*
_class
loc:@Mean_1*

index_type0*
_output_shapes
: *
T0

3training_1/Adam/gradients/Mean_1_grad/Reshape/shapeConst*
_class
loc:@Mean_1*
valueB *
dtype0*
_output_shapes
: 
×
-training_1/Adam/gradients/Mean_1_grad/ReshapeReshapetraining_1/Adam/gradients/Fill3training_1/Adam/gradients/Mean_1_grad/Reshape/shape*
_output_shapes
: *
T0*
_class
loc:@Mean_1*
Tshape0

+training_1/Adam/gradients/Mean_1_grad/ConstConst*
_class
loc:@Mean_1*
valueB *
dtype0*
_output_shapes
: 
Ü
*training_1/Adam/gradients/Mean_1_grad/TileTile-training_1/Adam/gradients/Mean_1_grad/Reshape+training_1/Adam/gradients/Mean_1_grad/Const*

Tmultiples0*
T0*
_class
loc:@Mean_1*
_output_shapes
: 
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
/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Mul-training_1/Adam/gradients/Mean_1_grad/truedivloss_1/mul/x*
T0*
_class
loc:@loss_1/mul*
_output_shapes
: 

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*
dtype0*
_output_shapes
: *^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB 

rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
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
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_1/Adam/gradients/loss_1/mul_grad/Mul_1Uloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
ī
rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 
æ
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
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
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_1/Adam/gradients/loss_1/mul_grad/Mul_1ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
ō
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0

ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
ņ
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0*
_output_shapes
:*
T0
Ļ
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0*
_output_shapes
:
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
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:

|training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ē
jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*#
_output_shapes
:’’’’’’’’’*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
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
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:
ń
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*
T0*Z
_classP
NLloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’
ś
$training_1/Adam/gradients/zeros_like	ZerosLikeloss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
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
ExpandDimsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1«training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:’’’’’’’’’*

Tdim0*
T0*
_class
loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
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
ftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*R
_classH
FDloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0*'
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
\training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*'
_output_shapes
:’’’’’’’’’
*
T0*L
_classB
@>loc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/Log
Ė
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:
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
ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
č
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:’’’’’’’’’


otraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_1/m2_output_loss/sparse_categorical_crossentropy/Const*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
ü
xtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
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
htraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
Ō
ltraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*V
_classL
JHloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*
_output_shapes
: *
T0
”
ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output/Softmax*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:
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
vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0*
_output_shapes
: 

ptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0*'
_output_shapes
:’’’’’’’’’

į
ttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output/Softmax9loss_1/m2_output_loss/sparse_categorical_crossentropy/sub*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

training_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
į
qtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
ć
straining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’
*
T0

ntraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Selecttraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
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
4training_1/Adam/gradients/m2_output/Softmax_grad/SumSum4training_1/Adam/gradients/m2_output/Softmax_grad/mulFtraining_1/Adam/gradients/m2_output/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’
½
4training_1/Adam/gradients/m2_output/Softmax_grad/subSubrtraining_1/Adam/gradients/loss_1/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape4training_1/Adam/gradients/m2_output/Softmax_grad/Sum*
T0*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’

Ž
6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1Mul4training_1/Adam/gradients/m2_output/Softmax_grad/subm2_output/Softmax*$
_class
loc:@m2_output/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
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
6training_1/Adam/gradients/m2_output/MatMul_grad/MatMulMatMul6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1m2_output/MatMul/ReadVariableOp*#
_class
loc:@m2_output/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b(*
T0
’
8training_1/Adam/gradients/m2_output/MatMul_grad/MatMul_1MatMulm2_hidden3/Relu6training_1/Adam/gradients/m2_output/Softmax_grad/mul_1*
transpose_a(*
_output_shapes

:
*
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
=training_1/Adam/gradients/m2_hidden3/BiasAdd_grad/BiasAddGradBiasAddGrad7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad*
T0*%
_class
loc:@m2_hidden3/BiasAdd*
data_formatNHWC*
_output_shapes
:

7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden3/Relu_grad/ReluGrad m2_hidden3/MatMul/ReadVariableOp*
transpose_b(*
T0*$
_class
loc:@m2_hidden3/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’@
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
7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGradReluGrad7training_1/Adam/gradients/m2_hidden3/MatMul_grad/MatMulm2_hidden2/Relu*'
_output_shapes
:’’’’’’’’’@*
T0*"
_class
loc:@m2_hidden2/Relu
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
9training_1/Adam/gradients/m2_hidden2/MatMul_grad/MatMul_1MatMulm2_hidden1/Relu7training_1/Adam/gradients/m2_hidden2/Relu_grad/ReluGrad*
transpose_b( *
T0*$
_class
loc:@m2_hidden2/MatMul*
transpose_a(*
_output_shapes
:	@
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
7training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMulMatMul7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad m2_hidden1/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(*
T0*$
_class
loc:@m2_hidden1/MatMul

9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge7training_1/Adam/gradients/m2_hidden1/Relu_grad/ReluGrad*
transpose_a(* 
_output_shapes
:
*
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
training_1/Adam/clip_by_valueMaximum%training_1/Adam/clip_by_value/Minimumtraining_1/Adam/Const_1*
T0*
_output_shapes
: 
\
training_1/Adam/SqrtSqrttraining_1/Adam/clip_by_value*
_output_shapes
: *
T0
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
training_1/Adam/mulMul training_1/Adam/ReadVariableOp_1training_1/Adam/truediv*
T0*
_output_shapes
: 
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
training_1/Adam/m_0_1/AssignAssignVariableOptraining_1/Adam/m_0_1training_1/Adam/m_0*
dtype0*(
_class
loc:@training_1/Adam/m_0_1
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
training_1/Adam/m_1_1/AssignAssignVariableOptraining_1/Adam/m_1_1training_1/Adam/m_1*
dtype0*(
_class
loc:@training_1/Adam/m_1_1
¦
)training_1/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_1_1*
dtype0*
_output_shapes	
:*(
_class
loc:@training_1/Adam/m_1_1
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
training_1/Adam/m_2_1VarHandleOp*&
shared_nametraining_1/Adam/m_2_1*(
_class
loc:@training_1/Adam/m_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: 
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
)training_1/Adam/m_2_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_2_1*
dtype0*
_output_shapes
:	@*(
_class
loc:@training_1/Adam/m_2_1
`
training_1/Adam/m_3Const*
valueB@*    *
dtype0*
_output_shapes
:@
½
training_1/Adam/m_3_1VarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/m_3_1*(
_class
loc:@training_1/Adam/m_3_1
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
training_1/Adam/m_5_1/AssignAssignVariableOptraining_1/Adam/m_5_1training_1/Adam/m_5*
dtype0*(
_class
loc:@training_1/Adam/m_5_1
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
)training_1/Adam/m_6_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/m_6_1*(
_class
loc:@training_1/Adam/m_6_1*
dtype0*
_output_shapes

:

`
training_1/Adam/m_7Const*
_output_shapes
:
*
valueB
*    *
dtype0
½
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
training_1/Adam/v_0/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_1/Adam/v_0Fill#training_1/Adam/v_0/shape_as_tensortraining_1/Adam/v_0/Const* 
_output_shapes
:
*
T0*

index_type0
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
)training_1/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_0_1*(
_class
loc:@training_1/Adam/v_0_1*
dtype0* 
_output_shapes
:

b
training_1/Adam/v_1Const*
_output_shapes	
:*
valueB*    *
dtype0
¾
training_1/Adam/v_1_1VarHandleOp*
	container *
shape:*
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

training_1/Adam/v_1_1/AssignAssignVariableOptraining_1/Adam/v_1_1training_1/Adam/v_1*(
_class
loc:@training_1/Adam/v_1_1*
dtype0
¦
)training_1/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/v_1_1*
_output_shapes	
:*(
_class
loc:@training_1/Adam/v_1_1*
dtype0
t
#training_1/Adam/v_2/shape_as_tensorConst*
_output_shapes
:*
valueB"   @   *
dtype0
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
training_1/Adam/v_2_1VarHandleOp*(
_class
loc:@training_1/Adam/v_2_1*
	container *
shape:	@*
dtype0*
_output_shapes
: *&
shared_nametraining_1/Adam/v_2_1
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

training_1/Adam/v_4_1/AssignAssignVariableOptraining_1/Adam/v_4_1training_1/Adam/v_4*(
_class
loc:@training_1/Adam/v_4_1*
dtype0
©
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
½
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
training_1/Adam/vhat_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_1/Adam/vhat_0Fill&training_1/Adam/vhat_0/shape_as_tensortraining_1/Adam/vhat_0/Const*
T0*

index_type0*
_output_shapes
:
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
,training_1/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_0_1*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_0_1*
dtype0
p
&training_1/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_1/Adam/vhat_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_1/Adam/vhat_1Fill&training_1/Adam/vhat_1/shape_as_tensortraining_1/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_1_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_1_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
	container 
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
,training_1/Adam/vhat_1_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_1_1*+
_class!
loc:@training_1/Adam/vhat_1_1*
dtype0*
_output_shapes
:
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

training_1/Adam/vhat_2Fill&training_1/Adam/vhat_2/shape_as_tensortraining_1/Adam/vhat_2/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_1/Adam/vhat_2_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_2_1*+
_class!
loc:@training_1/Adam/vhat_2_1*
	container 

9training_1/Adam/vhat_2_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_2_1*
_output_shapes
: 

training_1/Adam/vhat_2_1/AssignAssignVariableOptraining_1/Adam/vhat_2_1training_1/Adam/vhat_2*
dtype0*+
_class!
loc:@training_1/Adam/vhat_2_1
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
training_1/Adam/vhat_3/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_1/Adam/vhat_3Fill&training_1/Adam/vhat_3/shape_as_tensortraining_1/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_1/Adam/vhat_3_1VarHandleOp*)
shared_nametraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
	container *
shape:*
dtype0*
_output_shapes
: 

9training_1/Adam/vhat_3_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_1/Adam/vhat_3_1*
_output_shapes
: 

training_1/Adam/vhat_3_1/AssignAssignVariableOptraining_1/Adam/vhat_3_1training_1/Adam/vhat_3*
dtype0*+
_class!
loc:@training_1/Adam/vhat_3_1
®
,training_1/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_3_1*+
_class!
loc:@training_1/Adam/vhat_3_1*
dtype0*
_output_shapes
:
p
&training_1/Adam/vhat_4/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training_1/Adam/vhat_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_1/Adam/vhat_4Fill&training_1/Adam/vhat_4/shape_as_tensortraining_1/Adam/vhat_4/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_1/Adam/vhat_4_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_4_1*+
_class!
loc:@training_1/Adam/vhat_4_1
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
,training_1/Adam/vhat_5_1/Read/ReadVariableOpReadVariableOptraining_1/Adam/vhat_5_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_1/Adam/vhat_5_1
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
training_1/Adam/vhat_6Fill&training_1/Adam/vhat_6/shape_as_tensortraining_1/Adam/vhat_6/Const*
_output_shapes
:*
T0*

index_type0
Ę
training_1/Adam/vhat_6_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_6_1*+
_class!
loc:@training_1/Adam/vhat_6_1*
	container *
shape:
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
training_1/Adam/vhat_7_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_1/Adam/vhat_7_1*+
_class!
loc:@training_1/Adam/vhat_7_1*
	container 
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
training_1/Adam/mul_1Mul training_1/Adam/ReadVariableOp_2$training_1/Adam/mul_1/ReadVariableOp* 
_output_shapes
:
*
T0
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
 *  ?*
dtype0
x
training_1/Adam/sub_2Subtraining_1/Adam/sub_2/x training_1/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 

training_1/Adam/mul_2Multraining_1/Adam/sub_29training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
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
 training_1/Adam/ReadVariableOp_5ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
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
training_1/Adam/SquareSquare9training_1/Adam/gradients/m2_hidden1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

v
training_1/Adam/mul_4Multraining_1/Adam/sub_3training_1/Adam/Square* 
_output_shapes
:
*
T0
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
training_1/Adam/clip_by_value_1Maximum'training_1/Adam/clip_by_value_1/Minimumtraining_1/Adam/Const_3*
T0* 
_output_shapes
:

j
training_1/Adam/Sqrt_1Sqrttraining_1/Adam/clip_by_value_1* 
_output_shapes
:
*
T0
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
training_1/Adam/sub_5/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
y
training_1/Adam/sub_5Subtraining_1/Adam/sub_5/x!training_1/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 
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
training_1/Adam/mul_8Mul!training_1/Adam/ReadVariableOp_12$training_1/Adam/mul_8/ReadVariableOp*
_output_shapes	
:*
T0
g
!training_1/Adam/ReadVariableOp_13ReadVariableOpAdam_1/beta_2*
dtype0*
_output_shapes
: 
\
training_1/Adam/sub_6/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
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
training_1/Adam/Sqrt_2Sqrttraining_1/Adam/clip_by_value_2*
_output_shapes	
:*
T0
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
!training_1/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1/bias#^training_1/Adam/AssignVariableOp_5*
_output_shapes	
:*
dtype0
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
training_1/Adam/sub_8Subtraining_1/Adam/sub_8/x!training_1/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
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
training_1/Adam/add_8Addtraining_1/Adam/mul_13training_1/Adam/mul_14*
_output_shapes
:	@*
T0
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
training_1/Adam/Sqrt_3Sqrttraining_1/Adam/clip_by_value_3*
_output_shapes
:	@*
T0
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
training_1/Adam/sub_10Sub!training_1/Adam/ReadVariableOp_22training_1/Adam/truediv_3*
_output_shapes
:	@*
T0
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
!training_1/Adam/ReadVariableOp_26ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
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

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
 *  ?*
dtype0
{
training_1/Adam/sub_12Subtraining_1/Adam/sub_12/x!training_1/Adam/ReadVariableOp_29*
_output_shapes
: *
T0

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
training_1/Adam/add_12/yConst*
valueB
 *æÖ3*
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
!training_1/Adam/ReadVariableOp_32ReadVariableOptraining_1/Adam/v_3_1$^training_1/Adam/AssignVariableOp_10*
_output_shapes
:@*
dtype0
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
!training_1/Adam/ReadVariableOp_35ReadVariableOpAdam_1/beta_1*
_output_shapes
: *
dtype0
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
dtype0*
_output_shapes

:@

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
training_1/Adam/sub_15/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
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
training_1/Adam/Const_12Const*
dtype0*
_output_shapes
: *
valueB
 *  

'training_1/Adam/clip_by_value_5/MinimumMinimumtraining_1/Adam/add_14training_1/Adam/Const_12*
T0*
_output_shapes

:@

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
training_1/Adam/truediv_5RealDivtraining_1/Adam/mul_25training_1/Adam/add_15*
T0*
_output_shapes

:@
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
%training_1/Adam/mul_26/ReadVariableOpReadVariableOptraining_1/Adam/m_5_1*
dtype0*
_output_shapes
:

training_1/Adam/mul_26Mul!training_1/Adam/ReadVariableOp_42%training_1/Adam/mul_26/ReadVariableOp*
_output_shapes
:*
T0
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
training_1/Adam/sub_18/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_1/Adam/sub_18Subtraining_1/Adam/sub_18/x!training_1/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

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
 *  *
dtype0*
_output_shapes
: 

'training_1/Adam/clip_by_value_6/MinimumMinimumtraining_1/Adam/add_17training_1/Adam/Const_14*
_output_shapes
:*
T0

training_1/Adam/clip_by_value_6Maximum'training_1/Adam/clip_by_value_6/Minimumtraining_1/Adam/Const_13*
T0*
_output_shapes
:
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
training_1/Adam/sub_21/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
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
training_1/Adam/Const_16Const*
_output_shapes
: *
valueB
 *  *
dtype0
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
_output_shapes

:
*
dtype0
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
'training_1/Adam/clip_by_value_8/MinimumMinimumtraining_1/Adam/add_23training_1/Adam/Const_18*
T0*
_output_shapes
:


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
training_1/Adam/sub_25Sub!training_1/Adam/ReadVariableOp_62training_1/Adam/truediv_8*
_output_shapes
:
*
T0
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
!training_1/Adam/ReadVariableOp_64ReadVariableOptraining_1/Adam/v_7_1$^training_1/Adam/AssignVariableOp_22*
_output_shapes
:
*
dtype0
l
#training_1/Adam/AssignVariableOp_23AssignVariableOpm2_output/biastraining_1/Adam/sub_25*
dtype0

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

training_1/initNoOp^training_1/Adam/m_0_1/Assign^training_1/Adam/m_1_1/Assign^training_1/Adam/m_2_1/Assign^training_1/Adam/m_3_1/Assign^training_1/Adam/m_4_1/Assign^training_1/Adam/m_5_1/Assign^training_1/Adam/m_6_1/Assign^training_1/Adam/m_7_1/Assign^training_1/Adam/v_0_1/Assign^training_1/Adam/v_1_1/Assign^training_1/Adam/v_2_1/Assign^training_1/Adam/v_3_1/Assign^training_1/Adam/v_4_1/Assign^training_1/Adam/v_5_1/Assign^training_1/Adam/v_6_1/Assign^training_1/Adam/v_7_1/Assign ^training_1/Adam/vhat_0_1/Assign ^training_1/Adam/vhat_1_1/Assign ^training_1/Adam/vhat_2_1/Assign ^training_1/Adam/vhat_3_1/Assign ^training_1/Adam/vhat_4_1/Assign ^training_1/Adam/vhat_5_1/Assign ^training_1/Adam/vhat_6_1/Assign ^training_1/Adam/vhat_7_1/Assign

training_1/group_depsNoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1^training_1/Adam/ReadVariableOp"^training_1/Adam/ReadVariableOp_15"^training_1/Adam/ReadVariableOp_16"^training_1/Adam/ReadVariableOp_17"^training_1/Adam/ReadVariableOp_23"^training_1/Adam/ReadVariableOp_24"^training_1/Adam/ReadVariableOp_25"^training_1/Adam/ReadVariableOp_31"^training_1/Adam/ReadVariableOp_32"^training_1/Adam/ReadVariableOp_33"^training_1/Adam/ReadVariableOp_39"^training_1/Adam/ReadVariableOp_40"^training_1/Adam/ReadVariableOp_41"^training_1/Adam/ReadVariableOp_47"^training_1/Adam/ReadVariableOp_48"^training_1/Adam/ReadVariableOp_49"^training_1/Adam/ReadVariableOp_55"^training_1/Adam/ReadVariableOp_56"^training_1/Adam/ReadVariableOp_57"^training_1/Adam/ReadVariableOp_63"^training_1/Adam/ReadVariableOp_64"^training_1/Adam/ReadVariableOp_65!^training_1/Adam/ReadVariableOp_7!^training_1/Adam/ReadVariableOp_8!^training_1/Adam/ReadVariableOp_9

group_deps_1NoOp^Mean_1^metrics_1/accuracy/Identity"^metrics_1/accuracy/ReadVariableOp$^metrics_1/accuracy/ReadVariableOp_1
N
Placeholder_2Placeholder*
shape: *
dtype0*
_output_shapes
: 
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
dtype0*
_output_shapes
: *
shape: 
K
AssignVariableOp_3AssignVariableOpcount_1Placeholder_3*
dtype0
e
ReadVariableOp_3ReadVariableOpcount_1^AssignVariableOp_3*
_output_shapes
: *
dtype0
}
training_2/Adam/gradients/ShapeConst*
_class
loc:@Mean_2*
valueB *
dtype0*
_output_shapes
: 

#training_2/Adam/gradients/grad_ys_0Const*
_class
loc:@Mean_2*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ŗ
training_2/Adam/gradients/FillFilltraining_2/Adam/gradients/Shape#training_2/Adam/gradients/grad_ys_0*
T0*
_class
loc:@Mean_2*

index_type0*
_output_shapes
: 

3training_2/Adam/gradients/Mean_2_grad/Reshape/shapeConst*
_class
loc:@Mean_2*
valueB *
dtype0*
_output_shapes
: 
×
-training_2/Adam/gradients/Mean_2_grad/ReshapeReshapetraining_2/Adam/gradients/Fill3training_2/Adam/gradients/Mean_2_grad/Reshape/shape*
T0*
_class
loc:@Mean_2*
Tshape0*
_output_shapes
: 

+training_2/Adam/gradients/Mean_2_grad/ConstConst*
_class
loc:@Mean_2*
valueB *
dtype0*
_output_shapes
: 
Ü
*training_2/Adam/gradients/Mean_2_grad/TileTile-training_2/Adam/gradients/Mean_2_grad/Reshape+training_2/Adam/gradients/Mean_2_grad/Const*

Tmultiples0*
T0*
_class
loc:@Mean_2*
_output_shapes
: 

-training_2/Adam/gradients/Mean_2_grad/Const_1Const*
_class
loc:@Mean_2*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ļ
-training_2/Adam/gradients/Mean_2_grad/truedivRealDiv*training_2/Adam/gradients/Mean_2_grad/Tile-training_2/Adam/gradients/Mean_2_grad/Const_1*
_class
loc:@Mean_2*
_output_shapes
: *
T0
š
-training_2/Adam/gradients/loss_2/mul_grad/MulMul-training_2/Adam/gradients/Mean_2_grad/truedivKloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
T0*
_class
loc:@loss_2/mul
³
/training_2/Adam/gradients/loss_2/mul_grad/Mul_1Mul-training_2/Adam/gradients/Mean_2_grad/truedivloss_2/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss_2/mul

ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ShapeConst*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0*
_output_shapes
: 

rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1Const*
_output_shapes
: *^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
valueB *
dtype0

training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shapertraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivRealDiv/training_2/Adam/gradients/loss_2/mul_grad/Mul_1Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/SumSumrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDivtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
ī
rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/ReshapeReshapentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sumptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0
æ
ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegNegGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv
Ē
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1RealDivntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/NegUloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 
Ķ
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2RealDivttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_1Uloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/num_elements/Cast*
_output_shapes
: *
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/mulMul/training_2/Adam/gradients/loss_2/mul_grad/Mul_1ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/RealDiv_2*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: 

ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1Sumntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/multraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/BroadcastGradientArgs:1*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
_output_shapes
: *
	keep_dims( *

Tidx0
ō
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Sum_1rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Shape_1*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv*
Tshape0*
_output_shapes
: 

ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shapeConst*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
valueB:*
dtype0*
_output_shapes
:
ņ
ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ReshapeReshapertraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/truediv_grad/Reshapettraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshape/shape*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
Tshape0*
_output_shapes
:*
T0
Ļ
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/ShapeShapeGloss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*
out_type0*
_output_shapes
:
ķ
ktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/TileTilentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Reshapeltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Shape*

Tmultiples0*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum*#
_output_shapes
:’’’’’’’’’
¢
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ShapeShapem2_output_sample_weights_1*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1Shape}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
out_type0*
_output_shapes
:

|training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shapentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ē
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/MulMulktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile}loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
÷
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/SumSumjtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul|training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
ė
ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/ReshapeReshapejtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sumltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’

ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1Mulm2_output_sample_weights_1ktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/Sum_grad/Tile*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*#
_output_shapes
:’’’’’’’’’
ż
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1Sumltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Mul_1~training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul
ń
ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1Reshapeltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Sum_1ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Shape_1*Z
_classP
NLloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul*
Tshape0*#
_output_shapes
:’’’’’’’’’*
T0
ś
$training_2/Adam/gradients/zeros_like	ZerosLikeloss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’
*
T0*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ą
¬training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientloss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’
*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()

«training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ŗ
§training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/weighted_loss/mul_grad/Reshape_1«training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’*

Tdim0
É
 training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMul§training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims¬training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_class
loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:’’’’’’’’’

±
dtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ShapeShape9loss_2/m2_output_loss/sparse_categorical_crossentropy/Log*
_output_shapes
:*
T0*R
_classH
FDloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
out_type0

ftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/ReshapeReshape training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/muldtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Shape*
T0*R
_classH
FDloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1*
Tshape0*'
_output_shapes
:’’’’’’’’’


ctraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal
ReciprocalCloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_valueg^training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshape*
T0*L
_classB
@>loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

°
\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulMulftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Reshape_1_grad/Reshapectraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/Reciprocal*
T0*L
_classB
@>loc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/Log*'
_output_shapes
:’’’’’’’’’

Ė
htraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ShapeShapeKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:

jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB 
Ž
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2Shape\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
out_type0*
_output_shapes
:*
T0

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/ConstConst*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
č
htraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zerosFilljtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_2ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros/Const*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*

index_type0*'
_output_shapes
:’’’’’’’’’
*
T0

otraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualGreaterEqualKloss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum;loss_2/m2_output_loss/sparse_categorical_crossentropy/Const*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ü
xtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgshtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shapejtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
¶
itraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SelectSelectotraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqual\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mulhtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*'
_output_shapes
:’’’’’’’’’

ø
ktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1Selectotraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/GreaterEqualhtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/zeros\training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/Log_grad/mul*'
_output_shapes
:’’’’’’’’’
*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
ź
ftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/SumSumitraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Selectxtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
_output_shapes
:
ß
jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/ReshapeReshapeftraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sumhtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*'
_output_shapes
:’’’’’’’’’

š
htraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1Sumktraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Select_1ztraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value
Ō
ltraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape_1Reshapehtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Sum_1jtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Shape_1*
T0*V
_classL
JHloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value*
Tshape0*
_output_shapes
: 
£
ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ShapeShapem2_output_1/Softmax*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:

rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1Const*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB *
dtype0*
_output_shapes
: 
ü
rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2Shapejtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
out_type0*
_output_shapes
:

vtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
valueB
 *    *
dtype0

ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosFillrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_2vtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*

index_type0
ć
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqual	LessEqualm2_output_1/Softmax9loss_2/m2_output_loss/sparse_categorical_crossentropy/sub*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*'
_output_shapes
:’’’’’’’’’


training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shapertraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
į
qtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SelectSelectttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualjtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshapeptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
ć
straining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1Selectttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/LessEqualptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/zerosjtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value_grad/Reshape*'
_output_shapes
:’’’’’’’’’
*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum

ntraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/SumSumqtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Selecttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
_output_shapes
:*
	keep_dims( *

Tidx0
’
rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/ReshapeReshapentraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sumptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:’’’’’’’’’


ptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1Sumstraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Select_1training_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum
ō
ttraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape_1Reshapeptraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Sum_1rtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Shape_1*
T0*^
_classT
RPloc:@loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum*
Tshape0*
_output_shapes
: 
 
6training_2/Adam/gradients/m2_output_1/Softmax_grad/mulMulrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshapem2_output_1/Softmax*&
_class
loc:@m2_output_1/Softmax*'
_output_shapes
:’’’’’’’’’
*
T0
»
Htraining_2/Adam/gradients/m2_output_1/Softmax_grad/Sum/reduction_indicesConst*&
_class
loc:@m2_output_1/Softmax*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
¶
6training_2/Adam/gradients/m2_output_1/Softmax_grad/SumSum6training_2/Adam/gradients/m2_output_1/Softmax_grad/mulHtraining_2/Adam/gradients/m2_output_1/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:’’’’’’’’’*
	keep_dims(*

Tidx0*
T0*&
_class
loc:@m2_output_1/Softmax
Ć
6training_2/Adam/gradients/m2_output_1/Softmax_grad/subSubrtraining_2/Adam/gradients/loss_2/m2_output_loss/sparse_categorical_crossentropy/clip_by_value/Minimum_grad/Reshape6training_2/Adam/gradients/m2_output_1/Softmax_grad/Sum*
T0*&
_class
loc:@m2_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

ę
8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1Mul6training_2/Adam/gradients/m2_output_1/Softmax_grad/subm2_output_1/Softmax*
T0*&
_class
loc:@m2_output_1/Softmax*'
_output_shapes
:’’’’’’’’’

ė
>training_2/Adam/gradients/m2_output_1/BiasAdd_grad/BiasAddGradBiasAddGrad8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1*
T0*&
_class
loc:@m2_output_1/BiasAdd*
data_formatNHWC*
_output_shapes
:


8training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMulMatMul8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1!m2_output_1/MatMul/ReadVariableOp*
T0*%
_class
loc:@m2_output_1/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b(

:training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMul_1MatMulm2_hidden3_1/Relu8training_2/Adam/gradients/m2_output_1/Softmax_grad/mul_1*
transpose_b( *
T0*%
_class
loc:@m2_output_1/MatMul*
transpose_a(*
_output_shapes

:

ź
9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGradReluGrad8training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMulm2_hidden3_1/Relu*$
_class
loc:@m2_hidden3_1/Relu*'
_output_shapes
:’’’’’’’’’*
T0
ī
?training_2/Adam/gradients/m2_hidden3_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGrad*
_output_shapes
:*
T0*'
_class
loc:@m2_hidden3_1/BiasAdd*
data_formatNHWC
¢
9training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGrad"m2_hidden3_1/MatMul/ReadVariableOp*
transpose_b(*
T0*&
_class
loc:@m2_hidden3_1/MatMul*
transpose_a( *'
_output_shapes
:’’’’’’’’’@

;training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMul_1MatMulm2_hidden2_1/Relu9training_2/Adam/gradients/m2_hidden3_1/Relu_grad/ReluGrad*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0*&
_class
loc:@m2_hidden3_1/MatMul
ė
9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGradReluGrad9training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMulm2_hidden2_1/Relu*'
_output_shapes
:’’’’’’’’’@*
T0*$
_class
loc:@m2_hidden2_1/Relu
ī
?training_2/Adam/gradients/m2_hidden2_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@m2_hidden2_1/BiasAdd*
data_formatNHWC*
_output_shapes
:@
£
9training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGrad"m2_hidden2_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m2_hidden2_1/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(

;training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMul_1MatMuldropout_3/cond/Merge9training_2/Adam/gradients/m2_hidden2_1/Relu_grad/ReluGrad*
T0*&
_class
loc:@m2_hidden2_1/MatMul*
transpose_a(*
_output_shapes
:	@*
transpose_b( 

=training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradSwitch9training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMuldropout_3/cond/pred_id*
T0*&
_class
loc:@m2_hidden2_1/MatMul*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’
Ā
 training_2/Adam/gradients/SwitchSwitchm2_hidden1_1/Reludropout_3/cond/pred_id*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0*$
_class
loc:@m2_hidden1_1/Relu
«
"training_2/Adam/gradients/IdentityIdentity"training_2/Adam/gradients/Switch:1*
T0*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
©
!training_2/Adam/gradients/Shape_1Shape"training_2/Adam/gradients/Switch:1*
T0*$
_class
loc:@m2_hidden1_1/Relu*
out_type0*
_output_shapes
:
µ
%training_2/Adam/gradients/zeros/ConstConst#^training_2/Adam/gradients/Identity*$
_class
loc:@m2_hidden1_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
Ü
training_2/Adam/gradients/zerosFill!training_2/Adam/gradients/Shape_1%training_2/Adam/gradients/zeros/Const*
T0*$
_class
loc:@m2_hidden1_1/Relu*

index_type0*(
_output_shapes
:’’’’’’’’’

@training_2/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_gradMerge=training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_gradtraining_2/Adam/gradients/zeros*
T0*$
_class
loc:@m2_hidden1_1/Relu*
N**
_output_shapes
:’’’’’’’’’: 
Ģ
?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ShapeShapedropout_3/cond/dropout/truediv*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
out_type0*
_output_shapes
:
Ģ
Atraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1Shapedropout_3/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
out_type0*
_output_shapes
:
Ų
Otraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ShapeAtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulMul?training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1dropout_3/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
Ć
=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/SumSum=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/MulOtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
_output_shapes
:
¼
Atraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ReshapeReshape=training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
Tshape0*(
_output_shapes
:’’’’’’’’’

?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Muldropout_3/cond/dropout/truediv?training_2/Adam/gradients/dropout_3/cond/Merge_grad/cond_grad:1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*(
_output_shapes
:’’’’’’’’’
É
?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Sum?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Mul_1Qtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
Ā
Ctraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshape_1Reshape?training_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Atraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Shape_1*(
_output_shapes
:’’’’’’’’’*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
Tshape0
Ū
Ctraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/ShapeShape%dropout_3/cond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
out_type0
»
Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
: *1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
valueB 
č
Straining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/ShapeEtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape_1*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDivRealDivAtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/Reshapedropout_3/cond/dropout/sub*(
_output_shapes
:’’’’’’’’’*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv
×
Atraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/SumSumEtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDivStraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/BroadcastGradientArgs*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0
Ģ
Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/ReshapeReshapeAtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/SumCtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
Tshape0*(
_output_shapes
:’’’’’’’’’
Õ
Atraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/NegNeg%dropout_3/cond/dropout/Shape/Switch:1*(
_output_shapes
:’’’’’’’’’*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv

Gtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_1RealDivAtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Negdropout_3/cond/dropout/sub*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*(
_output_shapes
:’’’’’’’’’

Gtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_2RealDivGtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_1dropout_3/cond/dropout/sub*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*(
_output_shapes
:’’’’’’’’’
ŗ
Atraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/mulMulAtraining_2/Adam/gradients/dropout_3/cond/dropout/mul_grad/ReshapeGtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/RealDiv_2*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*(
_output_shapes
:’’’’’’’’’
×
Ctraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Sum_1SumAtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/mulUtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
_output_shapes
:
Ą
Gtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Reshape_1ReshapeCtraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Sum_1Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Shape_1*
T0*1
_class'
%#loc:@dropout_3/cond/dropout/truediv*
Tshape0*
_output_shapes
: 
Ä
"training_2/Adam/gradients/Switch_1Switchm2_hidden1_1/Reludropout_3/cond/pred_id*$
_class
loc:@m2_hidden1_1/Relu*<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*
T0
­
$training_2/Adam/gradients/Identity_1Identity"training_2/Adam/gradients/Switch_1*
T0*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
©
!training_2/Adam/gradients/Shape_2Shape"training_2/Adam/gradients/Switch_1*
T0*$
_class
loc:@m2_hidden1_1/Relu*
out_type0*
_output_shapes
:
¹
'training_2/Adam/gradients/zeros_1/ConstConst%^training_2/Adam/gradients/Identity_1*$
_class
loc:@m2_hidden1_1/Relu*
valueB
 *    *
dtype0*
_output_shapes
: 
ą
!training_2/Adam/gradients/zeros_1Fill!training_2/Adam/gradients/Shape_2'training_2/Adam/gradients/zeros_1/Const*(
_output_shapes
:’’’’’’’’’*
T0*$
_class
loc:@m2_hidden1_1/Relu*

index_type0
£
Ltraining_2/Adam/gradients/dropout_3/cond/dropout/Shape/Switch_grad/cond_gradMerge!training_2/Adam/gradients/zeros_1Etraining_2/Adam/gradients/dropout_3/cond/dropout/truediv_grad/Reshape*
T0*$
_class
loc:@m2_hidden1_1/Relu*
N**
_output_shapes
:’’’’’’’’’: 

training_2/Adam/gradients/AddNAddN@training_2/Adam/gradients/dropout_3/cond/Switch_1_grad/cond_gradLtraining_2/Adam/gradients/dropout_3/cond/dropout/Shape/Switch_grad/cond_grad*
T0*$
_class
loc:@m2_hidden1_1/Relu*
N*(
_output_shapes
:’’’’’’’’’
Ń
9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGradReluGradtraining_2/Adam/gradients/AddNm2_hidden1_1/Relu*
T0*$
_class
loc:@m2_hidden1_1/Relu*(
_output_shapes
:’’’’’’’’’
ļ
?training_2/Adam/gradients/m2_hidden1_1/BiasAdd_grad/BiasAddGradBiasAddGrad9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGrad*
T0*'
_class
loc:@m2_hidden1_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:
£
9training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMulMatMul9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGrad"m2_hidden1_1/MatMul/ReadVariableOp*
T0*&
_class
loc:@m2_hidden1_1/MatMul*
transpose_a( *(
_output_shapes
:’’’’’’’’’*
transpose_b(

;training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMul_1MatMuldropout_2/cond/Merge9training_2/Adam/gradients/m2_hidden1_1/Relu_grad/ReluGrad*&
_class
loc:@m2_hidden1_1/MatMul*
transpose_a(* 
_output_shapes
:
*
transpose_b( *
T0
W
training_2/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
q
#training_2/Adam/AssignAddVariableOpAssignAddVariableOpAdam_2/iterationstraining_2/Adam/Const*
dtype0	

training_2/Adam/ReadVariableOpReadVariableOpAdam_2/iterations$^training_2/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
m
#training_2/Adam/Cast/ReadVariableOpReadVariableOpAdam_2/iterations*
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
training_2/Adam/addAddtraining_2/Adam/Casttraining_2/Adam/add/y*
_output_shapes
: *
T0
h
"training_2/Adam/Pow/ReadVariableOpReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
t
training_2/Adam/PowPow"training_2/Adam/Pow/ReadVariableOptraining_2/Adam/add*
_output_shapes
: *
T0
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
training_2/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
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
$training_2/Adam/Pow_1/ReadVariableOpReadVariableOpAdam_2/beta_1*
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
 training_2/Adam/ReadVariableOp_1ReadVariableOpAdam_2/learning_rate*
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
training_2/Adam/m_0_1VarHandleOp*
_output_shapes
: *&
shared_nametraining_2/Adam/m_0_1*(
_class
loc:@training_2/Adam/m_0_1*
	container *
shape:
*
dtype0
{
6training_2/Adam/m_0_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/m_0_1*
_output_shapes
: 

training_2/Adam/m_0_1/AssignAssignVariableOptraining_2/Adam/m_0_1training_2/Adam/m_0*
dtype0*(
_class
loc:@training_2/Adam/m_0_1
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
training_2/Adam/m_1_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_1_1*(
_class
loc:@training_2/Adam/m_1_1*
	container *
shape:
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
)training_2/Adam/m_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_1_1*(
_class
loc:@training_2/Adam/m_1_1*
dtype0*
_output_shapes	
:
t
#training_2/Adam/m_2/shape_as_tensorConst*
valueB"   @   *
dtype0*
_output_shapes
:
^
training_2/Adam/m_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/Adam/m_2Fill#training_2/Adam/m_2/shape_as_tensortraining_2/Adam/m_2/Const*
T0*

index_type0*
_output_shapes
:	@
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
training_2/Adam/m_3_1VarHandleOp*(
_class
loc:@training_2/Adam/m_3_1*
	container *
shape:@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_3_1
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
training_2/Adam/m_4_1VarHandleOp*
shape
:@*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/m_4_1*(
_class
loc:@training_2/Adam/m_4_1*
	container 
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
)training_2/Adam/m_4_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/m_4_1*(
_class
loc:@training_2/Adam/m_4_1*
dtype0*
_output_shapes

:@
`
training_2/Adam/m_5Const*
valueB*    *
dtype0*
_output_shapes
:
½
training_2/Adam/m_5_1VarHandleOp*&
shared_nametraining_2/Adam/m_5_1*(
_class
loc:@training_2/Adam/m_5_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_2/Adam/m_7_1VarHandleOp*&
shared_nametraining_2/Adam/m_7_1*(
_class
loc:@training_2/Adam/m_7_1*
	container *
shape:
*
dtype0*
_output_shapes
: 
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
training_2/Adam/v_0/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
)training_2/Adam/v_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_0_1*
dtype0* 
_output_shapes
:
*(
_class
loc:@training_2/Adam/v_0_1
b
training_2/Adam/v_1Const*
valueB*    *
dtype0*
_output_shapes	
:
¾
training_2/Adam/v_1_1VarHandleOp*&
shared_nametraining_2/Adam/v_1_1*(
_class
loc:@training_2/Adam/v_1_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
)training_2/Adam/v_1_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/v_1_1*
dtype0*
_output_shapes	
:*(
_class
loc:@training_2/Adam/v_1_1
t
#training_2/Adam/v_2/shape_as_tensorConst*
_output_shapes
:*
valueB"   @   *
dtype0
^
training_2/Adam/v_2/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training_2/Adam/v_2Fill#training_2/Adam/v_2/shape_as_tensortraining_2/Adam/v_2/Const*
T0*

index_type0*
_output_shapes
:	@
Ā
training_2/Adam/v_2_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_2_1*(
_class
loc:@training_2/Adam/v_2_1*
	container *
shape:	@
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
training_2/Adam/v_3Const*
_output_shapes
:@*
valueB@*    *
dtype0
½
training_2/Adam/v_3_1VarHandleOp*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_3_1*(
_class
loc:@training_2/Adam/v_3_1*
	container *
shape:@
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
training_2/Adam/v_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
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
training_2/Adam/v_5Const*
dtype0*
_output_shapes
:*
valueB*    
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
_output_shapes

:
*
valueB
*    *
dtype0
Į
training_2/Adam/v_6_1VarHandleOp*
shape
:
*
dtype0*
_output_shapes
: *&
shared_nametraining_2/Adam/v_6_1*(
_class
loc:@training_2/Adam/v_6_1*
	container 
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
,training_2/Adam/vhat_0_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_0_1*
dtype0*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_0_1
p
&training_2/Adam/vhat_1/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/vhat_1Fill&training_2/Adam/vhat_1/shape_as_tensortraining_2/Adam/vhat_1/Const*
T0*

index_type0*
_output_shapes
:
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
&training_2/Adam/vhat_2/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
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
training_2/Adam/vhat_2_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_2_1*+
_class!
loc:@training_2/Adam/vhat_2_1
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
&training_2/Adam/vhat_3/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
a
training_2/Adam/vhat_3/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/vhat_3Fill&training_2/Adam/vhat_3/shape_as_tensortraining_2/Adam/vhat_3/Const*
T0*

index_type0*
_output_shapes
:
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
,training_2/Adam/vhat_3_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_3_1*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_3_1*
dtype0
p
&training_2/Adam/vhat_4/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training_2/Adam/vhat_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/vhat_4Fill&training_2/Adam/vhat_4/shape_as_tensortraining_2/Adam/vhat_4/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_4_1VarHandleOp*)
shared_nametraining_2/Adam/vhat_4_1*+
_class!
loc:@training_2/Adam/vhat_4_1*
	container *
shape:*
dtype0*
_output_shapes
: 
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
training_2/Adam/vhat_5/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

training_2/Adam/vhat_5Fill&training_2/Adam/vhat_5/shape_as_tensortraining_2/Adam/vhat_5/Const*
T0*

index_type0*
_output_shapes
:
Ę
training_2/Adam/vhat_5_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining_2/Adam/vhat_5_1*+
_class!
loc:@training_2/Adam/vhat_5_1*
	container 
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
training_2/Adam/vhat_7_1/AssignAssignVariableOptraining_2/Adam/vhat_7_1training_2/Adam/vhat_7*
dtype0*+
_class!
loc:@training_2/Adam/vhat_7_1
®
,training_2/Adam/vhat_7_1/Read/ReadVariableOpReadVariableOptraining_2/Adam/vhat_7_1*
_output_shapes
:*+
_class!
loc:@training_2/Adam/vhat_7_1*
dtype0
f
 training_2/Adam/ReadVariableOp_2ReadVariableOpAdam_2/beta_1*
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
 training_2/Adam/ReadVariableOp_3ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/sub_2Subtraining_2/Adam/sub_2/x training_2/Adam/ReadVariableOp_3*
_output_shapes
: *
T0

training_2/Adam/mul_2Multraining_2/Adam/sub_2;training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMul_1*
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
 training_2/Adam/ReadVariableOp_4ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
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
 training_2/Adam/ReadVariableOp_5ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/SquareSquare;training_2/Adam/gradients/m2_hidden1_1/MatMul_grad/MatMul_1* 
_output_shapes
:
*
T0
v
training_2/Adam/mul_4Multraining_2/Adam/sub_3training_2/Adam/Square*
T0* 
_output_shapes
:

u
training_2/Adam/add_2Addtraining_2/Adam/mul_3training_2/Adam/mul_4*
T0* 
_output_shapes
:

s
training_2/Adam/mul_5Multraining_2/Adam/multraining_2/Adam/add_1* 
_output_shapes
:
*
T0
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
 training_2/Adam/ReadVariableOp_6ReadVariableOpm2_hidden1_1/kernel*
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
dtype0* 
_output_shapes
:

o
"training_2/Adam/AssignVariableOp_2AssignVariableOpm2_hidden1_1/kerneltraining_2/Adam/sub_4*
dtype0

 training_2/Adam/ReadVariableOp_9ReadVariableOpm2_hidden1_1/kernel#^training_2/Adam/AssignVariableOp_2*
dtype0* 
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_10ReadVariableOpAdam_2/beta_1*
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
!training_2/Adam/ReadVariableOp_11ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/mul_7Multraining_2/Adam/sub_5?training_2/Adam/gradients/m2_hidden1_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
p
training_2/Adam/add_4Addtraining_2/Adam/mul_6training_2/Adam/mul_7*
T0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_12ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
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
!training_2/Adam/ReadVariableOp_13ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/Square_1Square?training_2/Adam/gradients/m2_hidden1_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:*
T0
s
training_2/Adam/mul_9Multraining_2/Adam/sub_6training_2/Adam/Square_1*
_output_shapes	
:*
T0
p
training_2/Adam/add_5Addtraining_2/Adam/mul_8training_2/Adam/mul_9*
T0*
_output_shapes	
:
o
training_2/Adam/mul_10Multraining_2/Adam/multraining_2/Adam/add_4*
T0*
_output_shapes	
:
\
training_2/Adam/Const_5Const*
_output_shapes
: *
valueB
 *    *
dtype0
\
training_2/Adam/Const_6Const*
_output_shapes
: *
valueB
 *  *
dtype0

'training_2/Adam/clip_by_value_2/MinimumMinimumtraining_2/Adam/add_5training_2/Adam/Const_6*
_output_shapes	
:*
T0

training_2/Adam/clip_by_value_2Maximum'training_2/Adam/clip_by_value_2/Minimumtraining_2/Adam/Const_5*
T0*
_output_shapes	
:
e
training_2/Adam/Sqrt_2Sqrttraining_2/Adam/clip_by_value_2*
_output_shapes	
:*
T0
\
training_2/Adam/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *æÖ3
s
training_2/Adam/add_6Addtraining_2/Adam/Sqrt_2training_2/Adam/add_6/y*
T0*
_output_shapes	
:
y
training_2/Adam/truediv_2RealDivtraining_2/Adam/mul_10training_2/Adam/add_6*
_output_shapes	
:*
T0
p
!training_2/Adam/ReadVariableOp_14ReadVariableOpm2_hidden1_1/bias*
dtype0*
_output_shapes	
:

training_2/Adam/sub_7Sub!training_2/Adam/ReadVariableOp_14training_2/Adam/truediv_2*
_output_shapes	
:*
T0
q
"training_2/Adam/AssignVariableOp_3AssignVariableOptraining_2/Adam/m_1_1training_2/Adam/add_4*
dtype0

!training_2/Adam/ReadVariableOp_15ReadVariableOptraining_2/Adam/m_1_1#^training_2/Adam/AssignVariableOp_3*
_output_shapes	
:*
dtype0
q
"training_2/Adam/AssignVariableOp_4AssignVariableOptraining_2/Adam/v_1_1training_2/Adam/add_5*
dtype0

!training_2/Adam/ReadVariableOp_16ReadVariableOptraining_2/Adam/v_1_1#^training_2/Adam/AssignVariableOp_4*
dtype0*
_output_shapes	
:
m
"training_2/Adam/AssignVariableOp_5AssignVariableOpm2_hidden1_1/biastraining_2/Adam/sub_7*
dtype0

!training_2/Adam/ReadVariableOp_17ReadVariableOpm2_hidden1_1/bias#^training_2/Adam/AssignVariableOp_5*
dtype0*
_output_shapes	
:
g
!training_2/Adam/ReadVariableOp_18ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
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
!training_2/Adam/ReadVariableOp_19ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/mul_12Multraining_2/Adam/sub_8;training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	@
v
training_2/Adam/add_7Addtraining_2/Adam/mul_11training_2/Adam/mul_12*
_output_shapes
:	@*
T0
g
!training_2/Adam/ReadVariableOp_20ReadVariableOpAdam_2/beta_2*
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
!training_2/Adam/ReadVariableOp_21ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/Square_2Square;training_2/Adam/gradients/m2_hidden2_1/MatMul_grad/MatMul_1*
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
training_2/Adam/mul_15Multraining_2/Adam/multraining_2/Adam/add_7*
T0*
_output_shapes
:	@
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
'training_2/Adam/clip_by_value_3/MinimumMinimumtraining_2/Adam/add_8training_2/Adam/Const_8*
T0*
_output_shapes
:	@

training_2/Adam/clip_by_value_3Maximum'training_2/Adam/clip_by_value_3/Minimumtraining_2/Adam/Const_7*
_output_shapes
:	@*
T0
i
training_2/Adam/Sqrt_3Sqrttraining_2/Adam/clip_by_value_3*
_output_shapes
:	@*
T0
\
training_2/Adam/add_9/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
w
training_2/Adam/add_9Addtraining_2/Adam/Sqrt_3training_2/Adam/add_9/y*
_output_shapes
:	@*
T0
}
training_2/Adam/truediv_3RealDivtraining_2/Adam/mul_15training_2/Adam/add_9*
T0*
_output_shapes
:	@
v
!training_2/Adam/ReadVariableOp_22ReadVariableOpm2_hidden2_1/kernel*
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
"training_2/Adam/AssignVariableOp_8AssignVariableOpm2_hidden2_1/kerneltraining_2/Adam/sub_10*
dtype0

!training_2/Adam/ReadVariableOp_25ReadVariableOpm2_hidden2_1/kernel#^training_2/Adam/AssignVariableOp_8*
dtype0*
_output_shapes
:	@
g
!training_2/Adam/ReadVariableOp_26ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
w
%training_2/Adam/mul_16/ReadVariableOpReadVariableOptraining_2/Adam/m_3_1*
_output_shapes
:@*
dtype0

training_2/Adam/mul_16Mul!training_2/Adam/ReadVariableOp_26%training_2/Adam/mul_16/ReadVariableOp*
_output_shapes
:@*
T0
g
!training_2/Adam/ReadVariableOp_27ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/mul_17Multraining_2/Adam/sub_11?training_2/Adam/gradients/m2_hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
r
training_2/Adam/add_10Addtraining_2/Adam/mul_16training_2/Adam/mul_17*
T0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_28ReadVariableOpAdam_2/beta_2*
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
!training_2/Adam/ReadVariableOp_29ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
]
training_2/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
{
training_2/Adam/sub_12Subtraining_2/Adam/sub_12/x!training_2/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training_2/Adam/Square_3Square?training_2/Adam/gradients/m2_hidden2_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:@
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
training_2/Adam/mul_20Multraining_2/Adam/multraining_2/Adam/add_10*
_output_shapes
:@*
T0
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
training_2/Adam/truediv_4RealDivtraining_2/Adam/mul_20training_2/Adam/add_12*
_output_shapes
:@*
T0
o
!training_2/Adam/ReadVariableOp_30ReadVariableOpm2_hidden2_1/bias*
dtype0*
_output_shapes
:@

training_2/Adam/sub_13Sub!training_2/Adam/ReadVariableOp_30training_2/Adam/truediv_4*
_output_shapes
:@*
T0
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
#training_2/Adam/AssignVariableOp_11AssignVariableOpm2_hidden2_1/biastraining_2/Adam/sub_13*
dtype0

!training_2/Adam/ReadVariableOp_33ReadVariableOpm2_hidden2_1/bias$^training_2/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
:@
g
!training_2/Adam/ReadVariableOp_34ReadVariableOpAdam_2/beta_1*
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
!training_2/Adam/ReadVariableOp_35ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/mul_22Multraining_2/Adam/sub_14;training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:@
v
training_2/Adam/add_13Addtraining_2/Adam/mul_21training_2/Adam/mul_22*
_output_shapes

:@*
T0
g
!training_2/Adam/ReadVariableOp_36ReadVariableOpAdam_2/beta_2*
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
!training_2/Adam/ReadVariableOp_37ReadVariableOpAdam_2/beta_2*
_output_shapes
: *
dtype0
]
training_2/Adam/sub_15/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
{
training_2/Adam/sub_15Subtraining_2/Adam/sub_15/x!training_2/Adam/ReadVariableOp_37*
_output_shapes
: *
T0

training_2/Adam/Square_4Square;training_2/Adam/gradients/m2_hidden3_1/MatMul_grad/MatMul_1*
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
training_2/Adam/add_15Addtraining_2/Adam/Sqrt_5training_2/Adam/add_15/y*
T0*
_output_shapes

:@
}
training_2/Adam/truediv_5RealDivtraining_2/Adam/mul_25training_2/Adam/add_15*
T0*
_output_shapes

:@
u
!training_2/Adam/ReadVariableOp_38ReadVariableOpm2_hidden3_1/kernel*
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
#training_2/Adam/AssignVariableOp_14AssignVariableOpm2_hidden3_1/kerneltraining_2/Adam/sub_16*
dtype0

!training_2/Adam/ReadVariableOp_41ReadVariableOpm2_hidden3_1/kernel$^training_2/Adam/AssignVariableOp_14*
dtype0*
_output_shapes

:@
g
!training_2/Adam/ReadVariableOp_42ReadVariableOpAdam_2/beta_1*
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
!training_2/Adam/ReadVariableOp_43ReadVariableOpAdam_2/beta_1*
_output_shapes
: *
dtype0
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
training_2/Adam/mul_27Multraining_2/Adam/sub_17?training_2/Adam/gradients/m2_hidden3_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
r
training_2/Adam/add_16Addtraining_2/Adam/mul_26training_2/Adam/mul_27*
_output_shapes
:*
T0
g
!training_2/Adam/ReadVariableOp_44ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
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
!training_2/Adam/ReadVariableOp_45ReadVariableOpAdam_2/beta_2*
dtype0*
_output_shapes
: 
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
training_2/Adam/Square_5Square?training_2/Adam/gradients/m2_hidden3_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
t
training_2/Adam/mul_29Multraining_2/Adam/sub_18training_2/Adam/Square_5*
_output_shapes
:*
T0
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
training_2/Adam/Const_13Const*
_output_shapes
: *
valueB
 *    *
dtype0
]
training_2/Adam/Const_14Const*
dtype0*
_output_shapes
: *
valueB
 *  

'training_2/Adam/clip_by_value_6/MinimumMinimumtraining_2/Adam/add_17training_2/Adam/Const_14*
_output_shapes
:*
T0

training_2/Adam/clip_by_value_6Maximum'training_2/Adam/clip_by_value_6/Minimumtraining_2/Adam/Const_13*
T0*
_output_shapes
:
d
training_2/Adam/Sqrt_6Sqrttraining_2/Adam/clip_by_value_6*
T0*
_output_shapes
:
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
training_2/Adam/truediv_6RealDivtraining_2/Adam/mul_30training_2/Adam/add_18*
_output_shapes
:*
T0
o
!training_2/Adam/ReadVariableOp_46ReadVariableOpm2_hidden3_1/bias*
dtype0*
_output_shapes
:

training_2/Adam/sub_19Sub!training_2/Adam/ReadVariableOp_46training_2/Adam/truediv_6*
T0*
_output_shapes
:
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
#training_2/Adam/AssignVariableOp_17AssignVariableOpm2_hidden3_1/biastraining_2/Adam/sub_19*
dtype0

!training_2/Adam/ReadVariableOp_49ReadVariableOpm2_hidden3_1/bias$^training_2/Adam/AssignVariableOp_17*
dtype0*
_output_shapes
:
g
!training_2/Adam/ReadVariableOp_50ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
{
%training_2/Adam/mul_31/ReadVariableOpReadVariableOptraining_2/Adam/m_6_1*
dtype0*
_output_shapes

:


training_2/Adam/mul_31Mul!training_2/Adam/ReadVariableOp_50%training_2/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_51ReadVariableOpAdam_2/beta_1*
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
training_2/Adam/mul_32Multraining_2/Adam/sub_20:training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMul_1*
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
!training_2/Adam/ReadVariableOp_52ReadVariableOpAdam_2/beta_2*
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
!training_2/Adam/ReadVariableOp_53ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/sub_21Subtraining_2/Adam/sub_21/x!training_2/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training_2/Adam/Square_6Square:training_2/Adam/gradients/m2_output_1/MatMul_grad/MatMul_1*
_output_shapes

:
*
T0
x
training_2/Adam/mul_34Multraining_2/Adam/sub_21training_2/Adam/Square_6*
T0*
_output_shapes

:

v
training_2/Adam/add_20Addtraining_2/Adam/mul_33training_2/Adam/mul_34*
T0*
_output_shapes

:

s
training_2/Adam/mul_35Multraining_2/Adam/multraining_2/Adam/add_19*
_output_shapes

:
*
T0
]
training_2/Adam/Const_15Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
!training_2/Adam/ReadVariableOp_54ReadVariableOpm2_output_1/kernel*
dtype0*
_output_shapes

:


training_2/Adam/sub_22Sub!training_2/Adam/ReadVariableOp_54training_2/Adam/truediv_7*
_output_shapes

:
*
T0
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
#training_2/Adam/AssignVariableOp_20AssignVariableOpm2_output_1/kerneltraining_2/Adam/sub_22*
dtype0

!training_2/Adam/ReadVariableOp_57ReadVariableOpm2_output_1/kernel$^training_2/Adam/AssignVariableOp_20*
dtype0*
_output_shapes

:

g
!training_2/Adam/ReadVariableOp_58ReadVariableOpAdam_2/beta_1*
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
!training_2/Adam/ReadVariableOp_59ReadVariableOpAdam_2/beta_1*
dtype0*
_output_shapes
: 
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
training_2/Adam/mul_37Multraining_2/Adam/sub_23>training_2/Adam/gradients/m2_output_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

r
training_2/Adam/add_22Addtraining_2/Adam/mul_36training_2/Adam/mul_37*
T0*
_output_shapes
:

g
!training_2/Adam/ReadVariableOp_60ReadVariableOpAdam_2/beta_2*
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
!training_2/Adam/ReadVariableOp_61ReadVariableOpAdam_2/beta_2*
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
training_2/Adam/Square_7Square>training_2/Adam/gradients/m2_output_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

t
training_2/Adam/mul_39Multraining_2/Adam/sub_24training_2/Adam/Square_7*
T0*
_output_shapes
:

r
training_2/Adam/add_23Addtraining_2/Adam/mul_38training_2/Adam/mul_39*
T0*
_output_shapes
:

o
training_2/Adam/mul_40Multraining_2/Adam/multraining_2/Adam/add_22*
T0*
_output_shapes
:

]
training_2/Adam/Const_17Const*
_output_shapes
: *
valueB
 *    *
dtype0
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
training_2/Adam/add_24/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
t
training_2/Adam/add_24Addtraining_2/Adam/Sqrt_8training_2/Adam/add_24/y*
_output_shapes
:
*
T0
y
training_2/Adam/truediv_8RealDivtraining_2/Adam/mul_40training_2/Adam/add_24*
T0*
_output_shapes
:

n
!training_2/Adam/ReadVariableOp_62ReadVariableOpm2_output_1/bias*
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
#training_2/Adam/AssignVariableOp_23AssignVariableOpm2_output_1/biastraining_2/Adam/sub_25*
dtype0

!training_2/Adam/ReadVariableOp_65ReadVariableOpm2_output_1/bias$^training_2/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

e
training_2/VarIsInitializedOpVarIsInitializedOptraining_2/Adam/vhat_6_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_1VarIsInitializedOptraining_2/Adam/m_1_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_2VarIsInitializedOptraining_2/Adam/v_6_1*
_output_shapes
: 
g
training_2/VarIsInitializedOp_3VarIsInitializedOptraining_2/Adam/vhat_5_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_4VarIsInitializedOptraining_2/Adam/m_0_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_5VarIsInitializedOptraining_2/Adam/m_3_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_6VarIsInitializedOptraining_2/Adam/m_5_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_7VarIsInitializedOptraining_2/Adam/m_4_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_8VarIsInitializedOptraining_2/Adam/v_7_1*
_output_shapes
: 
d
training_2/VarIsInitializedOp_9VarIsInitializedOptraining_2/Adam/m_2_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_10VarIsInitializedOptraining_2/Adam/m_6_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_11VarIsInitializedOptraining_2/Adam/vhat_0_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_12VarIsInitializedOptraining_2/Adam/vhat_1_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_13VarIsInitializedOptraining_2/Adam/v_0_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_14VarIsInitializedOptraining_2/Adam/vhat_7_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_15VarIsInitializedOptraining_2/Adam/v_3_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_16VarIsInitializedOptraining_2/Adam/m_7_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_17VarIsInitializedOptraining_2/Adam/v_5_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_18VarIsInitializedOptraining_2/Adam/v_1_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_19VarIsInitializedOptraining_2/Adam/v_2_1*
_output_shapes
: 
e
 training_2/VarIsInitializedOp_20VarIsInitializedOptraining_2/Adam/v_4_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_21VarIsInitializedOptraining_2/Adam/vhat_2_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_22VarIsInitializedOptraining_2/Adam/vhat_4_1*
_output_shapes
: 
h
 training_2/VarIsInitializedOp_23VarIsInitializedOptraining_2/Adam/vhat_3_1*
_output_shapes
: 

training_2/initNoOp^training_2/Adam/m_0_1/Assign^training_2/Adam/m_1_1/Assign^training_2/Adam/m_2_1/Assign^training_2/Adam/m_3_1/Assign^training_2/Adam/m_4_1/Assign^training_2/Adam/m_5_1/Assign^training_2/Adam/m_6_1/Assign^training_2/Adam/m_7_1/Assign^training_2/Adam/v_0_1/Assign^training_2/Adam/v_1_1/Assign^training_2/Adam/v_2_1/Assign^training_2/Adam/v_3_1/Assign^training_2/Adam/v_4_1/Assign^training_2/Adam/v_5_1/Assign^training_2/Adam/v_6_1/Assign^training_2/Adam/v_7_1/Assign ^training_2/Adam/vhat_0_1/Assign ^training_2/Adam/vhat_1_1/Assign ^training_2/Adam/vhat_2_1/Assign ^training_2/Adam/vhat_3_1/Assign ^training_2/Adam/vhat_4_1/Assign ^training_2/Adam/vhat_5_1/Assign ^training_2/Adam/vhat_6_1/Assign ^training_2/Adam/vhat_7_1/Assign

training_2/group_depsNoOp^Mean_2^metrics_2/accuracy/Identity"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1^training_2/Adam/ReadVariableOp"^training_2/Adam/ReadVariableOp_15"^training_2/Adam/ReadVariableOp_16"^training_2/Adam/ReadVariableOp_17"^training_2/Adam/ReadVariableOp_23"^training_2/Adam/ReadVariableOp_24"^training_2/Adam/ReadVariableOp_25"^training_2/Adam/ReadVariableOp_31"^training_2/Adam/ReadVariableOp_32"^training_2/Adam/ReadVariableOp_33"^training_2/Adam/ReadVariableOp_39"^training_2/Adam/ReadVariableOp_40"^training_2/Adam/ReadVariableOp_41"^training_2/Adam/ReadVariableOp_47"^training_2/Adam/ReadVariableOp_48"^training_2/Adam/ReadVariableOp_49"^training_2/Adam/ReadVariableOp_55"^training_2/Adam/ReadVariableOp_56"^training_2/Adam/ReadVariableOp_57"^training_2/Adam/ReadVariableOp_63"^training_2/Adam/ReadVariableOp_64"^training_2/Adam/ReadVariableOp_65!^training_2/Adam/ReadVariableOp_7!^training_2/Adam/ReadVariableOp_8!^training_2/Adam/ReadVariableOp_9

group_deps_2NoOp^Mean_2^metrics_2/accuracy/Identity"^metrics_2/accuracy/ReadVariableOp$^metrics_2/accuracy/ReadVariableOp_1""·r
trainable_variablesrr
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
training_2/Adam/vhat_7_1:0training_2/Adam/vhat_7_1/Assign.training_2/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_7:08"¢
cond_context
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
dropout_1_input:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0:
dropout_1_input:0%dropout_1/cond/dropout/Shape/Switch:1
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
dropout_3/cond/pred_id:0dropout_3/cond/pred_id:0"­r
	variablesrr
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
training_2/Adam/vhat_7_1:0training_2/Adam/vhat_7_1/Assign.training_2/Adam/vhat_7_1/Read/ReadVariableOp:0(2training_2/Adam/vhat_7:08Yß¹       ČĮ	Ajé“×A*

val_lossn@ķųO        )ķ©P	 ké“×A*

val_accuracyz„,>+é       £K"	ké“×A*

loss@żå½y       ČĮ	āké“×A*

accuracys>V„0x       ŁÜ2	“[“×A*

val_lossYž?Bu="       x=ż	„\“×A*

val_accuracyę®>uń1       Ų-	]“×A*

loss\@¹'u       ŁÜ2	~]“×A*

accuracyrN>­©       ŁÜ2	f?“×A*

val_lossĻ“ó?  ±O"       x=ż	g?“×A*

val_accuracyµ7>Ź°§       Ų-	h?“×A*

loss	®ü?>dKŹ       ŁÜ2	rh?“×A*

accuracy„½>£9ō       ŁÜ2	Į ē“×A*

val_lossuWģ?Ų½"       x=ż	©ē“×A*

val_accuracyēØ>¶Įļ       Ų-	*ē“×A*

lossņõ?äXH       ŁÜ2	ē“×A*

accuracyPü>[ĄĀ       ŁÜ2	 “×A*

val_lossĮUē?v“W"       x=ż	ų“×A*

val_accuracys×²>ĀW       Ų-	m“×A*

lossš?Īļ@       ŁÜ2	Ń“×A*

accuracy4”>ÜJYß       ŁÜ2	­ė6“×A*

val_lossEä?®¾Ņ3"       x=ż	¬ģ6“×A*

val_accuracyO¶>1 ®?       Ų-	ķ6“×A*

lossŚ°ģ?ŖU       ŁÜ2	ķ6“×A*

accuracyF¦>ÉśÕ       ŁÜ2	ūžŻ“×A*

val_loss į?ĄXY"       x=ż	ķ’Ż“×A*

val_accuracyŃ¼>Wa       Ų-	b Ž“×A*

lossļdź?Ķ       ŁÜ2	Ä Ž“×A*

accuracyįz¬>ŽĒF       ŁÜ2	ØP “×A*

val_lossHŽ?½ćū"       x=ż	Q “×A*

val_accuracyÄĄ>ÖR6k       Ų-	R “×A*

lossĻ9ē?.«6       ŁÜ2	jR “×A*

accuracy#Ū±>%p'W       ŁÜ2	*4!“×A*

val_lossMyÜ?¹¾”"       x=ż	<4!“×A*

val_accuracyÅ>pØł       Ų-	¶4!“×A*

lossėīä?kOQ       ŁÜ2	4!“×A*

accuracyf÷“>`ßé/       ŁÜ2	#žŪ!“×A	*

val_lossŁ?ōŻ,Q"       x=ż	’Ū!“×A	*

val_accuracyÉ>(§       Ų-	Å’Ū!“×A	*

lossĶwć?ł6»e       ŁÜ2	0 Ü!“×A	*

accuracy4·>%ŅD       ŁÜ2	qŽ"“×A
*

val_losskŲ?ÄśDŃ"       x=ż	[ß"“×A
*

val_accuracylĒ>(Q       Ų-	Īß"“×A
*

lossauį?$E       ŁÜ2	-ą"“×A
*

accuracyĘm¼>d¼aO       ŁÜ2	h*#“×A*

val_loss¬±Ō?ųØŻ"       x=ż	i*#“×A*

val_accuracyą-Š>[KZ       Ų-	{i*#“×A*

losslß?š®z       ŁÜ2	Żi*#“×A*

accuracy“Y½>]b       ŁÜ2	1Ń#“×A*

val_lossįŅ?6\ś"       x=ż	ö1Ń#“×A*

val_accuracy×£Š>µķÕ       Ų-	b2Ń#“×A*

loss"Ż?Q©W       ŁÜ2	Ć2Ń#“×A*

accuracyåaĮ>ÄKó       ŁÜ2	w$“×A*

val_loss½„Ń?Åį"       x=ż	÷w$“×A*

val_accuracy¼Ņ>C3)ö       Ų-	_w$“×A*

loss¦Ü?ģvīk       ŁÜ2	Ąw$“×A*

accuracyµ¦Į>ÄQ       ŁÜ2	+%“×A*

val_lossÕmŠ?4śĻę"       x=ż	+%“×A*

val_accuracyąŃ>S~       Ų-	t+%“×A*

lossŲŪ?Z,į       ŁÜ2	×+%“×A*

accuracyĒĀ>QF.       ŁÜ2	KiŅ%“×A*

val_lossĮWĻ?kéŹ±"       x=ż	EjŅ%“×A*

val_accuracyP×>ś©       Ų-	·jŅ%“×A*

loss'Ł?2×       ŁÜ2	kŅ%“×A*

accuracyżÄ>Ą<Ö:       ŁÜ2	gx&“×A*

val_losspĪ?ėĢö"       x=ż	’gx&“×A*

val_accuracy4¢Ō>¦_¢       Ų-	lhx&“×A*

loss²AŁ?Vø§       ŁÜ2	Ļhx&“×A*

accuracyūĖĘ>0Ø8       ŁÜ2	/'“×A*

val_lossżeĪ?#ŁG"       x=ż	Ģ'“×A*

val_accuracyšÖ>+»b       Ų-	9'“×A*

loss9§×?}ū§ē       ŁÜ2	'“×A*

accuracy£#É>[       ŁÜ2	NÅ'“×A*

val_loss7¹Ė?Nuš½"       x=ż	~OÅ'“×A*

val_accuracy-CÜ>óė÷°       Ų-	ōOÅ'“×A*

loss;i×?Eø       ŁÜ2	[PÅ'“×A*

accuracyAČ>ó.M       ŁÜ2	¦¾k(“×A*

val_loss#÷Ģ?VF""       x=ż	æk(“×A*

val_accuracy¬­Ų>9ąD¤       Ų-	’æk(“×A*

lossYÖ?ž       ŁÜ2	[Ąk(“×A*

accuracyVĖ>ZkŹ*       ŁÜ2	„ś)“×A*

val_lossa0Ė?{óW"       x=ż	ū)“×A*

val_accuracyķÜ>!ŗ       Ų-	ü)“×A*

lossyęÕ?µģ       ŁÜ2	rü)“×A*

accuracyÄBĶ>Ń       ŁÜ2	³¤æ)“×A*

val_lossUćĒ?cE"       x=ż	„„æ)“×A*

val_accuracyŽā>p?       Ų-	¦æ)“×A*

loss8żÓ?Ā¾       ŁÜ2	v¦æ)“×A*

accuracymÅĪ>Ģ©ų       ŁÜ2	°:f*“×A*

val_loss£¼É?¾­įŚ"       x=ż	;f*“×A*

val_accuracyą>ŗ_$ó       Ų-		<f*“×A*

lossŽVŌ?1j        ŁÜ2	h<f*“×A*

accuracy\Ī>ū7]       ŁÜ2	ÉG+“×A*

val_loss„$Ź?u®RĮ"       x=ż	¾H+“×A*

val_accuracy­iŽ>ó8[       Ų-	.I+“×A*

loss,Ó?sõń       ŁÜ2	I+“×A*

accuracy²Ļ> .X       ŁÜ2	z?“+“×A*

val_lossz“Ę?Ē,\"       x=ż	e@“+“×A*

val_accuracy·ą>ż)JĻ       Ų-	Ō@“+“×A*

lossōKŅ?ō£2       ŁÜ2	5A“+“×A*

accuracy@Ń>½PH       ŁÜ2	§Z,“×A*

val_lossHéĒ?kAG"       x=ż	ØZ,“×A*

val_accuracy%į> 6žé       Ų-	nØZ,“×A*

lossŖ¢Ņ?8¤N       ŁÜ2	ĖØZ,“×A*

accuracy7Š>Å=ī       ŁÜ2	J-“×A*

val_lossė¶Ę?Ņf"       x=ż	A -“×A*

val_accuracy„,ć>püÜā       Ų-	¹ -“×A*

lossvŅ?qź²v       ŁÜ2	”-“×A*

accuracy,eŃ>Ć»pļ       ŁÜ2	©Ē­-“×A*

val_loss.ōĘ?¦4:õ"       x=ż	Č­-“×A*

val_accuracyĄģŽ>ĘÜ«Ē       Ų-	É­-“×A*

lossŃ? 0       ŁÜ2	qÉ­-“×A*

accuracy#JÓ>ĄÜą       ŁÜ2	łT.“×A*

val_losstĘ?öĀzø"       x=ż	T.“×A*

val_accuracył1ę>)ö       Ų-	T.“×A*

lossŃ?&čo       ŁÜ2	ėT.“×A*

accuracy³{Ņ>fÉh       ŁÜ2	”ū.“×A*

val_lossvÄ?>7Ā"       x=ż	ū.“×A*

val_accuracy¹ę>_Ź       Ų-	ū.“×A*

loss9Š?Xķ÷       ŁÜ2	hū.“×A*

accuracyÆ%Ō>Åūo       ŁÜ2	>ų”/“×A*

val_lossM\Å?Lõ|"       x=ż	>ł”/“×A*

val_accuracyŌ+å>Tł<       Ų-	Ół”/“×A*

lossŁnĻ?:(­ä       ŁÜ2	9ś”/“×A*

accuracyLÕ>õėw       ŁÜ2	ŗ>H0“×A*

val_lossnÄ?ŖJN"       x=ż	Ģ?H0“×A*

val_accuracy]må>ėŪ±       Ų-	A@H0“×A*

lossń|Ļ?2$½       ŁÜ2	£@H0“×A*

accuracy;Õ>2w°@       ŁÜ2	&ųō0“×A *

val_loss3Å?ēuéś"       x=ż	(łō0“×A *

val_accuracy9Öå>jŁĀ       Ų-	łō0“×A *

loss0¶Ī?“&E       ŁÜ2	żłō0“×A *

accuracyėsÕ>Åģ¶       ŁÜ2	!1“×A!*

val_lossąįĆ?.b`n"       x=ż	"1“×A!*

val_accuracył ē>æäLÅ       Ų-	#1“×A!*

loss7BĻ?ß~!\       ŁÜ2	e#1“×A!*

accuracyŪÕ>¶ŅŁ	       ŁÜ2	µXC2“×A"*

val_lossäĆ?“s"       x=ż	YC2“×A"*

val_accuracyU0ź>ą6cd       Ų-	ZC2“×A"*

lossCĶ?)ü“­       ŁÜ2	}ZC2“×A"*

accuracy×£Ų>żĖŽ’       ŁÜ2	=óė2“×A#*

val_lossŌßĄ?ŁC"       x=ż	,ōė2“×A#*

val_accuracy_ģ>ÓŁµ       Ų-	ōė2“×A#*

losslŹĢ?ĢūN+       ŁÜ2	õė2“×A#*

accuracy|Ų>Č÷Ž       ŁÜ2	į©3“×A$*

val_lossµĆ?Ž<
Ń"       x=ż	ÉŖ3“×A$*

val_accuracyĢč>dC       Ų-	<«3“×A$*

lossŪĢ?f"āD       ŁÜ2	 «3“×A$*

accuracyĒ)Ś>µū_       ŁÜ2	ļ;4“×A%*

val_lossøĮ? ÖźW"       x=ż	š;4“×A%*

val_accuracyqķ>ō½&       Ų-	ń;4“×A%*

loss"Ķ?¤sī       ŁÜ2	gń;4“×A%*

accuracy*Ų>ĮĖ       ŁÜ2	q¹ē4“×A&*

val_lossŠHĀ?¬H+"       x=ż	Zŗē4“×A&*

val_accuracyjķ>ßł-·       Ų-	Ōŗē4“×A&*

lossMĢ?ŃæCO       ŁÜ2	9»ē4“×A&*

accuracy3ÄŁ>$Q"£       ŁÜ2	v5“×A'*

val_lossŅ'Ā?Ł£ß"       x=ż	q5“×A'*

val_accuracyq=ź>7½ģĘ       Ų-	ć5“×A'*

loss%XĢ?Yż)       ŁÜ2	J5“×A'*

accuracyóŚ>®k       ŁÜ2	<:6“×A(*

val_lossēÖĄ?t­"       x=ż	9:6“×A(*

val_accuracyh³ź>ė±21       Ų-	­:6“×A(*

lossīĖ?WĆ       ŁÜ2	:6“×A(*

accuracyĪŚ>?F       ŁÜ2	gą6“×A)*

val_lossn§Į?ŲÉ£;"       x=ż	hą6“×A)*

val_accuracy«ķ>¬M       Ų-	~hą6“×A)*

loss/gĖ?n}W½       ŁÜ2	ßhą6“×A)*

accuracyĮ9Ū>Žy'       ŁÜ2	UN7“×A**

val_lossé!Ć?uĄuŚ"       x=ż	<O7“×A**

val_accuracyŽē>F3”       Ų-	ÆO7“×A**

loss;Ė?`tB       ŁÜ2	P7“×A**

accuracyĄŚ>±W       ŁÜ2	G8“×A+*

val_lossÆĮ?£IČz"       x=ż	2	G8“×A+*

val_accuracyĆÓė>mŗę»       Ų-	
G8“×A+*

lossÜĖ?čĆ¤       ŁÜ2	¹
G8“×A+*

accuracyōŪ>Tö       ŁÜ2	õģü8“×A,*

val_lossAæ?<Smß"       x=ż	šķü8“×A,*

val_accuracy)\ļ>*öRŪ       Ų-	hīü8“×A,*

lossoŹ?ūŃ×       ŁÜ2	Ėīü8“×A,*

accuracyZÜ>÷īs       ŁÜ2	|¦9“×A-*

val_loss/Ą?|| "       x=ż	p}¦9“×A-*

val_accuracyūĖī>»š       Ų-	ć}¦9“×A-*

lossj_Ź?Ā·4L       ŁÜ2	E~¦9“×A-*

accuracyßąŪ>Vćį       ŁÜ2	 P:“×A.*

val_loss|įĄ?	~z"       x=ż	 P:“×A.*

val_accuracyņŅķ>Ö·       Ų-	rP:“×A.*

lossļŹ?Lō~5       ŁÜ2	ŃP:“×A.*

accuracyŻµÜ>m{+       ŁÜ2	ņö:“×A/*

val_lossµOæ?	s$"       x=ż	óö:“×A/*

val_accuracyĪŖļ>ąūó       Ų-	qóö:“×A/*

lossVqÉ?jąō       ŁÜ2	Ļóö:“×A/*

accuracyOŽ>uOĮ       ŁÜ2	³Ā;“×A0*

val_losshĄ?l\„u"       x=ż	¤Ć;“×A0*

val_accuracy»'ļ>N/ Å       Ų-	Ä;“×A0*

loss]É?ęd       ŁÜ2	oÄ;“×A0*

accuracymÅŽ>ĢøU       ŁÜ2	µĀA<“×A1*

val_loss@©Ą?¦8Ó"       x=ż	£ĆA<“×A1*

val_accuracyū\ķ>Ė~       Ų-	ÄA<“×A1*

lossdŹ?źŚj#       ŁÜ2	uÄA<“×A1*

accuracy_)Ū>č2       ŁÜ2	t8ī<“×A2*

val_loss¶SĄ?9Čb"       x=ż	s9ī<“×A2*

val_accuracyOļ>ļĘŻ       Ų-	ķ9ī<“×A2*

loss9É?Į	       ŁÜ2	Y:ī<“×A2*

accuracyrłß>ø/§       ŁÜ2	hs=“×A3*

val_lossóĶĄ?ėób"       x=ż	dt=“×A3*

val_accuracyśķė>āf£       Ų-	Ńt=“×A3*

lossC.É?YDŻ       ŁÜ2	1u=“×A3*

accuracyŽ>
Dā       ŁÜ2	W©:>“×A4*

val_loss@L½?K<ą"       x=ż	lŖ:>“×A4*

val_accuracyEGņ>/h#       Ų-	ėŖ:>“×A4*

loss,Č?m;Qµ       ŁÜ2	W«:>“×A4*

accuracy  ą>śĻ±       ŁÜ2	$ą>“×A5*

val_lossģæ?=ś¤ķ"       x=ż	ą>“×A5*

val_accuracyńōź>×       Ų-	ą>“×A5*

lossBČ?æqōg       ŁÜ2	įą>“×A5*

accuracyé·ß>¤/uŖ       ŁÜ2	Lū?“×A6*

val_lossÓ¦æ?hĀŲ"       x=ż	Gü?“×A6*

val_accuracyūĖī>XćŽ       Ų-	¶ü?“×A6*

loss­~Č?)­³Ø       ŁÜ2	ż?“×A6*

accuracyUß>T÷       ŁÜ2	·¾+@“×A7*

val_lossī¾?Ņ"       x=ż	Ŗæ+@“×A7*

val_accuracy{ī>mā„e       Ų-	Ą+@“×A7*

loss
É?bĮÜ       ŁÜ2	wĄ+@“×A7*

accuracy=
ß>%ėć       ŁÜ2	*Õ@“×A8*

val_lossD=¾?7°f"       x=ż	(Õ@“×A8*

val_accuracyĪń>Eź       Ų-	Õ@“×A8*

lossÆ3Č?7mP       ŁÜ2	Õ@“×A8*

accuracyą>u’ø       ŁÜ2	Śz~A“×A9*

val_loss“å½?ķöž"       x=ż	Ę{~A“×A9*

val_accuracy¼tó>nx       Ų-	6|~A“×A9*

lossG»Ē?½Ń{«       ŁÜ2	|~A“×A9*

accuracyKČß>ę%5ś       ŁÜ2	$B“×A:*

val_lossÖ=¾?2o¬"       x=ż	r$B“×A:*

val_accuracyļ>õ}¬       Ų-	å$B“×A:*

loss%Č?~ĢĶ       ŁÜ2	F$B“×A:*

accuracygDį>?N!       ŁÜ2	ŖÉB“×A;*

val_loss!1¾?KŅÜ"       x=ż	ÉB“×A;*

val_accuracyé&ń>,Īy       Ų-		ÉB“×A;*

loss’Ē?µu       ŁÜ2	hÉB“×A;*

accuracyŁ=į>×¹Ś       ŁÜ2	qÆoC“×A<*

val_lossĶX½?Ānõi"       x=ż	g°oC“×A<*

val_accuracyō>Dé       Ų-	Ż°oC“×A<*

lossńĘ?3&ņh       ŁÜ2	G±oC“×A<*

accuracycį>ÅŁ8       ŁÜ2	óÖD“×A=*

val_loss~Oæ?ó§Õ"       x=ż	Ž×D“×A=*

val_accuracy)ķķ>ŖÅķ¤       Ų-	JŲD“×A=*

loss)ŖĒ?       ŁÜ2	§ŲD“×A=*

accuracy,Ōā>l£Ī       ŁÜ2	Å»D“×A>*

val_lossŻć¼?ŖÜž"       x=ż	Ę»D“×A>*

val_accuracyįó>qĶe       Ų-	Ę»D“×A>*

loss>:Ē?·é       ŁÜ2	õĘ»D“×A>*

accuracyXį> Ō¾       ŁÜ2	°ąfE“×A?*

val_lossl½?wĆ_f"       x=ż	įfE“×A?*

val_accuracyF¶ó>1ŌH       Ų-	āfE“×A?*

loss¾:Ē?y1²       ŁÜ2	aāfE“×A?*

accuracyµ¦į>       ŁÜ2	"EF“×A@*

val_loss!½?»k"       x=ż	FF“×A@*

val_accuracy)\ļ>¾ÆćL       Ų-	FF“×A@*

lossĄĒ?!Ī¤       ŁÜ2	ęFF“×A@*

accuracyé&į>HŲ½       ŁÜ2	«²F“×AA*

val_lossl-¾?śN"       x=ż	²F“×AA*

val_accuracyÅžņ>ę©       Ų-	²F“×AA*

loss{Ę?»Łö       ŁÜ2	i²F“×AA*

accuracyį>ŖŻ»)       ŁÜ2	)¤WG“×AB*

val_lossM¼?qź^"       x=ż	„WG“×AB*

val_accuracytFō> Ų       Ų-	„WG“×AB*

lossč8Ę?½¶į       ŁÜ2	č„WG“×AB*

accuracySä>Ł5é       ŁÜ2	P©żG“×AC*

val_lossL#¼?Ē"       x=ż	KŖżG“×AC*

val_accuracy"õ>LGĀ       Ų-	øŖżG“×AC*

lossķÅ?$       ŁÜ2	«żG“×AC*

accuracyā>,kæ#       ŁÜ2	=õ¢H“×AD*

val_loss¾?Df"       x=ż	6ö¢H“×AD*

val_accuracyWģļ>Ž³z       Ų-	„ö¢H“×AD*

lossÕķÅ?Ć%Ó”       ŁÜ2	÷¢H“×AD*

accuracyś~ā>}½       ŁÜ2	/PI“×AE*

val_loss¼?¾G"       x=ż	?PI“×AE*

val_accuracyÅļ>TŅÉ       Ų-	“PI“×AE*

lossģŁÅ?`Ę       ŁÜ2	PI“×AE*

accuracyO@ć>Ī
       ŁÜ2	Ć[öI“×AF*

val_lossL»?µqēP"       x=ż	³\öI“×AF*

val_accuracyäņ>.=!       Ų-	#]öI“×AF*

loss9»Å?¬Æ¢       ŁÜ2	]öI“×AF*

accuracy/nć>r       ŁÜ2	tJ“×AG*

val_lossŖ-¼?Ķ’^~"       x=ż	]J“×AG*

val_accuracyóó>żfw       Ų-	ŌJ“×AG*

lossGÅ?;wwź       ŁÜ2	4J“×AG*

accuracy?Wć>f¤H·       ŁÜ2	fBK“×AH*

val_losslņ¼?łS+s"       x=ż	XBK“×AH*

val_accuracy!°ņ> c       Ų-	ÅBK“×AH*

lossiÅ?Ōó       ŁÜ2	'BK“×AH*

accuracy]žć>ĆWT       ŁÜ2		õK“×AI*

val_lossę±½?b©^"       x=ż	
õK“×AI*

val_accuracyš>Z	~	       Ų-	ż
õK“×AI*

lossūÄ?¶[¹Ń       ŁÜ2	aõK“×AI*

accuracy*©ć>>LøU       ŁÜ2	KL“×AJ*

val_lossņT¼?MĢÕ"       x=ż	6L“×AJ*

val_accuracy²ļ>ŃŻ)       Ų-	¢L“×AJ*

lossŲÅ?¦g       ŁÜ2	L“×AJ*

accuracyaTā>ømt;       ŁÜ2	rTM“×AK*

val_losszŹŗ?9~="       x=ż	jTM“×AK*

val_accuracy”Öō>~ūŪ       Ų-	ŠTM“×AK*

lossźAÄ?EęT       ŁÜ2	/TM“×AK*

accuracyjå> ĻyĻ       ŁÜ2	;KūM“×AL*

val_lossKJ¼?Ųś"       x=ż	+LūM“×AL*

val_accuracy”gó>9a       Ų-	”LūM“×AL*

lossąÄ? µ”       ŁÜ2	MūM“×AL*

accuracyB`å>*gW       ŁÜ2	ų$¢N“×AM*

val_loss½?ßÆ¹£"       x=ż	ź%¢N“×AM*

val_accuracy|aņ>Ć Q)       Ų-	Z&¢N“×AM*

lossC4Ä?WYb       ŁÜ2	É&¢N“×AM*

accuracy½ćä>Ėæ0       ŁÜ2	¦IO“×AN*

val_losseŗ?<5"       x=ż	IO“×AN*

val_accuracy!ō>EĮ”ō       Ų-	üIO“×AN*

lossøvÄ?NÄß       ŁÜ2	`IO“×AN*

accuracyh"ä>P­       ŁÜ2	ń$ńO“×AO*

val_lossĆ~½?ø”Õ"       x=ż	é%ńO“×AO*

val_accuracy)\ļ>ņxĆÓ       Ų-	[&ńO“×AO*

lossłÄ?øŪ       ŁÜ2	½&ńO“×AO*

accuracyoä>’ū       ŁÜ2	FP“×AP*

val_loss?@»?Čś"       x=ż	GP“×AP*

val_accuracy4¢ō>×Ö#±       Ų-	{GP“×AP*

loss²AÄ?RA8       ŁÜ2	ÜGP“×AP*

accuracyTćå>ź)ŅČ       ŁÜ2	¦EQ“×AQ*

val_loss°»?B3ā"       x=ż	EQ“×AQ*

val_accuracy·ń>eÉ²q       Ų-	EQ“×AQ*

lossĢ[Ć?ŲKoF       ŁÜ2	eEQ“×AQ*

accuracy8ę>¹rŪ       ŁÜ2	'.ģQ“×AR*

val_loss»?z\"       x=ż	/ģQ“×AR*

val_accuracyXØõ>ūż¾       Ų-	/ģQ“×AR*

lossÄdĆ?e„ā       ŁÜ2	ī/ģQ“×AR*

accuracy&Så>1¹       ŁÜ2	”FR“×AS*

val_lossłS¼?3<"       x=ż	GR“×AS*

val_accuracy£ņ>ĘrĄ²       Ų-	 HR“×AS*

loss>£Ć?ĢīT       ŁÜ2	cHR“×AS*

accuracyš§ę>¾Š       ŁÜ2	Ą9S“×AT*

val_loss/Ķ½?6Xū"       x=ż	°9S“×AT*

val_accuracyEŲš>Žv       Ų-	"9S“×AT*

lossæ±Ć?Ą       ŁÜ2	9S“×AT*

accuracy»ę>ülF       ŁÜ2	I8ßS“×AU*

val_lossom¼?NÆ6"       x=ż	X9ßS“×AU*

val_accuracySō>r½       Ų-	Ė9ßS“×AU*

lossoÄ?T¦       ŁÜ2	,:ßS“×AU*

accuracy«Ļå>²6Ź       ŁÜ2	®!T“×AV*

val_lossļā¼?ś7q"       x=ż	Ā"T“×AV*

val_accuracyHš>+W5       Ų-	9#T“×AV*

lossćnĆ?j$]       ŁÜ2	#T“×AV*

accuracyŪłę>       ŁÜ2	kŗ2U“×AW*

val_lossCóŗ?£Æ"       x=ż	V»2U“×AW*

val_accuracyLõ>ōv2ā       Ų-	Ä»2U“×AW*

loss;Ć?į$       ŁÜ2	!¼2U“×AW*

accuracyHæå>`RC]       ŁÜ2	ŅŲU“×AX*

val_lossU¬ŗ?ŁČ <"       x=ż	:ÓŲU“×AX*

val_accuracyaĆó>h%       Ų-	®ÓŲU“×AX*

lossbĆ?Ži       ŁÜ2	ŌŲU“×AX*

accuracy+ę>żq`       ŁÜ2	V“×AY*

val_lossäĆ»?ŗ;"       x=ż	|V“×AY*

val_accuracy¼tó>lįP       Ų-	īV“×AY*

lossG¼Ā?»02       ŁÜ2	JV“×AY*

accuracy"lč>kč,O       ŁÜ2	źB%W“×AZ*

val_loss¹?ThEš"       x=ż	ŻC%W“×AZ*

val_accuracy}®ö>äUÕ       Ų-	MD%W“×AZ*

lossC×Ā?#E       ŁÜ2	°D%W“×AZ*

accuracy?ę>³ßü       ŁÜ2	ėØĖW“×A[*

val_loss“¼?Z(^­"       x=ż	Ü©ĖW“×A[*

val_accuracy³źó>¼Ļ       Ų-	KŖĖW“×A[*

loss>DĀ?ąŗ'       ŁÜ2	ŖŖĖW“×A[*

accuracyŌé>ĻGX|       ŁÜ2	e\wX“×A\*

val_loss,»?%mę"       x=ż	]]wX“×A\*

val_accuracy}?õ>ž]c       Ų-	É]wX“×A\*

loss©xĀ?¼0       ŁÜ2	'^wX“×A\*

accuracy®ē>] Ą       ŁÜ2	o$Y“×A]*

val_loss u»?ŪV"       x=ż	'p$Y“×A]*

val_accuracyOÆō>Æ ;A       Ų-	p$Y“×A]*

lossŽ Ć?  IĮ       ŁÜ2	 q$Y“×A]*

accuracyūĖę>ōÆ[       ŁÜ2	H,ĖY“×A^*

val_loss½?¼M¤"       x=ż	U-ĖY“×A^*

val_accuracyÅ š>QKh       Ų-	Ē-ĖY“×A^*

loss[iĆ?.WaŲ       ŁÜ2	,.ĖY“×A^*

accuracy0Lę>ģv       ŁÜ2	ŚqZ“×A_*

val_loss¼?ü&kÕ"       x=ż	ĪqZ“×A_*

val_accuracyXŹņ>f=       Ų-	8qZ“×A_*

lossvĆĮ?Ņ.Ø       ŁÜ2	qZ“×A_*

accuracy"lč>&īPk       ŁÜ2	µć[“×A`*

val_loss/Āŗ? ĶéŠ"       x=ż	¢ä[“×A`*

val_accuracyb”ö>f4³=       Ų-	å[“×A`*

lossäĀ?/j       ŁÜ2	uå[“×A`*

accuracy"żę>ŁĖ2       ŁÜ2	¬¾[“×Aa*

val_lossK¼?i'QB"       x=ż	ó¬¾[“×Aa*

val_accuracy½ćō>½z÷¢       Ų-	a­¾[“×Aa*

lossõSĀ?äė­       ŁÜ2	½­¾[“×Aa*

accuracy²ē>	EŌ       ŁÜ2	\5e\“×Ab*

val_lossøv»?H~B"       x=ż	K6e\“×Ab*

val_accuracyk+ö>ēn       Ų-	¹6e\“×Ab*

lossP’Į?KrÓ±       ŁÜ2	7e\“×Ab*

accuracył ē>t@p^       ŁÜ2	{Q]“×Ac*

val_lossgv»?=®	"       x=ż	kR]“×Ac*

val_accuracy”gó>       Ų-	ŪR]“×Ac*

loss/rĀ?ø¼}       ŁÜ2	=S]“×Ac*

accuracysę>£ĆfĶ